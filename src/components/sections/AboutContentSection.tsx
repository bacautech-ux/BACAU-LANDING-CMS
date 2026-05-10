'use client'

import React, { useEffect, useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { PageWithSidebar } from '@/components/layout/PageWithSidebar'
import { SidebarMenu, SidebarMenuGroup } from '@/components/layout/SidebarMenu'
import { ContentSection } from '@/components/ui/ContentSection'
import { DocumentTabs } from '@/components/ui/DocumentTabs'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

export interface AboutImage {
  image?: MediaValue | null
  imageURL?: string | null
  alt?: string | null
  caption?: string | null
}

export interface AboutItem {
  title?: string | null
  subtitle?: string | null
  description?: string | null
  meta?: string | null
  icon?: string | null
  image?: MediaValue | null
  imageURL?: string | null
  alt?: string | null
  href?: string | null
  buttonLabel?: string | null
}

export interface AboutParagraph {
  text?: string | null
}

export interface AboutDocumentFile {
  title?: string | null
  file?: { url?: string | null; filename?: string | null } | null
  fileURL?: string | null
}

export interface AboutDocumentTab {
  tabTitle?: string | null
  files?: AboutDocumentFile[] | null
}

export interface AboutSection {
  id?: string | null
  variant?: string | null
  title?: string | null
  body?: string | null
  paragraphs?: AboutParagraph[] | null
  columns?: '2' | '3' | '4' | null
  imagePosition?: 'left' | 'right' | null
  images?: AboutImage[] | null
  items?: AboutItem[] | null
  tabs?: AboutDocumentTab[] | null
}

interface AboutContentSectionProps {
  sidebarGroups?: SidebarMenuGroup[]
  sections?: AboutSection[]
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

function imageSource(image?: AboutImage | AboutItem | null) {
  if (!image) return undefined
  return getMediaURL(image.image) ?? image.imageURL ?? undefined
}

function normalizeParagraphs(section: AboutSection) {
  const paragraphs = section.paragraphs?.map((item) => item.text?.trim()).filter(Boolean) as string[] | undefined

  if (paragraphs && paragraphs.length > 0) return paragraphs
  if (section.body?.trim()) return [section.body.trim()]

  return []
}

function normalizeCards(section: AboutSection) {
  return (
    section.items
      ?.filter((item) => item.title)
      .map((item) => ({
        title: item.title ?? '',
        description: item.description ?? item.meta ?? '',
        icon: item.icon ?? undefined,
        image: imageSource(item),
        alt: item.alt ?? item.title ?? '',
        href: item.href ?? undefined,
        subtitle: item.subtitle ?? undefined,
        buttonLabel: item.buttonLabel ?? undefined,
      })) ?? []
  )
}

function getGridColumns(columns?: AboutSection['columns']) {
  switch (columns) {
    case '2':
      return 'xl:grid-cols-2'
    case '4':
      return 'md:grid-cols-2 xl:grid-cols-4'
    case '3':
    default:
      return 'md:grid-cols-2 xl:grid-cols-3'
  }
}

function renderParagraphs(paragraphs: string[]) {
  if (paragraphs.length === 0) return null

  return (
    <div className="flex flex-col gap-4">
      {paragraphs.map((paragraph, index) => (
        <p key={index} className="whitespace-pre-line text-[14px] leading-[1.7] text-text-secondary">
          {paragraph}
        </p>
      ))}
    </div>
  )
}

function renderIntroSection(section: AboutSection) {
  const paragraphs = normalizeParagraphs(section)
  const primaryImage = section.images?.[0]
  const src = imageSource(primaryImage)

  return (
    <div className="grid gap-6 xl:grid-cols-[minmax(0,1.08fr)_minmax(0,1fr)] xl:items-start">
      {src ? (
        <div className={`relative overflow-hidden rounded-sm ${section.imagePosition === 'right' ? 'xl:order-2' : ''}`}>
          <div className="relative aspect-[4/3] xl:aspect-[1.22/1]">
            <Image
              src={src}
              alt={primaryImage?.alt ?? section.title ?? ''}
              fill
              className="object-cover"
              sizes="(max-width: 1279px) 100vw, 42vw"
            />
          </div>
        </div>
      ) : null}
      <div className={section.imagePosition === 'right' ? 'xl:order-1' : ''}>{renderParagraphs(paragraphs)}</div>
    </div>
  )
}

function renderCardGrid(section: AboutSection) {
  const cards = normalizeCards(section)

  if (cards.length === 0) return null

  return (
    <div className={`grid grid-cols-1 gap-4 ${getGridColumns(section.columns)}`}>
      {cards.map((card) => (
        <div key={`${section.id}-${card.title}`} className="card-hover flex flex-col gap-3 rounded-sm bg-bg-light p-5 xl:p-6">
          {card.icon ? <span className="text-2xl">{card.icon}</span> : null}
          <p className="text-[28px] font-semibold leading-none text-primary-blue xl:text-[32px]">{card.title}</p>
          {card.subtitle ? <p className="text-[18px] font-semibold text-text-primary">{card.subtitle}</p> : null}
          {card.description ? (
            <p className="text-[14px] leading-[1.7] text-text-secondary">{card.description}</p>
          ) : null}
        </div>
      ))}
    </div>
  )
}

function GallerySection({ section }: { section: AboutSection }) {
  const paragraphs = normalizeParagraphs(section)
  const images = section.images?.filter((image) => imageSource(image)) ?? []
  const [activeIndex, setActiveIndex] = useState<number | null>(null)

  useEffect(() => {
    if (activeIndex === null) return

    const onKeyDown = (event: KeyboardEvent) => {
      if (event.key === 'Escape') {
        setActiveIndex(null)
      }
    }

    window.addEventListener('keydown', onKeyDown)
    document.body.style.overflow = 'hidden'

    return () => {
      window.removeEventListener('keydown', onKeyDown)
      document.body.style.overflow = ''
    }
  }, [activeIndex])

  const activeImage = activeIndex !== null ? images[activeIndex] : null
  const activeSrc = activeImage ? imageSource(activeImage) : undefined

  return (
    <>
      <div className="flex flex-col gap-5">
        {renderParagraphs(paragraphs)}
        {images.length > 0 ? (
          <div className={`grid grid-cols-1 gap-4 ${getGridColumns(section.columns ?? (images.length >= 4 ? '4' : images.length === 2 ? '2' : '3'))}`}>
            {images.map((image, index) => {
              const src = imageSource(image)
              if (!src) return null

              return (
                <div key={`${src}-${index}`} className="flex flex-col gap-2">
                  <button
                    type="button"
                    className="relative aspect-[4/3] overflow-hidden rounded-sm text-left transition-transform hover:scale-[1.01]"
                    onClick={() => setActiveIndex(index)}
                    aria-label={`Xem ảnh lớn: ${image.alt ?? section.title ?? `Ảnh ${index + 1}`}`}
                  >
                    <Image
                      src={src}
                      alt={image.alt ?? section.title ?? ''}
                      fill
                      className="object-cover"
                      sizes="(max-width: 767px) 100vw, (max-width: 1279px) 48vw, 28vw"
                    />
                  </button>
                  {image.caption ? (
                    <p className="text-[12px] font-medium uppercase tracking-[0.08em] text-text-muted">{image.caption}</p>
                  ) : null}
                </div>
              )
            })}
          </div>
        ) : null}
      </div>

      {activeSrc ? (
        <div
          className="fixed inset-0 z-[100] flex items-center justify-center bg-black/80 p-4"
          onClick={() => setActiveIndex(null)}
        >
          <button
            type="button"
            className="absolute right-4 top-4 rounded-full bg-white/10 px-3 py-2 text-sm font-medium text-white"
            onClick={() => setActiveIndex(null)}
            aria-label="Đóng xem ảnh"
          >
            Dong
          </button>
          <div
            className="relative h-auto max-h-[90vh] w-full max-w-6xl"
            onClick={(event) => event.stopPropagation()}
          >
            <div className="relative aspect-[16/10] max-h-[90vh] overflow-hidden rounded-sm">
              <Image
                src={activeSrc}
                alt={activeImage?.alt ?? section.title ?? ''}
                fill
                className="object-contain"
                sizes="100vw"
                priority
              />
            </div>
            {activeImage?.caption ? (
              <p className="mt-3 text-center text-sm text-white/80">{activeImage.caption}</p>
            ) : null}
          </div>
        </div>
      ) : null}
    </>
  )
}

function renderItemGrid(section: AboutSection) {
  const paragraphs = normalizeParagraphs(section)
  const items = normalizeCards(section)

  return (
    <div className="flex flex-col gap-5">
      {renderParagraphs(paragraphs)}
      {items.length > 0 ? (
        <div className={`grid grid-cols-1 gap-4 ${getGridColumns(section.columns)}`}>
          {items.map((item) => (
            <article
              key={`${section.id}-${item.title}`}
              className="group card-hover flex h-full flex-col overflow-hidden rounded-sm border border-border bg-white"
            >
              {item.image ? (
                <div className="relative aspect-[4/3]">
                  <Image
                    src={item.image}
                    alt={item.alt}
                    fill
                    className="object-cover"
                    sizes="(max-width: 767px) 100vw, (max-width: 1279px) 48vw, 25vw"
                  />
                </div>
              ) : null}
              <div className="flex flex-1 flex-col gap-2 p-4">
                {item.icon ? <span className="text-2xl">{item.icon}</span> : null}
                {item.subtitle ? (
                  <p className="text-[11px] font-semibold uppercase tracking-[0.08em] text-text-muted">{item.subtitle}</p>
                ) : null}
                <p className="text-[15px] font-semibold text-text-primary">{item.title}</p>
                {item.description ? (
                  <p className="text-[13px] leading-[1.7] text-text-secondary">{item.description}</p>
                ) : null}
                {item.href && item.buttonLabel ? (
                  <div className="mt-auto pt-2">
                    <Link href={item.href} className="text-[13px] font-semibold text-primary-blue">
                      {item.buttonLabel}
                    </Link>
                  </div>
                ) : null}
              </div>
            </article>
          ))}
        </div>
      ) : null}
    </div>
  )
}

function renderSplitMedia(section: AboutSection) {
  const paragraphs = normalizeParagraphs(section)
  const primaryImage = section.images?.[0]
  const src = imageSource(primaryImage)

  return (
    <div className="grid gap-6 xl:grid-cols-[minmax(0,1fr)_minmax(0,1fr)] xl:items-start">
      {src ? (
        <div className={`relative overflow-hidden rounded-sm ${section.imagePosition === 'right' ? 'xl:order-2' : ''}`}>
          <div className="relative aspect-[4/3] xl:aspect-[1.05/1]">
            <Image
              src={src}
              alt={primaryImage?.alt ?? section.title ?? ''}
              fill
              className="object-cover"
              sizes="(max-width: 1279px) 100vw, 40vw"
            />
          </div>
        </div>
      ) : null}
      <div className={`flex flex-col gap-4 ${section.imagePosition === 'right' ? 'xl:order-1' : ''}`}>
        {renderParagraphs(paragraphs)}
      </div>
    </div>
  )
}

function renderDocumentList(section: AboutSection) {
  const paragraphs = normalizeParagraphs(section)
  const items = normalizeCards(section)

  return (
    <div className="flex flex-col gap-5">
      {renderParagraphs(paragraphs)}
      <div className="flex flex-col gap-3">
        {items.map((item) => (
          <div key={`${section.id}-${item.title}`} className="flex items-start gap-4 rounded-sm bg-bg-light px-5 py-4">
            <span className="text-lg text-primary-blue">📄</span>
            <div className="flex min-w-0 flex-1 flex-col gap-1">
              <p className="text-[14px] font-semibold text-text-primary">{item.title}</p>
              {item.subtitle ? <p className="text-[12px] text-text-muted">{item.subtitle}</p> : null}
              {item.description ? (
                <p className="text-[13px] leading-[1.7] text-text-secondary">{item.description}</p>
              ) : null}
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export function AboutSectionContent({ section }: { section: AboutSection }) {
  const variant = section.variant ?? 'gallery'

  switch (variant) {
    case 'intro':
      return renderIntroSection(section)
    case 'cards':
      return renderCardGrid(section)
    case 'itemGrid':
      return renderItemGrid(section)
    case 'splitMedia':
      return renderSplitMedia(section)
    case 'documentList':
      return renderDocumentList(section)
    case 'tabbedDocuments':
      return <DocumentTabs tabs={section.tabs ?? []} />
    case 'gallery':
    default:
      return <GallerySection section={section} />
  }
}

export function StandaloneContentSection({
  section,
  className = '',
}: {
  section: AboutSection
  className?: string
}) {
  if (!section.title) return null

  return (
    <section className={`px-4 py-5 md:px-6 md:py-6 xl:px-[60px] xl:py-10 ${className}`}>
      <div className="mx-auto w-full max-w-[1320px]">
        <ContentSection id={section.id ?? undefined} title={section.title}>
          <AboutSectionContent section={section} />
        </ContentSection>
      </div>
    </section>
  )
}

export function AboutContentSection({ sidebarGroups = [], sections = [] }: AboutContentSectionProps) {
  const visibleSections = sections.filter((section) => section.title)

  if (visibleSections.length === 0) return null

  return (
    <PageWithSidebar sidebar={sidebarGroups.length > 0 ? <SidebarMenu groups={sidebarGroups} /> : null}>
      <div className="flex flex-col gap-10 md:gap-12">
        {visibleSections.map((section) => (
          <ContentSection key={section.id ?? section.title} id={section.id ?? undefined} title={section.title ?? ''}>
            <AboutSectionContent section={section} />
          </ContentSection>
        ))}
      </div>
    </PageWithSidebar>
  )
}
