'use client'

import React, { useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'

export interface ExternalLinkItem {
  url?: string | null
  title?: string | null
  description?: string | null
  thumbnailURL?: string | null
  thumbnail?: { url?: string | null; filename?: string | null } | null
  viewCount?: number | null
}

interface ExternalLinksSectionProps {
  title?: string | null
  links?: ExternalLinkItem[] | null
  loadMoreLabel?: string | null
  loadMoreHref?: string | null
  initialCount?: number | null
}

function getThumbURL(item: ExternalLinkItem): string | undefined {
  if (item.thumbnail?.url) return item.thumbnail.url
  if (item.thumbnail?.filename) return `/api/media/file/${item.thumbnail.filename}`
  if (item.thumbnailURL) return item.thumbnailURL
  return undefined
}

function ExternalLinkCard({ item }: { item: ExternalLinkItem }) {
  const thumbURL = getThumbURL(item)
  const href = item.url ?? '#'

  return (
    <Link
      href={href}
      target="_blank"
      rel="noopener noreferrer"
      className="group flex flex-col overflow-hidden border border-border bg-white transition-shadow hover:shadow-md"
    >
      {/* Image — fixed 160px */}
      <div className="relative h-[160px] shrink-0 overflow-hidden">
        {thumbURL ? (
          <Image
            src={thumbURL}
            alt={item.title ?? ''}
            fill
            className="object-cover transition-transform duration-500 group-hover:scale-105"
            sizes="(max-width: 767px) 100vw, (max-width: 1279px) 50vw, 25vw"
          />
        ) : (
          <div className="flex h-full w-full items-center justify-center bg-gray-100">
            <svg className="h-10 w-10 text-gray-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
            </svg>
          </div>
        )}
      </div>

      {/* Body */}
      <div className="flex flex-col gap-2 p-4 md:p-3 xl:p-4">
        {/* Title */}
        <h3
          className="line-clamp-2 font-bold uppercase text-text-primary"
          style={{ fontSize: 13, lineHeight: 1.4 }}
        >
          {item.title ?? 'Untitled'}
        </h3>

        {/* View count */}
        {item.viewCount != null && (
          <span className="text-text-tertiary" style={{ fontSize: 11 }}>
            ({item.viewCount.toLocaleString('vi-VN')} Lượt xem)
          </span>
        )}

        {/* Description */}
        {item.description && (
          <p
            className="line-clamp-3 text-text-secondary"
            style={{ fontSize: 12, lineHeight: 1.5 }}
          >
            {item.description}
          </p>
        )}

        {/* "Xem thêm" link */}
        <span
          className="mt-auto font-semibold text-primary-blue"
          style={{ fontSize: 12 }}
        >
          Xem thêm
        </span>
      </div>
    </Link>
  )
}

export function ExternalLinksSection({
  title,
  links,
  loadMoreLabel,
  loadMoreHref,
  initialCount,
}: ExternalLinksSectionProps) {
  const allLinks = links ?? []
  const limit = initialCount ?? 12
  const [visibleCount, setVisibleCount] = useState(limit)
  const visibleLinks = allLinks.slice(0, visibleCount)
  const hasMore = visibleCount < allLinks.length

  return (
    <section className="bg-bg-light px-4 py-6 md:px-6 md:py-8 xl:px-[60px] xl:py-12">
      {/* Content Card */}
      <div className="border border-border bg-white p-5 md:px-6 md:py-8 xl:p-10">
        {/* Section title */}
        {title && (
          <h2
            className="mb-5 font-bold text-text-primary text-[18px] md:mb-6 md:text-[22px] xl:mb-8"
          >
            {title}
          </h2>
        )}

        {/* Cards grid */}
        <div className="grid grid-cols-1 gap-4 md:grid-cols-4 md:gap-x-6 md:gap-y-8 xl:gap-x-6 xl:gap-y-8">
          {visibleLinks.map((item, i) => (
            <ExternalLinkCard key={i} item={item} />
          ))}
        </div>

        {/* Load More button */}
        {(hasMore || loadMoreHref) && (
          <div className="mt-6 md:mt-8">
            {loadMoreHref ? (
              <Link
                href={loadMoreHref}
                className="inline-flex items-center justify-center cursor-pointer bg-primary-blue px-6 py-2.5 font-bold uppercase tracking-[1px] text-white transition-all hover:bg-primary-blue/90 active:scale-95 active:bg-primary-blue/80 md:px-8 md:py-3"
                style={{ fontSize: 13 }}
              >
                {loadMoreLabel ?? 'XEM THÊM'}
              </Link>
            ) : hasMore ? (
              <button
                onClick={() => setVisibleCount((c) => c + limit)}
                className="inline-flex items-center justify-center cursor-pointer bg-primary-blue px-6 py-2.5 font-bold uppercase tracking-[1px] text-white transition-all hover:bg-primary-blue/90 active:scale-95 active:bg-primary-blue/80 md:px-8 md:py-3"
                style={{ fontSize: 13 }}
              >
                {loadMoreLabel ?? 'XEM THÊM'}
              </button>
            ) : null}
          </div>
        )}
      </div>
    </section>
  )
}
