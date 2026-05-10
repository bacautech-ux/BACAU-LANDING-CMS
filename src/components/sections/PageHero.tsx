import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface BreadcrumbItem {
  label: string
  href?: string
}

const heightClass: Record<string, string> = {
  sm: 'h-[120px] md:h-[140px] xl:h-[160px]',
  md: 'h-[160px] md:h-[180px] xl:h-[200px]',
  lg: 'h-[220px] md:h-[250px] xl:h-[280px]',
  xl: 'h-[280px] md:h-[320px] xl:h-[360px]',
}

interface PageHeroProps {
  title: string
  backgroundImage?: string
  breadcrumbs?: BreadcrumbItem[]
  height?: string | null
}

export function PageHero({ title, backgroundImage, breadcrumbs, height }: PageHeroProps) {
  const hClass = heightClass[height ?? 'md'] ?? heightClass['md']
  return (
    <section
      className={`relative flex flex-col justify-end overflow-hidden px-4 pb-5 md:px-6 md:pb-6 xl:px-[60px] xl:pb-[30px] ${hClass}`}
    >
      {backgroundImage && (
        <div className="absolute inset-0 z-0">
          <Image src={backgroundImage} alt={title} fill className="object-cover" sizes="100vw" priority />
          <div className="absolute inset-0 bg-primary-navy/55" />
        </div>
      )}
      <div className="relative z-10 flex flex-col gap-2">
        {breadcrumbs && (
          <p className="text-[12px] md:text-[14px]" style={{ color: '#FFFFFF99' }}>
            {breadcrumbs.map((b, i) => (
              <React.Fragment key={i}>
                {b.href ? (
                  <Link href={b.href} className="hover:text-white transition-colors">{b.label}</Link>
                ) : (
                  <span>{b.label}</span>
                )}
                {i < breadcrumbs.length - 1 && <span className="mx-2">|</span>}
              </React.Fragment>
            ))}
          </p>
        )}
        <div className="flex items-center gap-4">
          {/* Red accent bar — 4px wide, 28px tall */}
          <span className="inline-block shrink-0 bg-primary-red" style={{ width: 4, height: 28 }} />
          <h1 className="text-[24px] font-bold uppercase tracking-[1px] text-white md:text-[28px]">
            {title}
          </h1>
        </div>
      </div>
    </section>
  )
}

// Slim breadcrumb bar (dùng cho trang Chi tiết)
export function BreadcrumbBar({ items }: { items: BreadcrumbItem[] }) {
  return (
    <div className="bg-primary-blue">
      <div className="container-site py-3">
        <p className="text-white/80 text-xs md:text-sm">
          {items.map((b, i) => (
            <React.Fragment key={i}>
              {b.href ? (
                <Link href={b.href} className="hover:text-white transition-colors">{b.label}</Link>
              ) : (
                <span>{b.label}</span>
              )}
              {i < items.length - 1 && <span className="mx-2">|</span>}
            </React.Fragment>
          ))}
        </p>
      </div>
    </div>
  )
}
