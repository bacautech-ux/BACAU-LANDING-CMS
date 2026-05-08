'use client'

import React from 'react'
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

  return (
    <nav className="flex w-full flex-col rounded-sm bg-transparent lg:w-[340px]">
      {groups.map((group, gi) => {
        const isGroupActive =
          (group.titleHref && pathname === group.titleHref) ||
          group.items.some((item) => pathname === item.href || pathname.startsWith(item.href + '/'))

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
                const isActive = pathname === item.href || pathname.startsWith(item.href + '/')
                return (
                  <Link
                    key={item.href}
                    href={item.href}
                    className="w-full text-right text-[15px] transition-colors"
                    style={{
                      color: isActive ? '#2b358c' : '#64748B',
                      fontWeight: isActive ? 600 : 400,
                    }}
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
