import { getPayload } from 'payload'
import sharp from 'sharp'
import type { News } from '../../payload-types'

type PayloadConfig = Parameters<typeof getPayload>[0]['config']

interface SeedNewsItem {
  slug: string
  title: {
    vi: string
    en: string
  }
  excerpt: {
    vi: string
    en: string
  }
  content: {
    vi: string
    en: string
  }
  publishedAt: string
  tags: NonNullable<News['tags']>
  media: {
    filename: string
    alt: string
    svg: string
  }
}

const articles: SeedNewsItem[] = [
  {
    slug: 'du-an-tu-dong-hoa-nha-may-binh-duong-2026',
    title: {
      vi: 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương',
      en: 'Bac Au completes factory automation project in Binh Duong',
    },
    excerpt: {
      vi: 'Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.',
      en: 'The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.',
    },
    content: {
      vi: 'Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.',
      en: 'Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.',
    },
    publishedAt: '2026-03-20T02:00:00.000Z',
    tags: ['Tin tức'],
    media: {
      filename: 'news-factory-automation-binh-duong.png',
      alt: 'Nhà máy trong sương với hệ thống tự động hóa công nghiệp',
      svg: `<svg width="1200" height="800" xmlns="http://www.w3.org/2000/svg">
        <defs>
          <linearGradient id="sky" x1="0" x2="0" y1="0" y2="1">
            <stop offset="0" stop-color="#d7dde3"/>
            <stop offset="0.58" stop-color="#aeb7c0"/>
            <stop offset="1" stop-color="#232733"/>
          </linearGradient>
          <linearGradient id="fade" x1="0" x2="0" y1="0" y2="1">
            <stop offset="0" stop-color="#ffffff" stop-opacity="0.36"/>
            <stop offset="0.58" stop-color="#ffffff" stop-opacity="0.08"/>
            <stop offset="1" stop-color="#000000" stop-opacity="0.76"/>
          </linearGradient>
        </defs>
        <rect width="1200" height="800" fill="url(#sky)"/>
        <g fill="#2e3440" opacity="0.58">
          <rect x="500" y="260" width="230" height="420"/>
          <rect x="760" y="180" width="180" height="500"/>
          <rect x="380" y="390" width="120" height="290"/>
        </g>
        <g stroke="#d9dee5" stroke-width="9" opacity="0.34">
          <path d="M540 285h155M540 340h155M540 395h155M540 450h155M540 505h155"/>
          <path d="M790 215h120M790 270h120M790 325h120M790 380h120M790 435h120"/>
          <path d="M588 265v400M650 265v400M835 190v470"/>
        </g>
        <rect width="1200" height="800" fill="url(#fade)"/>
      </svg>`,
    },
  },
  {
    slug: 'hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026',
    title: {
      vi: 'Hội thảo giải pháp quản lý năng lượng thông minh 2026',
      en: 'Smart energy management solutions seminar 2026',
    },
    excerpt: {
      vi: 'Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.',
      en: 'Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.',
    },
    content: {
      vi: 'Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.',
      en: 'At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.',
    },
    publishedAt: '2026-03-15T02:00:00.000Z',
    tags: ['Hội thảo', 'Sự kiện'],
    media: {
      filename: 'news-smart-energy-management.png',
      alt: 'Mái nhà công nghiệp lắp đặt pin mặt trời',
      svg: `<svg width="1200" height="800" xmlns="http://www.w3.org/2000/svg">
        <rect width="1200" height="800" fill="#d7d1c6"/>
        <g transform="rotate(90 600 400)">
          <rect x="110" y="90" width="980" height="620" fill="#ede7dc"/>
          <g fill="#1b3768">
            <rect x="170" y="150" width="145" height="220"/>
            <rect x="335" y="150" width="145" height="220"/>
            <rect x="500" y="150" width="145" height="220"/>
            <rect x="665" y="150" width="145" height="220"/>
            <rect x="830" y="150" width="145" height="220"/>
            <rect x="170" y="430" width="145" height="220"/>
            <rect x="335" y="430" width="145" height="220"/>
            <rect x="500" y="430" width="145" height="220"/>
            <rect x="665" y="430" width="145" height="220"/>
            <rect x="830" y="430" width="145" height="220"/>
          </g>
          <g stroke="#9db3d4" stroke-width="4" opacity="0.8">
            <path d="M170 205h805M170 260h805M170 315h805M170 485h805M170 540h805M170 595h805"/>
            <path d="M225 150v500M280 150v500M390 150v500M445 150v500M555 150v500M610 150v500M720 150v500M775 150v500M885 150v500M940 150v500"/>
          </g>
        </g>
        <rect x="935" y="0" width="265" height="800" fill="#6f6358"/>
        <path d="M970 0v800M1045 0v800M1120 0v800" stroke="#d4ccc0" stroke-width="5" opacity="0.42"/>
      </svg>`,
    },
  },
  {
    slug: 'bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban',
    title: {
      vi: 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản',
      en: 'Bac Au signs strategic partnership with Japanese partner',
    },
    excerpt: {
      vi: 'Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.',
      en: 'The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.',
    },
    content: {
      vi: 'Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.',
      en: 'Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.',
    },
    publishedAt: '2026-03-05T02:00:00.000Z',
    tags: ['Tin tức', 'Thông cáo'],
    media: {
      filename: 'news-japan-strategic-partnership.png',
      alt: 'Bàn kỹ thuật với dụng cụ và thiết bị tự động hóa',
      svg: `<svg width="1200" height="800" xmlns="http://www.w3.org/2000/svg">
        <rect width="1200" height="800" fill="#d8c2a7"/>
        <rect x="0" y="0" width="1200" height="800" fill="#2c3440" opacity="0.28"/>
        <g stroke="#1b2230" stroke-width="18" fill="none" opacity="0.92">
          <path d="M120 570c160-190 320-190 480 0s320 190 480 0"/>
          <path d="M180 620h300M720 620h300"/>
        </g>
        <g fill="#162033">
          <rect x="160" y="180" width="270" height="170" rx="20"/>
          <rect x="500" y="220" width="200" height="130" rx="18"/>
          <rect x="780" y="170" width="250" height="190" rx="20"/>
        </g>
        <g fill="#2da4d9" opacity="0.95">
          <rect x="190" y="220" width="210" height="38" rx="8"/>
          <rect x="530" y="255" width="140" height="34" rx="8"/>
          <rect x="815" y="220" width="180" height="36" rx="8"/>
        </g>
        <g stroke="#f2f3f5" stroke-width="8" opacity="0.72">
          <path d="M170 435h250M500 430h210M790 435h250"/>
          <path d="M230 480h130M550 475h110M840 480h150"/>
        </g>
      </svg>`,
    },
  },
]

