import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

export interface NewsCardData {
  slug: string
  title: string
  excerpt: string
  publishedAt: string
  thumbnail: string
  thumbnailAlt: string
  tags?: string[]
}

interface NewsCardProps {
  article: NewsCardData
  locale: string
  variant?: 'horizontal' | 'vertical'
}

function formatDate(dateStr: string, locale: string) {
  return new Date(dateStr).toLocaleDateString(locale === 'vi' ? 'vi-VN' : 'en-US', {
    day: '2-digit',
    month: '2-digit',
    year: 'numeric',
  })
}

export function NewsCard({ article, locale, variant = 'vertical' }: NewsCardProps) {
  const href = `/${locale}/tin-tuc/${article.slug}`

  if (variant === 'horizontal') {
    return (
      <Link href={href} className="group flex gap-4 bg-white p-4 shadow-sm hover:shadow-md transition-shadow duration-300">
        <div className="relative w-32 md:w-40 shrink-0 aspect-[4/3] overflow-hidden">
          <Image
            src={article.thumbnail}
            alt={article.thumbnailAlt}
            fill
            className="object-cover group-hover:scale-105 transition-transform duration-500"
            sizes="160px"
          />
        </div>
        <div className="flex flex-col justify-center min-w-0">
          <p className="text-xs text-text-secondary mb-1">{formatDate(article.publishedAt, locale)}</p>
          <h3 className="text-sm font-semibold text-primary-navy line-clamp-2 group-hover:text-primary-blue transition-colors">
            {article.title}
          </h3>
          <p className="mt-1 text-xs text-text-secondary line-clamp-2">{article.excerpt}</p>
        </div>
      </Link>
    )
  }

  return (
    <Link href={href} className="group block bg-white overflow-hidden shadow-sm hover:shadow-md transition-shadow duration-300">
      <div className="relative aspect-[16/9] overflow-hidden">
        <Image
          src={article.thumbnail}
          alt={article.thumbnailAlt}
          fill
          className="object-cover group-hover:scale-105 transition-transform duration-500"
          sizes="(max-width: 768px) 100vw, 50vw"
        />
      </div>
      <div className="p-4">
        <p className="text-xs text-primary-red mb-2">{formatDate(article.publishedAt, locale)}</p>
        <h3 className="text-sm font-semibold text-primary-navy line-clamp-2 group-hover:text-primary-blue transition-colors">
          {article.title}
        </h3>
        <p className="mt-2 text-xs text-text-secondary line-clamp-2">{article.excerpt}</p>
      </div>
    </Link>
  )
}
