// V2 Modern Split — Featured Projects: alternating image-left / text-right rows
// Desktop: alternating 60/40 split | Mobile/Tablet: image on top, content below
// Server component: fetch từ Payload collection projects
// Xoá folder home-v2-modern-split để bỏ phiên bản này

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

const fallbackImage = 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=900&fit=crop'

interface AlternatingProjectProps {
  slug: string
  title: string
  description: string
  image: string
  badgeLabel: string
  badgeColor: string
  href: string
  reversed: boolean
  locale: string
}

function AlternatingProjectRow({
  title,
  description,
  image,
  badgeLabel,
  badgeColor,
  href,
  reversed,
  locale,
}: AlternatingProjectProps) {
  return (
    <div className="flex flex-col lg:flex-row lg:items-stretch">
      {/* Image — mobile: top, desktop: alternating left/right */}
      <div
        className={`w-full lg:w-3/5 relative h-[220px] md:h-[260px] lg:h-auto overflow-hidden ${reversed ? 'lg:order-last' : ''}`}
      >
        <Image
          src={image}
          alt={title}
          fill
          className="object-cover"
          sizes="(max-width: 1024px) 100vw, 60vw"
        />
      </div>

      {/* Content */}
      <div
        className={`w-full lg:w-2/5 flex flex-col justify-center px-6 md:px-10 lg:px-12 py-8 lg:py-10 ${reversed ? 'lg:order-first lg:items-end lg:text-right' : ''}`}
        style={{ background: '#F8FAFC' }}
      >
        <span
          className="inline-block text-[11px] font-bold tracking-[2px] uppercase px-3 py-1 rounded-full mb-4 text-white self-start"
          style={{ background: badgeColor, alignSelf: reversed ? undefined : 'flex-start' }}
        >
          {badgeLabel}
        </span>
        <h3
          className="font-bold leading-tight mb-3"
          style={{ fontSize: 'clamp(17px, 2vw, 24px)', color: '#0B1221' }}
        >
          {title}
        </h3>
        {description && (
          <p
            className="mb-5 line-clamp-3 leading-[1.7]"
            style={{ fontSize: 14, color: '#64748B' }}
          >
            {description}
          </p>
        )}
        <Link
          href={`/${locale}${href}`}
          className="inline-flex items-center gap-1 font-semibold transition-opacity hover:opacity-70"
          style={{ fontSize: 14, color: '#2b358c' }}
        >
          Xem chi tiết →
        </Link>
      </div>
    </div>
  )
}

export interface FeaturedProjectsAlternatingV2Props {
  locale: string
  title?: string | null
  subtitle?: string | null
  viewAll?: { label?: string | null; href?: string | null }
  sourceMode?: 'latest' | 'manual' | string | null
  count?: number | null
  featuredProjects?: unknown
}

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

export async function FeaturedProjectsAlternatingV2({
  locale,
  title = 'DỰ ÁN TIÊU BIỂU',
  subtitle = 'Các dự án đã triển khai thành công',
  viewAll,
  sourceMode = 'latest',
  count = 4,
  featuredProjects,
}: FeaturedProjectsAlternatingV2Props) {
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
    <section className="py-12 md:py-16" style={{ background: '#FFFFFF' }}>
      {/* Header */}
      <div className="px-5 md:px-8 xl:px-[60px] mb-8 md:mb-10 flex items-end justify-between">
        <div>
          <h2
            className="font-bold tracking-[1.5px]"
            style={{ fontSize: 'clamp(18px, 2.2vw, 28px)', color: '#0B1221' }}
          >
            {title}
          </h2>
          {subtitle && (
            <p className="mt-2" style={{ fontSize: 14, color: '#64748B' }}>
              {subtitle}
            </p>
          )}
        </div>
        <Link
          href={`/${locale}${viewAllHref}`}
          className="shrink-0 font-semibold hover:underline"
          style={{ fontSize: 13, color: '#2b358c' }}
        >
          {viewAllLabel}
        </Link>
      </div>

      {/* Alternating rows */}
      <div className="flex flex-col divide-y divide-gray-100">
        {docs.map((doc, i) => {
          if (!doc.slug) return null
          const t = localized(doc.title, locale) ?? ''
          const desc = localized(doc.summary, locale) ?? ''
          const img = getMediaURL(doc.thumbnail) ?? fallbackImage
          const featuredType = doc.featuredType ?? 'energy'
          const badgeColor = doc.featuredBadgeColor ?? badgeColors[featuredType] ?? '#2b358c'
          const badgeLabel = localized(doc.featuredBadgeLabel, locale) ?? featuredType

          return (
            <AlternatingProjectRow
              key={doc.slug}
              slug={doc.slug}
              title={t}
              description={desc}
              image={img}
              badgeLabel={badgeLabel}
              badgeColor={badgeColor}
              href={`/du-an-tham-khao/${doc.slug}`}
              reversed={i % 2 !== 0}
              locale={locale}
            />
          )
        })}
      </div>
    </section>
  )
}
