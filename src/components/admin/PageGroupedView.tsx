'use client'

import React, { useEffect, useState } from 'react'

interface GroupDoc {
  id: number
  name: string
  color?: string
  order?: number
}

interface PageDoc {
  id: number
  title?: string
  slug?: string
  pageGroup?: GroupDoc | number | null
  layout?: { blockType: string }[]
}

const UNGROUPED_COLOR = '#6b7280'

function getGroupId(page: PageDoc): number | null {
  if (!page.pageGroup) return null
  if (typeof page.pageGroup === 'number') return page.pageGroup
  return page.pageGroup.id
}

function getGroupInfo(page: PageDoc): GroupDoc | null {
  if (!page.pageGroup || typeof page.pageGroup === 'number') return null
  return page.pageGroup
}

export const PageGroupedView: React.FC = () => {
  const [groups, setGroups] = useState<GroupDoc[]>([])
  const [pages, setPages] = useState<PageDoc[]>([])
  const [collapsed, setCollapsed] = useState<Record<string, boolean>>({})
  const [visible, setVisible] = useState(true)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    Promise.all([
      fetch('/api/page-groups?limit=100&sort=order').then((r) => r.json()),
      fetch('/api/pages?limit=100&depth=1&sort=title').then((r) => r.json()),
    ])
      .then(([groupsData, pagesData]) => {
        setGroups(groupsData.docs ?? [])
        setPages(pagesData.docs ?? [])
        setLoading(false)
      })
      .catch(() => setLoading(false))
  }, [])

  const grouped = new Map<number | 'none', PageDoc[]>()
  for (const group of groups) {
    grouped.set(group.id, [])
  }
  grouped.set('none', [])

  for (const page of pages) {
    const gid = getGroupId(page)
    if (gid && grouped.has(gid)) {
      grouped.get(gid)!.push(page)
    } else {
      grouped.get('none')!.push(page)
    }
  }

  const toggle = (key: string) =>
    setCollapsed((prev) => ({ ...prev, [key]: !prev[key] }))

  if (loading) return null

  const sortedGroups = [...groups].sort((a, b) => (a.order ?? 10) - (b.order ?? 10))

  const renderGroup = (key: string, label: string, color: string, items: PageDoc[]) => {
    if (items.length === 0) return null
    const isCollapsed = collapsed[key]

    return (
      <div
        key={key}
        style={{
          border: '1px solid var(--theme-elevation-150)',
          borderRadius: 8,
          overflow: 'hidden',
          background: 'var(--theme-elevation-0)',
        }}
      >
        <button
          type="button"
          onClick={() => toggle(key)}
          style={{
            width: '100%',
            display: 'flex',
            alignItems: 'center',
            gap: 10,
            padding: '10px 16px',
            background: 'none',
            border: 'none',
            cursor: 'pointer',
            textAlign: 'left',
          }}
        >
          <svg
            width="16"
            height="16"
            viewBox="0 0 24 24"
            fill="none"
            stroke="var(--theme-elevation-500)"
            strokeWidth="2"
            strokeLinecap="round"
            strokeLinejoin="round"
            style={{
              transition: 'transform 150ms',
              transform: isCollapsed ? 'rotate(-90deg)' : 'rotate(0deg)',
              flexShrink: 0,
            }}
          >
            <polyline points="6 9 12 15 18 9" />
          </svg>
          <span
            style={{
              display: 'inline-block',
              width: 8,
              height: 8,
              borderRadius: '50%',
              background: color,
              flexShrink: 0,
            }}
          />
          <span style={{ fontSize: 14, fontWeight: 600, color: 'var(--theme-elevation-800)' }}>
            {label}
          </span>
          <span
            style={{
              fontSize: 12,
              fontWeight: 500,
              color: '#fff',
              background: color,
              padding: '1px 8px',
              borderRadius: 10,
              marginLeft: 4,
            }}
          >
            {items.length}
          </span>
        </button>

        {!isCollapsed && (
          <div style={{ borderTop: '1px solid var(--theme-elevation-100)' }}>
            {items.map((page) => {
              const href = `/admin/collections/pages/${page.id}`
              const previewHref = page.slug === 'home' ? '/vi' : `/vi/${page.slug}`
              const blockCount = page.layout?.length ?? 0
              const pageColor = getGroupInfo(page)?.color ?? color

              return (
                <div
                  key={page.id}
                  role="button"
                  tabIndex={0}
                  onClick={() => { window.location.href = href }}
                  onKeyDown={(e) => { if (e.key === 'Enter') window.location.href = href }}
                  style={{
                    display: 'flex',
                    alignItems: 'center',
                    gap: 12,
                    padding: '8px 16px 8px 50px',
                    color: 'var(--theme-elevation-800)',
                    fontSize: 13,
                    borderBottom: '1px solid var(--theme-elevation-50)',
                    transition: 'background 100ms',
                    cursor: 'pointer',
                  }}
                  onMouseEnter={(e) => {
                    e.currentTarget.style.background = 'var(--theme-elevation-50)'
                  }}
                  onMouseLeave={(e) => {
                    e.currentTarget.style.background = 'transparent'
                  }}
                >
                  <span style={{ flex: 1, fontWeight: 500 }}>{page.title ?? '(Không tiêu đề)'}</span>
                  <span style={{ color: 'var(--theme-elevation-400)', fontSize: 12, flexShrink: 0 }}>
                    /{page.slug}
                  </span>
                  <span
                    style={{
                      color: 'var(--theme-elevation-400)',
                      fontSize: 11,
                      flexShrink: 0,
                      width: 80,
                      textAlign: 'right',
                    }}
                  >
                    {blockCount} block{blockCount !== 1 ? 's' : ''}
                  </span>
                  <a
                    href={previewHref}
                    target="_blank"
                    rel="noopener noreferrer"
                    onClick={(e) => e.stopPropagation()}
                    title="Xem trang"
                    style={{
                      display: 'inline-flex',
                      alignItems: 'center',
                      justifyContent: 'center',
                      width: 22,
                      height: 22,
                      background: pageColor,
                      color: '#fff',
                      borderRadius: 4,
                      flexShrink: 0,
                    }}
                  >
                    <svg width="11" height="11" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
                      <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6" />
                      <polyline points="15 3 21 3 21 9" />
                      <line x1="10" y1="14" x2="21" y2="3" />
                    </svg>
                  </a>
                </div>
              )
            })}
          </div>
        )}
      </div>
    )
  }

  return (
    <div style={{ marginBottom: 24 }}>
      <button
        onClick={() => setVisible((v) => !v)}
        type="button"
        style={{
          display: 'inline-flex',
          alignItems: 'center',
          gap: 6,
          padding: '6px 14px',
          fontSize: 13,
          fontWeight: 600,
          color: 'var(--theme-elevation-800)',
          background: 'var(--theme-elevation-50)',
          border: '1px solid var(--theme-elevation-150)',
          borderRadius: 6,
          cursor: 'pointer',
          marginBottom: 16,
        }}
      >
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
          <rect x="3" y="3" width="7" height="7" />
          <rect x="14" y="3" width="7" height="7" />
          <rect x="3" y="14" width="7" height="7" />
          <rect x="14" y="14" width="7" height="7" />
        </svg>
        {visible ? 'Ẩn nhóm' : 'Xem theo nhóm'}
      </button>

      {visible && (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
          {sortedGroups.map((group) =>
            renderGroup(
              String(group.id),
              group.name,
              group.color ?? UNGROUPED_COLOR,
              grouped.get(group.id) ?? [],
            ),
          )}
          {renderGroup('none', 'Chưa phân nhóm', UNGROUPED_COLOR, grouped.get('none') ?? [])}
        </div>
      )}
    </div>
  )
}
