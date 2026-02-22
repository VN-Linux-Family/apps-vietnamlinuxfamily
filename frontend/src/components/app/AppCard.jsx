import { Link } from 'react-router-dom'
import { useLocale } from '../../i18n/useLocale.jsx'

import StarRating from '../review/StarRating'
import { IconShield } from '../icons'
import './AppCard.css'

const PKG_COLORS = {
  deb: 'var(--pkg-deb)',
  flatpak: 'var(--pkg-flatpak)',
  snap: 'var(--pkg-snap)',
  appimage: 'var(--pkg-appimage)',
  source: 'var(--pkg-source)',
}

// Generate a consistent color from app name for placeholder icon
function getAppColor(name) {
  let hash = 0
  for (let i = 0; i < name.length; i++) {
    hash = name.charCodeAt(i) + ((hash << 5) - hash)
  }
  const hue = Math.abs(hash % 360)
  return `hsl(${hue}, 45%, 45%)`
}

function getInitials(name) {
  return name.split(' ').map(w => w[0]).slice(0, 2).join('').toUpperCase()
}

export default function AppCard({ app }) {
  const { t, locale } = useLocale()
  const catName = locale === 'vi' ? (app.category_name_vi || app.category_slug) : (app.category_name_en || app.category_slug)
  const catColor = app.category_color
  const desc = locale === 'vi' ? app.short_desc : (app.short_desc_en || app.short_desc)

  return (
    <Link to={`/app/${app.slug}`} className="app-card card-flat">
      <div className="app-card-header">
        {app.icon_url ? (
          <img src={app.icon_url} alt={app.name} className="app-card-icon" />
        ) : (
          <div className="app-card-icon-placeholder" style={{ background: getAppColor(app.name) }}>
            {getInitials(app.name)}
          </div>
        )}
        <div className="app-card-meta">
          <h3 className="app-card-name">
            {app.name}
            {!!app.is_verified && (
              <span className="badge badge-verified" title={t('verified')}>
                <IconShield style={{ width: 12, height: 12 }} />
              </span>
            )}
          </h3>
          {catName && (
            <span className="app-card-category" style={{ background: catColor }}>
              {catName}
            </span>
          )}
        </div>
      </div>

      <p className="app-card-desc">{desc}</p>

      <div className="app-card-footer">
        <StarRating rating={app.avg_rating} count={app.review_count} />
        <div className="app-card-packages">
          {app.package_types?.slice(0, 3).map(pkg => (
            <span key={pkg} className="badge badge-pkg" style={{ background: PKG_COLORS[pkg] || 'var(--text-muted)' }}>
              {pkg}
            </span>
          ))}
        </div>
      </div>

      {app.tags?.length > 0 && (
        <div className="app-card-tags">
          {app.tags.slice(0, 3).map(tag => (
            <span key={tag} className="badge badge-tag">{tag}</span>
          ))}
        </div>
      )}
    </Link>
  )
}
