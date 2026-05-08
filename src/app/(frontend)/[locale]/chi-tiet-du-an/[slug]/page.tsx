import React from 'react'
import Image from 'next/image'
import { notFound } from 'next/navigation'
import config from '@payload-config'
import { getPayload } from 'payload'
import { BreadcrumbBar } from '@/components/sections/PageHero'
import { ContentSection } from '@/components/ui/ContentSection'
import { BulletList } from '@/components/sections/ArticleSection'
import { BrandLogos } from '@/components/sections/BrandLogos'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface LocalizedText {
  vi?: string | null
  en?: string | null
}

interface ProjectDetailDoc {
  slug?: string | null
  title?: LocalizedText | null
  category?: string | null
  featuredBadgeLabel?: string | LocalizedText | null
  thumbnail?: MediaValue | null
  detailHeroImage?: MediaValue | null
  introImage?: MediaValue | null
  customerName?: LocalizedText | null
  customerAddress?: string | null
  industry?: string | null
  location?: string | null
  year?: number | null
  summary?: LocalizedText | null
  intro?: { vi?: unknown; en?: unknown } | null
  solutions?: { vi?: unknown; en?: unknown } | null
  results?: { vi?: unknown; en?: unknown } | null
  customerReasons?: { text?: string | null }[] | null
  resultItems?: { text?: string | null }[] | null
  images?: { image?: MediaValue | null }[] | null
}

const categoryLabels: Record<string, string> = {
  'electrical-automation': 'Tự động hóa & Điện',
  digitalization: 'Số hóa',
  measurement: 'Đo lường Công nghệ',
  'industrial-services': 'Dịch vụ Công nghiệp',
}

