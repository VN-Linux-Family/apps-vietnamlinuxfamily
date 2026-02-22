// Apps routes: list, detail, create, update, delete
import { Hono } from 'hono'
import { z } from 'zod'
import { requireAuth } from '../middleware/auth'
import type { Env, App } from '../types'

const apps = new Hono<{ Bindings: Env }>()

// Helper: enrich apps with tags, packages, icon in batch (eliminates N+1)
async function enrichApps(db: any, apps: any[]) {
  if (!apps.length) return apps
  const ids = apps.map((a: any) => a.id)
  const ph = ids.map(() => '?').join(',')

  // 3 batch queries instead of 3*N queries
  const [tagsRes, pkgsRes, iconsRes] = await Promise.all([
    db.prepare(`SELECT app_id, GROUP_CONCAT(tag) as tags FROM app_tags WHERE app_id IN (${ph}) GROUP BY app_id`).bind(...ids).all(),
    db.prepare(`SELECT app_id, GROUP_CONCAT(package_type) as pkgs FROM app_package_types WHERE app_id IN (${ph}) GROUP BY app_id`).bind(...ids).all(),
    db.prepare(`SELECT app_id, image_url FROM app_media WHERE app_id IN (${ph}) AND type = 'icon'`).bind(...ids).all(),
  ])

  const tagsMap: Record<string, string[]> = {}
  for (const r of (tagsRes.results || [])) tagsMap[r.app_id] = r.tags ? r.tags.split(',') : []
  const pkgsMap: Record<string, string[]> = {}
  for (const r of (pkgsRes.results || [])) pkgsMap[r.app_id] = r.pkgs ? r.pkgs.split(',') : []
  const iconMap: Record<string, string> = {}
  for (const r of (iconsRes.results || [])) iconMap[r.app_id] = r.image_url

  return apps.map((app: any) => ({
    ...app,
    tags: tagsMap[app.id] || [],
    package_types: pkgsMap[app.id] || [],
    icon_url: iconMap[app.id] || null,
  }))
}

// Helper: fetch + enrich in one call
async function fetchAppsWithIcon(db: any, sql: string, params: unknown[] = []) {
  const results = await db.prepare(sql).bind(...params).all()
  return enrichApps(db, results.results || [])
}

