import type { Block, Field } from 'payload'
import Link from 'next/link'

import { PageLayoutBlocks } from '../../blocks'

type BlockLibraryViewProps = {
  searchParams?: {
    view?: string
  }
}

const blockUsage: Record<
  string,
  {
    dataSource: string
    note: string
    usedIn: string
  }
> = {
  aboutContent: {
    dataSource: 'Nhập trực tiếp trong block',
    note: 'Dùng cho page Giới thiệu công ty.',
    usedIn: 'Giới thiệu công ty',
  },
  brandLogos: {
    dataSource: 'Block + collection partners',
    note: 'Logo ưu tiên lấy từ Partners, fallback theo tên brand trong block.',
    usedIn: 'Trang chủ',
  },
  ctaBanner: {
    dataSource: 'Nhập trực tiếp trong block',
    note: 'Dùng cho CTA cuối trang.',
    usedIn: 'Trang chủ',
  },
  featuredProjects: {
    dataSource: 'Block + collection projects',
    note: 'Dự án, ảnh, badge lấy từ Projects; block cấu hình title, tabs, màu nền và source mode.',
    usedIn: 'Trang chủ',
  },
  hero: {
    dataSource: 'Block + media',
    note: 'Stats nằm trong Hero block; tablet/mobile đang ẩn stats theo design.',
    usedIn: 'Trang chủ',
  },
  news: {
    dataSource: 'Block + collection news',
    note: 'Bài viết lấy từ News; block cấu hình layout 1 bài lớn + 2 bài phụ.',
    usedIn: 'Trang chủ',
  },
  pageHero: {
    dataSource: 'Nhập trực tiếp trong block',
    note: 'Dùng làm banner đầu trang cho page thường.',
    usedIn: 'Giới thiệu công ty, Dự án tham khảo',
  },
  partners: {
    dataSource: 'Nhập trực tiếp trong block',
    note: 'Mosaic ảnh trong block, không phụ thuộc collection Partners.',
    usedIn: 'Trang chủ',
  },
  products: {
    dataSource: 'Block + collection products',
    note: 'Nội dung sản phẩm lấy từ Products; block cấu hình title, subtitle, count và source mode.',
    usedIn: 'Trang chủ',
  },
  projectsListing: {
    dataSource: 'Block + collection projects',
    note: 'Listing/filter lấy project từ Projects.',
    usedIn: 'Dự án tham khảo',
  },
  services: {
    dataSource: 'Nhập trực tiếp trong block',
    note: 'Các card dịch vụ/lĩnh vực nằm trực tiếp trong block.',
    usedIn: 'Trang chủ',
  },
}

const getBlockLabel = (block: Block) => {
  const label = block.labels?.singular

  if (typeof label === 'string') {
    return label
  }

  return block.slug
}

const getFieldLabel = (field: Field) => {
  if (!('name' in field)) {
    return field.type
  }

  if ('label' in field && typeof field.label === 'string') {
    return field.label
  }

  return String(field.name)
}

const getFieldName = (field: Field) => {
  if (!('name' in field)) {
    return field.type
  }

  return String(field.name)
}

const getFieldSummary = (fields: Field[]) =>
  fields
    .filter((field) => 'name' in field)
    .map((field) => `${getFieldLabel(field)} (${getFieldName(field)})`)

