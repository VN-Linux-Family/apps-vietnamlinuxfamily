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