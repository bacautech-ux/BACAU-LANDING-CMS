import React from 'react'

// Layout dùng chung cho các page có sidebar trái + content phải
// Theo design: padding [40, 60], gap 32, sidebar 340px fixed
interface PageWithSidebarProps {
  sidebar: React.ReactNode
  children: React.ReactNode
}

export function PageWithSidebar({ sidebar, children }: PageWithSidebarProps) {
  return (
    <div className="flex w-full flex-col gap-6 px-4 py-5 md:px-6 md:py-6 lg:flex-row lg:items-start lg:gap-8 xl:px-[60px] xl:py-10">
      {/* Sidebar — sticky so it stays while content scrolls */}
      {sidebar && <div className="shrink-0 lg:sticky lg:top-[72px]">{sidebar}</div>}

      {/* Content area */}
      <div className="flex-1 min-w-0">{children}</div>
    </div>
  )
}
