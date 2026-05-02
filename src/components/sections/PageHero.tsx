import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface BreadcrumbItem {
  label: string
  href?: string
}

interface PageHeroProps {
  title: string
  backgroundImage?: string
  breadcrumbs?: BreadcrumbItem[]
}

export function PageHero({ title, backgroundImage, breadcrumbs }: PageHeroProps) {
  return (
    <section
      className="relative flex flex-col justify-end overflow-hidden"
      style={{ height: 220, padding: '0 60px 30px 60px' }}
    >
      {backgroundImage && (
        <div className="absolute inset-0 z-0">
          <Image src={backgroundImage} alt={title} fill className="object-cover" sizes="100vw" priority />
          <div className="absolute inset-0 bg-primary-navy/55" />
        </div>
      )}
      <div className="relative z-10 flex flex-col gap-2">
        {breadcrumbs && (
          <p style={{ color: '#FFFFFF99', fontSize: 14 }}>
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
          <h1
            className="text-white font-bold uppercase"
            style={{ fontSize: 28, letterSpacing: 1 }}
          >
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
