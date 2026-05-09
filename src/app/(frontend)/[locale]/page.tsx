import React from 'react'
import config from '@payload-config'
import { getPayload } from 'payload'
import { setRequestLocale } from 'next-intl/server'
import { RenderBlocks } from '@/components/blocks/RenderBlocks'

export const revalidate = 3600
import { HeroSection } from '@/components/sections/HeroSection'
import { ServicesSection } from '@/components/sections/ServicesSection'
import { NewsSection } from '@/components/sections/NewsSection'
import { FeaturedProjects } from '@/components/sections/FeaturedProjects'
import { PartnersMosaic } from '@/components/sections/PartnersMosaic'
import { ProductsSection } from '@/components/sections/ProductsSection'
import { CTABanner } from '@/components/sections/CTABanner'
import { BrandLogos } from '@/components/sections/BrandLogos'

type Locale = 'vi' | 'en'

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

// Fetch layout từ Pages collection bằng Local API để tránh self-fetch qua localhost
async function getHomePageLayout(locale: Locale) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.find({
      collection: 'pages',
      where: {
        slug: { equals: 'home' },
      },
      depth: 2,
      locale,
      fallbackLocale: 'vi',
      limit: 1,
    })
    const layout = data.docs[0]?.layout ?? null
    return layout ? processNewlines(layout) : null
  } catch {
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
  setRequestLocale(locale)
  const layout = await getHomePageLayout(locale === 'en' ? 'en' : 'vi')

  // Nếu Payload chưa có data → dùng layout mặc định
  if (!layout || !Array.isArray(layout) || layout.length === 0) {
    return <DefaultLayout locale={locale} />
  }

  // Render theo thứ tự admin đã setup trong Pages > home.
  return <RenderBlocks blocks={layout} locale={locale} />
}
