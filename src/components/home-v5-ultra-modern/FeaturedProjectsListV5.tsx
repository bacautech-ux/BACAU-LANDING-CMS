// V5 Ultra Modern — Featured Projects: danh sách dọc, mỗi dự án 1 row card
// Server component: fetch từ Payload collection projects
// Xoá folder home-v5-ultra-modern để bỏ phiên bản này

import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import config from '@payload-config'
import { getPayload } from 'payload'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface ProjectDoc {
  slug?: string | null
  title?: { vi?: string | null; en?: string | null } | null
  summary?: { vi?: string | null; en?: string | null } | null
  thumbnail?: MediaValue | null
  featuredType?: string | null
  featuredBadgeLabel?: string | { vi?: string | null; en?: string | null } | null
  featuredBadgeColor?: string | null
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const m = value as MediaValue
  return m.url ?? (m.filename ? `/api/media/file/${m.filename}` : undefined)
}

function localized(
  value: string | { vi?: string | null; en?: string | null } | null | undefined,
  locale: string,
) {
  if (typeof value === 'string') return value
  if (!value) return undefined
  return (locale === 'en' ? value.en : value.vi) ?? value.vi ?? value.en ?? undefined
}

const badgeColors: Record<string, string> = {
  energy: '#2b358c',
  electrical: '#B92C32',
  automation: '#2b358c',
  bms: '#6366F1',
}

const fallbackImage = 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=600&fit=crop'

async function fetchProjects(locale: string, count: number) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.find({
      collection: 'projects',
      where: {
        and: [
          { _status: { equals: 'published' } },
          { featured: { equals: true } },
        ],
      },
      sort: '-year',
      depth: 2,
      limit: count,
      locale: locale === 'en' ? 'en' : 'vi',
      fallbackLocale: 'vi',
    })
    return data.docs as ProjectDoc[]
  } catch {
    return []
  }
}

function isProjectDoc(v: unknown): v is ProjectDoc {
  return Boolean(v && typeof v === 'object' && 'slug' in v)
}

export interface FeaturedProjectsListV5Props {
  locale: string
  title?: string | null
  subtitle?: string | null
  viewAll?: { label?: string | null; href?: string | null }
  sourceMode?: 'latest' | 'manual' | string | null
  count?: number | null
  featuredProjects?: unknown
}

export async function FeaturedProjectsListV5({
  locale,
  title = 'DỰ ÁN TIÊU BIỂU',
  subtitle,
  viewAll,
  sourceMode = 'latest',
  count = 4,
  featuredProjects,
}: FeaturedProjectsListV5Props) {
  const displayCount = count ?? 4
  let docs: ProjectDoc[] = []

  if (sourceMode === 'manual' && Array.isArray(featuredProjects)) {
    docs = featuredProjects.filter(isProjectDoc).slice(0, displayCount)
    if (docs.length < displayCount) {
      const extra = await fetchProjects(locale, displayCount - docs.length)
      docs = [...docs, ...extra]
    }
  } else {
    docs = await fetchProjects(locale, displayCount)
  }

  if (docs.length === 0) return null

  const viewAllHref = viewAll?.href ?? '/du-an-tham-khao'
  const viewAllLabel = viewAll?.label ?? 'Xem tất cả →'

  return (
    <section className="py-12 md:py-16 px-5 md:px-8 xl:px-[60px]" style={{ background: '#FAFAFA' }}>
      {/* Header */}
      <div className="mb-10 flex items-end justify-between">
        <div className="flex items-center gap-3">
          <div className="h-0.5 w-8 shrink-0" style={{ background: '#B92C32' }} />
          <div>
            {title && (
              <h2
                className="font-bold tracking-[1.5px]"
                style={{ fontSize: 'clamp(20px, 2.2vw, 28px)', color: '#0B1221' }}
              >
                {title}
              </h2>
            )}
            {subtitle && (
              <p className="mt-1" style={{ fontSize: 14, color: '#64748B' }}>
                {subtitle}
              </p>
            )}
          </div>
        </div>
        <Link
          href={`/${locale}${viewAllHref}`}
          className="shrink-0 font-semibold hover:underline"
          style={{ fontSize: 13, color: '#2b358c' }}
        >
          {viewAllLabel}
        </Link>
      </div>

      {/* Vertical list */}
      <div className="flex flex-col gap-4">
        {docs.map((doc) => {
          if (!doc.slug) return null
          const t = localized(doc.title, locale) ?? ''
          const desc = localized(doc.summary, locale) ?? ''
          const img = getMediaURL(doc.thumbnail) ?? fallbackImage
          const featuredType = doc.featuredType ?? 'energy'
          const badgeColor = doc.featuredBadgeColor ?? badgeColors[featuredType] ?? '#2b358c'
          const badgeLabel = localized(doc.featuredBadgeLabel, locale) ?? featuredType

          return (
            <Link
              key={doc.slug}
              href={`/${locale}/du-an-tham-khao/${doc.slug}`}
              className="group flex items-center gap-4 md:gap-6 bg-white rounded-xl border border-gray-100 p-4 md:p-5 hover:shadow-md transition-shadow"
            >
              {/* Thumbnail */}
              <div className="w-24 h-20 md:w-40 md:h-28 relative rounded-lg overflow-hidden shrink-0">
                <Image
                  src={img}
                  alt={t}
                  fill
                  className="object-cover group-hover:scale-105 transition-transform duration-400"
                  sizes="160px"
                />
              </div>

              {/* Content */}
              <div className="flex-1 min-w-0">
                <span
                  className="inline-block text-[10px] font-bold tracking-[2px] uppercase px-2.5 py-1 rounded-full text-white mb-2"
                  style={{ background: badgeColor }}
                >
                  {badgeLabel}
                </span>
                <h3
                  className="font-bold leading-tight line-clamp-2 mb-2"
                  style={{ fontSize: 17, color: '#0B1221' }}
                >
                  {t}
                </h3>
                {desc && (
                  <p
                    className="line-clamp-2 leading-[1.6]"
                    style={{ fontSize: 14, color: '#64748B' }}
                  >
                    {desc}
                  </p>
                )}
              </div>

              {/* Arrow */}
              <span
                className="shrink-0 text-lg font-bold transition-transform group-hover:translate-x-1"
                style={{ color: '#2b358c' }}
              >
                →
              </span>
            </Link>
          )
        })}
      </div>
    </section>
  )
}
