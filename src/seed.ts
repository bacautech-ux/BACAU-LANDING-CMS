import { getPayload } from 'payload'
import config from '../payload.config'

async function seed() {
  const payload = await getPayload({ config })

  const pages = [
    {
      title: 'Giới thiệu công ty',
      slug: 'gioi-thieu',
      hero: {
        heading: 'CÔNG TY BẮC ÂU',
        breadcrumbLabel: 'Công ty Bắc Âu',
        backgroundImage: null,
      },
    },
    {
      title: 'Dự án tham khảo',
      slug: 'du-an-tham-khao',
      hero: {
        heading: 'DỰ ÁN THAM KHẢO',
        breadcrumbLabel: 'Dự án Tham Khảo',
        backgroundImage: null,
      },
    },
  ]

  for (const page of pages) {
    const existing = await payload.find({
      collection: 'pages',
      where: { slug: { equals: page.slug } },
      limit: 1,
    })

    if (existing.docs.length > 0) {
      console.log(`[skip] "${page.slug}" đã tồn tại`)
      continue
    }

    await payload.create({ collection: 'pages', data: page })
    console.log(`[ok] Đã tạo page "${page.slug}"`)
  }

  process.exit(0)
}

seed().catch((err) => {
  console.error(err)
  process.exit(1)
})