// --- Homepage Data ---
apps.get('/homepage', async (c) => {
  // Try cache
  const cached = await c.env.CACHE.get('homepage', 'json')
  if (cached) return c.json(cached)

  const db = c.env.DB

  const baseSel = `SELECT a.*, c.slug as category_slug, c.name_vi as category_name_vi, c.name_en as category_name_en, c.color as category_color,
    u.display_name as user_display_name
    FROM apps a JOIN categories c ON a.category_id = c.id JOIN users u ON a.user_id = u.id`

  // 1. Popular: verified apps, random 8
  const popular = await fetchAppsWithIcon(db,
    `${baseSel} WHERE a.is_verified = 1 ORDER BY RANDOM() LIMIT 8`)

  // 2. Editor's Picks: random 8 non-verified (different from popular)
  const popularIds = popular.map((a: any) => a.id)
  const placeholders = popularIds.map(() => '?').join(',')
  const editorsPicks = await fetchAppsWithIcon(db,
    `${baseSel} ${popularIds.length ? `WHERE a.id NOT IN (${placeholders})` : ''} ORDER BY RANDOM() LIMIT 8`,
    popularIds)

  // 3. Newest: by created_at, exclude already shown
  const shownIds = [...popularIds, ...editorsPicks.map((a: any) => a.id)]
  const shownPH = shownIds.map(() => '?').join(',')
  const newest = await fetchAppsWithIcon(db,
    `${baseSel} ${shownIds.length ? `WHERE a.id NOT IN (${shownPH})` : ''} ORDER BY a.created_at DESC LIMIT 8`,
    shownIds)

  // 4. By Category: 4 apps × up to 8 categories
  const cats = await db.prepare('SELECT * FROM categories ORDER BY id LIMIT 8').all()
  const allShown = new Set([...shownIds, ...newest.map((a: any) => a.id)])
  const byCategory = await Promise.all((cats.results || []).map(async (cat: any) => {
    const catApps = await fetchAppsWithIcon(db,
      `${baseSel} WHERE a.category_id = ? ORDER BY RANDOM() LIMIT 8`,
      [cat.id])
    return {
      category: cat,
      apps: catApps,
    }
  }))

  // Filter out empty categories
  const byCategoryFiltered = byCategory.filter(c => c.apps.length > 0)

  const result = { popular, editors_picks: editorsPicks, newest, by_category: byCategoryFiltered }

  // Cache 10 min
  await c.env.CACHE.put('homepage', JSON.stringify(result), { expirationTtl: 600 })

  return c.json(result)
})
apps.get('/', async (c) => {
  const q = c.req.query('q')?.trim()
  const category = c.req.query('category')
  const tag = c.req.query('tag')
  const lang = c.req.query('lang') || 'en'
  const sort = c.req.query('sort') || 'newest'
  const featured = c.req.query('featured')
  const page = Math.max(1, parseInt(c.req.query('page') || '1'))
  const limit = Math.min(50, Math.max(1, parseInt(c.req.query('limit') || '12')))
  const offset = (page - 1) * limit

  // Try cache for non-search requests
  const cacheKey = `apps:${q || ''}:${category || ''}:${tag || ''}:${sort}:${page}:${limit}`
  if (!q) {
    const cached = await c.env.CACHE.get(cacheKey, 'json')
    if (cached) return c.json(cached)
  }

  // Build query
  const conditions: string[] = []
  const params: unknown[] = []

  if (q) {
    const like = `%${q}%`
    if (lang === 'vi') {
      conditions.push(`(a.name LIKE ? OR a.short_desc LIKE ? OR a.description LIKE ?)`)
    } else {
      conditions.push(`(a.name LIKE ? OR a.short_desc_en LIKE ? OR a.description_en LIKE ?)`)
    }
    params.push(like, like, like)
  }
  if (category) {
    conditions.push('c.slug = ?')
    params.push(category)
  }
  if (tag) {
    conditions.push('EXISTS (SELECT 1 FROM app_tags at2 WHERE at2.app_id = a.id AND at2.tag = ?)')
    params.push(tag)
  }
  if (featured === '1') {
    conditions.push('a.is_featured = 1')
  }

  const where = conditions.length ? `WHERE ${conditions.join(' AND ')}` : ''

  let orderBy = 'a.created_at DESC'
  switch (sort) {
    case 'top-rated': orderBy = 'a.avg_rating DESC, a.review_count DESC'; break
    case 'most-reviewed': orderBy = 'a.review_count DESC'; break
    case 'az': orderBy = 'a.name ASC'; break
    case 'trending': orderBy = 'a.review_count DESC, a.avg_rating DESC'; break
  }

  // Count total
  const countSql = `SELECT COUNT(*) as total FROM apps a JOIN categories c ON a.category_id = c.id ${where}`
  const countResult = await c.env.DB.prepare(countSql).bind(...params).first<{ total: number }>()
  const total = countResult?.total || 0

  // Fetch apps
  const sql = `
    SELECT a.*, c.slug as category_slug, c.name_vi as category_name_vi, c.name_en as category_name_en, c.color as category_color,
           u.display_name as user_display_name
    FROM apps a
    JOIN categories c ON a.category_id = c.id
    JOIN users u ON a.user_id = u.id
    ${where}
    ORDER BY ${orderBy}
    LIMIT ? OFFSET ?
  `
  const results = await c.env.DB.prepare(sql).bind(...params, limit, offset).all()

  // Enrich apps with tags, packages, icons in batch
  const appList = await enrichApps(c.env.DB, results.results || [])

  const response = {
    apps: appList,
    pagination: { page, limit, total, totalPages: Math.ceil(total / limit) },
  }

  // Cache non-search results for 1 min
  if (!q) {
    await c.env.CACHE.put(cacheKey, JSON.stringify(response), { expirationTtl: 60 })
  }

  return c.json(response)
})

