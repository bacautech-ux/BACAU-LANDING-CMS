'use client'

import React from 'react'

export interface ParentCategory {
  label: string
  value: string
}

export interface SubCategory {
  label: string
  value: string
}

export interface ParentCategoryWithSubs extends ParentCategory {
  industryFilters?: SubCategory[]
}

interface ProjectFilterBarProps {
  parents: ParentCategory[]
  subs: SubCategory[]
  activeParent: string
  activeSub: string
  onParentChange: (v: string) => void
  onSubChange: (v: string) => void
}

// Thiết kế:
// Row 1 — Parent tabs: px-[60px], 2px red bottom border, active=blue bg+3px red bottom
// Row 2 — Sub-industry tags: px-[60px], 1px border-default bottom, separated by " | "
export function ProjectFilterBar({
  parents,
  subs,
  activeParent,
  activeSub,
  onParentChange,
  onSubChange,
}: ProjectFilterBarProps) {
  const allSubs: SubCategory[] = [{ label: 'Tất cả', value: 'all' }, ...subs]

  return (
    <div className="bg-white flex flex-col">
      {/* Parent tabs row */}
      <div className="flex items-stretch overflow-x-auto px-4 md:px-6 xl:px-[60px]" style={{ borderBottom: '2px solid #B92C32' }}>
        {parents.map((p) => {
          const isActive = activeParent === p.value
          return (
            <button
              key={p.value}
              onClick={() => { onParentChange(p.value); onSubChange('all') }}
              className={`cursor-pointer whitespace-nowrap transition-all duration-200 ${
                isActive
                  ? ''
                  : 'hover:bg-primary-blue/10 hover:text-primary-blue'
              }`}
              style={{
                padding: '14px 18px',
                fontSize: 13,
                fontWeight: isActive ? 700 : 500,
                color: isActive ? '#ffffff' : '#64748B',
                background: isActive ? '#2b358c' : undefined,
                borderBottom: isActive ? '3px solid #B92C32' : '3px solid transparent',
                marginBottom: -2,
              }}
            >
              {p.label}
            </button>
          )
        })}
      </div>

      {/* Sub-industry tags row */}
      <div className="flex items-center overflow-x-auto px-4 py-3 md:px-6 xl:px-[60px]" style={{ borderBottom: '1px solid #E2E8F0' }}>
        {allSubs.map((s, i) => {
          const isActive = activeSub === s.value
          return (
            <React.Fragment key={s.value}>
              <button
                onClick={() => onSubChange(s.value)}
                className={`cursor-pointer transition-all duration-200 ${
                  isActive ? '' : 'hover:text-primary-navy'
                }`}
                style={{
                  fontSize: 13,
                  fontWeight: isActive ? 700 : 400,
                  color: isActive ? '#111111' : '#64748B',
                }}
              >
                {s.label}
              </button>
              {i < allSubs.length - 1 && (
                <span
                  style={{ fontSize: 13, color: '#CBD5E1', margin: '0 8px' }}
                >
                  |
                </span>
              )}
            </React.Fragment>
          )
        })}
      </div>
    </div>
  )
}
