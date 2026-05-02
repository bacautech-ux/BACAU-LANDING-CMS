import React from 'react'
import Link from 'next/link'

interface BreadcrumbItem {
  label: string
  href?: string
}

interface BreadcrumbProps {
  items: BreadcrumbItem[]
  light?: boolean
}

export function Breadcrumb({ items, light = false }: BreadcrumbProps) {
  const textColor = light ? 'text-white/70 hover:text-white' : 'text-text-secondary hover:text-primary-navy'
  const separatorColor = light ? 'text-white/40' : 'text-border'
  const activeColor = light ? 'text-white' : 'text-primary-navy'

  return (
    <nav className="flex items-center gap-2 text-sm flex-wrap">
      {items.map((item, index) => {
        const isLast = index === items.length - 1
        return (
          <React.Fragment key={index}>
            {index > 0 && <span className={`${separatorColor} select-none`}>|</span>}
            {item.href && !isLast ? (
              <Link href={item.href} className={`transition-colors ${textColor}`}>
                {item.label}
              </Link>
            ) : (
              <span className={`font-medium ${isLast ? activeColor : textColor}`}>
                {item.label}
              </span>
            )}
          </React.Fragment>
        )
      })}
    </nav>
  )
}
