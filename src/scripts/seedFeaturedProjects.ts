import { getPayload } from 'payload'
import sharp from 'sharp'

type PayloadConfig = Parameters<typeof getPayload>[0]['config']

type ProjectCategory = 'electrical-automation' | 'digitalization' | 'measurement' | 'industrial-services'
type FeaturedType = 'energy' | 'electrical' | 'automation' | 'bms'

interface SeedProjectItem {
  slug: string
  title: {
    vi: string
    en: string
  }
  summary: {
    vi: string
    en: string
  }
  category: ProjectCategory
  featuredType: FeaturedType
  featuredBadgeLabel: {
    vi: string
    en: string
  }
  featuredBadgeColor: string
  year: number
  media: {
    filename: string
    alt: string
    svg: string
  }
}

const featuredConfig: Record<
  FeaturedType,
  {
    category: ProjectCategory
    badge: { vi: string; en: string }
    color: string
    palette: [string, string, string]
  }
> = {
  energy: {
    category: 'measurement',
    badge: { vi: 'Năng lượng', en: 'Energy' },
    color: '#2b358c',
    palette: ['#dbeafe', '#2563eb', '#0f172a'],
  },
  electrical: {
    category: 'electrical-automation',
    badge: { vi: 'Điện CN', en: 'Industrial power' },
    color: '#B92C32',
    palette: ['#0f2a63', '#22c55e', '#020617'],
  },
  automation: {
    category: 'electrical-automation',
    badge: { vi: 'Tự động hóa', en: 'Automation' },
    color: '#2b358c',
    palette: ['#e5e7eb', '#64748b', '#111827'],
  },
  bms: {
    category: 'digitalization',
    badge: { vi: 'BMS', en: 'BMS' },
    color: '#6366F1',
    palette: ['#d8ead1', '#84a98c', '#111827'],
  },
}

const projectSeeds: Record<
  FeaturedType,
  {
    vi: [string, string][]
    en: [string, string][]
  }
> = {
  energy: {
    vi: [
      [
        'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore',
        'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện',
      ],
      [
        'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh',
        'Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca',
      ],
      [
        'Giải pháp tối ưu năng lượng cho KCN Long Hậu',
        'Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực',
      ],
      [
        'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar',
        'Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng',
      ],
      [
        'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái',
        'Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành',
      ],
    ],
    en: [
      [
        'Vietnam - Singapore industrial park energy management system',
        'Design and deployment of a comprehensive energy monitoring system',
      ],
      [
        'Power monitoring center for Samsung Bac Ninh factory',
        'Integration of smart meters, alert dashboards and shift-based consumption reports',
      ],
      [
        'Energy optimization solution for Long Hau industrial park',
        'Deployment of multi-point metering and real-time load profile analytics',
      ],
      [
        'EMS upgrade for Mekophar pharmaceutical plant',
        'Standardized power data, anomaly alerts and energy KPI reporting',
      ],
      [
        'Energy metering system for Cat Lai logistics complex',
        'Connected meters, stored operating data and visualized energy costs',
      ],
    ],
  },
  electrical: {
    vi: [
      [
        'Trạm biến áp 110kV Nhà máy thép Formosa',
        'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế',
      ],
      [
        'Tủ điện trung thế dây chuyền xi măng Hà Tiên',
        'Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền',
      ],
      [
        'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến',
        'Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn',
      ],
      [
        'Hệ thống điện động lực cảng container Cái Mép',
        'Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi',
      ],
      [
        'Cải tạo trạm điện nhà máy nước Thủ Đức',
        'Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm',
      ],
    ],
    en: [
      [
        '110kV substation for Formosa steel factory',
        'Supply and installation of medium and low voltage electrical systems',
      ],
      [
        'Medium-voltage switchgear for Ha Tien cement line',
        'Design, installation and commissioning of power distribution for a grinding line',
      ],
      [
        'Electrical system upgrade for Tan Tien packaging factory',
        'Replaced distribution cabinets, balanced loads and added safety protection systems',
      ],
      [
        'Power system for Cai Mep container port',
        'Installed power supply for lifting equipment and yard lighting systems',
      ],
      [
        'Substation renovation for Thu Duc water plant',
        'Upgraded switching, metering and operational monitoring equipment',
      ],
    ],
  },
  automation: {
    vi: [
      [
        'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam',
        'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói',
      ],
      [
        'Hệ thống SCADA dây chuyền chiết rót Vinamilk',
        'Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị',
      ],
      [
        'Robot gắp sản phẩm cho nhà máy điện tử VSIP',
        'Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại',
      ],
      [
        'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi',
        'Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu',
      ],
      [
        'Nâng cấp PLC dây chuyền đóng gói Masan',
        'Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền',
      ],
    ],
    en: [
      [
        'Nestle Vietnam production line automation',
        'PLC programming and SCADA integration for a packaging line',
      ],
      [
        'SCADA system for Vinamilk filling line',
        'Centralized control, production data acquisition and equipment fault alerts',
      ],
      [
        'Product handling robot for VSIP electronics factory',
        'Integrated industrial robots, vision sensors and sorting conveyors',
      ],
      [
        'Raw material warehouse automation for feed plant',
        'Controlled silos, dosing scales and material movement traceability',
      ],
      [
        'PLC upgrade for Masan packaging line',
        'Migrated control systems, optimized machine cycles and reduced line downtime',
      ],
    ],
  },
  bms: {
    vi: [
      [
        'Hệ thống BMS tòa nhà Landmark 81',
        'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp',
      ],
      [
        'BMS khu văn phòng Techcombank Tower',
        'Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng',
      ],
      [
        'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc',
        'Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền',
      ],
      [
        'BMS khách sạn nghỉ dưỡng Phú Quốc',
        'Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng',
      ],
      [
        'Nâng cấp BMS trung tâm thương mại Saigon Centre',
        'Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung',
      ],
    ],
    en: [
      [
        'Landmark 81 building management system',
        'Deployment of an integrated intelligent building management system',
      ],
      [
        'BMS for Techcombank Tower office complex',
        'Connected HVAC, lighting, security and energy monitoring on one platform',
      ],
      [
        'Building management system for Hanh Phuc international hospital',
        'Monitored technical rooms, environmental alerts and base equipment operations',
      ],
      [
        'BMS for Phu Quoc resort hotel',
        'Optimized HVAC, public lighting and operating schedules based on room occupancy',
      ],
      [
        'BMS upgrade for Saigon Centre commercial complex',
        'Re-integrated existing equipment and built centralized operations dashboards',
      ],
    ],
  },
}

