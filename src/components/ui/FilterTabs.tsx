'use client'

import React from 'react'

export interface FilterOption {
  label: string
  value: string
}

interface FilterTabsProps {
  options: FilterOption[]
  active: string
  onChange: (value: string) => void
  className?: string
}

export function FilterTabs({ options, active, onChange, className = '' }: FilterTabsProps) {
  return (
    <div className={`flex items-center gap-2 flex-wrap ${className}`}>
      {options.map((opt) => (
        <button
          key={opt.value}
          onClick={() => onChange(opt.value)}
          className={`px-4 py-2 text-sm font-medium border transition-colors duration-200 cursor-pointer rounded-sm ${
            active === opt.value
              ? 'bg-primary-navy text-white border-primary-navy'
              : 'bg-white text-text-secondary border-border hover:border-primary-navy hover:text-primary-navy'
          }`}
        >
          {opt.label}
        </button>
      ))}
    </div>
  )
}
