#!/usr/bin/env node
// Proposes apps.flatpak_id (the Flathub app id, e.g. org.gimp.GIMP) for every
// app on apps.vietnamlinuxfamily.net, for review before anything is applied.
//
// Reads only public data: the site's API (all apps) and Flathub's API (app
// list, catalogue, end-of-life lists, search, app details). It never writes to
// the database. It writes three files:
//   flatpak-ids.sql         UPDATE statements: high-confidence ones active,
//                           uncertain ones commented out with the reason
//   flatpak-ids-report.csv  one row per app
//   flatpak-ids-report.md   counts, the apps that need a decision, full list
//
// Usage, from backend/ (Node 18 or later, no dependencies):
//   node tools/match-flatpak-ids.mjs [--out DIR] [--cache DIR] [--api URL]
//     --out    where to write the files (default: tools/flatpak-ids)
//     --cache  keep the downloaded JSON in DIR and reuse it on the next run
//     --api    the site's API (default: https://apps-api.vietnamlinuxfamily.net/api)
//
// Confidence:
//   high       the app's own data names the id (flatpak install command,
//              flathub.org link, or a slug that is the id) and Flathub lists it
//              today; or the name and the website both match one Flathub app
//   uncertain  renamed on Flathub, id differs only in letter case, or only the
//              name or only the website matches: check before applying
//   none       not on Flathub (or end of life there with no successor)
//
// Apply after migrations/0001_add_apps_flatpak_id.sql, once reviewed:
//   npx wrangler d1 execute vnlf-db --remote --file=tools/flatpak-ids/flatpak-ids.sql

import { mkdir, readFile, writeFile } from 'node:fs/promises'
import { createHash } from 'node:crypto'
import path from 'node:path'

const FLATHUB = 'https://flathub.org/api/v2'
const USER_AGENT = 'flatpak-id-matcher/1.0'

// Same rule as flatpak, the API (src/routes/apps.ts) and frontend/public/cai.sh.
const FLATPAK_ID_RE = /^(?=.{1,255}$)[A-Za-z_][A-Za-z0-9_]*(\.[A-Za-z_][A-Za-z0-9_]*)+\.[A-Za-z_][A-Za-z0-9_-]*$/

// Hosts where the owner (first path part) tells projects apart.
const CODE_HOSTS = new Set([
  'github.com', 'gitlab.com', 'codeberg.org', 'sourceforge.net', 'gitlab.gnome.org',
  'invent.kde.org', 'bitbucket.org', 'sr.ht', 'git.sr.ht', 'launchpad.net', 'framagit.org',
])

function parseArgs(argv) {
  const opts = { out: 'tools/flatpak-ids', cache: null, api: 'https://apps-api.vietnamlinuxfamily.net/api' }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i]
    if (a === '--out' || a === '--cache' || a === '--api') {
      if (!argv[i + 1]) throw new Error(`${a} needs a value`)
      opts[a.slice(2)] = argv[++i]
    } else if (a === '-h' || a === '--help') {
      console.log('node tools/match-flatpak-ids.mjs [--out DIR] [--cache DIR] [--api URL]')
      process.exit(0)
    } else {
      throw new Error(`unknown argument: ${a}`)
    }
  }
  opts.api = opts.api.replace(/\/+$/, '')
  return opts
}

// --- HTTP with an optional on-disk cache ----------------------------------

let cacheDir = null

function cacheFile(key) {
  const safe = key.replace(/[^A-Za-z0-9._-]+/g, '_').slice(0, 80)
  const hash = createHash('sha256').update(key).digest('hex').slice(0, 12)
  return path.join(cacheDir, `${safe}-${hash}.json`)
}

