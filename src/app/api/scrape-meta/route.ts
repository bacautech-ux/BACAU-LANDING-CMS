import { NextRequest, NextResponse } from 'next/server'
import * as cheerio from 'cheerio'

export async function POST(req: NextRequest) {
  try {
    const { url } = await req.json()

    if (!url || typeof url !== 'string') {
      return NextResponse.json({ error: 'URL is required' }, { status: 400 })
    }

    let parsedUrl: URL
    try {
      parsedUrl = new URL(url)
    } catch {
      return NextResponse.json({ error: 'Invalid URL format' }, { status: 400 })
    }

    const res = await fetch(parsedUrl.href, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (compatible; BacAu-Bot/1.0)',
        Accept: 'text/html',
      },
      signal: AbortSignal.timeout(5000),
    })

    if (!res.ok) {
      return NextResponse.json({ error: `Failed to fetch: ${res.status}` }, { status: 502 })
    }

    const html = await res.text()
    const $ = cheerio.load(html)

    const ogTitle = $('meta[property="og:title"]').attr('content')
    const ogDesc = $('meta[property="og:description"]').attr('content')
    const ogImage = $('meta[property="og:image"]').attr('content')

    const title = ogTitle || $('title').text() || ''
    const description = ogDesc || $('meta[name="description"]').attr('content') || ''

    let image = ogImage || ''
    if (image && !image.startsWith('http')) {
      image = new URL(image, parsedUrl.origin).href
    }

    return NextResponse.json({ title: title.trim(), description: description.trim(), image })
  } catch (err) {
    const message = err instanceof Error ? err.message : 'Unknown error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
