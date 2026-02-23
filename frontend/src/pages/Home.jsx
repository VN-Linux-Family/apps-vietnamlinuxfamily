import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import { useLocale } from '../i18n/useLocale.jsx'
import { api } from '../lib/api'
import sampleApps, { categories as localCategories, allTags } from '../data/apps'
import { alternatives } from '../data/alternatives'
import AppCard from '../components/app/AppCard'
import { IconSearch, IconTrendingUp, IconAward, IconClock, IconStar, IconChevronRight } from '../components/icons'
import './Home.css'

const ALT_PICKS = ['Photoshop', 'Microsoft Office', 'Chrome', 'Premiere Pro', 'Notepad++', 'Discord', 'Steam', 'AutoCAD']

function transformApp(app) {
  if (!app) return null
  if (!app.icon_url && app.media) {
    const icon = app.media.find(m => m.type === 'icon')
    app.icon_url = icon?.image_url || null
  }
  return app
}

export default function Home() {
  const { t, locale } = useLocale()
  const [search, setSearch] = useState('')
  const [debouncedSearch, setDebouncedSearch] = useState('')
  const [selectedTags, setSelectedTags] = useState([])
  const [categories, setCategories] = useState(localCategories)
  const [homeData, setHomeData] = useState(null)
  const [searchResults, setSearchResults] = useState([])
  const [loading, setLoading] = useState(true)
  const [searching, setSearching] = useState(false)
  const [altPick, setAltPick] = useState('Photoshop')
  const [altApps, setAltApps] = useState([])
  const [altLoading, setAltLoading] = useState(false)

  // Debounce search input (300ms)
  useEffect(() => {
    const timer = setTimeout(() => setDebouncedSearch(search), 300)
    return () => clearTimeout(timer)
  }, [search])

  // Fetch homepage data
  useEffect(() => {
    setLoading(true)
    api.getHomepage()
      .then(data => setHomeData(data))
      .catch(() => { })
      .finally(() => setLoading(false))
    api.getCategories()
      .then(data => { if (data?.length) setCategories(data) })
      .catch(() => { })
  }, [])

  // Fetch alternative preview apps
  useEffect(() => {
    if (!altPick || !alternatives[altPick]) return
    setAltLoading(true)
    const slugs = alternatives[altPick].apps.slice(0, 4)
    Promise.all(slugs.map(slug => api.getApp(slug).catch(() => null)))
      .then(results => {
        setAltApps(results.map(transformApp).filter(Boolean))
        setAltLoading(false)
      })
  }, [altPick])

  // Fetch search results (debounced)
  useEffect(() => {
    if (!debouncedSearch && selectedTags.length === 0) {
      setSearchResults([])
      return
    }
    setSearching(true)
    const params = { limit: '50', lang: locale }
    if (debouncedSearch) params.q = debouncedSearch
    if (selectedTags.length > 0) params.tag = selectedTags[0]
    api.getApps(params)
      .then(data => setSearchResults(data.apps || []))
      .catch(() => setSearchResults([]))
      .finally(() => setSearching(false))
  }, [debouncedSearch, selectedTags, locale])

  const toggleTag = (tag) => {
    setSelectedTags(prev =>
      prev.includes(tag) ? prev.filter(t => t !== tag) : [...prev, tag]
    )
  }

  const isSearching = search || selectedTags.length > 0

  return (
    <div className="home">
      {/* Hero */}
      <section className="hero">
        <div className="container">
          <h1 className="hero-title">{t('heroTitle')}</h1>
          <p className="hero-subtitle">{t('heroSubtitle')}</p>
          <div className="search-bar hero-search">
            <IconSearch />
            <input
              type="text"
              placeholder={t('searchPlaceholder')}
              value={search}
              onChange={e => setSearch(e.target.value)}
            />
          </div>
        </div>
      </section>

      {/* Categories */}
      <section className="container">
        <div className="category-pills">
          {categories.map(cat => (
            <Link
              key={cat.id}
              to={`/browse?category=${cat.slug}`}
              className="category-pill"
              style={{ '--pill-color': cat.color }}
            >
              {t('category', cat.name_vi, cat.name_en)}
            </Link>
          ))}
        </div>
      </section>

      {/* Tag Cloud */}
      <section className="container tag-section">
        <div className="tag-cloud">
          {allTags.sort((a, b) => b.count - a.count).slice(0, 15).map(tag => (
            <button
              key={tag.name}
              className={`badge badge-tag ${selectedTags.includes(tag.name) ? 'active' : ''}`}
              onClick={() => toggleTag(tag.name)}
            >
              {locale === 'vi' ? (tag.name_vi || tag.name) : tag.name}
            </button>
          ))}
        </div>
      </section>

      <div className="container">
        {isSearching ? (
          <section className="section">
            <div className="section-title">
              <h2>{searching ? '...' : `${searchResults.length} ${t('appFound')}`}</h2>
            </div>
            {searching ? (
              <div className="empty-state"><p>{t('loading')}</p></div>
            ) : searchResults.length > 0 ? (
              <div className="app-grid">{searchResults.map(app => <AppCard key={app.id} app={app} />)}</div>
            ) : (
              <div className="empty-state">
                <IconSearch style={{ width: 48, height: 48, color: 'var(--text-muted)' }} />
                <h3>{t('noResults')}</h3>
                <p>{t('tryDifferent')}</p>
              </div>
            )}
          </section>
        ) : loading ? (
          <div className="section" style={{ textAlign: 'center', padding: '3rem 0' }}>
            <p>{t('loading')}</p>
          </div>
        ) : homeData ? (
          <>
            {/* Switch from Windows/Mac */}
            <section className="section alt-section-home">
              <div className="section-title">
                <h2>{locale === 'vi' ? 'Chuyển từ Windows?' : 'Switching from Windows?'}</h2>
                <Link to="/alternatives" className="btn btn-secondary btn-sm">
                  {locale === 'vi' ? 'Xem tất cả' : 'View all'} <IconChevronRight />
                </Link>
              </div>
              <p className="alt-home-desc">{locale === 'vi'
                ? 'Tìm phần mềm Linux thay thế cho phần mềm Windows/Mac bạn đang dùng'
                : 'Find Linux alternatives for the Windows/Mac software you use'
              }</p>
              <div className="alt-home-chips">
                {ALT_PICKS.map(name => (
                  <button key={name}
                    className={`alt-home-chip${altPick === name ? ' active' : ''}`}
                    onClick={() => setAltPick(name)}
                  >
                    {name}
                  </button>
                ))}
              </div>
              {altPick && (
                <div className="alt-home-preview">
                  <div className="alt-preview-header">
                    <span className="alt-preview-label">
                      {locale === 'vi' ? 'Thay thế cho' : 'Alternatives for'} <strong>{altPick}</strong>:
                    </span>
                    <Link to={`/alternatives?q=${encodeURIComponent(altPick)}`} className="alt-preview-more">
                      {locale === 'vi' ? 'Xem thêm' : 'See more'} →
                    </Link>
                  </div>
                  {altLoading ? (
                    <p style={{ color: 'var(--text-muted)', fontSize: '0.85rem' }}>{locale === 'vi' ? 'Đang tải...' : 'Loading...'}</p>
                  ) : (
                    <div className="app-grid">{altApps.slice(0, 4).map(app => <AppCard key={app.id || app.slug} app={app} />)}</div>
                  )}
                </div>
              )}
            </section>

            {/* Popular Apps */}
            {homeData.popular?.length > 0 && (
              <section className="section">
                <div className="section-title">
                  <h2><IconTrendingUp style={{ width: 24, height: 24, color: 'var(--accent)' }} /> {locale === 'vi' ? 'Phổ biến' : 'Popular Apps'}</h2>
                  <Link to="/browse?sort=trending" className="btn btn-secondary btn-sm">
                    {t('viewAll')} <IconChevronRight />
                  </Link>
                </div>
                <div className="app-grid">{homeData.popular.map(app => <AppCard key={app.id} app={app} />)}</div>
              </section>
            )}

            {/* Editor's Picks */}
            {homeData.editors_picks?.length > 0 && (
              <section className="section">
                <div className="section-title">
                  <h2><IconAward style={{ width: 24, height: 24, color: 'var(--accent)' }} /> {locale === 'vi' ? 'Lựa chọn biên tập' : "Editor's Picks"}</h2>
                  <Link to="/browse" className="btn btn-secondary btn-sm">
                    {t('viewAll')} <IconChevronRight />
                  </Link>
                </div>
                <div className="app-grid">{homeData.editors_picks.map(app => <AppCard key={app.id} app={app} />)}</div>
              </section>
            )}

            {/* Newest */}
            {homeData.newest?.length > 0 && (
              <section className="section">
                <div className="section-title">
                  <h2><IconClock style={{ width: 24, height: 24, color: 'var(--accent)' }} /> {locale === 'vi' ? 'Mới cập nhật' : 'Recently Updated'}</h2>
                  <Link to="/browse?sort=newest" className="btn btn-secondary btn-sm">
                    {t('viewAll')} <IconChevronRight />
                  </Link>
                </div>
                <div className="app-grid">{homeData.newest.map(app => <AppCard key={app.id} app={app} />)}</div>
              </section>
            )}

            {/* Browse by Category */}
            {homeData.by_category?.length > 0 && (
              <>
                <div className="section-divider">
                  <h2>{locale === 'vi' ? 'Khám phá theo danh mục' : 'Browse by Category'}</h2>
                </div>
                {homeData.by_category.map(({ category, apps: catApps }) => (
                  <section key={category.id} className="section category-section">
                    <div className="section-title">
                      <h2>
                        <span className="category-dot" style={{ background: category.color }}></span>
                        {locale === 'vi' ? category.name_vi : category.name_en}
                      </h2>
                      <Link to={`/browse?category=${category.slug}`} className="btn btn-secondary btn-sm">
                        {t('viewAll')} <IconChevronRight />
                      </Link>
                    </div>
                    <div className="app-scroll">
                      {catApps.map(app => <AppCard key={app.id} app={app} />)}
                    </div>
                  </section>
                ))}
              </>
            )}
          </>
        ) : null}
      </div>
    </div>
  )
}