const industryLabels: Record<string, string> = {
  'oil-gas': 'Dầu khí',
  'fertilizer-chemical': 'Phân bón & Hóa chất',
  power: 'Điện',
  'cement-mining': 'Xi măng & Khai khoáng',
  steel: 'Thép',
  'food-beverage': 'Thực phẩm & Đồ uống',
  'consumer-goods': 'Hàng tiêu dùng',
  water: 'Nước & Nước thải',
  port: 'Cảng',
  other: 'Khác',
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

function getLocalizedText(value: string | LocalizedText | null | undefined, locale: string) {
  if (typeof value === 'string') return value
  if (!value || typeof value !== 'object') return undefined
  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  return value[typedLocale] ?? value[fallbackLocale] ?? undefined
}

function extractLexicalText(value: unknown): string[] {
  if (!value || typeof value !== 'object') return []

  const root = (value as { root?: { children?: unknown[] } }).root
  if (!Array.isArray(root?.children)) return []

  return root.children
    .map((node) => {
      if (!node || typeof node !== 'object') return ''
      const children = (node as { children?: { text?: string }[] }).children
      return children?.map((child) => child.text ?? '').join('').trim() ?? ''
    })
    .filter(Boolean)
}

function getLocalizedRichText(value: { vi?: unknown; en?: unknown } | null | undefined, locale: string) {
  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  return extractLexicalText(value?.[typedLocale]).length > 0
    ? extractLexicalText(value?.[typedLocale])
    : extractLexicalText(value?.[fallbackLocale])
}

function infoRows(project: ProjectDetailDoc, locale: string) {
  const category = project.category ? categoryLabels[project.category] : ''

  return [
    { label: 'Tên khách hàng', value: getLocalizedText(project.customerName, locale) },
    { label: 'Địa chỉ khách hàng', value: project.customerAddress },
    { label: 'Ngành công nghiệp', value: project.industry ? industryLabels[project.industry] : category },
    { label: 'Địa điểm thực hiện dự án', value: project.location },
    { label: 'Thời gian thực hiện dự án', value: project.year ? String(project.year) : undefined },
  ].filter((row) => row.value)
}

export default async function ProjectDetailPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>
}) {
  const { locale, slug } = await params
  const payload = await getPayload({ config })
  const { docs } = await payload.find({
    collection: 'projects',
    where: { slug: { equals: slug } },
    depth: 2,
    locale: locale === 'en' ? 'en' : 'vi',
    fallbackLocale: 'vi',
    limit: 1,
  })
  const project = docs[0] as ProjectDetailDoc | undefined

  if (!project) notFound()

  const title = getLocalizedText(project.title, locale) ?? ''
  const heroImage =
    getMediaURL(project.detailHeroImage) ??
    getMediaURL(project.thumbnail) ??
    'https://images.unsplash.com/photo-1758272024360-a95be2abe403?w=1200'
  const introImage = getMediaURL(project.introImage) ?? heroImage
  const categoryLabel =
    getLocalizedText(project.featuredBadgeLabel, locale) ??
    (project.category ? categoryLabels[project.category] : 'Dự án')
  const introParagraphs = getLocalizedRichText(project.intro, locale)
  const solutionItems = getLocalizedRichText(project.solutions, locale)
  const resultParagraphs = getLocalizedRichText(project.results, locale)
  const customerReasons = project.customerReasons?.map((item) => item.text ?? '').filter(Boolean) ?? []
  const resultItems = project.resultItems?.map((item) => item.text ?? '').filter(Boolean) ?? []
  const bottomImages =
    project.images
      ?.map((item) => getMediaURL(item.image))
      .filter((src): src is string => Boolean(src))
      .slice(0, 2) ?? []

  return (
    <>
      <BreadcrumbBar
        items={[
          { label: 'Trang chủ', href: `/${locale}` },
          { label: 'Dự án Tham Khảo', href: `/${locale}/du-an-tham-khao` },
          { label: title },
        ]}
      />

      <div className="px-4 py-6 md:px-6 md:py-6 xl:px-[60px] xl:py-10">
        <div className="grid grid-cols-1 gap-6 md:grid-cols-2 md:gap-8 xl:gap-10">
          <div className="relative h-[240px] overflow-hidden rounded-[4px] md:h-[280px] xl:h-[400px]">
            <Image src={heroImage} alt={title} fill className="object-cover" sizes="(max-width: 767px) 100vw, 50vw" priority />
          </div>

          <div className="flex flex-col gap-5">
            <h1 className="text-[20px] font-bold leading-snug text-text-primary md:text-[22px]">
              {title}
            </h1>

            <span className="self-start rounded-full bg-primary-blue px-3 py-1 text-[12px] font-semibold text-white">
              {categoryLabel}
            </span>

            <div className="h-px w-full bg-primary-red" />

            <dl className="flex flex-col gap-3">
              {infoRows(project, locale).map((row) => (
                <div key={row.label} className="flex flex-col gap-1 text-[14px] md:flex-row md:gap-2">
                  <dt className="shrink-0 font-semibold text-text-primary md:w-[200px]">{row.label}:</dt>
                  <dd className="text-text-secondary">{row.value}</dd>
                </div>
              ))}
            </dl>
          </div>
        </div>
      </div>

      <div className="flex flex-col gap-8 px-4 py-6 md:px-6 md:py-6 xl:gap-10 xl:px-[60px] xl:py-10">
        <ContentSection title="Giới thiệu về dự án">
          <div className="flex flex-col gap-5">
            {(introParagraphs.length > 0 ? introParagraphs : [getLocalizedText(project.summary, locale) ?? '']).map((text) => (
              <p key={text} className="text-[14px] leading-[1.7] text-text-secondary">
                {text}
              </p>
            ))}
            <div className="relative h-[260px] w-full overflow-hidden rounded-[4px] md:h-[360px]">
              <Image src={introImage} alt={title} fill className="object-cover" sizes="100vw" />
            </div>
          </div>
        </ContentSection>

        {solutionItems.length > 0 && (
          <ContentSection title="Các công việc, giải pháp, sản phẩm mà Bắc Âu đáp ứng">
            <BulletList items={solutionItems} />
          </ContentSection>
        )}

        {customerReasons.length > 0 && (
          <ContentSection title="Lý giải của khách hàng">
            <BulletList items={customerReasons} />
          </ContentSection>
        )}

        {(resultItems.length > 0 || resultParagraphs.length > 0) && (
          <ContentSection title="Kết quả đạt được">
            <BulletList items={resultItems.length > 0 ? resultItems : resultParagraphs} />
          </ContentSection>
        )}

        {bottomImages.length > 0 && (
          <div className="grid grid-cols-1 gap-5 md:grid-cols-2">
            {bottomImages.map((src) => (
              <div key={src} className="relative h-[220px] overflow-hidden rounded-[4px] md:h-[280px]">
                <Image src={src} alt={title} fill className="object-cover" sizes="50vw" />
              </div>
            ))}
          </div>
        )}
      </div>

      <BrandLogos />
    </>
  )
}
