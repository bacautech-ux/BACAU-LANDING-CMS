'use client'

import React from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

export interface SidebarNavItem {
  label: string
  href: string
  children?: { label: string; href: string }[]
}

interface SidebarNavProps {
  items: SidebarNavItem[]
  title?: string
}

export function SidebarNav({ items, title }: SidebarNavProps) {
  const pathname = usePathname()

  return (
    <nav className="bg-white shadow-sm p-4 sticky top-24">
      {title && (
        <h2 className="text-xs font-bold uppercase tracking-widest text-text-secondary mb-3 px-2">
          {title}
        </h2>
      )}
      <ul className="space-y-1">
        {items.map((item) => {
          const isActive = pathname === item.href || pathname.startsWith(item.href + '/')
          return (
            <li key={item.href}>
              <Link
                href={item.href}
                className={`block px-3 py-2 text-sm font-medium transition-colors duration-150 border-l-2 ${
                  isActive
                    ? 'border-primary-red text-primary-navy bg-bg-light'
                    : 'border-transparent text-text-secondary hover:text-primary-navy hover:border-border'
                }`}
              >
                {item.label}
              </Link>
              {item.children && isActive && (
                <ul className="ml-4 mt-1 space-y-1">
                  {item.children.map((child) => (
                    <li key={child.href}>
                      <Link
                        href={child.href}
                        className={`block px-3 py-1.5 text-xs transition-colors ${
                          pathname === child.href
                            ? 'text-primary-navy font-semibold'
                            : 'text-text-secondary hover:text-primary-navy'
                        }`}
                      >
                        {child.label}
                      </Link>
                    </li>
                  ))}
                </ul>
              )}
            </li>
          )
        })}
      </ul>
    </nav>
  )
}