function slugify(input: string) {
  return input
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd')
    .replace(/Đ/g, 'D')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
}

function projectSvg(type: FeaturedType, index: number, title: string) {
  const [light, accent, dark] = featuredConfig[type].palette
  const id = `${type}-${index}`
  const grid = Array.from({ length: 9 })
    .map((_, item) => {
      const x = 130 + (item % 3) * 130
      const y = 130 + Math.floor(item / 3) * 82
      return `<rect x="${x}" y="${y}" width="86" height="50" rx="10" fill="${accent}" opacity="${0.2 + item * 0.045}"/>`
    })
    .join('')

  const motif: Record<FeaturedType, string> = {
    energy: `
      <g transform="translate(610 100)" stroke="${accent}" stroke-width="8" fill="none" opacity="0.92">
        <path d="M0 70h360M0 150h360M0 230h360"/>
        <path d="M40 30v250M145 30v250M250 30v250M330 30v250"/>
      </g>
      <circle cx="905" cy="210" r="92" fill="${accent}" opacity="0.18"/>`,
    electrical: `
      <g stroke="${accent}" stroke-width="12" fill="none" opacity="0.92">
        <path d="M610 520V100M610 160h390M1000 520V100"/>
        <path d="M690 160l90 160M860 160l-90 160M990 160l-80 160"/>
      </g>`,
    automation: `
      <g fill="${dark}" opacity="0.62">
        <rect x="590" y="360" width="440" height="64" rx="20"/>
        <rect x="680" y="255" width="88" height="180" rx="24"/>
        <rect x="850" y="225" width="100" height="210" rx="24"/>
      </g>
      <path d="M585 365c125-138 260-138 405 10" stroke="${accent}" stroke-width="18" fill="none" opacity="0.85"/>`,
    bms: `
      <g fill="${light}" opacity="0.78">
        <rect x="620" y="100" width="390" height="80" rx="8"/>
        <rect x="620" y="220" width="390" height="80" rx="8"/>
        <rect x="620" y="340" width="390" height="80" rx="8"/>
      </g>
      <g fill="${accent}" opacity="0.52">
        <circle cx="700" cy="505" r="92"/><circle cx="900" cy="510" r="115"/>
      </g>`,
  }

  return `<svg width="1200" height="700" xmlns="http://www.w3.org/2000/svg">
    <defs>
      <linearGradient id="bg-${id}" x1="0" x2="1" y1="0" y2="1">
        <stop offset="0" stop-color="${light}"/>
        <stop offset="0.58" stop-color="${accent}"/>
        <stop offset="1" stop-color="${dark}"/>
      </linearGradient>
      <linearGradient id="shade-${id}" x1="0" x2="0" y1="0" y2="1">
        <stop offset="0" stop-color="#000" stop-opacity="0.02"/>
        <stop offset="0.62" stop-color="#000" stop-opacity="0.20"/>
        <stop offset="1" stop-color="#000" stop-opacity="0.78"/>
      </linearGradient>
    </defs>
    <rect width="1200" height="700" fill="url(#bg-${id})"/>
    <rect x="72" y="72" width="460" height="315" rx="28" fill="#ffffff" opacity="0.20"/>
    ${grid}
    ${motif[type]}
    <text x="86" y="575" fill="#ffffff" opacity="0.72" font-size="42" font-family="Arial, sans-serif" font-weight="700">${title.slice(0, 34)}</text>
    <rect width="1200" height="700" fill="url(#shade-${id})"/>
  </svg>`
}