async function getJson(url, { method = 'GET', body, allow404 = false } = {}) {
  const key = `${method} ${url} ${body ? JSON.stringify(body) : ''}`
  if (cacheDir) {
    try {
      return JSON.parse(await readFile(cacheFile(key), 'utf8'))
    } catch { /* not cached yet */ }
  }
  let lastError
  for (let attempt = 1; attempt <= 3; attempt++) {
    try {
      const res = await fetch(url, {
        method,
        headers: { 'User-Agent': USER_AGENT, Accept: 'application/json', ...(body ? { 'Content-Type': 'application/json' } : {}) },
        body: body ? JSON.stringify(body) : undefined,
      })
      if (res.status === 404 && allow404) return null
      if (!res.ok) throw new Error(`${method} ${url}: HTTP ${res.status}`)
      const data = await res.json()
      if (cacheDir) await writeFile(cacheFile(key), JSON.stringify(data))
      return data
    } catch (err) {
      lastError = err
      await new Promise(r => setTimeout(r, 1000 * attempt))
    }
  }
  throw lastError
}

// --- data ------------------------------------------------------------------

async function fetchApps(api) {
  const apps = []
  for (let page = 1; ; page++) {
    const data = await getJson(`${api}/apps?limit=50&page=${page}&sort=az`)
    apps.push(...(data.apps || []))
    if (!data.pagination || page >= data.pagination.totalPages) break
  }
  // The API caches pages for a minute; drop duplicates if the list moved.
  return [...new Map(apps.map(a => [a.id, a])).values()]
}

async function fetchFlathub() {
  const ids = await getJson(`${FLATHUB}/appstream`)
  const rebase = await getJson(`${FLATHUB}/eol/rebase`) // { newId: [oldIds] }
  const eolMessages = await getJson(`${FLATHUB}/eol/message`) // { id: message }
  const catalogue = new Map() // id -> search hit (name, developer, ...)
  for (let page = 1; ; page++) {
    const data = await getJson(`${FLATHUB}/search`, { method: 'POST', body: { query: '', hits_per_page: 250, page } })
    for (const hit of data.hits || []) catalogue.set(hit.app_id, hit)
    if (page >= (data.totalPages || 1)) break
  }
  const successors = new Map() // oldId -> [newIds]
  for (const [newId, oldIds] of Object.entries(rebase)) {
    for (const oldId of oldIds) successors.set(oldId, [...(successors.get(oldId) || []), newId])
  }
  return { current: new Set(ids), lowerToId: new Map(ids.map(id => [id.toLowerCase(), id])), catalogue, successors, eolMessages }
}

const appDetails = new Map()
async function flathubDetails(id) {
  if (!appDetails.has(id)) appDetails.set(id, await getJson(`${FLATHUB}/appstream/${encodeURIComponent(id)}`, { allow404: true }))
  return appDetails.get(id)
}

async function flathubSearch(query) {
  const data = await getJson(`${FLATHUB}/search`, { method: 'POST', body: { query, hits_per_page: 10, page: 1 } })
  return data.hits || []
}

// --- matching ----------------------------------------------------------------

const normName = s => (s || '').normalize('NFKD').replace(/[\u0300-\u036f]/g, '').toLowerCase().replace(/[^a-z0-9]+/g, '')

function siteKey(url) {
  try {
    const u = new URL(url)
    const host = u.hostname.toLowerCase().replace(/^www\./, '')
    if (CODE_HOSTS.has(host)) {
      const owner = u.pathname.split('/').filter(Boolean)[0]
      return owner ? `${host}/${owner.toLowerCase()}` : null
    }
    return host
  } catch {
    return null
  }
}