function richTextFromText(text: string): NonNullable<NonNullable<News['content']>['vi']> {
  return {
    root: {
      type: 'root',
      format: '' as const,
      indent: 0,
      version: 1,
      children: [
        {
          type: 'paragraph',
          format: '',
          indent: 0,
          version: 1,
          children: [
            {
              type: 'text',
              detail: 0,
              format: 0,
              mode: 'normal',
              style: '',
              text,
              version: 1,
            },
          ],
        },
      ],
      direction: null,
    },
  }
}

async function createNewsImage(
  payload: Awaited<ReturnType<typeof getPayload>>,
  article: SeedNewsItem,
): Promise<number> {
  const existing = await payload.find({
    collection: 'media',
    where: { filename: { equals: article.media.filename } },
    limit: 1,
  })

  if (existing.docs[0]) return existing.docs[0].id

  const buffer = await sharp(Buffer.from(article.media.svg)).png().toBuffer()
  const media = await payload.create({
    collection: 'media',
    data: {
      alt: article.media.alt,
      caption: article.title.vi,
    },
    file: {
      data: buffer,
      mimetype: 'image/png',
      name: article.media.filename,
      size: buffer.length,
    },
  })

  return media.id
}

export async function script(config: PayloadConfig) {
  const payload = await getPayload({ config })

  for (const article of articles) {
    const thumbnail = await createNewsImage(payload, article)
    const existing = await payload.find({
      collection: 'news',
      where: { slug: { equals: article.slug } },
      limit: 1,
    })

    const data = {
      title: article.title,
      slug: article.slug,
      publishedAt: article.publishedAt,
      thumbnail,
      excerpt: article.excerpt,
      content: {
        vi: richTextFromText(article.content.vi),
        en: richTextFromText(article.content.en),
      },
      tags: article.tags,
      _status: 'published' as const,
    }

    if (existing.docs[0]) {
      await payload.update({
        collection: 'news',
        id: existing.docs[0].id,
        data,
      })
      console.log(`[updated] news/${article.slug}`)
      continue
    }

    await payload.create({
      collection: 'news',
      data,
    })
    console.log(`[created] news/${article.slug}`)
  }

  await payload.destroy()
  console.log('[done] Seeded 3 news articles')
}