function buildProjects(): SeedProjectItem[] {
  return (Object.keys(projectSeeds) as FeaturedType[]).flatMap((type) => {
    const config = featuredConfig[type]
    const seed = projectSeeds[type]

    return seed.vi.map(([titleVi, summaryVi], index) => ({
      slug: slugify(titleVi),
      title: {
        vi: titleVi,
        en: seed.en[index][0],
      },
      summary: {
        vi: summaryVi,
        en: seed.en[index][1],
      },
      category: config.category,
      featuredType: type,
      featuredBadgeLabel: config.badge,
      featuredBadgeColor: config.color,
      year: 2026 - Math.floor(index / 3),
      media: {
        filename: `project-${type}-${index + 1}-hero-v2.png`,
        alt: `${titleVi} thumbnail`,
        svg: projectSvg(type, index, titleVi),
      },
    }))
  })
}

const projects = buildProjects()

async function createProjectImage(
  payload: Awaited<ReturnType<typeof getPayload>>,
  project: SeedProjectItem,
): Promise<number> {
  const existing = await payload.find({
    collection: 'media',
    where: { filename: { equals: project.media.filename } },
    limit: 1,
  })

  if (existing.docs[0]) return existing.docs[0].id

  const buffer = await sharp(Buffer.from(project.media.svg)).png().toBuffer()
  const media = await payload.create({
    collection: 'media',
    data: {
      alt: project.media.alt,
      caption: project.title.vi,
    },
    file: {
      data: buffer,
      mimetype: 'image/png',
      name: project.media.filename,
      size: buffer.length,
    },
  })

  return media.id
}

export async function script(config: PayloadConfig) {
  const payload = await getPayload({ config })

  for (const project of projects) {
    const thumbnail = await createProjectImage(payload, project)
    const existing = await payload.find({
      collection: 'projects',
      where: { slug: { equals: project.slug } },
      limit: 1,
    })

    const data = {
      title: project.title,
      slug: project.slug,
      category: project.category,
      featuredType: project.featuredType,
      featuredBadgeLabel: project.featuredBadgeLabel.vi,
      featuredBadgeColor: project.featuredBadgeColor,
      thumbnail,
      summary: project.summary,
      year: project.year,
      featured: true,
      _status: 'published' as const,
    }

    if (existing.docs[0]) {
      const updated = await payload.update({
        collection: 'projects',
        id: existing.docs[0].id,
        data: data as never,
      })
      await payload.update({
        collection: 'projects',
        id: updated.id,
        locale: 'en',
        data: {
          featuredBadgeLabel: project.featuredBadgeLabel.en,
        },
      })
      console.log(`[updated] projects/${project.slug}`)
      continue
    }

    const created = await payload.create({
      collection: 'projects',
      data: data as never,
    })
    await payload.update({
      collection: 'projects',
      id: created.id,
      locale: 'en',
      data: {
        featuredBadgeLabel: project.featuredBadgeLabel.en,
      },
    })
    console.log(`[created] projects/${project.slug}`)
  }

  await payload.destroy()
  console.log(`[done] Seeded ${projects.length} featured projects`)
}