const styles = {
  activeViewLink: {
    background: '#111827',
    border: '1px solid #111827',
    borderRadius: 6,
    color: '#ffffff',
    fontSize: 13,
    fontWeight: 700,
    padding: '8px 12px',
    textDecoration: 'none',
  },
  badge: {
    background: '#eef2ff',
    borderRadius: 999,
    color: '#3730a3',
    display: 'inline-flex',
    fontSize: 12,
    fontWeight: 600,
    padding: '4px 10px',
  },
  card: {
    background: '#ffffff',
    border: '1px solid #e5e7eb',
    borderRadius: 8,
    padding: 14,
  },
  fieldPill: {
    background: '#f8fafc',
    border: '1px solid #e2e8f0',
    borderRadius: 999,
    color: '#475569',
    display: 'inline-flex',
    fontSize: 12,
    lineHeight: '18px',
    padding: '3px 8px',
  },
  grid: {
    display: 'grid',
    gap: 12,
    gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))',
  },
  list: {
    background: '#ffffff',
    border: '1px solid #e5e7eb',
    borderRadius: 8,
    display: 'grid',
    overflow: 'hidden',
  },
  listRow: {
    alignItems: 'center',
    borderTop: '1px solid #e5e7eb',
    display: 'grid',
    gap: 16,
    gridTemplateColumns: 'minmax(220px, 1.1fr) minmax(170px, 0.8fr) minmax(210px, 1fr) minmax(220px, 1.2fr)',
    padding: '12px 16px',
  },
  muted: {
    color: '#64748b',
    fontSize: 14,
    lineHeight: 1.6,
  },
  page: {
    background: '#f8fafc',
    minHeight: '100vh',
    padding: 24,
  },
  section: {
    marginTop: 18,
  },
  viewLink: {
    background: '#ffffff',
    border: '1px solid #cbd5e1',
    borderRadius: 6,
    color: '#334155',
    fontSize: 13,
    fontWeight: 700,
    padding: '8px 12px',
    textDecoration: 'none',
  },
} as const

