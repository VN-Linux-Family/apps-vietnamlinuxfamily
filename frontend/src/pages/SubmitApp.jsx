import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useLocale } from '../i18n/useLocale.jsx'
import { useAuth } from '../hooks/useAuth.jsx'
import { api } from '../lib/api'
import { categories as localCategories, allTags } from '../data/apps'
import { IconPlus, IconX, IconCheck, IconArrowLeft, IconChevronRight } from '../components/icons'
import './SubmitApp.css'

const STEPS = ['info', 'media', 'tags', 'preview']

export default function SubmitApp() {
  const { t, locale } = useLocale()
  const { isLoggedIn } = useAuth()
  const navigate = useNavigate()

  const [categories, setCategories] = useState(localCategories)
  const [submitting, setSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState('')

  useEffect(() => {
    api.getCategories()
      .then(data => { if (data?.length) setCategories(data) })
      .catch(() => { })
  }, [])

  const [step, setStep] = useState(0)
  const [form, setForm] = useState({
    name: '',
    developerName: '',
    shortDesc: '',
    shortDescEn: '',
    description: '',
    descriptionEn: '',
    categoryId: '',
    websiteUrl: '',
    downloadUrl: '',
    sourceCodeUrl: '',
    installCommand: '',
    license: '',
    packageTypes: [],
    tags: [],
  })
  const [stepErrors, setStepErrors] = useState([])
  const [tagInput, setTagInput] = useState('')
  const [iconFile, setIconFile] = useState(null)
  const [iconPreview, setIconPreview] = useState(null)
  const [screenshots, setScreenshots] = useState([])
  const [screenshotPreviews, setScreenshotPreviews] = useState([])
  const [dragOverIcon, setDragOverIcon] = useState(false)
  const [dragOverScreenshot, setDragOverScreenshot] = useState(false)

  const processIconFile = (file) => {
    if (!file) return
    if (file.size > 200 * 1024) {
      alert(locale === 'vi' ? 'Icon tối đa 200KB' : 'Icon max 200KB')
      return
    }
    const validTypes = ['image/svg+xml', 'image/png', 'image/jpeg']
    if (!validTypes.includes(file.type)) {
      alert(locale === 'vi' ? 'Chỉ chấp nhận SVG, PNG, JPG' : 'Only SVG, PNG, JPG accepted')
      return
    }
    setIconFile(file)
    setIconPreview(URL.createObjectURL(file))
  }

  const handleIconChange = (e) => processIconFile(e.target.files[0])

  const handleIconDrop = (e) => {
    e.preventDefault()
    e.stopPropagation()
    setDragOverIcon(false)
    processIconFile(e.dataTransfer.files[0])
  }

  const removeIcon = () => {
    setIconFile(null)
    if (iconPreview) URL.revokeObjectURL(iconPreview)
    setIconPreview(null)
  }

  const processScreenshotFiles = (files) => {
    const remaining = 5 - screenshots.length
    const validTypes = ['image/png', 'image/jpeg', 'image/webp']
    const valid = files.filter(f => f.size <= 2 * 1024 * 1024 && validTypes.includes(f.type)).slice(0, remaining)
    if (valid.length < files.length) {
      alert(locale === 'vi' ? 'Một số ảnh quá 2MB hoặc vượt giới hạn 5 ảnh' : 'Some images exceed 2MB or the 5 image limit')
    }
    setScreenshots(prev => [...prev, ...valid])
    setScreenshotPreviews(prev => [...prev, ...valid.map(f => URL.createObjectURL(f))])
  }

  const handleScreenshots = (e) => processScreenshotFiles(Array.from(e.target.files))

  const handleScreenshotDrop = (e) => {
    e.preventDefault()
    e.stopPropagation()
    setDragOverScreenshot(false)
    processScreenshotFiles(Array.from(e.dataTransfer.files))
  }

  const removeScreenshot = (idx) => {
    URL.revokeObjectURL(screenshotPreviews[idx])
    setScreenshots(prev => prev.filter((_, i) => i !== idx))
    setScreenshotPreviews(prev => prev.filter((_, i) => i !== idx))
  }

  const update = (key, val) => {
    setForm(prev => ({ ...prev, [key]: val }))
    setStepErrors([]) // clear errors on input change
  }

  const validateStep = (stepIndex) => {
    const errors = []
    if (stepIndex === 0) {
      if (!form.name.trim()) errors.push(locale === 'vi' ? 'Vui lòng nhập tên ứng dụng' : 'App name is required')
      if (!form.developerName.trim()) errors.push(locale === 'vi' ? 'Vui lòng nhập tên tác giả / nhà phát triển' : 'Developer name is required')
      if (!form.shortDesc.trim()) errors.push(locale === 'vi' ? 'Vui lòng nhập mô tả ngắn tiếng Việt' : 'Vietnamese short description is required')
      if (!form.description.trim()) errors.push(locale === 'vi' ? 'Vui lòng nhập mô tả chi tiết tiếng Việt' : 'Vietnamese full description is required')
      if (!form.categoryId) errors.push(locale === 'vi' ? 'Vui lòng chọn danh mục' : 'Category is required')
    }
    // Step 1 (media) and Step 2 (tags) are optional
    return errors
  }

  const handleNext = () => {
    const errors = validateStep(step)
    if (errors.length > 0) {
      setStepErrors(errors)
      return
    }
    setStepErrors([])
    setStep(s => s + 1)
  }

  const togglePkg = (pkg) => {
    update('packageTypes', form.packageTypes.includes(pkg)
      ? form.packageTypes.filter(p => p !== pkg)
      : [...form.packageTypes, pkg]
    )
  }

  const addTag = (tag) => {
    const cleaned = tag.toLowerCase().trim().replace(/\s+/g, '-')
    if (cleaned && !form.tags.includes(cleaned) && form.tags.length < 10) {
      update('tags', [...form.tags, cleaned])
    }
    setTagInput('')
  }

  const removeTag = (tag) => {
    update('tags', form.tags.filter(t => t !== tag))
  }

  const handleTagKeyDown = (e) => {
    if (e.key === 'Enter' || e.key === ',') {
      e.preventDefault()
      addTag(tagInput)
    }
  }

  const suggestedTags = tagInput
    ? allTags.filter(t => t.name.includes(tagInput.toLowerCase())).slice(0, 5)
    : []

  if (!isLoggedIn) {
    return (
      <div className="submit-app">
        <div className="container">
          <div className="submit-login-prompt">
            <h2>{t('loginToReview')}</h2>
            <button className="btn btn-primary" onClick={() => navigate('/login')}>{t('login')}</button>
          </div>
        </div>
      </div>
    )
  }

  const cat = categories.find(c => c.id === Number(form.categoryId))

  return (
    <div className="submit-app">
      <div className="container">
        <h1 className="submit-title">{t('submitAppTitle')}</h1>

        {/* Steps indicator */}
        <div className="steps-indicator">
          {STEPS.map((s, i) => (
            <div key={s} className={`step-dot ${i === step ? 'active' : ''} ${i < step ? 'done' : ''}`}>
              {i < step ? <IconCheck style={{ width: 14, height: 14 }} /> : i + 1}
            </div>
          ))}
        </div>

        <div className="submit-card card">
          {/* Step 1: Basic Info */}
          {step === 0 && (
            <div className="submit-step">
              <h2>{t('step')} 1 — {locale === 'vi' ? 'Thông tin cơ bản' : 'Basic Info'}</h2>

              <div className="input-group">
                <label>{t('appName_field')} *</label>
                <input className="input" value={form.name} onChange={e => update('name', e.target.value)} placeholder="Firefox, GIMP, OBS..." />
              </div>

              <div className="input-group">
                <label>{locale === 'vi' ? 'Tác giả / Nhà phát triển' : 'Developer'} *</label>
                <input className="input" value={form.developerName} onChange={e => update('developerName', e.target.value)} placeholder={locale === 'vi' ? 'Mozilla Foundation, Valve, KDE...' : 'Mozilla Foundation, Valve, KDE...'} />
              </div>

              <h3 className="section-label" style={{ marginTop: '1.5rem', marginBottom: '0.5rem', color: 'var(--accent)' }}>{locale === 'vi' ? 'Tiếng Việt' : 'Vietnamese'}</h3>

              <div className="input-group">
                <label>{locale === 'vi' ? 'Mô tả ngắn (tiếng Việt)' : 'Short Description (Vietnamese)'} *</label>
                <input className="input" value={form.shortDesc} onChange={e => update('shortDesc', e.target.value)} maxLength={120} placeholder={locale === 'vi' ? 'Mô tả ngắn gọn bằng tiếng Việt' : 'Short description in Vietnamese'} />
                <span className="char-count">{form.shortDesc.length}/120</span>
              </div>

              <div className="input-group">
                <label>{locale === 'vi' ? 'Mô tả chi tiết (tiếng Việt)' : 'Full Description (Vietnamese)'} *</label>
                <textarea className="input" value={form.description} onChange={e => update('description', e.target.value)} rows={5} placeholder={locale === 'vi' ? 'Mô tả đầy đủ bằng tiếng Việt...' : 'Full description in Vietnamese...'} />
              </div>

              <h3 className="section-label" style={{ marginTop: '1.5rem', marginBottom: '0.5rem', color: 'var(--text-muted)' }}>{locale === 'vi' ? 'Tiếng Anh (không bắt buộc)' : 'English (optional)'}</h3>

              <div className="input-group">
                <label>{locale === 'vi' ? 'Mô tả ngắn (tiếng Anh)' : 'Short Description (English)'}</label>
                <input className="input" value={form.shortDescEn} onChange={e => update('shortDescEn', e.target.value)} maxLength={120} placeholder={locale === 'vi' ? 'Short description in English' : 'Short description in English'} />
                <span className="char-count">{form.shortDescEn.length}/120</span>
              </div>

              <div className="input-group">
                <label>{locale === 'vi' ? 'Mô tả chi tiết (tiếng Anh)' : 'Full Description (English)'}</label>
                <textarea className="input" value={form.descriptionEn} onChange={e => update('descriptionEn', e.target.value)} rows={5} placeholder={locale === 'vi' ? 'Full description in English...' : 'Full description in English...'} />
              </div>

              <div className="input-group">
                <label>{t('category')} *</label>
                <select className="input" value={form.categoryId} onChange={e => update('categoryId', e.target.value)}>
                  <option value="">{t('selectCategory')}</option>
                  {categories.map(cat => (
                    <option key={cat.id} value={cat.id}>
                      {t('category', cat.name_vi, cat.name_en)}
                    </option>
                  ))}
                </select>
              </div>

              <div className="form-row">
                <div className="input-group">
                  <label>{t('website')}</label>
                  <input className="input" value={form.websiteUrl} onChange={e => update('websiteUrl', e.target.value)} placeholder="https://..." />
                </div>
                <div className="input-group">
                  <label>{t('download')}</label>
                  <input className="input" value={form.downloadUrl} onChange={e => update('downloadUrl', e.target.value)} placeholder="https://..." />
                </div>
              </div>

              <div className="form-row">
                <div className="input-group">
                  <label>{t('sourceCode')}</label>
                  <input className="input" value={form.sourceCodeUrl} onChange={e => update('sourceCodeUrl', e.target.value)} placeholder="https://github.com/..." />
                </div>
                <div className="input-group">
                  <label>{t('license')}</label>
                  <input className="input" value={form.license} onChange={e => update('license', e.target.value)} placeholder="GPL-3.0, MIT, Apache-2.0..." />
                </div>
              </div>

              <div className="input-group">
                <label>{t('installCommand')}</label>
                <input className="input" value={form.installCommand} onChange={e => update('installCommand', e.target.value)} placeholder="sudo apt install ..." style={{ fontFamily: 'monospace' }} />
              </div>

              <div className="input-group">
                <label>{t('packageTypes')}</label>
                <div className="pkg-toggles">
                  {['deb', 'flatpak', 'snap', 'appimage', 'source'].map(pkg => (
                    <button
                      key={pkg}
                      type="button"
                      className={`pkg-toggle ${form.packageTypes.includes(pkg) ? 'active' : ''}`}
                      onClick={() => togglePkg(pkg)}
                    >
                      {pkg}
                    </button>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* Step 2: Media */}
          {step === 1 && (
            <div className="submit-step">
              <h2>{t('step')} 2 — {locale === 'vi' ? 'Hình ảnh' : 'Media'}</h2>

              <div className="input-group">
                <label>{t('iconUpload')}</label>
                {iconPreview ? (
                  <div className="upload-preview-single">
                    <img src={iconPreview} alt="Icon" className="icon-preview" />
                    <div className="upload-preview-info">
                      <span>{iconFile.name}</span>
                      <span className="upload-hint">{(iconFile.size / 1024).toFixed(0)} KB</span>
                    </div>
                    <button type="button" className="upload-remove" onClick={removeIcon}>
                      <IconX style={{ width: 16, height: 16 }} />
                    </button>
                  </div>
                ) : (
                  <label className={`upload-zone ${dragOverIcon ? 'drag-over' : ''}`} onDrop={handleIconDrop} onDragOver={e => { e.preventDefault(); setDragOverIcon(true) }} onDragLeave={() => setDragOverIcon(false)}>
                    <input type="file" accept="image/svg+xml,image/png,image/jpeg" onChange={handleIconChange} hidden />
                    <IconPlus style={{ width: 32, height: 32, color: 'var(--text-muted)' }} />
                    <p>{t('dragOrClick')}</p>
                    <span className="upload-hint">{locale === 'vi' ? 'SVG, PNG hoặc JPG — tối đa 200KB' : 'SVG, PNG or JPG — max 200KB'}</span>
                  </label>
                )}
              </div>

              <div className="input-group">
                <label>{t('screenshotUpload')} ({screenshots.length}/5)</label>
                {screenshotPreviews.length > 0 && (
                  <div className="screenshot-grid">
                    {screenshotPreviews.map((src, i) => (
                      <div key={i} className="screenshot-thumb">
                        <img src={src} alt={`Screenshot ${i + 1}`} />
                        <button type="button" className="screenshot-remove" onClick={() => removeScreenshot(i)}>
                          <IconX style={{ width: 12, height: 12 }} />
                        </button>
                      </div>
                    ))}
                  </div>
                )}
                {screenshots.length < 5 && (
                  <label className={`upload-zone upload-zone-sm ${dragOverScreenshot ? 'drag-over' : ''}`} onDrop={handleScreenshotDrop} onDragOver={e => { e.preventDefault(); setDragOverScreenshot(true) }} onDragLeave={() => setDragOverScreenshot(false)}>
                    <input type="file" accept="image/png,image/jpeg,image/webp" multiple onChange={handleScreenshots} hidden />
                    <IconPlus style={{ width: 24, height: 24, color: 'var(--text-muted)' }} />
                    <p>{t('dragOrClick')}</p>
                    <span className="upload-hint">{locale === 'vi' ? 'PNG/JPG/WebP, tối đa 2MB mỗi ảnh' : 'PNG/JPG/WebP, max 2MB each'}</span>
                  </label>
                )}
              </div>
            </div>
          )}

          {/* Step 3: Tags */}
          {step === 2 && (
            <div className="submit-step">
              <h2>{t('step')} 3 — Tags</h2>

              <div className="input-group">
                <label>{t('tags')}</label>
                <div className="tag-input-wrapper">
                  <div className="tag-input-tags">
                    {form.tags.map(tag => (
                      <span key={tag} className="badge badge-tag active">
                        {tag}
                        <button type="button" onClick={() => removeTag(tag)} className="tag-remove">
                          <IconX style={{ width: 12, height: 12 }} />
                        </button>
                      </span>
                    ))}
                  </div>
                  <input
                    className="input"
                    value={tagInput}
                    onChange={e => setTagInput(e.target.value)}
                    onKeyDown={handleTagKeyDown}
                    placeholder={t('tagsHint')}
                    disabled={form.tags.length >= 10}
                  />
                  {suggestedTags.length > 0 && (
                    <div className="tag-suggestions">
                      {suggestedTags.map(tag => (
                        <button key={tag.name} type="button" className="tag-suggestion" onClick={() => addTag(tag.name)}>
                          {tag.name} <span className="tag-count">({tag.count})</span>
                        </button>
                      ))}
                    </div>
                  )}
                </div>
                <span className="char-count">{form.tags.length}/10 tags</span>
              </div>

              <div className="popular-tags">
                <h4>{locale === 'vi' ? 'Tags phổ biến' : 'Popular tags'}</h4>
                <div className="tag-cloud">
                  {allTags.sort((a, b) => b.count - a.count).slice(0, 15).map(tag => (
                    <button
                      key={tag.name}
                      type="button"
                      className={`badge badge-tag ${form.tags.includes(tag.name) ? 'active' : ''}`}
                      onClick={() => form.tags.includes(tag.name) ? removeTag(tag.name) : addTag(tag.name)}
                    >
                      {tag.name}
                    </button>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* Step 4: Preview */}
          {step === 3 && (
            <div className="submit-step">
              <h2>{t('step')} 4 — {t('preview')}</h2>

              <div className="preview-card">
                <div className="preview-header">
                  {iconPreview ? (
                    <img src={iconPreview} alt="Icon" className="preview-icon-img" />
                  ) : (
                    <div className="preview-icon" style={{ background: form.name ? `hsl(${Math.abs([...form.name].reduce((h, c) => c.charCodeAt(0) + ((h << 5) - h), 0) % 360)}, 45%, 45%)` : '#999' }}>
                      {form.name ? form.name.split(' ').map(w => w[0]).slice(0, 2).join('').toUpperCase() : '?'}
                    </div>
                  )}
                  <div>
                    <h3>{form.name || (locale === 'vi' ? 'Tên ứng dụng' : 'App Name')}</h3>
                    {form.developerName && <span style={{ fontSize: '0.85rem', color: 'var(--text-muted)' }}>{form.developerName}</span>}
                    {cat && (
                      <span className="app-card-category" style={{ background: cat.color }}>
                        {t('category', cat.name_vi, cat.name_en)}
                      </span>
                    )}
                  </div>
                </div>
                <p className="preview-desc">{form.shortDesc || (locale === 'vi' ? 'Mô tả ngắn...' : 'Short description...')}</p>
                {form.shortDescEn && <p className="preview-desc" style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginTop: '-0.5rem' }}>EN: {form.shortDescEn}</p>}
                {form.packageTypes.length > 0 && (
                  <div className="preview-pkgs">
                    {form.packageTypes.map(pkg => (
                      <span key={pkg} className="badge badge-pkg" style={{ background: `var(--pkg-${pkg})` }}>{pkg}</span>
                    ))}
                  </div>
                )}
                {form.tags.length > 0 && (
                  <div className="preview-tags">
                    {form.tags.map(tag => <span key={tag} className="badge badge-tag">{tag}</span>)}
                  </div>
                )}
                {form.installCommand && (
                  <div className="preview-install">
                    <code>{form.installCommand}</code>
                  </div>
                )}
              </div>
            </div>
          )}

          {/* Validation / Error display */}
          {stepErrors.length > 0 && (
            <div className="auth-error" style={{ marginTop: '1.5rem', marginBottom: '1rem' }}>
              <ul style={{ margin: 0, paddingLeft: '1.2rem' }}>
                {stepErrors.map((err, i) => <li key={i}>{err}</li>)}
              </ul>
            </div>
          )}
          {submitError && (
            <div className="auth-error" style={{ marginBottom: '1rem' }}>
              {submitError}
            </div>
          )}

          {/* Navigation */}
          <div className="submit-nav">
            {step > 0 && (
              <button className="btn btn-secondary" onClick={() => setStep(s => s - 1)}>
                <IconArrowLeft /> {t('back')}
              </button>
            )}
            <div style={{ flex: 1 }} />
            {step < STEPS.length - 1 ? (
              <button className="btn btn-primary" onClick={handleNext}>
                {t('next')} <IconChevronRight />
              </button>
            ) : (
              <button className="btn btn-primary" disabled={submitting} onClick={async () => {
                setSubmitting(true)
                setSubmitError('')
                try {
                  const appData = {
                    name: form.name,
                    developer_name: form.developerName,
                    short_desc: form.shortDesc,
                    short_desc_en: form.shortDescEn,
                    description: form.description,
                    description_en: form.descriptionEn,
                    category_id: Number(form.categoryId),
                    website_url: form.websiteUrl,
                    download_url: form.downloadUrl,
                    source_code_url: form.sourceCodeUrl,
                    install_command: form.installCommand,
                    license: form.license,
                    package_types: form.packageTypes,
                    tags: form.tags,
                  }
                  const result = await api.createApp(appData)
                  // Upload icon
                  if (iconFile) {
                    await api.uploadIcon(result.id, iconFile).catch(() => { })
                  }
                  // Upload screenshots
                  for (const ss of screenshots) {
                    await api.uploadScreenshot(result.id, ss).catch(() => { })
                  }
                  navigate(`/app/${result.slug}`)
                } catch (err) {
                  setSubmitError(err.error || 'Submit failed')
                  setSubmitting(false)
                }
              }}>
                <IconCheck /> {submitting ? t('loading') : t('submit')}
              </button>
            )}
          </div>
        </div>
      </div>
    </div>
  )
}
