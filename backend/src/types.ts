// Cloudflare Workers bindings
export interface Env {
  DB: D1Database
  MEDIA: R2Bucket
  CACHE: KVNamespace
  JWT_SECRET: string
  RESEND_API_KEY: string
  R2_PUBLIC_URL: string // e.g. https://media-apps.vietnamlinuxfamily.net
}

// JWT payload
export interface JWTPayload {
  sub: string       // user id
  email: string
  role: string
  display_name: string
  iat: number
  exp: number
}

// User from DB
export interface User {
  id: string
  email: string
  password_hash: string
  salt: string
  display_name: string
  role: string
  email_verified: number
  verify_token: string | null
  reset_token: string | null
  reset_token_expires: string | null
  created_at: string
  updated_at: string
}

// App from DB
export interface App {
  id: string
  slug: string
  name: string
  short_desc: string
  short_desc_en: string | null
  description: string | null
  category_id: number
  website_url: string | null
  download_url: string | null
  source_code_url: string | null
  install_command: string | null
  flatpak_id: string | null // Flathub app id, e.g. org.gimp.GIMP
  license: string | null
  is_verified: number
  is_featured: number
  avg_rating: number
  review_count: number
  user_id: string
  created_at: string
  updated_at: string
}

// Category
export interface Category {
  id: number
  slug: string
  name_vi: string
  name_en: string
  icon: string | null
  color: string
}

// Review
export interface Review {
  id: string
  app_id: string
  user_id: string
  rating: number
  title: string | null
  content: string
  helpful_count: number
  created_at: string
}
