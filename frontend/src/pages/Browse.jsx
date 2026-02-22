import { useState, useEffect, useRef } from 'react'
import { useSearchParams } from 'react-router-dom'
import { useLocale } from '../i18n/useLocale.jsx'
import { api } from '../lib/api'
import sampleApps, { categories as localCategories, allTags } from '../data/apps'
import AppCard from '../components/app/AppCard'
import { IconSearch, IconFilter } from '../components/icons'
import './Browse.css'

export default function Browse() {
  const { t, locale } = useLocale()
  const [searchParams, setSearchParams] = useSearchParams()

  const [apps, setApps] = useState([])
  const [categories, setCategories] = useState(localCategories)
  const [loading, setLoading] = useState(true)
  const [loadingMore, setLoadingMore] = useState(false)
  const [page, setPage] = useState(1)
  const [total, setTotal] = useState(0)
  const [hasMore, setHasMore] = useState(false)

  const search = searchParams.get('q') || ''
  const category = searchParams.get('category') || ''
  const tag = searchParams.get('tag') || ''
  const sort = searchParams.get('sort') || 'newest'

  // Track filter changes to reset
  const filtersKey = `${search}|${category}|${tag}|${sort}`
  const prevFiltersRef = useRef(filtersKey)

  // Fetch categories
  useEffect(() => {
    api.getCategories()
      .then(data => { if (data?.length) setCategories(data) })
      .catch(() => { })
  }, [])

  // Reset when filters change
  useEffect(() => {
    if (prevFiltersRef.current !== filtersKey) {
      prevFiltersRef.current = filtersKey
      setApps([])
      setPage(1)
    }
  }, [filtersKey])

  // Fetch apps (initial or load more)
  useEffect(() => {
    const isFirstPage = page === 1
    if (isFirstPage) setLoading(true)
    else setLoadingMore(true)

    api.getApps({ q: search, category, tag, sort, page: String(page), limit: '12', lang: locale })
      .then(data => {
        const newApps = data.apps || []
        const pagination = data.pagination || { page: 1, totalPages: 1, total: 0 }
        if (isFirstPage) {
          setApps(newApps)
        } else {
          setApps(prev => [...prev, ...newApps])
        }
        setTotal(pagination.total)
        setHasMore(pagination.page < pagination.totalPages)
      })
      .catch(() => {
        if (isFirstPage) {
          setApps(sampleApps)
          setTotal(sampleApps.length)
          setHasMore(false)
        }
      })
      .finally(() => {
        setLoading(false)
        setLoadingMore(false)
      })
  }, [search, category, tag, sort, page, locale])

  const updateParam = (key, value) => {
    const params = new URLSearchParams(searchParams)
    if (value) params.set(key, value)
    else params.delete(key)
    params.delete('page')
    setSearchParams(params)
  }

  return (
    <div className="browse">
      <div className="container">
        <h1 className="browse-title">{t('browse')}</h1>

        <div className="browse-filters">
          <div className="browse-filter-row">
            <div className="search-bar">
              <IconSearch />
              <input
                type="text"
                placeholder={t('searchPlaceholder')}
                value={search}
                onChange={e => updateParam('q', e.target.value)}
              />
            </div>

            <select className="input" value={category} onChange={e => updateParam('category', e.target.value)}>
              <option value="">{t('allCategories')}</option>
              {categories.map(cat => (
                <option key={cat.id} value={cat.slug}>
                  {t('category', cat.name_vi, cat.name_en)}
                </option>
              ))}
            </select>

            <select className="input" value={sort} onChange={e => updateParam('sort', e.target.value)}>
              <option value="newest">{t('sortNewest')}</option>
              <option value="top-rated">{t('sortTopRated')}</option>
              <option value="most-reviewed">{t('sortMostReviewed')}</option>
              <option value="az">{t('sortAZ')}</option>
            </select>
          </div>

          <div className="tag-cloud browse-tags">
            {allTags.sort((a, b) => b.count - a.count).slice(0, 12).map(t2 => (
              <button
                key={t2.name}
                className={`badge badge-tag ${tag === t2.name ? 'active' : ''}`}
                onClick={() => updateParam('tag', tag === t2.name ? '' : t2.name)}
              >
                {locale === 'vi' ? (t2.name_vi || t2.name) : t2.name}
              </button>
            ))}
          </div>
        </div>

        {loading ? (
          <div className="empty-state"><p>{t('loading')}</p></div>
        ) : apps.length > 0 ? (
          <>
            <p className="browse-count">{total} {locale === 'vi' ? 'ứng dụng' : 'apps'}</p>
            <div className="app-grid">{apps.map(app => <AppCard key={app.id} app={app} />)}</div>

            {hasMore && (
              <div className="load-more-wrapper">
                <button
                  className="btn btn-secondary load-more-btn"
                  onClick={() => setPage(p => p + 1)}
                  disabled={loadingMore}
                >
                  {loadingMore
                    ? (locale === 'vi' ? 'Đang tải...' : 'Loading...')
                    : (locale === 'vi' ? 'Tải thêm' : 'Load More')}
                </button>
              </div>
            )}
          </>
        ) : (
          <div className="empty-state">
            <IconSearch style={{ width: 48, height: 48, color: 'var(--text-muted)' }} />
            <h3>{t('noResults')}</h3>
            <p>{t('tryDifferent')}</p>
          </div>
        )}
      </div>
    </div>
  )
}