export const BlockLibraryView = ({ searchParams }: BlockLibraryViewProps) => {
  const viewMode = searchParams?.view === 'grid' ? 'grid' : 'list'
  const blocks = PageLayoutBlocks.map((block) => ({
    ...block,
    fieldsSummary: getFieldSummary(block.fields),
    label: getBlockLabel(block),
    usage: blockUsage[block.slug],
  }))

  return (
    <main style={styles.page}>
      <div style={{ margin: '0 auto', maxWidth: 1180 }}>
        <div style={{ alignItems: 'flex-start', display: 'flex', gap: 16, justifyContent: 'space-between' }}>
          <div>
            <p style={{ ...styles.muted, margin: 0 }}>Pages / layout blocks</p>
            <h1 style={{ fontSize: 28, letterSpacing: 0, lineHeight: 1.2, margin: '6px 0 0' }}>
              Thư viện Blocks
            </h1>
            <p style={{ ...styles.muted, margin: '12px 0 0', maxWidth: 760 }}>
              Danh sách này đọc trực tiếp từ cấu hình block đang dùng trong collection Pages. Khi thêm hoặc xóa
              block trong code, màn hình này sẽ tự đổi theo.
            </p>
          </div>
          <Link
            href="/admin/collections/pages/1"
            style={{
              background: '#111827',
              borderRadius: 6,
              color: '#ffffff',
              fontSize: 14,
              fontWeight: 600,
              padding: '10px 14px',
              textDecoration: 'none',
              whiteSpace: 'nowrap',
            }}
          >
            Mở Trang chủ
          </Link>
        </div>

        <div
          style={{
            alignItems: 'center',
            display: 'flex',
            flexWrap: 'wrap',
            gap: 10,
            justifyContent: 'space-between',
            ...styles.section,
          }}
        >
          <span style={styles.badge}>{blocks.length} blocks đang khả dụng</span>
          <div style={{ display: 'flex', gap: 8 }}>
            <Link href="/admin/block-library" style={viewMode === 'list' ? styles.activeViewLink : styles.viewLink}>
              List view
            </Link>
            <Link
              href="/admin/block-library?view=grid"
              style={viewMode === 'grid' ? styles.activeViewLink : styles.viewLink}
            >
              Grid view
            </Link>
          </div>
        </div>

        {viewMode === 'list' ? (
          <section style={{ ...styles.list, marginTop: 14 }}>
            <div style={{ ...styles.listRow, background: '#f1f5f9', borderTop: 0 }}>
              <strong style={{ color: '#0f172a', fontSize: 12 }}>Block</strong>
              <strong style={{ color: '#0f172a', fontSize: 12 }}>Dùng ở</strong>
              <strong style={{ color: '#0f172a', fontSize: 12 }}>Nguồn dữ liệu</strong>
              <strong style={{ color: '#0f172a', fontSize: 12 }}>Field chính</strong>
            </div>

            {blocks.map((block) => (
              <article key={block.slug} style={styles.listRow}>
                <div style={{ alignItems: 'center', display: 'flex', gap: 10, minWidth: 0 }}>
                  {block.imageURL ? (
                    <div
                      aria-label={block.imageAltText ?? block.label}
                      role="img"
                      style={{
                        backgroundImage: `url(${block.imageURL})`,
                        backgroundPosition: 'center',
                        backgroundSize: 'cover',
                        borderRadius: 5,
                        flex: '0 0 auto',
                        height: 40,
                        width: 64,
                      }}
                    />
                  ) : null}
                  <div style={{ minWidth: 0 }}>
                    <h2 style={{ fontSize: 15, letterSpacing: 0, lineHeight: 1.25, margin: 0 }}>{block.label}</h2>
                    <code style={{ color: '#b91c1c', display: 'block', fontSize: 12, marginTop: 3 }}>
                      {block.slug}
                    </code>
                  </div>
                </div>
                <p style={{ ...styles.muted, fontSize: 13, margin: 0 }}>{block.usage?.usedIn ?? 'Chưa ghi chú'}</p>
                <p style={{ ...styles.muted, fontSize: 13, margin: 0 }}>
                  {block.usage?.dataSource ?? 'Theo block schema'}
                </p>
                <div style={{ display: 'flex', flexWrap: 'wrap', gap: 6 }}>
                  {block.fieldsSummary.slice(0, 4).map((field) => (
                    <span key={field} style={styles.fieldPill}>
                      {field}
                    </span>
                  ))}
                  {block.fieldsSummary.length > 4 ? (
                    <span style={styles.fieldPill}>+{block.fieldsSummary.length - 4}</span>
                  ) : null}
                </div>
              </article>
            ))}
          </section>
        ) : (
          <section style={{ ...styles.grid, marginTop: 14 }}>
            {blocks.map((block) => (
              <article key={block.slug} style={styles.card}>
                <div style={{ alignItems: 'center', display: 'flex', gap: 10, justifyContent: 'space-between' }}>
                  <div>
                    <h2 style={{ fontSize: 16, letterSpacing: 0, lineHeight: 1.3, margin: 0 }}>{block.label}</h2>
                    <code style={{ color: '#b91c1c', display: 'block', fontSize: 12, marginTop: 4 }}>
                      {block.slug}
                    </code>
                  </div>
                  {block.imageURL ? (
                    <div
                      aria-label={block.imageAltText ?? block.label}
                      role="img"
                      style={{
                        backgroundImage: `url(${block.imageURL})`,
                        backgroundPosition: 'center',
                        backgroundSize: 'cover',
                        borderRadius: 6,
                        height: 42,
                        width: 68,
                      }}
                    />
                  ) : null}
                </div>

                <dl style={{ display: 'grid', gap: 8, margin: '12px 0 0' }}>
                  <div>
                    <dt style={{ color: '#0f172a', fontSize: 12, fontWeight: 700 }}>Dùng ở</dt>
                    <dd style={{ ...styles.muted, fontSize: 13, margin: '2px 0 0' }}>
                      {block.usage?.usedIn ?? 'Chưa ghi chú'}
                    </dd>
                  </div>
                  <div>
                    <dt style={{ color: '#0f172a', fontSize: 12, fontWeight: 700 }}>Nguồn dữ liệu</dt>
                    <dd style={{ ...styles.muted, fontSize: 13, margin: '2px 0 0' }}>
                      {block.usage?.dataSource ?? 'Theo block schema'}
                    </dd>
                  </div>
                </dl>

                <div style={{ display: 'flex', flexWrap: 'wrap', gap: 6, marginTop: 12 }}>
                  {block.fieldsSummary.slice(0, 5).map((field) => (
                    <span key={field} style={styles.fieldPill}>
                      {field}
                    </span>
                  ))}
                  {block.fieldsSummary.length > 5 ? (
                    <span style={styles.fieldPill}>+{block.fieldsSummary.length - 5}</span>
                  ) : null}
                </div>
              </article>
            ))}
          </section>
        )}
      </div>
    </main>
  )
}
