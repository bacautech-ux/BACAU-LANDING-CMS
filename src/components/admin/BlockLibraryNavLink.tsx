import Link from 'next/link'

export const BlockLibraryNavLink = () => {
  return (
    <Link
      href="/admin/block-library"
      style={{
        color: 'var(--theme-elevation-800)',
        display: 'block',
        fontSize: 13,
        lineHeight: '20px',
        padding: '6px 0',
        textDecoration: 'none',
      }}
    >
      Thư viện Blocks
    </Link>
  )
}
