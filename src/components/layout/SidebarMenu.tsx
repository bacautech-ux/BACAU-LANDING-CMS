'use client'

import React, { useState } from 'react'
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
  const [openGroup, setOpenGroup] = useState<number | null>(null)

  return (
    <nav className="flex flex-col" style={{ width: 340 }}>
      {groups.map((group, gi) => {
        const isGroupActive =
          (group.titleHref && pathname === group.titleHref) ||
          group.items.some((item) => pathname === item.href || pathname.startsWith(item.href + '/'))
        const isOpen = isGroupActive || openGroup === gi

        return (
          <React.Fragment key={gi}>
            <div className="flex flex-col items-end gap-1.5 py-4">
              {/* Group title */}
              <button
                onClick={() => setOpenGroup(isOpen ? null : gi)}
                className="text-right text-[14px] font-bold text-text-primary w-full cursor-pointer"
                style={{ textAlign: 'right' }}
              >
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
              </button>

              {/* Sub-items */}
              {group.items.map((item) => {
                const isActive = pathname === item.href
                return (
                  <Link
                    key={item.href}
                    href={item.href}
                    className="text-right text-[13px] w-full transition-colors"
                    style={{
                      textAlign: 'right',
                      color: isActive ? '#2b358c' : '#64748B',
                      fontWeight: isActive ? 600 : 400,
                    }}
                  >
                    {item.label}
                  </Link>
                )
              })}
            </div>

            {/* Divider — không có sau group cuối */}
            {gi < groups.length - 1 && (
              <div className="w-full h-px bg-border" />
            )}
          </React.Fragment>
        )
      })}
    </nav>
  )
}
