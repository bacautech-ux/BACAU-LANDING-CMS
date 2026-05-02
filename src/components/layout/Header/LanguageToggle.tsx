'use client'

import React from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

interface LanguageToggleProps {
  currentLocale: string
}

export function LanguageToggle({ currentLocale }: LanguageToggleProps) {
  const pathname = usePathname()

  const getLocalePath = (locale: string) => {
    const segments = pathname.split('/')
    segments[1] = locale
    return segments.join('/')
  }

  return (
    <div className="flex items-center gap-1 text-xs font-medium">
      <Link
        href={getLocalePath('vi')}
        className={`px-1.5 py-0.5 transition-colors ${currentLocale === 'vi' ? 'text-white font-bold' : 'text-white/60 hover:text-white'}`}
      >
        VI
      </Link>
      <span className="text-white/30">|</span>
      <Link
        href={getLocalePath('en')}
        className={`px-1.5 py-0.5 transition-colors ${currentLocale === 'en' ? 'text-white font-bold' : 'text-white/60 hover:text-white'}`}
      >
        EN
      </Link>
    </div>
  )
}
