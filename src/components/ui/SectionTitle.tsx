import React from 'react'

interface SectionTitleProps {
  title: string
  subtitle?: string
  align?: 'left' | 'center'
  light?: boolean
  action?: React.ReactNode
  className?: string
}

export function SectionTitle({
  title,
  subtitle,
  align = 'left',
  light = false,
  action,
  className = '',
}: SectionTitleProps) {
  return (
    <div
      className={`flex items-end justify-between gap-4 mb-8 ${align === 'center' ? 'text-center flex-col items-center' : ''} ${className}`}
    >
      <div className={align !== 'center' ? 'flex items-center gap-3' : ''}>
        {align !== 'center' && <span className="inline-block w-1 h-7 bg-primary-red shrink-0" />}
        <h2
          className={`text-2xl md:text-3xl font-bold tracking-tight ${light ? 'text-white' : 'text-primary-navy'}`}
        >
          {title}
        </h2>
        {subtitle && (
          <p className={`mt-2 text-sm md:text-base ${light ? 'text-white/70' : 'text-text-secondary'}`}>
            {subtitle}
          </p>
        )}
      </div>
      {action && <div className="shrink-0">{action}</div>}
    </div>
  )
}
