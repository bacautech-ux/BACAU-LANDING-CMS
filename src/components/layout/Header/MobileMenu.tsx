'use client'

import React, { useState } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

interface NavItem {
  label: string
  href: string
  children?: { label: string; href: string }[]
}

interface MobileMenuProps {
  items: NavItem[]
}

export function MobileMenu({ items }: MobileMenuProps) {
  const [isOpen, setIsOpen] = useState(false)
  const [expandedItem, setExpandedItem] = useState<string | null>(null)
  const pathname = usePathname()

  return (
    <>
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="p-1.5 text-primary-navy focus:outline-none"
        aria-label="Toggle menu"
      >
        <div className="w-6 flex flex-col gap-1.5">
          <span className={`block h-0.5 bg-primary-navy transition-transform ${isOpen ? 'rotate-45 translate-y-2' : ''}`} />
          <span className={`block h-0.5 bg-primary-navy transition-opacity ${isOpen ? 'opacity-0' : ''}`} />
          <span className={`block h-0.5 bg-primary-navy transition-transform ${isOpen ? '-rotate-45 -translate-y-2' : ''}`} />
        </div>
      </button>

      {isOpen && (
        <div className="absolute top-full left-0 right-0 bg-primary-navy border-t border-white/10 z-50">
          <nav className="container-site py-4 flex flex-col">
            {items.map((item) => (
              <div key={item.href}>
                {item.children ? (
                  <>
                    <button
                      onClick={() => setExpandedItem(expandedItem === item.href ? null : item.href)}
                      className="flex items-center justify-between w-full py-3 text-sm font-medium text-white/80 hover:text-white border-b border-white/10"
                    >
                      {item.label}
                      <span className="text-white/40">{expandedItem === item.href ? '−' : '+'}</span>
                    </button>
                    {expandedItem === item.href && (
                      <div className="pl-4 py-2 space-y-2 bg-primary-dark/40">
                        {item.children.map((child) => (
                          <Link
                            key={child.href}
                            href={child.href}
                            onClick={() => setIsOpen(false)}
                            className={`block py-2 text-sm ${pathname === child.href ? 'text-accent-orange' : 'text-white/70 hover:text-white'}`}
                          >
                            {child.label}
                          </Link>
                        ))}
                      </div>
                    )}
                  </>
                ) : (
                  <Link
                    href={item.href}
                    onClick={() => setIsOpen(false)}
                    className={`block py-3 text-sm font-medium border-b border-white/10 ${pathname === item.href ? 'text-accent-orange' : 'text-white/80 hover:text-white'}`}
                  >
                    {item.label}
                  </Link>
                )}
              </div>
            ))}
          </nav>
        </div>
      )}
    </>
  )
}
