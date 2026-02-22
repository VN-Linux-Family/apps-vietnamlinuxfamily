import { useState } from 'react'
import { Link, useSearchParams } from 'react-router-dom'
import { useLocale } from '../i18n/useLocale.jsx'
import { api } from '../lib/api'
import './Auth.css'

export default function ResetPassword() {
  const { t, locale } = useLocale()
  const [searchParams] = useSearchParams()
  const token = searchParams.get('token')
  const [password, setPassword] = useState('')
  const [confirmPassword, setConfirmPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [done, setDone] = useState(false)
  const [error, setError] = useState('')

  if (!token) {
    return (
      <div className="auth-page">
        <div className="auth-card card" style={{ textAlign: 'center', padding: '3rem' }}>
          <h2>{locale === 'vi' ? 'Link không hợp lệ' : 'Invalid reset link'}</h2>
          <Link to="/forgot-password" className="btn btn-primary" style={{ marginTop: '1rem' }}>
            {locale === 'vi' ? 'Yêu cầu link mới' : 'Request new link'}
          </Link>
        </div>
      </div>
    )
  }

  const handleSubmit = async (e) => {
    e.preventDefault()
    if (password.length < 6) {
      setError(locale === 'vi' ? 'Mật khẩu tối thiểu 6 ký tự' : 'Password must be at least 6 characters')
      return
    }
    if (password !== confirmPassword) {
      setError(locale === 'vi' ? 'Mật khẩu không khớp' : 'Passwords do not match')
      return
    }
    setLoading(true)
    setError('')
    try {
      await api.resetPassword(token, password)
      setDone(true)
    } catch (err) {
      setError(err.error || (locale === 'vi' ? 'Link đã hết hạn hoặc không hợp lệ' : 'Link expired or invalid'))
    } finally {
      setLoading(false)
    }
  }

  if (done) {
    return (
      <div className="auth-page">
        <div className="auth-card card" style={{ textAlign: 'center', padding: '3rem' }}>
          <h2 style={{ color: 'var(--accent)' }}>{locale === 'vi' ? 'Đặt lại mật khẩu thành công!' : 'Password reset successful!'}</h2>
          <Link to="/login" className="btn btn-primary" style={{ marginTop: '1rem' }}>{t('login')}</Link>
        </div>
      </div>
    )
  }

  return (
    <div className="auth-page">
      <div className="auth-card card">
        <div className="auth-header">
          <h1>{locale === 'vi' ? 'Đặt lại mật khẩu' : 'Reset Password'}</h1>
          <p className="text-muted">
            {locale === 'vi' ? 'Nhập mật khẩu mới' : 'Enter your new password'}
          </p>
        </div>

        <form onSubmit={handleSubmit} className="auth-form">
          {error && <div className="auth-error">{error}</div>}

          <div className="input-group">
            <label>{t('password')}</label>
            <input type="password" className="input" value={password} onChange={e => setPassword(e.target.value)} placeholder="••••••••" />
          </div>

          <div className="input-group">
            <label>{t('confirmPassword')}</label>
            <input type="password" className="input" value={confirmPassword} onChange={e => setConfirmPassword(e.target.value)} placeholder="••••••••" />
          </div>

          <button type="submit" className="btn btn-primary auth-submit" disabled={loading}>
            {loading ? t('loading') : (locale === 'vi' ? 'Đặt lại mật khẩu' : 'Reset Password')}
          </button>
        </form>
      </div>
    </div>
  )
}
