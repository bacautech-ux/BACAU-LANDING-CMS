import React from 'react'
import config from '@payload-config'
import { getPayload } from 'payload'
import { ProjectsPageClient } from './ProjectsPageClient'
import type { ParentCategory, SubCategory } from './ProjectFilterBar'
import type { ProjectCardData } from './ProjectCard'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface ProjectDocument {
  slug?: string | null
  title?: { vi?: string | null; en?: string | null } | null
  summary?: { vi?: string | null; en?: string | null } | null
  category?: string | null
  industry?: string | null
  featuredBadgeLabel?: string | { vi?: string | null; en?: string | null } | null
  thumbnail?: MediaValue | null
}

interface ProjectsListingSectionProps {
  locale: string
  sourceMode?: 'latest' | 'manual' | string | null
  limit?: number | null
  projects?: unknown
  parentCategories?: ParentCategory[]
  industryFilters?: SubCategory[]
}

const defaultParentCategories: ParentCategory[] = [
  { label: 'GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA', value: 'electrical-automation' },
  { label: 'GIẢI PHÁP SỐ HÓA', value: 'digitalization' },
  { label: 'DỊCH VỤ CÔNG NGHIỆP', value: 'industrial-services' },
  { label: 'GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ', value: 'measurement' },
]

const defaultIndustryFilters: SubCategory[] = [
  { label: 'Dầu khí', value: 'oil-gas' },
  { label: 'Phân bón & Hóa chất', value: 'fertilizer-chemical' },
  { label: 'Điện', value: 'power' },
  { label: 'Xi măng & Khai khoáng', value: 'cement-mining' },
  { label: 'Thép', value: 'steel' },
  { label: 'Thực phẩm & Đồ uống', value: 'food-beverage' },
  { label: 'Nước & Nước thải', value: 'water' },
  { label: 'Cảng', value: 'port' },
]

const categoryLabels: Record<string, string> = {
  'electrical-automation': 'Tự động hóa & Điện',
  digitalization: 'Số hóa',
  measurement: 'Đo lường Công nghệ',
  'industrial-services': 'Dịch vụ Công nghiệp',
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
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

function normalizeProject(doc: ProjectDocument, locale: string): ProjectCardData | null {
  if (!doc.slug) return null
  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  const title = doc.title?.[typedLocale] ?? doc.title?.[fallbackLocale]
  if (!title) return null

  const category = doc.category ?? 'electrical-automation'

  return {
    slug: doc.slug,
    title,
    summary: doc.summary?.[typedLocale] ?? doc.summary?.[fallbackLocale] ?? '',
    category,
    industry: doc.industry,
    categoryLabel:
      getLocalizedText(doc.featuredBadgeLabel, locale) ?? categoryLabels[category] ?? 'Dự án',
    thumbnail:
      getMediaURL(doc.thumbnail) ??
      'https://images.unsplash.com/photo-1718091289341-7ef5d938d0fc?w=600',
    thumbnailAlt: title,
  }
}

function isProjectDocument(value: unknown): value is ProjectDocument {
  return Boolean(value && typeof value === 'object' && 'slug' in value)
}

function normalizeSelectedProjects(value: unknown, locale: string) {
  if (!Array.isArray(value)) return []
  return value
    .filter(isProjectDocument)
    .map((project) => normalizeProject(project, locale))
    .filter((project): project is ProjectCardData => Boolean(project))
}

async function getLatestProjects(locale: string, limit: number) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.find({
      collection: 'projects',
      where: { _status: { equals: 'published' } },
      sort: '-year',
      depth: 2,
      limit,
      locale: locale === 'en' ? 'en' : 'vi',
      fallbackLocale: 'vi',
    })

    return data.docs
      .map((project) => normalizeProject(project as ProjectDocument, locale))
      .filter((project): project is ProjectCardData => Boolean(project))
  } catch {
    return []
  }
}

export async function ProjectsListingSection({
  locale,
  sourceMode = 'latest',
  limit = 24,
  projects,
  parentCategories,
  industryFilters,
}: ProjectsListingSectionProps) {
  const selectedProjects =
    sourceMode === 'manual' ? normalizeSelectedProjects(projects, locale) : []
  const latestProjects = await getLatestProjects(locale, limit ?? 24)
  const visibleProjects = [...selectedProjects, ...latestProjects].slice(0, limit ?? 24)

  return (
    <ProjectsPageClient
      locale={locale}
      projects={visibleProjects}
      parents={parentCategories?.length ? parentCategories : defaultParentCategories}
      subs={industryFilters?.length ? industryFilters : defaultIndustryFilters}
    />
  )
}
