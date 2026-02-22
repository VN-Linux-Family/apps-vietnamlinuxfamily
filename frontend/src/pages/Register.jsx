import { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { useLocale } from '../i18n/useLocale.jsx'
import { useAuth } from '../hooks/useAuth.jsx'
import { api } from '../lib/api'
import './Auth.css'

export default function Register() {
  const { t, locale } = useLocale()
  const { login } = useAuth()
  const navigate = useNavigate()
  const [form, setForm] = useState({ name: '', email: '', password: '', confirmPassword: '' })
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const [success, setSuccess] = useState(false)

  const update = (key, val) => setForm(prev => ({ ...prev, [key]: val }))

  const handleSubmit = async (e) => {
    e.preventDefault()
    if (!form.name || !form.email || !form.password) {
      setError(locale === 'vi' ? 'Vui lòng nhập đầy đủ thông tin' : 'Please fill in all fields')
      return
    }
    if (form.password.length < 6) {
      setError(locale === 'vi' ? 'Mật khẩu tối thiểu 6 ký tự' : 'Password must be at least 6 characters')
      return
    }
    if (form.password !== form.confirmPassword) {
      setError(locale === 'vi' ? 'Mật khẩu không khớp' : 'Passwords do not match')
      return
    }
    setLoading(true)
    setError('')
    try {
      await api.register(form.email, form.password, form.name, locale)
      // Auto-login after register
      const data = await api.login(form.email, form.password)
      login(data.user, data.token)
      setSuccess(true)
      setTimeout(() => navigate('/'), 2000)
    } catch (err) {
      setError(err.error || 'Registration failed')
    } finally {
      setLoading(false)
    }
  }

  if (success) {
    return (
      <div className="auth-page">
        <div className="auth-card card" style={{ textAlign: 'center', padding: '3rem' }}>
          <h2 style={{ color: 'var(--accent)' }}>{locale === 'vi' ? 'Đăng ký thành công!' : 'Registration successful!'}</h2>
          <p>{locale === 'vi' ? 'Kiểm tra email để xác thực tài khoản.' : 'Check your email to verify your account.'}</p>
        </div>
      </div>
    )
  }

  return (
    <div className="auth-page">
      <div className="auth-card card">
        <div className="auth-header">
          <img src="/vnlf-logo.png" alt="VNLF" className="auth-logo" style={{ width: 48, height: 48 }} />
          <h1>{t('register')}</h1>
          <p className="text-muted">{t('appName')}</p>
        </div>

        <form onSubmit={handleSubmit} className="auth-form">
          {error && <div className="auth-error">{error}</div>}

          <div className="input-group">
            <label>{t('displayName')}</label>
            <input type="text" className="input" value={form.name} onChange={e => update('name', e.target.value)} placeholder="Linux Fan" />
          </div>

          <div className="input-group">
            <label>{t('email')}</label>
            <input type="email" className="input" value={form.email} onChange={e => update('email', e.target.value)} placeholder="user@example.com" />
          </div>

          <div className="input-group">
            <label>{t('password')}</label>
            <input type="password" className="input" value={form.password} onChange={e => update('password', e.target.value)} placeholder="••••••••" />
          </div>

          <div className="input-group">
            <label>{t('confirmPassword')}</label>
            <input type="password" className="input" value={form.confirmPassword} onChange={e => update('confirmPassword', e.target.value)} placeholder="••••••••" />
          </div>

          <button type="submit" className="btn btn-primary auth-submit" disabled={loading}>
            {loading ? t('loading') : t('register')}
          </button>

          <p className="auth-switch">
            {t('hasAccount')} <Link to="/login">{t('loginNow')}</Link>
          </p>
        </form>
      </div>
    </div>
  )
}
