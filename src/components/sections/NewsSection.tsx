import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import config from '@payload-config'
import { getPayload } from 'payload'

interface NewsItem {
  slug: string
  title: string
  excerpt: string
  date: string
  image: string
}

const defaultNewsImage = 'https://images.unsplash.com/photo-1761489798131-5cdde3262832?w=1200'

function NewsSectionHeader({
  title,
  viewAllLabel,
  viewAllHref,
}: {
  title: string
  viewAllLabel: string
  viewAllHref: string
}) {
  return (
    <div className="mb-8 flex items-start justify-between gap-4 md:mb-6 xl:mb-10">
      <div className="flex items-center gap-4">
        <div className="h-8 w-1 bg-primary-red" />
        <h2 className="text-[24px] font-bold tracking-[1px] text-text-primary md:text-[28px]">
          {title}
        </h2>
      </div>
      <Link href={viewAllHref} className="shrink-0 text-[13px] font-semibold text-primary-blue hover:underline md:text-[14px]">
        {viewAllLabel}
      </Link>
    </div>
  )
}

interface NewsSectionProps {
  locale: string
  title?: string
  viewAll?: {
    label?: string | null
    href?: string | null
  }
  sourceMode?: 'latest' | 'manual' | string | null
  featuredNews?: unknown
  secondaryNews?: unknown
  count?: number | null
  displayMode?: 'featured' | 'grid' | string | null
}

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface NewsDocument {
  slug?: string | null
  title?: {
    vi?: string | null
    en?: string | null
  } | null
  excerpt?: {
    vi?: string | null
    en?: string | null
  } | null
  publishedAt?: string | null
  thumbnail?: MediaValue | null
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined

  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`

  return undefined
}

function formatDate(value: string | null | undefined, locale: string) {
  if (!value) return ''

  return new Intl.DateTimeFormat(locale === 'en' ? 'en-US' : 'vi-VN', {
    day: '2-digit',
    month: 'long',
    year: 'numeric',
  }).format(new Date(value))
}

function isNewsDocument(value: unknown): value is NewsDocument {
  return Boolean(value && typeof value === 'object' && 'slug' in value)
}

function normalizeNewsDocument(doc: NewsDocument, locale: string): NewsItem | null {
  if (!doc.slug) return null

  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  const title = doc.title?.[typedLocale] ?? doc.title?.[fallbackLocale]

  if (!title) return null

  return {
    slug: doc.slug,
    title,
    excerpt: doc.excerpt?.[typedLocale] ?? doc.excerpt?.[fallbackLocale] ?? '',
    date: formatDate(doc.publishedAt, locale),
    image: getMediaURL(doc.thumbnail) ?? defaultNewsImage,
  }
}

async function getLatestNews(locale: string, count: number) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.find({
      collection: 'news',
      where: {
        _status: { equals: 'published' },
      },
      sort: '-publishedAt',
      depth: 2,
      limit: count,
      locale: locale === 'en' ? 'en' : 'vi',
      fallbackLocale: 'vi',
    })

    return data.docs
      .map((doc) => normalizeNewsDocument(doc as NewsDocument, locale))
      .filter((item): item is NewsItem => Boolean(item))
  } catch {
    return []
  }
}

function normalizeSelectedNews(value: unknown, locale: string) {
  if (Array.isArray(value)) {
    return value
      .filter(isNewsDocument)
      .map((doc) => normalizeNewsDocument(doc, locale))
      .filter((item): item is NewsItem => Boolean(item))
  }

  if (isNewsDocument(value)) {
    const item = normalizeNewsDocument(value, locale)
    return item ? [item] : []
  }

  return []
}

export async function NewsSection({
  locale,
  title = 'TIN TỨC & SỰ KIỆN',
  viewAll,
  sourceMode = 'latest',
  featuredNews,
  secondaryNews,
  count = 3,
  displayMode = 'featured',
}: NewsSectionProps) {
  const latestNews = await getLatestNews(locale, count ?? 3)
  const selectedNews =
    sourceMode === 'manual'
      ? [...normalizeSelectedNews(featuredNews, locale), ...normalizeSelectedNews(secondaryNews, locale)]
      : []
  const visibleNews = [...selectedNews, ...latestNews].slice(0, 3)
  if (visibleNews.length === 0) return null

  const featured = visibleNews[0]
  const secondary = visibleNews.slice(1, 3)
  const viewAllHref = viewAll?.href ?? '/tin-tuc'
  const viewAllLabel = viewAll?.label ?? 'Xem tất cả →'

  /* ── Grid variant: 3 equal cards ── */
  if (displayMode === 'grid') {
    return (
      <section className="bg-white px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16">
        <NewsSectionHeader title={title} viewAllLabel={viewAllLabel} viewAllHref={`/${locale}${viewAllHref}`} />
        <div className="grid grid-cols-1 gap-6 md:grid-cols-3">
          {visibleNews.map((item) => (
            <Link
              key={item.slug}
              href={`/${locale}/tin-tuc/${item.slug}`}
              className="flex flex-col overflow-hidden border border-border bg-white transition-shadow hover:shadow-md"
            >
              {/* Image */}
              <div className="relative h-[200px] w-full overflow-hidden xl:h-[220px]">
                <Image
                  src={item.image}
                  alt={item.title}
                  fill
                  className="object-cover transition-transform duration-300 hover:scale-105"
                  sizes="(max-width: 767px) 100vw, 33vw"
                />
              </div>
              {/* Body */}
              <div className="flex flex-1 flex-col gap-3 p-5">
                <span className="text-[12px] font-semibold text-text-secondary">
                  {item.date}
                </span>
                <h3 className="line-clamp-2 text-[15px] font-bold leading-[1.4] text-text-primary">
                  {item.title}
                </h3>
                <p className="line-clamp-3 text-[13px] leading-[1.5] text-text-secondary">
                  {item.excerpt}
                </p>
              </div>
            </Link>
          ))}
        </div>
      </section>
    )
  }

  /* ── Featured variant: 1 big left + 2 small right (default) ── */
  return (
    <section className="bg-white px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16">
      <NewsSectionHeader title={title} viewAllLabel={viewAllLabel} viewAllHref={`/${locale}${viewAllHref}`} />

      {/* Cards row — featured left + 2 small right */}
      <div className="grid grid-cols-1 gap-4 md:grid-cols-2 md:gap-5 xl:gap-6">
        {/* Featured card — full image with overlay */}
        <Link
          href={`/${locale}/tin-tuc/${featured.slug}`}
          className="relative flex h-[280px] flex-col justify-between overflow-hidden rounded-lg md:h-[285px] md:rounded-xl xl:h-[440px]"
          style={{ boxShadow: '0 4px 20px #00000020' }}
        >
          <Image
            src={featured.image}
            alt={featured.title}
            fill
            className="object-cover"
            sizes="(max-width: 767px) 100vw, 50vw"
          />
          {/* Date badge top */}
          <div className="relative z-10 p-4 xl:p-5">
            <span className="inline-block rounded bg-primary-red px-3 py-1.5 text-[11px] font-bold tracking-[0.5px] text-white">
              {featured.date}
            </span>
          </div>
          {/* Text overlay bottom */}
          <div
            className="relative z-10 flex flex-col gap-2 p-4 xl:p-7"
            style={{
              background: 'linear-gradient(180deg, #00000000 0%, #000000BB 40%, #000000DD 100%)',
            }}
          >
            <h3 className="text-[18px] font-bold leading-[1.3] text-white xl:text-[22px]">
              {featured.title}
            </h3>
            <p className="line-clamp-2 text-[13px] leading-[1.5] xl:text-[14px]" style={{ color: '#FFFFFFAA' }}>
              {featured.excerpt}
            </p>
          </div>
        </Link>

        {/* Right column — 2 small horizontal cards */}
        <div className="flex flex-col gap-4 md:gap-5 xl:gap-6">
          {secondary.map((item) => (
            <Link
              key={item.slug}
              href={`/${locale}/tin-tuc/${item.slug}`}
              className="flex min-h-[140px] overflow-hidden rounded-lg border border-border bg-white transition-shadow hover:shadow-md md:flex-1 md:rounded-xl"
              style={{ boxShadow: '0 2px 12px #00000012' }}
            >
              {/* Image */}
              <div className="relative w-[120px] shrink-0 md:w-[150px] xl:w-[220px]">
                <Image
                  src={item.image}
                  alt={item.title}
                  fill
                  className="object-cover"
                  sizes="(max-width: 767px) 120px, (max-width: 1279px) 150px, 220px"
                />
              </div>
              {/* Body */}
              <div className="flex flex-1 flex-col justify-center gap-2 p-4 xl:gap-2.5 xl:p-5">
                <span className="inline-block self-start rounded bg-primary-red px-3 py-1 text-[10px] font-bold text-white xl:text-[11px]">
                  {item.date}
                </span>
                <h3 className="line-clamp-2 text-[14px] font-bold leading-[1.35] text-text-primary xl:text-[15px] xl:leading-[1.4]">
                  {item.title}
                </h3>
                <p className="line-clamp-2 text-[12px] leading-[1.45] text-text-secondary xl:text-[13px] xl:leading-[1.5]">
                  {item.excerpt}
                </p>
              </div>
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}
