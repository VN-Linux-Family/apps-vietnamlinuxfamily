import { useParams, Link } from 'react-router-dom'
import { useState, useEffect } from 'react'
import { useLocale } from '../i18n/useLocale.jsx'
import { useAuth } from '../hooks/useAuth.jsx'
import { api } from '../lib/api'
import sampleApps, { sampleReviews } from '../data/apps'
import AppCard from '../components/app/AppCard'
import { marked } from 'marked'
import StarRating from '../components/app/StarRating'
import { IconArrowLeft, IconShield, IconExternalLink, IconDownload, IconCode, IconCopy, IconCheck, IconTerminal, IconReply, IconThumbsUp, IconFlag } from '../components/icons'
import './AppDetail.css'

export default function AppDetail() {
  const { slug } = useParams()
  const { t, locale } = useLocale()
  const { isLoggedIn, user } = useAuth()
  const [copied, setCopied] = useState(false)
  const [showReplyFor, setShowReplyFor] = useState(null)
  const [reviewRating, setReviewRating] = useState(0)
  const [app, setApp] = useState(null)
  const [loading, setLoading] = useState(true)
  const [reviews, setReviews] = useState([])
  const [relatedApps, setRelatedApps] = useState([])

  // Review form
  const [reviewContent, setReviewContent] = useState('')
  const [reviewTitle, setReviewTitle] = useState('')
  const [submittingReview, setSubmittingReview] = useState(false)

  useEffect(() => {
    setLoading(true)
    api.getApp(slug)
      .then(data => {
        setApp(data)
        setReviews(data.reviews || [])
      })
      .catch(() => {
        // Fallback to mock data
        const mockApp = sampleApps.find(a => a.slug === slug)
        if (mockApp) {
          setApp(mockApp)
          setReviews(sampleReviews.filter(r => r.app_id === mockApp.id))
        }
      })
      .finally(() => setLoading(false))
  }, [slug])

  // Fetch related apps (same category)
  useEffect(() => {
    if (!app?.category_slug) return
    api.getApps({ category: app.category_slug, limit: '7' })
      .then(data => {
        const related = (data.apps || []).filter(a => a.slug !== slug).slice(0, 6)
        setRelatedApps(related)
      })
      .catch(() => { })
  }, [app?.category_slug, slug])

  if (loading) return <div className="container section"><p>{t('loading')}</p></div>
  if (!app) return <div className="container section"><h2>{t('noResults')}</h2></div>

  const cat = app ? { name_vi: app.category_name_vi, name_en: app.category_name_en, color: app.category_color } : null

  const copyInstall = () => {
    navigator.clipboard.writeText(app.install_command)
    setCopied(true)
    setTimeout(() => setCopied(false), 2000)
  }

  const handleSubmitReview = async () => {
    if (!reviewRating || !reviewContent.trim()) return
    setSubmittingReview(true)
    try {
      await api.createReview(app.id, {
        rating: reviewRating,
        title: reviewTitle || undefined,
        content: reviewContent,
      })
      // Refresh app data
      const data = await api.getApp(slug)
      setApp(data)
      setReviews(data.reviews || [])
      setReviewContent('')
      setReviewTitle('')
      setReviewRating(0)
    } catch (err) {
      alert(err.error || 'Failed to submit review')
    } finally {
      setSubmittingReview(false)
    }
  }

  const handleHelpful = async (reviewId) => {
    if (!isLoggedIn) {
      alert(locale === 'vi' ? 'Vui lòng đăng nhập để đánh giá' : 'Please login to mark as helpful')
      return
    }
    try {
      await api.toggleHelpful(reviewId)
      const data = await api.getApp(slug)
      setReviews(data.reviews || [])
    } catch (err) {
      alert(err.error || 'Failed to toggle helpful')
    }
  }

  const iconMedia = app.media?.find(m => m.type === 'icon')
  const screenshots = app.media?.filter(m => m.type === 'screenshot') || []

  const PKG_COLORS = {
    deb: 'var(--pkg-deb)', flatpak: 'var(--pkg-flatpak)',
    snap: 'var(--pkg-snap)', appimage: 'var(--pkg-appimage)', source: 'var(--pkg-source)',
  }

  return (
    <div className="app-detail">
      <div className="container">
        <Link to="/" className="back-link"><IconArrowLeft /> {t('back')}</Link>

        <div className="app-detail-hero">
          {iconMedia ? (
            <img src={iconMedia.image_url} alt={app.name} className="app-detail-icon-img" style={{ width: 80, height: 80, borderRadius: 16, objectFit: 'cover' }} />
          ) : (
            <div className="app-detail-icon" style={{ background: `hsl(${Math.abs([...app.name].reduce((h, c) => c.charCodeAt(0) + ((h << 5) - h), 0) % 360)}, 45%, 45%)` }}>
              {app.name.split(' ').map(w => w[0]).slice(0, 2).join('').toUpperCase()}
            </div>
          )}
          <div className="app-detail-info">
            <h1>
              {app.name}
              {!!app.is_verified && <span className="badge badge-verified"><IconShield style={{ width: 14, height: 14 }} /> {t('verified')}</span>}
            </h1>
            <p className="app-detail-desc">
              {locale === 'vi' ? (app.short_desc || app.short_desc_en) : (app.short_desc_en || app.short_desc)}
            </p>
            {app.developer_name && (
              <p className="app-detail-developer">{locale === 'vi' ? 'Nhà phát triển' : 'Developer'}: <strong>{app.developer_name}</strong></p>
            )}
            <div className="app-detail-meta">
              <StarRating rating={app.avg_rating || 0} />
              <span className="text-muted">({app.review_count || 0} {t('reviews').toLowerCase()})</span>
              {cat && <span className="badge badge-category" style={{ background: cat.color }}>{t('category', cat.name_vi, cat.name_en)}</span>}
              {app.license && <span className="app-detail-license">{app.license}</span>}
            </div>
            <div className="app-detail-packages">
              {app.package_types?.map(pkg => (
                <span key={pkg} className="badge badge-pkg" style={{ background: PKG_COLORS[pkg] }}>{pkg}</span>
              ))}
            </div>
            <div className="app-detail-tags">
              {app.tags?.map(tag => <span key={tag} className="badge badge-tag">{tag}</span>)}
            </div>
          </div>
        </div>

        <div className="app-detail-actions">
          {app.download_url && (
            <a href={app.download_url} target="_blank" rel="noopener" className="btn btn-primary btn-lg">
              <IconDownload /> {t('download')}
            </a>
          )}
          {app.website_url && (
            <a href={app.website_url} target="_blank" rel="noopener" className="btn btn-secondary">
              <IconExternalLink /> {t('website')}
            </a>
          )}
          {app.source_code_url && (
            <a href={app.source_code_url} target="_blank" rel="noopener" className="btn btn-secondary">
              <IconCode /> {t('sourceCode')}
            </a>
          )}
        </div>

        {/* Screenshots */}
        {screenshots.length > 0 && (
          <section className="detail-section">
            <h2>{locale === 'vi' ? 'Ảnh chụp màn hình' : 'Screenshots'}</h2>
            <div style={{ display: 'flex', gap: '1rem', overflowX: 'auto', padding: '0.5rem 0' }}>
              {screenshots.map(ss => (
                <img key={ss.id} src={ss.image_url} alt={ss.caption || 'Screenshot'} style={{ maxHeight: 240, borderRadius: 12, border: '1px solid var(--border)' }} />
              ))}
            </div>
          </section>
        )}

        {/* Install Command */}
        {app.install_command && (
          <div className="install-block">
            <div className="install-header">
              <IconTerminal style={{ width: 18, height: 18 }} />
              <span>{t('installCommand')}</span>
            </div>
            <div className="install-command">
              <code>{app.install_command}</code>
              <button onClick={copyInstall} className="install-copy" title={t('copyCommand')}>
                {copied ? <><IconCheck /> {t('copied')}</> : <><IconCopy /> {t('copyCommand')}</>}
              </button>
            </div>
          </div>
        )}

        {/* Description */}
        <section className="detail-section">
          <h2>{t('description')}</h2>
          <div className="app-description" dangerouslySetInnerHTML={{
            __html: marked.parse(
              (locale === 'vi'
                ? (app.description || app.description_en || 'Chưa có mô tả chi tiết.')
                : (app.description_en || app.description || 'No detailed description yet.'))
            )
          }} />
        </section>

        {/* Reviews */}
        <section className="detail-section">
          <div className="section-title">
            <h2>{t('reviews')} ({reviews.length})</h2>
          </div>

          {/* Write Review */}
          {isLoggedIn && (
            <div className="card" style={{ padding: '1.5rem', marginBottom: '1.5rem', display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
              <h3 style={{ margin: 0 }}>{t('writeReview')}</h3>
              <div style={{ display: 'flex', gap: 4 }}>
                {[1, 2, 3, 4, 5].map(s => (
                  <button key={s} onClick={() => setReviewRating(s)} style={{ background: 'none', border: 'none', cursor: 'pointer', fontSize: 24, color: s <= reviewRating ? 'var(--star-filled, #f59e0b)' : '#ccc', padding: 0 }}>★</button>
                ))}
              </div>
              <input className="input" placeholder={locale === 'vi' ? 'Tiêu đề (tuỳ chọn)' : 'Title (optional)'} value={reviewTitle} onChange={e => setReviewTitle(e.target.value)} style={{ width: '100%', boxSizing: 'border-box' }} />
              <textarea className="input" placeholder={locale === 'vi' ? 'Viết đánh giá...' : 'Write your review...'} value={reviewContent} onChange={e => setReviewContent(e.target.value)} rows={3} style={{ width: '100%', boxSizing: 'border-box', resize: 'vertical', display: 'block' }} />
              <div>
                <button className="btn btn-primary btn-sm" onClick={handleSubmitReview} disabled={submittingReview || !reviewRating || !reviewContent.trim()}>
                  {submittingReview ? t('loading') : t('submit')}
                </button>
              </div>
            </div>
          )}

          {reviews.length === 0 ? (
            <div className="empty-state">
              <p>{t('noReviews')}</p>
              <p className="text-muted">{t('beFirst')}</p>
            </div>
          ) : (
            <div className="reviews-list">
              {reviews.map(review => (
                <div key={review.id} className="review-card card">
                  <div className="review-header">
                    <div className="review-author">{review.user_display_name || review.user?.display_name}</div>
                    <StarRating rating={review.rating} size={14} />
                    <span className="review-date">{review.created_at}</span>
                  </div>
                  {review.title && <h4 className="review-title">{review.title}</h4>}
                  <p className="review-content">{review.content}</p>
                  <div className="review-actions">
                    <button className="review-action" onClick={() => handleHelpful(review.id)}>
                      <IconThumbsUp /> {review.helpful_count} {t('helpful')}
                    </button>
                    <button className="review-action" onClick={() => setShowReplyFor(showReplyFor === review.id ? null : review.id)}>
                      <IconReply /> {t('reply')}
                    </button>
                  </div>

                  {/* Replies */}
                  {review.replies?.length > 0 && (
                    <div className="review-replies">
                      {review.replies.map(r => (
                        <div key={r.id} className="reply-card">
                          <strong>{r.user_display_name || r.user?.display_name}</strong>
                          <span className="reply-date">{r.created_at}</span>
                          <p>{r.content}</p>
                        </div>
                      ))}
                    </div>
                  )}

                  {showReplyFor === review.id && (
                    <div className="reply-form">
                      <input type="text" className="input" placeholder={t('replyPlaceholder')} id={`reply-${review.id}`} />
                      <button className="btn btn-primary btn-sm" onClick={async () => {
                        const input = document.getElementById(`reply-${review.id}`)
                        if (!input.value.trim()) return
                        try {
                          await api.replyToReview(review.id, input.value)
                          const data = await api.getApp(slug)
                          setReviews(data.reviews || [])
                          setShowReplyFor(null)
                        } catch { }
                      }}>{t('submitReply')}</button>
                    </div>
                  )}
                </div>
              ))}
            </div>
          )}

          {!isLoggedIn && (
            <p className="login-prompt">
              <Link to="/login">{t('loginToReview')}</Link>
            </p>
          )}
        </section>

        {/* Related Apps */}
        {relatedApps.length > 0 && (
          <section className="section related-apps-section">
            <h2 className="related-apps-title">
              {locale === 'vi' ? 'Ứng dụng tương tự' : 'Related Apps'}
            </h2>
            <div className="app-grid">{relatedApps.map(a => <AppCard key={a.id} app={a} />)}</div>
          </section>
        )}
      </div>
    </div>
  )
}
