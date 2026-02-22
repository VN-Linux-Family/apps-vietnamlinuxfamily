// API client for VNLF App Explorer backend

const API_BASE = import.meta.env.VITE_API_URL ||
  (window.location.hostname === 'localhost' ? 'http://localhost:8787/api' : 'https://apps-api.vietnamlinuxfamily.net/api')

function getToken() {
  return localStorage.getItem('vnlf-token')
}

async function request(path, options = {}) {
  const url = `${API_BASE}${path}`
  const headers = { ...options.headers }

  const token = getToken()
  if (token) headers['Authorization'] = `Bearer ${token}`

  // Don't set Content-Type for FormData (browser sets boundary automatically)
  if (!(options.body instanceof FormData)) {
    headers['Content-Type'] = 'application/json'
  }

  const res = await fetch(url, { ...options, headers })
  const data = await res.json()

  if (!res.ok) {
    throw { status: res.status, ...data }
  }

  return data
}

// --- Auth ---
export const api = {
  // Auth
  login: (email, password) =>
    request('/auth/login', { method: 'POST', body: JSON.stringify({ email, password }) }),

  register: (email, password, display_name, locale = 'vi') =>
    request('/auth/register', { method: 'POST', body: JSON.stringify({ email, password, display_name, locale }) }),

  verifyEmail: (token) =>
    request('/auth/verify-email', { method: 'POST', body: JSON.stringify({ token }) }),

  forgotPassword: (email, locale = 'vi') =>
    request('/auth/forgot-password', { method: 'POST', body: JSON.stringify({ email, locale }) }),

  resetPassword: (token, password) =>
    request('/auth/reset-password', { method: 'POST', body: JSON.stringify({ token, password }) }),

  getMe: () => request('/auth/me'),

  // Categories
  getCategories: () => request('/categories'),

  // Apps
  getApps: (params = {}) => {
    const qs = new URLSearchParams()
    Object.entries(params).forEach(([k, v]) => { if (v) qs.set(k, v) })
    return request(`/apps?${qs.toString()}`)
  },

  getApp: (slug) => request(`/apps/${slug}`),

  getHomepage: () => request('/apps/homepage'),

  createApp: (data) =>
    request('/apps', { method: 'POST', body: JSON.stringify(data) }),

  updateApp: (id, data) =>
    request(`/apps/${id}`, { method: 'PUT', body: JSON.stringify(data) }),

  deleteApp: (id) =>
    request(`/apps/${id}`, { method: 'DELETE' }),

  // Reviews
  createReview: (appId, data) =>
    request(`/apps/${appId}/reviews`, { method: 'POST', body: JSON.stringify(data) }),

  replyToReview: (reviewId, content) =>
    request(`/reviews/${reviewId}/reply`, { method: 'POST', body: JSON.stringify({ content }) }),

  toggleHelpful: (reviewId) =>
    request(`/reviews/${reviewId}/helpful`, { method: 'POST' }),

  deleteReview: (reviewId) =>
    request(`/reviews/${reviewId}`, { method: 'DELETE' }),

  // Upload
  uploadIcon: (appId, file) => {
    const formData = new FormData()
    formData.append('file', file)
    formData.append('app_id', appId)
    return request('/upload/icon', { method: 'POST', body: formData })
  },

  uploadScreenshot: (appId, file, caption = '') => {
    const formData = new FormData()
    formData.append('file', file)
    formData.append('app_id', appId)
    if (caption) formData.append('caption', caption)
    return request('/upload/screenshot', { method: 'POST', body: formData })
  },

  deleteMedia: (mediaId) =>
    request(`/upload/${mediaId}`, { method: 'DELETE' }),
}
