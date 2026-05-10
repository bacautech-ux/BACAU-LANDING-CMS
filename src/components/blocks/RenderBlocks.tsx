import React from 'react'
import { AboutContentSection, StandaloneContentSection } from '../sections/AboutContentSection'
import { BrandLogos } from '@/components/sections/BrandLogos'
import { CTABanner } from '@/components/sections/CTABanner'
import { FeaturedProjects } from '@/components/sections/FeaturedProjects'
import { HeroBanner } from '@/components/sections/HeroBanner'
import { HeroSection } from '@/components/sections/HeroSection'
import { NewsSection } from '@/components/sections/NewsSection'
import { PageHero } from '@/components/sections/PageHero'
import { PartnersMosaic } from '@/components/sections/PartnersMosaic'
import { ProductsSection } from '@/components/sections/ProductsSection'
import { ProjectsListingSection } from '@/components/sections/ProjectsListingSection'
import { ServicesSection } from '@/components/sections/ServicesSection'
import { WelcomeIntro } from '@/components/sections/WelcomeIntro'
import { RichContentSection } from '@/components/sections/RichContentSection'
// V2 Modern Split
import { HeroV2 } from '@/components/home-v2-modern-split/HeroV2'
import { ServicesBentoV2 } from '@/components/home-v2-modern-split/ServicesBentoV2'
import { FeaturedProjectsAlternatingV2 } from '@/components/home-v2-modern-split/FeaturedProjectsAlternatingV2'
// V3 Data Grid
import { HeroV3 } from '@/components/home-v3-data-grid/HeroV3'
// V4 Modern Rounded
import { HeroV4 } from '@/components/home-v4-modern-rounded/HeroV4'
// V5 Ultra Modern
import { HeroV5 } from '@/components/home-v5-ultra-modern/HeroV5'
import { ServicesAlternatingV5 } from '@/components/home-v5-ultra-modern/ServicesAlternatingV5'
import { FeaturedProjectsListV5 } from '@/components/home-v5-ultra-modern/FeaturedProjectsListV5'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined

  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`

  return undefined
}

function renderBlock(block: Record<string, unknown>, locale: string, index: number) {
  const type = block.blockType as string

  switch (type) {
    case 'heroBanner': {
      const bgImg = getMediaURL(block.backgroundImage) ?? (block.backgroundImageURL as string | undefined)
      const bgVid = getMediaURL(block.backgroundVideo)
      const poster = getMediaURL(block.posterImage)
      return (
        <HeroBanner
          key={index}
          backgroundType={block.backgroundType as string | null | undefined}
          backgroundImage={bgImg}
          backgroundVideo={bgVid}
          posterImage={poster}
          height={block.height as number | null | undefined}
          overlayOpacity={block.overlayOpacity as number | null | undefined}
        />
      )
    }
    case 'welcomeIntro':
      return (
        <WelcomeIntro
          key={index}
          locale={locale}
          eyebrow={block.eyebrow as string | null | undefined}
          body={block.body as string | null | undefined}
          cta={block.cta as { label?: string | null; href?: string | null } | null | undefined}
          images={
            block.images as
              | {
                  image?: { url?: string | null; filename?: string | null } | null
                  imageURL?: string | null
                  alt?: string | null
                }[]
              | null
              | undefined
          }
          autoPlay={block.autoPlay as boolean | null | undefined}
          autoPlayInterval={block.autoPlayInterval as number | null | undefined}
        />
      )
    case 'pageHero': {
      const bg = getMediaURL(block.backgroundImage) ?? (block.backgroundImageURL as string | undefined)
      const title = (block.title as string) ?? ''
      const cmsBreadcrumbs = block.breadcrumbs as { label?: string | null; href?: string | null }[] | null | undefined
      const breadcrumbs = cmsBreadcrumbs && cmsBreadcrumbs.length > 0
        ? cmsBreadcrumbs.map((b) => ({ label: b.label ?? '', href: b.href ?? undefined }))
        : [
            { label: 'Trang chủ', href: `/${locale}` },
            { label: (block.breadcrumbLabel as string) ?? title },
          ]
      return (
        <PageHero
          key={index}
          title={title}
          backgroundImage={bg}
          breadcrumbs={breadcrumbs}
          height={block.height as string | null | undefined}
        />
      )
    }
    case 'aboutContent':
      return (
        <AboutContentSection
          key={index}
          sidebarGroups={
            block.sidebarGroups as
              | {
                  title: string
                  titleHref?: string
                  items: { label: string; href: string }[]
                }[]
              | undefined
          }
          sections={
            block.sections as
              | {
                  id?: string | null
                  variant?: string | null
                  title?: string | null
                  body?: string | null
                  paragraphs?: { text?: string | null }[] | null
                  columns?: '2' | '3' | '4' | null
                  imagePosition?: 'left' | 'right' | null
                  images?: {
                    image?: { url?: string | null; filename?: string | null } | null
                    imageURL?: string | null
                    alt?: string | null
                    caption?: string | null
                  }[] | null
                  items?:
                    | {
                        title?: string | null
                        subtitle?: string | null
                        description?: string | null
                        meta?: string | null
                        icon?: string | null
                        image?: { url?: string | null; filename?: string | null } | null
                        imageURL?: string | null
                        alt?: string | null
                        href?: string | null
                        buttonLabel?: string | null
                      }[]
                    | null
                  tabs?:
                    | {
                        tabTitle?: string | null
                        files?: {
                          title?: string | null
                          file?: { url?: string | null; filename?: string | null } | null
                          fileURL?: string | null
                        }[] | null
                      }[]
                    | null
                }[]
              | undefined
          }
        />
      )
    case 'contentIntro':
    case 'featureCards':
    case 'imageGallery':
    case 'infoGrid':
    case 'mediaTextSplit':
    case 'documentList':
      return (
        <StandaloneContentSection
          key={index}
          section={{
            id: block.id as string | null | undefined,
            variant:
              type === 'contentIntro'
                ? 'intro'
                : type === 'featureCards'
                  ? 'cards'
                  : type === 'imageGallery'
                    ? 'gallery'
                    : type === 'infoGrid'
                      ? 'itemGrid'
                      : type === 'mediaTextSplit'
                        ? 'splitMedia'
                        : 'documentList',
            title: block.title as string | null | undefined,
            body: block.body as string | null | undefined,
            paragraphs: block.paragraphs as { text?: string | null }[] | null | undefined,
            columns: block.columns as '2' | '3' | '4' | null | undefined,
            imagePosition: block.imagePosition as 'left' | 'right' | null | undefined,
            images:
              block.images as
                | {
                    image?: { url?: string | null; filename?: string | null } | null
                    imageURL?: string | null
                    alt?: string | null
                    caption?: string | null
                  }[]
                | null
                | undefined,
            items:
              block.items as
                | {
                    title?: string | null
                    subtitle?: string | null
                    description?: string | null
                    meta?: string | null
                    icon?: string | null
                    image?: { url?: string | null; filename?: string | null } | null
                    imageURL?: string | null
                    alt?: string | null
                    href?: string | null
                    buttonLabel?: string | null
                  }[]
                | null
                | undefined,
          }}
        />
      )
    case 'projectsListing':
      return (
        <ProjectsListingSection
          key={index}
          locale={locale}
          sourceMode={block.sourceMode as string | null | undefined}
          limit={block.limit as number | null | undefined}
          projects={block.projects}
          parentCategories={block.parentCategories as { label: string; value: string; industryFilters?: { label: string; value: string }[] }[] | undefined}
        />
      )
    case 'hero': {
      const variant = (block.variant as string) || 'corporate'
      const backgroundType = block.backgroundType === 'video' ? 'video' : 'image'
      const bgImg = getMediaURL(block.backgroundImage)
      const bgVid = getMediaURL(block.backgroundVideo)
      const heroImg = getMediaURL(block.heroImage) ?? (block.heroImageURL as string | undefined)

      const statsData = block.stats as
        | {
            value?: number | null
            suffix?: string | null
            labelTop?: string | null
            labelBottom?: string | null
            numberColor?: string | null
          }[]
        | undefined

      const primaryCTA = {
        label: (block.primaryCTA as { label: string })?.label ?? 'Khám phá Dịch vụ',
        href: `/${locale}${(block.primaryCTA as { href: string })?.href ?? '/dich-vu'}`,
      }
      const secondaryCTA = {
        label: (block.secondaryCTA as { label: string })?.label ?? 'Liên hệ Tư vấn',
        href: `/${locale}${(block.secondaryCTA as { href: string })?.href ?? '/lien-he'}`,
      }
      const badgeText = (block.badgeText as string) ?? 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU'
      const title = (block.title as string) ?? 'Giải pháp Tự động hóa\nCông nghiệp Toàn diện'
      const subtitle = (block.subtitle as string) ?? ''

      if (variant === 'modernSplit') {
        return (
          <HeroV2
            key={index}
            badgeText={badgeText}
            title={title}
            subtitle={subtitle}
            primaryCTA={primaryCTA}
            secondaryCTA={secondaryCTA}
            heroImage={heroImg}
            stats={statsData}
          />
        )
      }

      if (variant === 'dataGrid') {
        return (
          <HeroV3
            key={index}
            title={title}
            subtitle={subtitle}
            primaryCTA={primaryCTA}
            stats={statsData}
          />
        )
      }

      if (variant === 'modernRounded') {
        return (
          <HeroV4
            key={index}
            badgeText={badgeText}
            title={title}
            subtitle={subtitle}
            primaryCTA={primaryCTA}
            secondaryCTA={secondaryCTA}
            stats={statsData}
          />
        )
      }

      if (variant === 'ultraModern') {
        return (
          <HeroV5
            key={index}
            badgeText={badgeText}
            title={title}
            subtitle={subtitle}
            primaryCTA={primaryCTA}
            secondaryCTA={secondaryCTA}
            backgroundImage={backgroundType === 'image' ? bgImg : undefined}
            backgroundVideo={backgroundType === 'video' ? bgVid : undefined}
            stats={statsData}
          />
        )
      }

      // Default: corporate (V1)
      return (
        <HeroSection
          key={index}
          badgeText={badgeText}
          title={title}
          subtitle={subtitle}
          primaryCTA={primaryCTA}
          secondaryCTA={secondaryCTA}
          backgroundImage={
            backgroundType === 'image'
              ? (bgImg ?? 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1600')
              : undefined
          }
          backgroundVideo={backgroundType === 'video' ? bgVid : undefined}
          stats={statsData}
          trustPartners={
            block.trustPartners as
              | { name: string; logo?: { url: string; alt?: string } | null }[]
              | undefined
          }
        />
      )
    }
    case 'services': {
      const servicesVariant = (block.variant as string) || 'cards'
      const servicesCards = block.cards as
        | {
            title?: string | null
            description?: string | null
            image?: { url?: string | null; filename?: string | null } | null
            imageURL?: string | null
            href?: string | null
            buttonLabel?: string | null
          }[]
        | undefined

      if (servicesVariant === 'bento') {
        return (
          <ServicesBentoV2
            key={index}
            title={block.title as string}
            subtitle={block.subtitle as string}
            cards={servicesCards}
          />
        )
      }

      if (servicesVariant === 'alternating') {
        return (
          <ServicesAlternatingV5
            key={index}
            title={block.title as string}
            subtitle={block.subtitle as string}
            cards={servicesCards}
            locale={locale}
          />
        )
      }

      return (
        <ServicesSection
          key={index}
          locale={locale}
          title={block.title as string}
          subtitle={block.subtitle as string}
          cards={servicesCards}
        />
      )
    }
    case 'news':
      return (
        <NewsSection
          key={index}
          locale={locale}
          title={block.title as string}
          viewAll={block.viewAll as { label?: string | null; href?: string | null } | undefined}
          sourceMode={block.sourceMode as string | null | undefined}
          count={block.count as number | null | undefined}
          featuredNews={block.featuredNews}
          secondaryNews={block.secondaryNews}
          displayMode={block.displayMode as string | null | undefined}
        />
      )
    case 'featuredProjects': {
      const projVariant = (block.variant as string) || 'grid'
      const viewAllData = block.viewAll as { label?: string | null; href?: string | null } | undefined

      if (projVariant === 'alternating') {
        return (
          <FeaturedProjectsAlternatingV2
            key={index}
            locale={locale}
            title={block.title as string}
            subtitle={(block.subtitle as string) ?? undefined}
            viewAll={viewAllData}
            sourceMode={block.sourceMode as string | null | undefined}
            count={block.count as number | null | undefined}
            featuredProjects={block.featuredProjects}
          />
        )
      }

      if (projVariant === 'list') {
        return (
          <FeaturedProjectsListV5
            key={index}
            locale={locale}
            title={block.title as string}
            subtitle={(block.subtitle as string) ?? undefined}
            viewAll={viewAllData}
            sourceMode={block.sourceMode as string | null | undefined}
            count={block.count as number | null | undefined}
            featuredProjects={block.featuredProjects}
          />
        )
      }

      return (
        <FeaturedProjects
          key={index}
          locale={locale}
          title={block.title as string}
          backgroundColor={block.backgroundColor as string | null | undefined}
          viewAll={viewAllData}
          sourceMode={block.sourceMode as string | null | undefined}
          count={block.count as number | null | undefined}
          featuredProjects={block.featuredProjects}
          tabs={
            block.tabs as
              | {
                  label?: string | null
                  value?: string | null
                }[]
              | undefined
          }
          textTheme={block.textTheme as string | null | undefined}
        />
      )
    }
    case 'partners':
      return (
        <PartnersMosaic
          key={index}
          title={block.title as string}
          subtitle={block.subtitle as string}
          backgroundColor={block.backgroundColor as string | null | undefined}
          images={
            block.images as
              | {
                  alt?: string | null
                  image?: { url?: string | null; filename?: string | null } | null
                  imageURL?: string | null
                }[]
              | undefined
          }
        />
      )
    case 'products':
      return (
        <ProductsSection
          key={index}
          locale={locale}
          title={block.title as string}
          subtitle={block.subtitle as string}
          sourceMode={block.sourceMode as string | null | undefined}
          count={block.count as number | null | undefined}
          featuredProducts={block.featuredProducts}
        />
      )
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
          backgroundColor={block.backgroundColor as string | undefined}
          gradientFrom={block.gradientFrom as string | undefined}
          gradientMiddle={block.gradientMiddle as string | undefined}
          gradientTo={block.gradientTo as string | undefined}
          accentColor={block.accentColor as string | undefined}
        />
      )
    case 'richContent':
      return (
        <RichContentSection
          key={index}
          title={block.title as string | null | undefined}
          content={block.content as import('@payloadcms/richtext-lexical/lexical').SerializedEditorState | null | undefined}
        />
      )
    case 'brandLogos':
      return (
        <BrandLogos
          key={index}
          title={block.title as string}
          sourceMode={block.sourceMode as string | null | undefined}
          count={block.count as number | null | undefined}
          partners={block.partners}
          fallbackBrands={block.fallbackBrands as { name?: string | null }[] | undefined}
        />
      )
    default:
      return null
  }
}

export function RenderBlocks({
  blocks,
  locale,
}: {
  blocks: unknown
  locale: string
}) {
  if (!Array.isArray(blocks) || blocks.length === 0) return null

  return (
    <>
      {(blocks as Record<string, unknown>[]).map((block, i) => renderBlock(block, locale, i))}
    </>
  )
}
