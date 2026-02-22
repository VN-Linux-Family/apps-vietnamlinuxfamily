-- Seed: 12 Categories (matching Flathub slugs + extras)
INSERT OR IGNORE INTO categories (id, slug, name_vi, name_en, icon, color) VALUES
  (1,  'network',       'Mạng & Internet',    'Network',            'globe',    '#2563eb'),
  (2,  'development',   'Lập trình',         'Development',        'code',     '#0d9488'),
  (3,  'graphics',      'Đồ hoạ',            'Graphics',           'image',    '#7c3aed'),
  (4,  'audiovideo',    'Âm thanh & Video',   'Audio & Video',      'play',     '#dc2626'),
  (5,  'office',        'Văn phòng',          'Office',             'file',     '#0284c7'),
  (6,  'game',          'Trò chơi',           'Games',              'gamepad',  '#ea580c'),
  (7,  'system',        'Hệ thống',           'System',             'settings', '#4b5563'),
  (8,  'education',     'Giáo dục',           'Education',          'book',     '#0891b2'),
  (9,  'security',      'Bảo mật',            'Security',           'shield',   '#b91c1c'),
  (10, 'communication', 'Liên lạc',           'Communication',      'message',  '#7c3aed'),
  (11, 'science',       'Khoa học',           'Science',            'flask',    '#6366f1'),
  (12, 'utility',       'Tiện ích',           'Utility',            'wrench',   '#78716c');

-- System user for Flathub imports
INSERT OR IGNORE INTO users (id, email, password_hash, salt, display_name, role, email_verified)
VALUES ('flathub-bot', 'bot@flathub.org', '', '', 'Flathub Bot', 'admin', 1);
