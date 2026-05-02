import React from 'react'

// Layout dùng chung cho các page có sidebar trái + content phải
// Theo design: padding [40, 60], gap 32, sidebar 340px fixed
interface PageWithSidebarProps {
  sidebar: React.ReactNode
  children: React.ReactNode
}

export function PageWithSidebar({ sidebar, children }: PageWithSidebarProps) {
  return (
    <div
      className="flex gap-8 items-start w-full"
      style={{ padding: '40px 60px' }}
    >
      {/* Sidebar — sticky so it stays while content scrolls */}
      <div className="shrink-0 sticky top-[72px]">{sidebar}</div>

      {/* Content area */}
      <div className="flex-1 min-w-0">{children}</div>
    </div>
  )
}
