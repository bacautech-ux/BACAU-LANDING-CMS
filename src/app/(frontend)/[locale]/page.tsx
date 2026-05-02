import React from 'react'
import config from '@payload-config'
import { getPayload } from 'payload'
import { HeroSection } from '@/components/sections/HeroSection'
import { ServicesSection } from '@/components/sections/ServicesSection'
import { NewsSection } from '@/components/sections/NewsSection'
import { FeaturedProjects } from '@/components/sections/FeaturedProjects'
import { PartnersMosaic } from '@/components/sections/PartnersMosaic'
import { ProductsSection } from '@/components/sections/ProductsSection'
import { CTABanner } from '@/components/sections/CTABanner'
import { BrandLogos } from '@/components/sections/BrandLogos'

type Locale = 'vi' | 'en'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

// Đệ quy convert \n literal → newline thật trong mọi string từ CMS
function processNewlines(value: unknown): unknown {
  if (typeof value === 'string') return value.replace(/\\n/g, '\n')
  if (Array.isArray(value)) return value.map(processNewlines)
  if (value !== null && typeof value === 'object')
    return Object.fromEntries(
      Object.entries(value as Record<string, unknown>).map(([k, v]) => [k, processNewlines(v)]),
    )
  return value
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined

  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`

  return undefined
}

// Fetch layout từ Payload Global bằng Local API để tránh self-fetch qua localhost
async function getHomePageLayout(locale: Locale) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.findGlobal({
      slug: 'home-page',
      depth: 2,
      locale,
      fallbackLocale: 'vi',
    })
    const layout = data?.layout ?? null
    return layout ? processNewlines(layout) : null
  } catch {
    return null
  }
}

// Map blockType → React component
function renderBlock(block: Record<string, unknown>, locale: string, index: number) {
  const type = block.blockType as string

  switch (type) {
    case 'hero': {
      const backgroundType = block.backgroundType === 'video' ? 'video' : 'image'
      const bgImg = getMediaURL(block.backgroundImage)
      const bgVid = getMediaURL(block.backgroundVideo)
      return (
        <HeroSection
          key={index}
          title={(block.title as string) ?? 'Giải pháp Tự động hóa\nCông nghiệp Toàn diện'}
          subtitle={(block.subtitle as string) ?? ''}
          primaryCTA={{
            label: (block.primaryCTA as { label: string })?.label ?? 'Khám phá Dịch vụ',
            href: `/${locale}${(block.primaryCTA as { href: string })?.href ?? '/dich-vu'}`,
          }}
          secondaryCTA={{
            label: (block.secondaryCTA as { label: string })?.label ?? 'Liên hệ Tư vấn',
            href: `/${locale}${(block.secondaryCTA as { href: string })?.href ?? '/lien-he'}`,
          }}
          backgroundImage={backgroundType === 'image' ? (bgImg ?? 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1600') : undefined}
          backgroundVideo={backgroundType === 'video' ? bgVid : undefined}
          trustPartners={block.trustPartners as { name: string; logo?: { url: string; alt?: string } | null }[] | undefined}
        />
      )
    }
    case 'services':
      return <ServicesSection key={index} locale={locale} />
    case 'news':
      return <NewsSection key={index} locale={locale} />
    case 'featuredProjects':
      return <FeaturedProjects key={index} locale={locale} />
    case 'partners':
      return <PartnersMosaic key={index} />
    case 'products':
      return <ProductsSection key={index} locale={locale} />
    case 'ctaBanner':
      return (
        <CTABanner
          key={index}
          locale={locale}
          title={block.title as string}
          subtitle={block.subtitle as string}
          primaryCTALabel={(block.primaryCTA as { label: string })?.label}
          primaryCTAHref={(block.primaryCTA as { href: string })?.href}
          secondaryCTALabel={(block.secondaryCTA as { label: string })?.label}
          secondaryCTAHref={(block.secondaryCTA as { href: string })?.href}
        />
      )
    case 'brandLogos':
      return <BrandLogos key={index} />
    default:
      return null
  }
}

// Default layout khi chưa có DB / Payload chưa được cấu hình
function DefaultLayout({ locale }: { locale: string }) {
  return (
    <>
      <HeroSection
        title={"Giải pháp Tự động hóa\nCông nghiệp Toàn diện"}
        subtitle="Đối tác tin cậy trong lĩnh vực tự động hóa, quản lý năng lượng và hệ thống điện công nghiệp cho doanh nghiệp toàn quốc"
        primaryCTA={{ label: 'Khám phá Dịch vụ', href: `/${locale}/dich-vu` }}
        secondaryCTA={{ label: 'Liên hệ Tư vấn', href: `/${locale}/lien-he` }}
        backgroundImage="https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1600"
      />
      <ServicesSection locale={locale} />
      <NewsSection locale={locale} />
      <FeaturedProjects locale={locale} />
      <PartnersMosaic />
      <ProductsSection locale={locale} />
      <CTABanner locale={locale} />
      <BrandLogos />
    </>
  )
}

export default async function Page({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params
  const layout = await getHomePageLayout(locale === 'en' ? 'en' : 'vi')

  // Nếu Payload chưa có data → dùng layout mặc định
  if (!layout || !Array.isArray(layout) || layout.length === 0) {
    return <DefaultLayout locale={locale} />
  }

  // Render theo thứ tự admin đã setup trong /admin/globals/home-page
  return (
    <>
      {(layout as Record<string, unknown>[]).map((block, i) =>
        renderBlock(block, locale, i),
      )}
    </>
  )
}
