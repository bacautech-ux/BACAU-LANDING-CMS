const BASE = process.env.PAYLOAD_URL || 'http://localhost:4800'

const categories = [
  { slug: 'innomotics', nameVi: 'Động cơ & Biến tần INNOMOTICS', nameEn: 'INNOMOTICS Motors & Drives' },
  { slug: 'tu-dong-hoa', nameVi: 'Tự động hóa', nameEn: 'Automation' },
  { slug: 'do-luong-siemens', nameVi: 'Thiết bị đo lường SIEMENS', nameEn: 'SIEMENS Measurement' },
  { slug: 'flender', nameVi: 'FLENDER', nameEn: 'FLENDER' },
  { slug: 'tokyo-keiki', nameVi: 'Tokyo Keiki', nameEn: 'Tokyo Keiki' },
  { slug: 'horiba', nameVi: 'Thiết bị phân tích HORIBA', nameEn: 'HORIBA Analysis Equipment' },
  { slug: 'van', nameVi: 'Van', nameEn: 'Valves' },
  { slug: 'dong-co-giam-toc', nameVi: 'Động cơ giảm tốc', nameEn: 'Gear Motors' },
]

async function getCategoryId(slug: string): Promise<number | null> {
  const res = await fetch(`${BASE}/api/product-categories?where[slug][equals]=${slug}&limit=1`)
  const data = await res.json()
  return data.docs?.[0]?.id ?? null
}

async function pageExists(slug: string): Promise<boolean> {
  const res = await fetch(`${BASE}/api/pages?where[slug][equals]=${slug}&limit=1`)
  const data = await res.json()
  return (data.docs?.length ?? 0) > 0
}

async function createCategoryPage(cat: typeof categories[0]) {
  const pageSlug = `industry-products/${cat.slug}`

  if (await pageExists(pageSlug)) {
    console.log(`SKIP: ${pageSlug} already exists`)
    return
  }

  const categoryId = await getCategoryId(cat.slug)
  if (!categoryId) {
    console.log(`SKIP: category ${cat.slug} not found`)
    return
  }

  const res = await fetch(`${BASE}/api/pages`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      title: cat.nameVi,
      slug: pageSlug,
      layout: [
        {
          blockType: 'pageHero',
          title: cat.nameVi.toUpperCase(),
          breadcrumbLabel: cat.nameVi,
          height: 'md',
          backgroundImageURL: 'https://images.unsplash.com/photo-1655936073069-07b2c9dc2db6?w=1600&q=80',
        },
        {
          blockType: 'categoryProducts',
          category: categoryId,
        },
        {
          blockType: 'brandLogos',
          sourceMode: 'latest',
          count: 6,
        },
      ],
    }),
  })

  const data = await res.json()
  if (data.doc) {
    console.log(`CREATED: ${pageSlug} (id=${data.doc.id})`)
  } else {
    console.log(`ERROR: ${pageSlug}`, JSON.stringify(data.errors?.[0]?.message ?? data))
  }
}

async function main() {
  for (const cat of categories) {
    await createCategoryPage(cat)
  }
  console.log('Done!')
}

main()
