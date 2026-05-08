import React from 'react'

// Dùng chung trong các page có sidebar (Giới thiệu, Dự án, Chi tiết...)
// Pattern: title 22px/600 + red divider 1px + content
interface ContentSectionProps {
  title: string
  children: React.ReactNode
  className?: string
  id?: string
}

export function ContentSection({ title, children, className = '', id }: ContentSectionProps) {
  return (
    <div id={id} className={`scroll-mt-24 md:scroll-mt-28 xl:scroll-mt-32 flex flex-col gap-6 ${className}`}>
      <div className="flex flex-col gap-3">
        <h2 className="text-[22px] font-semibold text-text-primary">{title}</h2>
        <div className="h-px bg-primary-red w-full" />
      </div>
      <div>{children}</div>
    </div>
  )
}
