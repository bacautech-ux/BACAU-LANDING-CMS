import React from 'react'

type Variant = 'red' | 'navy' | 'orange' | 'gray'

interface BadgeProps {
  children: React.ReactNode
  variant?: Variant
  className?: string
}

const variantClasses: Record<Variant, string> = {
  red: 'bg-primary-red text-white',
  navy: 'bg-primary-navy text-white',
  orange: 'bg-accent-orange text-white',
  gray: 'bg-gray-100 text-gray-700',
}

export function Badge({ children, variant = 'red', className = '' }: BadgeProps) {
  return (
    <span
      className={`inline-block px-3 py-1 text-xs font-semibold uppercase tracking-wide rounded-sm ${variantClasses[variant]} ${className}`}
    >
      {children}
    </span>
  )
}
