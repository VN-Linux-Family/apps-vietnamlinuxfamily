import { useState, useEffect, useMemo } from 'react'
import { useSearchParams, Link } from 'react-router-dom'
import { useLocale } from '../i18n/useLocale.jsx'
import { api } from '../lib/api'
import { reverseLookup, alternatives } from '../data/alternatives'
import AppCard from '../components/app/AppCard'
import { IconSearch, IconArrowLeft } from '../components/icons'
import './Alternatives.css'

// Transform detail API response to AppCard format
function transformApp(app) {
  if (!app) return null
  if (!app.icon_url && app.media) {
    const icon = app.media.find(m => m.type === 'icon')
    app.icon_url = icon?.image_url || null
  }
  return app
}

// Popular Windows/Mac apps to show as quick buttons
const POPULAR_APPS = [
  'Photoshop', 'Microsoft Office', 'Premiere Pro', 'Chrome',
  'Notepad++', 'Visual Studio Code', 'Discord', 'Zoom',
  'iTunes', 'WinRAR', 'CCleaner', 'Steam',
  'WhatsApp', 'Outlook', 'AutoCAD', 'FL Studio',
  'TeamViewer', 'IDM', 'Audacity', 'OBS Studio',
  'Notion', 'Evernote', '1Password', 'VirtualBox'
]

export default function Alternatives() {
  const { locale } = useLocale()
  const [searchParams, setSearchParams] = useSearchParams()
  const initialQ = searchParams.get('q') || ''
  const [search, setSearch] = useState(initialQ)
  const [debouncedSearch, setDebouncedSearch] = useState(initialQ)
  const [apps, setApps] = useState([])
  const [loading, setLoading] = useState(false)
  const [matchedWinApp, setMatchedWinApp] = useState('')

  // Debounce
  useEffect(() => {
    const t = setTimeout(() => setDebouncedSearch(search), 300)
    return () => clearTimeout(t)
  }, [search])

  // Search logic
  useEffect(() => {
    if (!debouncedSearch.trim()) {
      setApps([])
      setMatchedWinApp('')
      return
    }

    const key = debouncedSearch.toLowerCase().trim()
    const match = reverseLookup[key]

    if (match) {
      // Exact match in knowledge base
      setMatchedWinApp(match.original)
      setLoading(true)
      // Fetch matched apps by slug
      Promise.all(
        match.apps.map(slug =>
          api.getApp(slug).catch(() => null)
        )
      ).then(results => {
        setApps(results.map(transformApp).filter(Boolean))
        setLoading(false)
      })
    } else {
      // Fuzzy: find partial matches in alternatives keys
      const partialMatches = Object.entries(reverseLookup).filter(([k]) =>
        k.includes(key) || key.includes(k)
      )

      if (partialMatches.length > 0) {
        setMatchedWinApp(partialMatches.map(([, v]) => v.original).join(', '))
        const allSlugs = [...new Set(partialMatches.flatMap(([, v]) => v.apps))]
        setLoading(true)
        Promise.all(
          allSlugs.slice(0, 12).map(slug =>
            api.getApp(slug).catch(() => null)
          )
        ).then(results => {
          setApps(results.map(transformApp).filter(Boolean))
          setLoading(false)
        })
      } else {
        // Fallback: search our apps DB directly
        setMatchedWinApp('')
        setLoading(true)
        api.getApps({ q: debouncedSearch, limit: 20 })
          .then(data => {
            setApps(data.apps || [])
            setLoading(false)
          })
          .catch(() => { setApps([]); setLoading(false) })
      }
    }

    setSearchParams({ q: debouncedSearch }, { replace: true })
  }, [debouncedSearch])

  const handleQuickSearch = (name) => {
    setSearch(name)
    setDebouncedSearch(name)
  }

  return (
    <div className="alternatives-page">
      <div className="container">
        {/* Hero */}
        <div className="alt-hero">
          <Link to="/" className="alt-back">
            <IconArrowLeft /> {locale === 'vi' ? 'Trang chủ' : 'Home'}
          </Link>
          <h1>{locale === 'vi'
            ? 'Tìm phần mềm Linux thay thế'
            : 'Find Linux Alternatives'
          }</h1>
          <p className="alt-subtitle">{locale === 'vi'
            ? 'Nhập tên phần mềm Windows/Mac bạn đang dùng, chúng tôi sẽ gợi ý phần mềm Linux tương đương'
            : 'Enter the Windows/Mac software you use, we\'ll suggest Linux equivalents'
          }</p>

          <div className="alt-search-wrapper">
            <IconSearch className="alt-search-icon" />
            <input
              className="alt-search-input"
              value={search}
              onChange={e => setSearch(e.target.value)}
              placeholder={locale === 'vi'
                ? 'Nhập tên phần mềm: Photoshop, Office, Chrome...'
                : 'Enter software name: Photoshop, Office, Chrome...'
              }
              autoFocus
            />
          </div>
        </div>

        {/* Results */}
        {debouncedSearch.trim() ? (
          <section className="alt-results">
            {matchedWinApp && (
              <div className="alt-match-badge">
                {locale === 'vi'
                  ? `Thay thế cho: ${matchedWinApp}`
                  : `Alternatives for: ${matchedWinApp}`
                }
              </div>
            )}
            {loading ? (
              <div className="alt-loading">
                <p>{locale === 'vi' ? 'Đang tìm...' : 'Searching...'}</p>
              </div>
            ) : apps.length > 0 ? (
              <div className="app-grid">
                {apps.map(app => <AppCard key={app.id || app.slug} app={app} />)}
              </div>
            ) : (
              <div className="alt-empty">
                <h3>{locale === 'vi' ? 'Không tìm thấy kết quả' : 'No results found'}</h3>
                <p>{locale === 'vi'
                  ? 'Thử tìm với tên khác hoặc chọn từ danh sách bên dưới'
                  : 'Try a different name or pick from the list below'
                }</p>
              </div>
            )}
          </section>
        ) : null}

        {/* Popular Windows/Mac apps */}
        <section className="alt-popular">
          <h2>{locale === 'vi'
            ? 'Phần mềm Windows/Mac phổ biến'
            : 'Popular Windows/Mac Software'
          }</h2>
          <div className="alt-chips">
            {POPULAR_APPS.map(name => (
              <button
                key={name}
                className={`alt-chip ${search === name ? 'active' : ''}`}
                onClick={() => handleQuickSearch(name)}
              >
                {name}
              </button>
            ))}
          </div>
        </section>

        {/* Stats */}
        <div className="alt-stats">
          <p>{locale === 'vi'
            ? `Cơ sở dữ liệu: ${Object.keys(alternatives).length}+ phần mềm Windows/Mac đã được ánh xạ`
            : `Database: ${Object.keys(alternatives).length}+ Windows/Mac apps mapped`
          }</p>
        </div>
      </div>
    </div>
  )
}
