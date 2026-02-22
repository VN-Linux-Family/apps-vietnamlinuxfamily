// Reviews routes: create, reply, helpful, delete
import { Hono } from 'hono'
import { z } from 'zod'
import { requireAuth } from '../middleware/auth'
import type { Env } from '../types'

const reviews = new Hono<{ Bindings: Env }>()

// --- Create Review ---
const createReviewSchema = z.object({
  rating: z.number().int().min(1).max(5),
  title: z.string().max(100).optional(),
  content: z.string().min(1).max(2000),
})

reviews.post('/apps/:id/reviews', requireAuth, async (c) => {
  const appId = c.req.param('id')
  const user = c.get('user')

  const body = await c.req.json().catch(() => null)
  const parsed = createReviewSchema.safeParse(body)
  if (!parsed.success) return c.json({ error: 'Invalid input', details: parsed.error.flatten() }, 400)
  const { rating, title, content } = parsed.data

  // Check app exists
  const app = await c.env.DB.prepare('SELECT id, slug FROM apps WHERE id = ?').bind(appId).first()
  if (!app) return c.json({ error: 'App not found' }, 404)

  // Check unique review per user per app
  const existing = await c.env.DB.prepare(
    'SELECT id FROM reviews WHERE app_id = ? AND user_id = ?'
  ).bind(appId, user.sub).first()
  if (existing) return c.json({ error: 'You already reviewed this app' }, 409)

  const id = crypto.randomUUID().replace(/-/g, '')
  await c.env.DB.prepare(
    'INSERT INTO reviews (id, app_id, user_id, rating, title, content) VALUES (?, ?, ?, ?, ?, ?)'
  ).bind(id, appId, user.sub, rating, title || null, content).run()

  // Update app avg_rating and review_count
  await c.env.DB.prepare(`
    UPDATE apps SET
      review_count = (SELECT COUNT(*) FROM reviews WHERE app_id = ?),
      avg_rating = (SELECT ROUND(AVG(rating), 1) FROM reviews WHERE app_id = ?),
      updated_at = datetime('now')
    WHERE id = ?
  `).bind(appId, appId, appId).run()

  // Invalidate cache
  await c.env.CACHE.delete(`app:${(app as any).slug}`)

  return c.json({ id, message: 'Review created' }, 201)
})

// --- Reply to Review ---
const replySchema = z.object({
  content: z.string().min(1).max(1000),
})

reviews.post('/reviews/:id/reply', requireAuth, async (c) => {
  const reviewId = c.req.param('id')
  const user = c.get('user')

  const body = await c.req.json().catch(() => null)
  const parsed = replySchema.safeParse(body)
  if (!parsed.success) return c.json({ error: 'Invalid input' }, 400)

  // Check review exists
  const review = await c.env.DB.prepare('SELECT id, app_id FROM reviews WHERE id = ?').bind(reviewId).first()
  if (!review) return c.json({ error: 'Review not found' }, 404)

  const id = crypto.randomUUID().replace(/-/g, '')
  await c.env.DB.prepare(
    'INSERT INTO review_replies (id, review_id, user_id, content) VALUES (?, ?, ?, ?)'
  ).bind(id, reviewId, user.sub, parsed.data.content).run()

  // Invalidate cache for the app
  const app = await c.env.DB.prepare('SELECT slug FROM apps WHERE id = ?').bind((review as any).app_id).first()
  if (app) await c.env.CACHE.delete(`app:${(app as any).slug}`)

  return c.json({ id, message: 'Reply created' }, 201)
})

// --- Toggle Helpful ---
reviews.post('/reviews/:id/helpful', requireAuth, async (c) => {
  const reviewId = c.req.param('id')
  const user = c.get('user')

  const review = await c.env.DB.prepare('SELECT id, app_id FROM reviews WHERE id = ?').bind(reviewId).first()
  if (!review) return c.json({ error: 'Review not found' }, 404)

  // Check if already voted
  const existing = await c.env.DB.prepare(
    'SELECT review_id FROM review_helpful WHERE review_id = ? AND user_id = ?'
  ).bind(reviewId, user.sub).first()

  if (existing) {
    // Remove vote
    await c.env.DB.prepare('DELETE FROM review_helpful WHERE review_id = ? AND user_id = ?')
      .bind(reviewId, user.sub).run()
    await c.env.DB.prepare(
      'UPDATE reviews SET helpful_count = MAX(0, helpful_count - 1) WHERE id = ?'
    ).bind(reviewId).run()
    // Invalidate cache
    const app = await c.env.DB.prepare('SELECT slug FROM apps WHERE id = ?').bind((review as any).app_id).first()
    if (app) await c.env.CACHE.delete(`app:${(app as any).slug}`)
    return c.json({ message: 'Helpful removed', helpful: false })
  } else {
    // Add vote
    await c.env.DB.prepare('INSERT INTO review_helpful (review_id, user_id) VALUES (?, ?)')
      .bind(reviewId, user.sub).run()
    await c.env.DB.prepare('UPDATE reviews SET helpful_count = helpful_count + 1 WHERE id = ?')
      .bind(reviewId).run()
    // Invalidate cache
    const app = await c.env.DB.prepare('SELECT slug FROM apps WHERE id = ?').bind((review as any).app_id).first()
    if (app) await c.env.CACHE.delete(`app:${(app as any).slug}`)
    return c.json({ message: 'Helpful added', helpful: true })
  }
})

// --- Delete Review ---
reviews.delete('/reviews/:id', requireAuth, async (c) => {
  const reviewId = c.req.param('id')
  const user = c.get('user')

  const review = await c.env.DB.prepare(
    'SELECT id, user_id, app_id FROM reviews WHERE id = ?'
  ).bind(reviewId).first()
  if (!review) return c.json({ error: 'Review not found' }, 404)

  if ((review as any).user_id !== user.sub && user.role !== 'admin') {
    return c.json({ error: 'Not authorized' }, 403)
  }

  await c.env.DB.prepare('DELETE FROM reviews WHERE id = ?').bind(reviewId).run()

  // Update app stats
  const appId = (review as any).app_id
  await c.env.DB.prepare(`
    UPDATE apps SET
      review_count = (SELECT COUNT(*) FROM reviews WHERE app_id = ?),
      avg_rating = COALESCE((SELECT ROUND(AVG(rating), 1) FROM reviews WHERE app_id = ?), 0),
      updated_at = datetime('now')
    WHERE id = ?
  `).bind(appId, appId, appId).run()

  const app = await c.env.DB.prepare('SELECT slug FROM apps WHERE id = ?').bind(appId).first()
  if (app) await c.env.CACHE.delete(`app:${(app as any).slug}`)

  return c.json({ message: 'Review deleted' })
})

export default reviews
