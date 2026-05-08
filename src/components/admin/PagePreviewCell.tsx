'use client'

interface PagePreviewCellProps {
  cellData?: unknown
  rowData?: Record<string, unknown>
}

export const PagePreviewCell = ({ cellData, rowData }: PagePreviewCellProps) => {
  const slug = (cellData ?? rowData?.slug) as string | undefined
  if (!slug) return null

  const href = slug === 'home' ? '/vi' : `/vi/${slug}`

  return (
    <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
      <a
        href={href}
        target="_blank"
        rel="noopener noreferrer"
        onClick={(e) => e.stopPropagation()}
        title={`Xem trang: ${href}`}
        style={{
          display: 'inline-flex',
          alignItems: 'center',
          justifyContent: 'center',
          width: 26,
          height: 26,
          background: '#2b358c',
          color: '#fff',
          borderRadius: 4,
          textDecoration: 'none',
          flexShrink: 0,
        }}
      >
        <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
          <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6" />
          <polyline points="15 3 21 3 21 9" />
          <line x1="10" y1="14" x2="21" y2="3" />
        </svg>
      </a>
      <span style={{ color: 'var(--theme-elevation-800)', fontSize: 13 }}>{slug}</span>
    </div>
  )
}
