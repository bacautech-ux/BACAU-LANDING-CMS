'use client'

import React, { useEffect, useState } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

export interface SidebarMenuItem {
  label: string
  href: string
}

export interface SidebarMenuGroup {
  title: string
  titleHref?: string
  items: SidebarMenuItem[]
}

interface SidebarMenuProps {
  groups: SidebarMenuGroup[]
}

export function SidebarMenu({ groups }: SidebarMenuProps) {
  const pathname = usePathname()
  const [hash, setHash] = useState('')

  useEffect(() => {
    setHash(window.location.hash)
    const onHashChange = () => setHash(window.location.hash)
    window.addEventListener('hashchange', onHashChange)
    return () => window.removeEventListener('hashchange', onHashChange)
  }, [])

  function isItemActive(href: string) {
    const [hrefPath, hrefHash] = href.split('#')
    if (hrefHash) {
      return pathname === hrefPath && hash === `#${hrefHash}`
    }
    return pathname === href || pathname.startsWith(href + '/')
  }

  return (
    <nav className="flex w-full flex-col rounded-sm bg-transparent lg:w-[340px]">
      {groups.map((group, gi) => {
        const isGroupActive =
          (group.titleHref && pathname === group.titleHref) ||
          group.items.some((item) => isItemActive(item.href))

        return (
          <React.Fragment key={gi}>
            <div className="flex flex-col gap-1.5 py-4 text-right">
              <div className="w-full text-right text-[18px] font-bold text-text-primary">
                {group.titleHref ? (
                  <Link
                    href={group.titleHref}
                    className={isGroupActive ? 'text-primary-blue' : 'text-text-primary'}
                  >
                    {group.title}
                  </Link>
                ) : (
                  <span className={isGroupActive ? 'text-primary-blue' : 'text-text-primary'}>
                    {group.title}
                  </span>
                )}
              </div>

              {group.items.map((item) => {
                const isActive = isItemActive(item.href)
                return (
                  <Link
                    key={item.href}
                    href={item.href}
                    className={`w-full text-right text-[15px] transition-all duration-200 hover:text-primary-blue hover:font-semibold hover:translate-x-[-4px] ${
                      isActive ? 'text-primary-blue font-semibold' : 'text-text-secondary font-normal'
                    }`}
                  >
                    {item.label}
                  </Link>
                )
              })}
            </div>

            {gi < groups.length - 1 && (
              <div className="w-full h-px bg-border" />
            )}
          </React.Fragment>
        )
      })}
    </nav>
  )
}