// --- App Detail ---
apps.get('/:slug', async (c) => {
  const slug = c.req.param('slug')

  // Try cache first
  const cacheKey = `app:${slug}`
  const cached = await c.env.CACHE.get(cacheKey, 'json')
  if (cached) return c.json(cached)

  const app = await c.env.DB.prepare(`
    SELECT a.*, c.slug as category_slug, c.name_vi as category_name_vi, c.name_en as category_name_en, c.color as category_color,
           u.display_name as user_display_name, u.id as user_id_ref
    FROM apps a
    JOIN categories c ON a.category_id = c.id
    JOIN users u ON a.user_id = u.id
    WHERE a.slug = ?
  `).bind(slug).first()

  if (!app) return c.json({ error: 'App not found' }, 404)

  // Fetch related data in parallel
  const [tags, pkgs, media, reviews] = await Promise.all([
    c.env.DB.prepare('SELECT tag FROM app_tags WHERE app_id = ?').bind(app.id).all(),
    c.env.DB.prepare('SELECT package_type FROM app_package_types WHERE app_id = ?').bind(app.id).all(),
    c.env.DB.prepare('SELECT * FROM app_media WHERE app_id = ? ORDER BY type, sort_order').bind(app.id).all(),
    c.env.DB.prepare(`
      SELECT r.*, u.display_name as user_display_name
      FROM reviews r JOIN users u ON r.user_id = u.id
      WHERE r.app_id = ? ORDER BY r.created_at DESC
    `).bind(app.id).all(),
  ])

  // Fetch replies for all reviews
  const reviewList = await Promise.all((reviews.results || []).map(async (review: any) => {
    const replies = await c.env.DB.prepare(`
      SELECT rr.*, u.display_name as user_display_name
      FROM review_replies rr JOIN users u ON rr.user_id = u.id
      WHERE rr.review_id = ? ORDER BY rr.created_at ASC
    `).bind(review.id).all()
    return { ...review, replies: replies.results || [] }
  }))

  const result = {
    ...(app as any),
    tags: (tags.results || []).map((t: any) => t.tag),
    package_types: (pkgs.results || []).map((p: any) => p.package_type),
    media: media.results || [],
    reviews: reviewList,
  }

  // Cache for 5 min
  await c.env.CACHE.put(cacheKey, JSON.stringify(result), { expirationTtl: 300 })

  return c.json(result)
})

// --- Create App ---
const createAppSchema = z.object({
  name: z.string().min(1).max(100),
  short_desc: z.string().min(1).max(200),
  short_desc_en: z.string().max(200).optional(),
  description: z.string().max(10000).optional(),
  category_id: z.number().int().positive(),
  website_url: z.string().url().optional().or(z.literal('')),
  download_url: z.string().url().optional().or(z.literal('')),
  source_code_url: z.string().url().optional().or(z.literal('')),
  install_command: z.string().max(500).optional(),
  license: z.string().max(50).optional(),
  package_types: z.array(z.enum(['deb', 'flatpak', 'snap', 'appimage', 'source'])).optional(),
  tags: z.array(z.string().max(30)).max(10).optional(),
})

apps.post('/', requireAuth, async (c) => {
  const body = await c.req.json().catch(() => null)
  const parsed = createAppSchema.safeParse(body)
  if (!parsed.success) return c.json({ error: 'Invalid input', details: parsed.error.flatten() }, 400)
  const data = parsed.data
  const user = c.get('user')

  // Generate slug
  const slug = data.name.toLowerCase()
    .replace(/[^a-z0-9\s-]/g, '')
    .replace(/\s+/g, '-')
    .substring(0, 80)

  // Check unique slug
  const existingSlug = await c.env.DB.prepare('SELECT id FROM apps WHERE slug = ?').bind(slug).first()
  if (existingSlug) return c.json({ error: 'An app with a similar name already exists' }, 409)

  const id = crypto.randomUUID().replace(/-/g, '')

  await c.env.DB.prepare(`
    INSERT INTO apps (id, slug, name, short_desc, short_desc_en, description,
                      category_id, website_url, download_url, source_code_url,
                      install_command, license, user_id)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
  `).bind(
    id, slug, data.name, data.short_desc, data.short_desc_en || null, data.description || null,
    data.category_id, data.website_url || null, data.download_url || null, data.source_code_url || null,
    data.install_command || null, data.license || null, user.sub
  ).run()

  // Insert package types
  if (data.package_types?.length) {
    const stmts = data.package_types.map(pkg =>
      c.env.DB.prepare('INSERT INTO app_package_types (app_id, package_type) VALUES (?, ?)').bind(id, pkg)
    )
    await c.env.DB.batch(stmts)
  }

  // Insert tags
  if (data.tags?.length) {
    const stmts = data.tags.map(tag =>
      c.env.DB.prepare('INSERT INTO app_tags (app_id, tag) VALUES (?, ?)').bind(id, tag.toLowerCase())
    )
    await c.env.DB.batch(stmts)
  }

  return c.json({ id, slug, message: 'App created' }, 201)
})