// Flathub ids the app's own data points at, best first.
function idsFromAppData(app) {
  const found = []
  const add = id => { if (id && FLATPAK_ID_RE.test(id) && !found.includes(id)) found.push(id) }
  const cmd = (app.install_command || '').trim()
  const m = cmd.match(/\bflatpak\s+install\s+(?:-\S+\s+)*(?:flathub\s+)?([A-Za-z_][\w.-]*)/)
  if (m) add(m[1])
  for (const url of [app.download_url, app.website_url, app.source_code_url]) {
    const u = (url || '').match(/flathub\.org\/(?:[a-z]{2}(?:[-_][A-Za-z]+)?\/)?apps\/(?:details\/)?([^/?#\s]+)/)
      || (url || '').match(/dl\.flathub\.org\/repo\/appstream\/([^/?#\s]+)\.flatpakref/)
    if (u) add(u[1])
  }
  add(app.slug)
  return found
}

async function websiteMatches(app, id) {
  const ours = new Set([app.website_url, app.download_url, app.source_code_url].map(siteKey).filter(Boolean))
  ours.delete('flathub.org')
  if (!ours.size) return false
  const details = await flathubDetails(id)
  const theirs = [details?.urls?.homepage, details?.urls?.vcs_browser, details?.urls?.bugtracker].map(siteKey).filter(Boolean)
  return theirs.some(k => ours.has(k))
}

async function match(app, fh) {
  const result = { id: null, confidence: 'none', method: '', note: '' }
  const fromData = idsFromAppData(app)

  // 1. The app's own data names an id that Flathub lists today.
  const listed = fromData.find(id => fh.current.has(id))
  if (listed) {
    const fhName = fh.catalogue.get(listed)?.name
    const note = fhName && normName(fhName) !== normName(app.name) ? `Flathub calls it "${fhName}"` : ''
    return { id: listed, confidence: 'high', method: 'app-data', note }
  }

  // 2. The app's data names ids, but Flathub no longer lists any of them.
  for (const oldId of fromData) {
    const eol = fh.eolMessages[oldId]
    const eolNote = eol ? `end of life on Flathub: "${eol}"` : 'no longer listed on Flathub'
    const next = (fh.successors.get(oldId) || []).filter(id => fh.current.has(id))
    const sameIgnoringCase = fh.lowerToId.get(oldId.toLowerCase())
    if (sameIgnoringCase) {
      const extra = next.length && !next.includes(sameIgnoringCase) ? `; Flathub's rename list points to ${next.join(', ')}` : ''
      return { id: sameIgnoringCase, confidence: 'uncertain', method: 'id-case', note: `${oldId} ${eolNote}; ${sameIgnoringCase} differs only in letter case${extra}` }
    }
    if (next.length) {
      return { id: next[0], confidence: 'uncertain', method: 'renamed', note: `${oldId} ${eolNote}; renamed to ${next.join(', ')}` }
    }
    result.method = 'eol'
    result.note = `${oldId} ${eolNote}`
  }

  // 3. Name (and website) match in the Flathub catalogue.
  const name = normName(app.name)
  const sameName = [...fh.catalogue.values()].filter(h => normName(h.name) === name && fh.current.has(h.app_id))
  for (const hit of sameName) {
    if (await websiteMatches(app, hit.app_id)) {
      return { id: hit.app_id, confidence: result.method === 'eol' ? 'uncertain' : 'high', method: 'name+website', note: [result.note, `"${hit.name}" with the same website`].filter(Boolean).join('; ') }
    }
  }
  if (sameName.length) {
    const others = sameName.slice(1).map(h => h.app_id)
    return {
      id: sameName[0].app_id, confidence: 'uncertain', method: 'name',
      note: [result.note, `same name "${sameName[0].name}" but the website does not match`, others.length ? `also: ${others.join(', ')}` : ''].filter(Boolean).join('; '),
    }
  }

  // 4. Flathub search: a hit with the same website is worth a look.
  const hits = (await flathubSearch(app.name)).filter(h => fh.current.has(h.app_id)).slice(0, 5)
  for (const hit of hits.slice(0, 3)) {
    if (await websiteMatches(app, hit.app_id)) {
      return { id: hit.app_id, confidence: 'uncertain', method: 'website', note: [result.note, `"${hit.name}" has the same website but another name`].filter(Boolean).join('; ') }
    }
  }
  const suggestions = hits.map(h => `${h.app_id} ("${h.name}")`).join(', ')
  return {
    id: null, confidence: 'none', method: result.method || 'search',
    note: [result.note, suggestions ? `closest Flathub search hits, none matching: ${suggestions}` : 'no Flathub search hits'].filter(Boolean).join('; '),
  }
}

// --- output -------------------------------------------------------------------

const sqlString = s => `'${String(s).replace(/'/g, "''")}'`
// Comments must stay on one line or they could turn into SQL.
const sqlComment = s => String(s || '').replace(/[\u0000-\u001f\u007f\u2028\u2029]+/g, ' ').trim()

function csvCell(v) {
  let s = v == null ? '' : String(v)
  if (/^[=+\-@\t\r]/.test(s)) s = `'${s}` // keep spreadsheets from running it as a formula
  return /[",\r\n]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s
}

const mdCell = v => String(v ?? '').replace(/[\r\n]+/g, ' ').replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/\|/g, '\\|').replace(/`/g, "'")
const usesSnap = cmd => /(^|[\s;&|(])snap\s+install\b/.test(cmd || '')

function buildSql(rows, meta) {
  const by = c => rows.filter(r => r.confidence === c)
  const high = by('high'), uncertain = by('uncertain')
  const lines = [
    `-- Proposed apps.flatpak_id values, generated ${meta.date} by backend/tools/match-flatpak-ids.mjs`,
    `-- from ${meta.api} (${rows.length} apps) and the Flathub API (${meta.flathubCount} apps listed).`,
    `-- high: ${high.length} (active below), uncertain: ${uncertain.length} (commented out), none: ${rows.length - high.length - uncertain.length} (not in this file).`,
    '--',
    '-- Review first (flatpak-ids-report.md). Run AFTER migrations/0001_add_apps_flatpak_id.sql:',
    '--   npx wrangler d1 execute vnlf-db --remote --file=tools/flatpak-ids/flatpak-ids.sql',
    '-- Every statement only fills an empty flatpak_id (or replaces the exact old command),',
    '-- so running the file twice changes nothing. API caches expire within 10 minutes.',
    '',
    `-- 1. High confidence (${high.length})`,
  ]
  for (const r of high) {
    lines.push(`UPDATE apps SET flatpak_id = ${sqlString(r.id)} WHERE slug = ${sqlString(r.slug)} AND flatpak_id IS NULL; -- ${sqlComment(r.name)}`)
  }
  lines.push('', `-- 2. Uncertain (${uncertain.length}): read the reason, then remove the leading "-- " from the UPDATE line to apply it.`,
    '--    These also point install_command and download_url at the proposed id.')
  for (const r of uncertain) {
    lines.push(`-- ${sqlComment(r.name)} (${sqlComment(r.slug)}): ${sqlComment(r.method)}, ${sqlComment(r.note)}`)
    lines.push(`-- UPDATE apps SET flatpak_id = ${sqlString(r.id)}, install_command = ${sqlString(`flatpak install flathub ${r.id}`)}, download_url = ${sqlString(`https://flathub.org/apps/${r.id}`)} WHERE slug = ${sqlString(r.slug)} AND flatpak_id IS NULL;`)
  }
  const snap = rows.filter(r => r.id && usesSnap(r.install_command))
  lines.push('', `-- 3. "snap install" commands that have a Flathub id (${snap.length}). Linux Mint and CaramOS have no snap.`)
  if (!snap.length) lines.push(`--    None in the data of ${meta.date}.`)
  for (const r of snap) {
    const stmt = `UPDATE apps SET install_command = ${sqlString(`flatpak install flathub ${r.id}`)} WHERE slug = ${sqlString(r.slug)} AND install_command = ${sqlString(r.install_command)};`
    lines.push(r.confidence === 'high' ? `${stmt} -- ${sqlComment(r.name)}` : `-- ${stmt} -- ${sqlComment(r.name)}, uncertain id`)
  }
  return lines.join('\n') + '\n'
}

function buildCsv(rows) {
  const head = ['name', 'slug', 'proposed_flatpak_id', 'confidence', 'method', 'flathub_name', 'current_install_command', 'note']
  return [head.join(','), ...rows.map(r => [r.name, r.slug, r.id, r.confidence, r.method, r.flathubName, r.install_command, r.note].map(csvCell).join(','))].join('\r\n') + '\r\n'
}

function buildMarkdown(rows, meta) {
  const by = c => rows.filter(r => r.confidence === c)
  const high = by('high'), uncertain = by('uncertain'), none = by('none')
  const table = list => [
    '| App | Slug | Proposed flatpak_id | Method | Current install_command | Note |',
    '|---|---|---|---|---|---|',
    ...list.map(r => `| ${mdCell(r.name)} | ${mdCell(r.slug)} | ${mdCell(r.id || '')} | ${mdCell(r.method)} | ${mdCell(r.install_command)} | ${mdCell(r.note)} |`),
  ].join('\n')
  const methods = {}
  for (const r of rows) methods[`${r.confidence}/${r.method}`] = (methods[`${r.confidence}/${r.method}`] || 0) + 1
  return `# flatpak_id proposals

Generated ${meta.date} by \`backend/tools/match-flatpak-ids.mjs\` from ${meta.api} (${rows.length} apps, read-only) and the Flathub API (${meta.flathubCount} apps listed today).

| Confidence | Apps | In flatpak-ids.sql |
|---|---|---|
| high | ${high.length} | active UPDATE statements |
| uncertain | ${uncertain.length} | commented out, apply one by one after checking |
| none | ${none.length} | not included |

By method: ${Object.entries(methods).sort().map(([k, v]) => `${k} ${v}`).join(', ')}.

- **app-data**: the app's own install command, Flathub link or slug names the id, and Flathub lists it today.
- **id-case** / **renamed**: the id in the app's data is no longer listed; Flathub has the same id in other letter case, or its end-of-life list names a successor.
- **name+website**, **name**, **website**: found by name in the Flathub catalogue or search; the website decides how sure it is.
- **eol**: end of life on Flathub with no successor. These apps keep their old \`flatpak install\` command; consider removing them or pointing them elsewhere.
- **search**: nothing on Flathub; the closest search hits are listed in the note.

"snap install" commands in the data: ${rows.filter(r => usesSnap(r.install_command)).length}.

## Uncertain (${uncertain.length})

${uncertain.length ? table(uncertain) : 'None.'}

## None (${none.length})

${none.length ? table(none) : 'None.'}

## High (${high.length})

<details>
<summary>All ${high.length} apps</summary>

${table(high)}

</details>
`
}

async function main() {
  const opts = parseArgs(process.argv.slice(2))
  if (opts.cache) {
    cacheDir = path.resolve(opts.cache)
    await mkdir(cacheDir, { recursive: true })
  }
  const outDir = path.resolve(opts.out)
  await mkdir(outDir, { recursive: true })

  console.error(`Reading apps from ${opts.api} ...`)
  const apps = await fetchApps(opts.api)
  console.error(`${apps.length} apps. Reading Flathub ...`)
  const fh = await fetchFlathub()
  console.error(`Flathub lists ${fh.current.size} apps (${fh.catalogue.size} in the search catalogue). Matching ...`)

  const rows = []
  for (const app of apps) {
    const m = await match(app, fh)
    rows.push({
      name: app.name, slug: app.slug, install_command: app.install_command || '',
      id: m.id, confidence: m.confidence, method: m.method, note: m.note,
      flathubName: m.id ? (fh.catalogue.get(m.id)?.name || (await flathubDetails(m.id))?.name || '') : '',
    })
  }
  const order = { uncertain: 0, none: 1, high: 2 }
  rows.sort((a, b) => order[a.confidence] - order[b.confidence] || a.name.localeCompare(b.name))

  const meta = { date: new Date().toISOString().slice(0, 10), api: opts.api, flathubCount: fh.current.size }
  await writeFile(path.join(outDir, 'flatpak-ids.sql'), buildSql(rows, meta))
  await writeFile(path.join(outDir, 'flatpak-ids-report.csv'), buildCsv(rows))
  await writeFile(path.join(outDir, 'flatpak-ids-report.md'), buildMarkdown(rows, meta))

  const count = c => rows.filter(r => r.confidence === c).length
  console.error(`high ${count('high')}, uncertain ${count('uncertain')}, none ${count('none')}. Files in ${outDir}`)
}

main().catch(err => {
  console.error(err.message || err)
  process.exit(1)
})
