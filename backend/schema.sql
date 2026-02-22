-- VNLF App Explorer — D1 Schema

-- Users
CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16)))),
  email TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  salt TEXT NOT NULL,
  display_name TEXT NOT NULL,
  role TEXT NOT NULL DEFAULT 'user' CHECK(role IN ('user', 'admin', 'moderator')),
  email_verified INTEGER NOT NULL DEFAULT 0,
  verify_token TEXT,
  reset_token TEXT,
  reset_token_expires TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE UNIQUE INDEX IF NOT EXISTS idx_users_email ON users(email);

-- Categories
CREATE TABLE IF NOT EXISTS categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  slug TEXT NOT NULL UNIQUE,
  name_vi TEXT NOT NULL,
  name_en TEXT NOT NULL,
  icon TEXT,
  color TEXT NOT NULL DEFAULT '#3D6145'
);

-- Apps
CREATE TABLE IF NOT EXISTS apps (
  id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16)))),
  slug TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  short_desc TEXT,
  short_desc_en TEXT,
  description TEXT,
  description_en TEXT,
  developer_name TEXT,
  category_id INTEGER NOT NULL REFERENCES categories(id),
  website_url TEXT,
  download_url TEXT,
  source_code_url TEXT,
  install_command TEXT,
  license TEXT,
  is_verified INTEGER NOT NULL DEFAULT 0,
  is_featured INTEGER NOT NULL DEFAULT 0,
  avg_rating REAL NOT NULL DEFAULT 0,
  review_count INTEGER NOT NULL DEFAULT 0,
  user_id TEXT NOT NULL REFERENCES users(id),
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_apps_slug ON apps(slug);
CREATE INDEX IF NOT EXISTS idx_apps_category ON apps(category_id);
CREATE INDEX IF NOT EXISTS idx_apps_user ON apps(user_id);
CREATE INDEX IF NOT EXISTS idx_apps_featured ON apps(is_featured) WHERE is_featured = 1;

-- App Package Types
CREATE TABLE IF NOT EXISTS app_package_types (
  app_id TEXT NOT NULL REFERENCES apps(id) ON DELETE CASCADE,
  package_type TEXT NOT NULL CHECK(package_type IN ('deb', 'flatpak', 'snap', 'appimage', 'source')),
  PRIMARY KEY (app_id, package_type)
);

-- App Media (icon + screenshots unified)
CREATE TABLE IF NOT EXISTS app_media (
  id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16)))),
  app_id TEXT NOT NULL REFERENCES apps(id) ON DELETE CASCADE,
  type TEXT NOT NULL CHECK(type IN ('icon', 'screenshot')),
  image_url TEXT NOT NULL,
  caption TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE UNIQUE INDEX IF NOT EXISTS idx_app_media_icon ON app_media(app_id) WHERE type = 'icon';
CREATE INDEX IF NOT EXISTS idx_app_media_app ON app_media(app_id, type, sort_order);

-- App Tags
CREATE TABLE IF NOT EXISTS app_tags (
  app_id TEXT NOT NULL REFERENCES apps(id) ON DELETE CASCADE,
  tag TEXT NOT NULL,
  PRIMARY KEY (app_id, tag)
);
CREATE INDEX IF NOT EXISTS idx_app_tags_tag ON app_tags(tag);

-- Reviews
CREATE TABLE IF NOT EXISTS reviews (
  id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16)))),
  app_id TEXT NOT NULL REFERENCES apps(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL REFERENCES users(id),
  rating INTEGER NOT NULL CHECK(rating BETWEEN 1 AND 5),
  title TEXT,
  content TEXT NOT NULL,
  helpful_count INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_reviews_app ON reviews(app_id);
CREATE INDEX IF NOT EXISTS idx_reviews_user ON reviews(user_id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_reviews_unique ON reviews(app_id, user_id);

-- Review Replies
CREATE TABLE IF NOT EXISTS review_replies (
  id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16)))),
  review_id TEXT NOT NULL REFERENCES reviews(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL REFERENCES users(id),
  content TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_replies_review ON review_replies(review_id);

-- Review Helpful (track who voted)
CREATE TABLE IF NOT EXISTS review_helpful (
  review_id TEXT NOT NULL REFERENCES reviews(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL REFERENCES users(id),
  PRIMARY KEY (review_id, user_id)
);
