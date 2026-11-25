# VNLF App Explorer

A community-driven Linux application explorer built by the [Vietnam Linux Family (VNLF)](https://vietnamlinuxfamily.net). Discover, share, and review your favorite Linux applications.

## Tech Stack

- **Frontend**: React + Vite, vanilla CSS
- **Backend**: Hono (Cloudflare Workers)
- **Database**: Cloudflare D1 (SQLite)
- **Storage**: Cloudflare R2 (media uploads)
- **Cache**: Cloudflare KV

## Getting Started

### Prerequisites

- Node.js 18+
- Yarn or npm
- [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/) (for backend)

### Backend Setup

```bash
cd backend
yarn install

# Initialize local D1 database
yarn db:init
yarn db:seed

# Start dev server (http://localhost:8787)
yarn dev
```

### Frontend Setup

```bash
cd frontend
yarn install

# Start dev server (http://localhost:5173)
yarn dev
```

### Environment Variables

Create a `.env` file in the project root:

```
RESEND_API_KEY=your_resend_api_key
```

For production, set Worker secrets:

```bash
cd backend
npx wrangler secret put JWT_SECRET
npx wrangler secret put RESEND_API_KEY
```

## Deployment

### Backend (Cloudflare Workers)

```bash
cd backend
yarn deploy        # Deploy Worker
yarn db:migrate    # Apply schema to remote D1
```

### Database changes

`backend/schema.sql` is the full schema for new databases (`yarn db:init`). An existing
database gets each file in `backend/migrations/` once, in order, before the Worker
that needs it is deployed:

```bash
cd backend
npx wrangler d1 execute vnlf-db --remote --file=migrations/0001_add_apps_flatpak_id.sql
```

### Flathub ids (install box)

`apps.flatpak_id` holds the Flathub app id (`org.gimp.GIMP`). With it, the app page shows
"Cài trên CaramOS" (`caramos-app://install/<id>`, App Center releases after 0.3.1), the command
`curl -fsSL https://apps.vietnamlinuxfamily.net/cai.sh | bash -s <id>`
(`frontend/public/cai.sh`) and a `.flatpakref` link. To propose ids for the apps
already listed (reads the public API and Flathub, writes files for review only):

```bash
cd backend
node tools/match-flatpak-ids.mjs      # writes tools/flatpak-ids/*.sql, *.csv, *.md
npx wrangler d1 execute vnlf-db --remote --file=tools/flatpak-ids/flatpak-ids.sql   # after review
```

### Frontend (Cloudflare Pages)

```bash
cd frontend
yarn deploy        # Build & deploy to Cloudflare Pages
```

## Features

- Browse and search Linux applications by category and tags
- User registration and authentication
- App submission with icon/screenshot uploads
- Review and rating system
- Internationalization (Vietnamese & English)
- Dark mode support
- Responsive design

## License

MIT