// --- Update App ---
apps.put('/:id', requireAuth, async (c) => {
  const appId = c.req.param('id')
  const user = c.get('user')

  const app = await c.env.DB.prepare('SELECT user_id FROM apps WHERE id = ?').bind(appId).first<App>()
  if (!app) return c.json({ error: 'App not found' }, 404)
  if (app.user_id !== user.sub && user.role !== 'admin') {
    return c.json({ error: 'Not authorized' }, 403)
  }

  const body = await c.req.json().catch(() => null)
  const parsed = createAppSchema.partial().safeParse(body)
  if (!parsed.success) return c.json({ error: 'Invalid input', details: parsed.error.flatten() }, 400)
  const data = parsed.data

  // Build SET clause dynamically
  const sets: string[] = []
  const vals: unknown[] = []
  const fields = ['name', 'short_desc', 'short_desc_en', 'description', 'category_id',
    'website_url', 'download_url', 'source_code_url', 'install_command', 'license'] as const

  for (const f of fields) {
    if (data[f] !== undefined) {
      sets.push(`${f} = ?`)
      vals.push(data[f] || null)
    }
  }

  if (sets.length) {
    sets.push("updated_at = datetime('now')")
    vals.push(appId)
    await c.env.DB.prepare(`UPDATE apps SET ${sets.join(', ')} WHERE id = ?`).bind(...vals).run()
  }

  // Update package types
  if (data.package_types) {
    await c.env.DB.prepare('DELETE FROM app_package_types WHERE app_id = ?').bind(appId).run()
    if (data.package_types.length) {
      await c.env.DB.batch(
        data.package_types.map(pkg =>
          c.env.DB.prepare('INSERT INTO app_package_types (app_id, package_type) VALUES (?, ?)').bind(appId, pkg)
        )
      )
    }
  }

  // Update tags
  if (data.tags) {
    await c.env.DB.prepare('DELETE FROM app_tags WHERE app_id = ?').bind(appId).run()
    if (data.tags.length) {
      await c.env.DB.batch(
        data.tags.map(tag =>
          c.env.DB.prepare('INSERT INTO app_tags (app_id, tag) VALUES (?, ?)').bind(appId, tag.toLowerCase())
        )
      )
    }
  }

  // Invalidate cache
  const appData = await c.env.DB.prepare('SELECT slug FROM apps WHERE id = ?').bind(appId).first<App>()
  if (appData) await c.env.CACHE.delete(`app:${appData.slug}`)

  return c.json({ message: 'App updated' })
})

// --- Delete App ---
apps.delete('/:id', requireAuth, async (c) => {
  const appId = c.req.param('id')
  const user = c.get('user')

  const app = await c.env.DB.prepare('SELECT user_id, slug FROM apps WHERE id = ?').bind(appId).first<App>()
  if (!app) return c.json({ error: 'App not found' }, 404)
  if (app.user_id !== user.sub && user.role !== 'admin') {
    return c.json({ error: 'Not authorized' }, 403)
  }

  await c.env.DB.prepare('DELETE FROM apps WHERE id = ?').bind(appId).run()
  await c.env.CACHE.delete(`app:${app.slug}`)

  return c.json({ message: 'App deleted' })
})

export default apps
