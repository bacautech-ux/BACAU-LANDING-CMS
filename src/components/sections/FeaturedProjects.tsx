import React from 'react'
import Link from 'next/link'
import config from '@payload-config'
import { getPayload } from 'payload'
import {
  FeaturedProjectCard,
  FeaturedProjectsClient,
  FeaturedProjectTab,
} from './FeaturedProjectsClient'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface ProjectDocument {
  slug?: string | null
  title?: {
    vi?: string | null
    en?: string | null
  } | null
  summary?: {
    vi?: string | null
    en?: string | null
  } | null
  thumbnail?: MediaValue | null
  featuredType?: string | null
  featuredBadgeLabel?:
    | string
    | {
        vi?: string | null
        en?: string | null
      }
    | null
  featuredBadgeColor?: string | null
}

interface FeaturedProjectsProps {
  locale: string
  title?: string
  backgroundColor?: string | null
  textTheme?: 'dark' | 'light' | string | null
  viewAll?: {
    label?: string | null
    href?: string | null
  }
  sourceMode?: 'latest' | 'manual' | string | null
  count?: number | null
  featuredProjects?: unknown
  tabs?: {
    label?: string | null
    value?: string | null
  }[]
}

const defaultTabs: FeaturedProjectTab[] = [
  { label: 'Quản lý năng lượng', value: 'energy' },
  { label: 'Điện công nghiệp', value: 'electrical' },
  { label: 'Tự động hóa', value: 'automation' },
  { label: 'Hệ thống BMS', value: 'bms' },
]

const badgeLabels: Record<string, string> = {
  energy: 'Năng lượng',
  electrical: 'Điện CN',
  automation: 'Tự động hóa',
  bms: 'BMS',
}

const badgeColors: Record<string, string> = {
  energy: '#2b358c',
  electrical: '#B92C32',
  automation: '#2b358c',
  bms: '#6366F1',
}

const defaultProjectImage = 'https://images.unsplash.com/photo-1760456307112-e69c5ede808d?w=800'

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined

  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`

  return undefined
}

function isProjectDocument(value: unknown): value is ProjectDocument {
  return Boolean(value && typeof value === 'object' && 'slug' in value)
}

function getLocalizedText(
  value: string | { vi?: string | null; en?: string | null } | null | undefined,
  locale: string,
) {
  if (typeof value === 'string') return value
  if (!value || typeof value !== 'object') return undefined

  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'

  return value[typedLocale] ?? value[fallbackLocale] ?? undefined
}

function normalizeProject(doc: ProjectDocument, locale: string): FeaturedProjectCard | null {
  if (!doc.slug) return null

  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  const title = doc.title?.[typedLocale] ?? doc.title?.[fallbackLocale]

  if (!title) return null

  const featuredType = doc.featuredType ?? 'energy'

  return {
    slug: doc.slug,
    title,
    description: doc.summary?.[typedLocale] ?? doc.summary?.[fallbackLocale] ?? '',
    image: getMediaURL(doc.thumbnail) ?? defaultProjectImage,
    featuredType,
    badgeColor: doc.featuredBadgeColor ?? badgeColors[featuredType] ?? '#2b358c',
    badgeLabel: getLocalizedText(doc.featuredBadgeLabel, locale) ?? badgeLabels[featuredType] ?? 'Dự án',
  }
}

function normalizeSelectedProjects(value: unknown, locale: string) {
  if (!Array.isArray(value)) return []

  return value
    .filter(isProjectDocument)
    .map((doc) => normalizeProject(doc, locale))
    .filter((item): item is FeaturedProjectCard => Boolean(item))
}

async function getLatestFeaturedProjects(locale: string, count: number) {
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

    return data.docs
      .map((doc) => normalizeProject(doc as ProjectDocument, locale))
      .filter((item): item is FeaturedProjectCard => Boolean(item))
  } catch {
    return []
  }
}

export async function FeaturedProjects({
  locale,
  title = 'DỰ ÁN TIÊU BIỂU',
  backgroundColor = '#0B1221',
  textTheme = 'dark',
  viewAll,
  sourceMode = 'latest',
  count = 4,
  featuredProjects,
  tabs,
}: FeaturedProjectsProps) {
  const isLight = textTheme === 'light'
  const displayLimit = count ?? 4
  const fetchLimit = Math.max(displayLimit * 6, 24)
  const latestProjects = await getLatestFeaturedProjects(locale, fetchLimit)
  const selectedProjects =
    sourceMode === 'manual' ? normalizeSelectedProjects(featuredProjects, locale) : []
  const projects = [...selectedProjects, ...latestProjects]

  if (projects.length === 0) return null

  const visibleTabs =
    tabs
      ?.filter((tab) => tab.label && tab.value)
      .map((tab) => ({ label: tab.label as string, value: tab.value as string })) ?? defaultTabs
  const viewAllHref = viewAll?.href ?? '/du-an-tham-khao'
  const viewAllLabel = viewAll?.label ?? 'Xem tất cả →'

  return (
    <section
      className="px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16"
      style={{ background: backgroundColor ?? '#0B1221' }}
    >
      <div className="mb-8 flex items-start justify-between gap-4 md:mb-8 xl:mb-10">
        <div className="flex items-center gap-3">
          <div className="h-1 w-9 rounded-sm bg-primary-red md:w-10" />
          <h2
            className="text-[24px] font-bold tracking-[1px] md:text-[28px] md:tracking-[1.5px]"
            style={{ color: isLight ? '#111111' : '#FFFFFF' }}
          >
            {title}
          </h2>
        </div>
        <Link
          href={`/${locale}${viewAllHref}`}
          className="shrink-0 text-[13px] font-semibold hover:underline md:text-[14px]"
          style={{ color: isLight ? '#2b358c' : '#FFFFFFBB' }}
        >
          {viewAllLabel}
        </Link>
      </div>

      <FeaturedProjectsClient
        locale={locale}
        projects={projects}
        tabs={visibleTabs}
        displayLimit={displayLimit}
        isLight={isLight}
      />
    </section>
  )
}
