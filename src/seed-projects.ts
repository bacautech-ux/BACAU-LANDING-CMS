import { getPayload } from 'payload'
import config from '../payload.config'
import sharp from 'sharp'

interface ProjectSeed {
  title: { vi: string; en: string }
  slug: string
  category: string
  industry: string
  featured: boolean
  featuredType?: string
  featuredBadgeLabel?: string
  featuredBadgeColor?: string
  year: number
  customerName: { vi: string; en: string }
  customerAddress: string
  location: string
  summary: { vi: string; en: string }
  imageLabel: string
  gradient: [string, string]
}

const projects: ProjectSeed[] = [
  // ── ELECTRICAL-AUTOMATION ──
  {
    title: {
      vi: 'Hệ thống SCADA giám sát nhà máy xi măng Nghi Sơn',
      en: 'SCADA Monitoring System for Nghi Son Cement Plant',
    },
    slug: 'scada-xi-mang-nghi-son',
    category: 'electrical-automation',
    industry: 'cement-mining',
    featured: true,
    featuredType: 'automation',
    featuredBadgeLabel: 'Tự động hóa',
    year: 2024,
    customerName: { vi: 'Công ty TNHH Xi măng Nghi Sơn', en: 'Nghi Son Cement Co., Ltd.' },
    customerAddress: 'Tĩnh Gia, Thanh Hóa',
    location: 'Thanh Hóa',
    summary: {
      vi: 'Thiết kế và triển khai hệ thống SCADA giám sát toàn bộ dây chuyền sản xuất xi măng công suất 2.500 tấn/ngày, tích hợp PLC Siemens S7-1500.',
      en: 'Design and deploy a full SCADA monitoring system for a 2,500 tons/day cement production line, integrated with Siemens S7-1500 PLC.',
    },
    imageLabel: 'SCADA',
    gradient: ['#1a237e', '#0d47a1'],
  },
  {
    title: {
      vi: 'Robot gắp sản phẩm tự động nhà máy điện tử VSIP',
      en: 'Automated Pick & Place Robot for VSIP Electronics Factory',
    },
    slug: 'robot-gap-san-pham-vsip',
    category: 'electrical-automation',
    industry: 'consumer-goods',
    featured: true,
    featuredType: 'automation',
    featuredBadgeLabel: 'Tự động hóa',
    year: 2024,
    customerName: { vi: 'KCN VSIP Bắc Ninh', en: 'VSIP Bac Ninh Industrial Park' },
    customerAddress: 'KCN VSIP, Từ Sơn, Bắc Ninh',
    location: 'Bắc Ninh',
    summary: {
      vi: 'Tích hợp robot công nghiệp ABB IRB 6700, cảm biến thị giác và băng tải phân loại tự động cho dây chuyền lắp ráp linh kiện điện tử.',
      en: 'Integrate ABB IRB 6700 industrial robot, vision sensors and automatic sorting conveyor for electronic component assembly line.',
    },
    imageLabel: 'ROBOT',
    gradient: ['#1b5e20', '#2e7d32'],
  },
  {
    title: {
      vi: 'Tủ điện trung thế 22kV nhà máy thép Hòa Phát Dung Quất',
      en: '22kV Medium Voltage Switchgear for Hoa Phat Dung Quat Steel Plant',
    },
    slug: 'tu-dien-trung-the-hoa-phat',
    category: 'electrical-automation',
    industry: 'steel',
    featured: true,
    featuredType: 'electrical',
    featuredBadgeLabel: 'Điện công nghiệp',
    featuredBadgeColor: '#B92C32',
    year: 2023,
    customerName: { vi: 'Tập đoàn Hòa Phát', en: 'Hoa Phat Group' },
    customerAddress: 'KKT Dung Quất, Quảng Ngãi',
    location: 'Quảng Ngãi',
    summary: {
      vi: 'Thiết kế, cung cấp và lắp đặt 24 tủ điện trung thế 22kV, hệ thống bảo vệ relay Schneider Sepam và tự động chuyển nguồn ATS.',
      en: 'Design, supply and install 24 medium-voltage 22kV switchgears, Schneider Sepam relay protection system and automatic transfer switch.',
    },
    imageLabel: 'MV',
    gradient: ['#4a148c', '#6a1b9a'],
  },
  {
    title: {
      vi: 'Hệ thống PLC điều khiển dây chuyền chiết rót Vinamilk',
      en: 'PLC Control System for Vinamilk Bottling Line',
    },
    slug: 'plc-chiet-rot-vinamilk',
    category: 'electrical-automation',
    industry: 'food-beverage',
    featured: false,
    year: 2023,
    customerName: { vi: 'Công ty CP Sữa Việt Nam (Vinamilk)', en: 'Vietnam Dairy Products JSC (Vinamilk)' },
    customerAddress: 'KCN Mỹ Phước 2, Bình Dương',
    location: 'Bình Dương',
    summary: {
      vi: 'Lập trình PLC Siemens S7-1200 và thiết kế HMI cho dây chuyền chiết rót sữa tươi công suất 12.000 chai/giờ, đảm bảo tiêu chuẩn vệ sinh thực phẩm.',
      en: 'Program Siemens S7-1200 PLC and design HMI for fresh milk bottling line with 12,000 bottles/hour capacity, ensuring food hygiene standards.',
    },
    imageLabel: 'PLC',
    gradient: ['#0d47a1', '#1565c0'],
  },

  // ── DIGITALIZATION ──
  {
    title: {
      vi: 'Hệ thống quản lý năng lượng EMS nhà máy Đạm Phú Mỹ',
      en: 'Energy Management System (EMS) for Phu My Fertilizer Plant',
    },
    slug: 'ems-dam-phu-my',
    category: 'digitalization',
    industry: 'fertilizer-chemical',
    featured: true,
    featuredType: 'energy',
    featuredBadgeLabel: 'Quản lý năng lượng',
    featuredBadgeColor: '#0d7377',
    year: 2025,
    customerName: { vi: 'Tổng Công ty Phân bón & Hóa chất Dầu khí', en: 'PetroVietnam Fertilizer & Chemicals Corp.' },
    customerAddress: 'KCN Phú Mỹ I, Bà Rịa - Vũng Tàu',
    location: 'Bà Rịa - Vũng Tàu',
    summary: {
      vi: 'Triển khai hệ thống EMS giám sát và tối ưu tiêu thụ điện năng toàn nhà máy, tích hợp IoT gateway và dashboard real-time, tiết kiệm 18% chi phí năng lượng.',
      en: 'Deploy EMS system to monitor and optimize plant-wide power consumption, integrating IoT gateways and real-time dashboards, saving 18% energy costs.',
    },
    imageLabel: 'EMS',
    gradient: ['#004d40', '#00695c'],
  },
  {
    title: {
      vi: 'Giải pháp IoT giám sát thiết bị từ xa KCN Bình Dương',
      en: 'Remote IoT Equipment Monitoring for Binh Duong Industrial Zone',
    },
    slug: 'iot-giam-sat-kcn-binh-duong',
    category: 'digitalization',
    industry: 'other',
    featured: false,
    year: 2024,
    customerName: { vi: 'Ban quản lý KCN Bình Dương', en: 'Binh Duong Industrial Zone Management Board' },
    customerAddress: 'TP. Thủ Dầu Một, Bình Dương',
    location: 'Bình Dương',
    summary: {
      vi: 'Thiết kế mạng lưới cảm biến IoT LoRaWAN giám sát 200+ thiết bị công nghiệp, cảnh báo sự cố real-time qua app mobile và web dashboard.',
      en: 'Design IoT LoRaWAN sensor network monitoring 200+ industrial devices, real-time fault alerts via mobile app and web dashboard.',
    },
    imageLabel: 'IoT',
    gradient: ['#006064', '#00838f'],
  },
  {
    title: {
      vi: 'Hệ thống MES quản lý sản xuất nhà máy Sabeco',
      en: 'Manufacturing Execution System (MES) for Sabeco Brewery',
    },
    slug: 'mes-sabeco',
    category: 'digitalization',
    industry: 'food-beverage',
    featured: false,
    year: 2024,
    customerName: { vi: 'Tổng Công ty CP Bia - Rượu - Nước giải khát Sài Gòn', en: 'Saigon Beer - Alcohol - Beverage Corp.' },
    customerAddress: 'Quận 12, TP. Hồ Chí Minh',
    location: 'TP. Hồ Chí Minh',
    summary: {
      vi: 'Triển khai MES tích hợp ERP, theo dõi OEE real-time cho 5 dây chuyền sản xuất bia, giảm 25% thời gian downtime ngoài kế hoạch.',
      en: 'Deploy MES integrated with ERP, real-time OEE tracking for 5 beer production lines, reducing unplanned downtime by 25%.',
    },
    imageLabel: 'MES',
    gradient: ['#1a237e', '#283593'],
  },

  // ── MEASUREMENT ──
  {
    title: {
      vi: 'Hệ thống đo lường lưu lượng khí gas nhà máy lọc dầu Nghi Sơn',
      en: 'Gas Flow Measurement System for Nghi Son Oil Refinery',
    },
    slug: 'do-luong-khi-gas-nghi-son',
    category: 'measurement',
    industry: 'oil-gas',
    featured: false,
    year: 2023,
    customerName: { vi: 'Công ty TNHH Lọc Hóa dầu Nghi Sơn', en: 'Nghi Son Refinery & Petrochemical LLC' },
    customerAddress: 'KKT Nghi Sơn, Thanh Hóa',
    location: 'Thanh Hóa',
    summary: {
      vi: 'Cung cấp và hiệu chuẩn 48 đồng hồ đo lưu lượng Coriolis Endress+Hauser, hệ thống đo áp suất và nhiệt độ đường ống dẫn khí gas.',
      en: 'Supply and calibrate 48 Endress+Hauser Coriolis flow meters, pressure and temperature measurement system for gas pipelines.',
    },
    imageLabel: 'FLOW',
    gradient: ['#e65100', '#bf360c'],
  },
  {
    title: {
      vi: 'Hệ thống đo mức bồn chứa tự động cảng Cát Lái',
      en: 'Automated Tank Level Measurement System for Cat Lai Port',
    },
    slug: 'do-muc-bon-chua-cat-lai',
    category: 'measurement',
    industry: 'port',
    featured: false,
    year: 2024,
    customerName: { vi: 'Cảng Cát Lái - Tổng Công ty Tân Cảng Sài Gòn', en: 'Cat Lai Port - Saigon Newport Corp.' },
    customerAddress: 'Quận 2, TP. Hồ Chí Minh',
    location: 'TP. Hồ Chí Minh',
    summary: {
      vi: 'Lắp đặt 32 radar đo mức Vega cho hệ thống bồn chứa xăng dầu, truyền dữ liệu qua Modbus TCP về phòng điều khiển trung tâm.',
      en: 'Install 32 Vega radar level transmitters for fuel storage tanks, transmitting data via Modbus TCP to the central control room.',
    },
    imageLabel: 'LEVEL',
    gradient: ['#f57f17', '#f9a825'],
  },
  {
    title: {
      vi: 'Calibration thiết bị đo lường nhà máy nhiệt điện Phú Mỹ',
      en: 'Measurement Equipment Calibration for Phu My Thermal Power Plant',
    },
    slug: 'calibration-nhiet-dien-phu-my',
    category: 'measurement',
    industry: 'power',
    featured: false,
    year: 2025,
    customerName: { vi: 'Công ty CP Điện lực Dầu khí Nhơn Trạch 2', en: 'PV Power Nhon Trach 2 JSC' },
    customerAddress: 'KCN Nhơn Trạch 2, Đồng Nai',
    location: 'Đồng Nai',
    summary: {
      vi: 'Hiệu chuẩn định kỳ 120+ thiết bị đo lường gồm transmitter áp suất, nhiệt độ, lưu lượng theo tiêu chuẩn ISO 17025.',
      en: 'Periodic calibration of 120+ measurement instruments including pressure, temperature, and flow transmitters per ISO 17025 standards.',
    },
    imageLabel: 'CAL',
    gradient: ['#ff6f00', '#ff8f00'],
  },

  // ── INDUSTRIAL-SERVICES ──
  {
    title: {
      vi: 'Bảo trì tổng thể hệ thống điện KCN Tân Tạo',
      en: 'Comprehensive Electrical Maintenance for Tan Tao Industrial Zone',
    },
    slug: 'bao-tri-dien-kcn-tan-tao',
    category: 'industrial-services',
    industry: 'other',
    featured: false,
    year: 2024,
    customerName: { vi: 'Công ty CP Đầu tư Công nghiệp Tân Tạo', en: 'Tan Tao Industrial Investment Corp.' },
    customerAddress: 'Quận Bình Tân, TP. Hồ Chí Minh',
    location: 'TP. Hồ Chí Minh',
    summary: {
      vi: 'Hợp đồng bảo trì năm cho toàn bộ hệ thống điện trung & hạ thế, trạm biến áp 110kV và hệ thống chiếu sáng công cộng KCN.',
      en: 'Annual maintenance contract for entire medium & low voltage electrical system, 110kV substation and public lighting across the industrial zone.',
    },
    imageLabel: 'O&M',
    gradient: ['#37474f', '#455a64'],
  },
  {
    title: {
      vi: 'Nâng cấp hệ thống điều khiển nhà máy xử lý nước Thủ Đức',
      en: 'Control System Upgrade for Thu Duc Water Treatment Plant',
    },
    slug: 'nang-cap-nha-may-nuoc-thu-duc',
    category: 'industrial-services',
    industry: 'water',
    featured: false,
    year: 2023,
    customerName: { vi: 'Tổng Công ty Cấp nước Sài Gòn (Sawaco)', en: 'Saigon Water Corp. (Sawaco)' },
    customerAddress: 'TP. Thủ Đức, TP. Hồ Chí Minh',
    location: 'TP. Hồ Chí Minh',
    summary: {
      vi: 'Nâng cấp toàn bộ PLC & SCADA từ hệ thống cũ Allen-Bradley SLC 500 lên ControlLogix, cải thiện độ tin cậy và tốc độ xử lý 40%.',
      en: 'Full PLC & SCADA upgrade from legacy Allen-Bradley SLC 500 to ControlLogix, improving reliability and processing speed by 40%.',
    },
    imageLabel: 'UPG',
    gradient: ['#263238', '#37474f'],
  },
]

function escapeXml(s: string) {
  return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
}

async function generateThumbnail(label: string, colors: [string, string]): Promise<Buffer> {
  const w = 800
  const h = 600
  const [c1, c2] = colors
  const safeLabel = escapeXml(label)

  const svg = `<svg width="${w}" height="${h}" xmlns="http://www.w3.org/2000/svg">
    <defs>
      <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
        <stop offset="0%" stop-color="${c1}"/>
        <stop offset="100%" stop-color="${c2}"/>
      </linearGradient>
    </defs>
    <rect width="${w}" height="${h}" fill="url(#bg)"/>
    <g opacity="0.08" stroke="#fff" fill="none">
      ${Array.from({ length: 7 }, (_, i) => `<line x1="0" y1="${i * 100}" x2="${w}" y2="${i * 100}" stroke-width="0.5"/>`).join('')}
      ${Array.from({ length: 9 }, (_, i) => `<line x1="${i * 100}" y1="0" x2="${i * 100}" y2="${h}" stroke-width="0.5"/>`).join('')}
      <circle cx="600" cy="200" r="120" stroke-width="1"/>
      <circle cx="600" cy="200" r="80" stroke-width="0.5"/>
      <circle cx="600" cy="200" r="40" stroke-width="0.5"/>
      <circle cx="200" cy="400" r="100" stroke-width="1"/>
      <circle cx="200" cy="400" r="60" stroke-width="0.5"/>
      <line x1="200" y1="300" x2="600" y2="200" stroke-width="0.5"/>
      <line x1="300" y1="400" x2="480" y2="200" stroke-width="0.5"/>
      <rect x="350" y="350" width="100" height="100" stroke-width="0.5" rx="4"/>
      <rect x="370" y="370" width="60" height="60" stroke-width="0.5" rx="2"/>
    </g>
    <g opacity="0.12">
      <text x="${w / 2}" y="${h / 2 + 20}" text-anchor="middle" font-family="Arial,Helvetica,sans-serif" font-size="120" font-weight="bold" fill="#fff" letter-spacing="8">${safeLabel}</text>
    </g>
  </svg>`

  return sharp(Buffer.from(svg)).jpeg({ quality: 90 }).toBuffer()
}

async function seedProjects() {
  const payload = await getPayload({ config })

  // Delete existing projects
  const existing = await payload.find({ collection: 'projects', limit: 100 })
  if (existing.docs.length > 0) {
    console.log(`Xóa ${existing.docs.length} dự án cũ...`)
    for (const doc of existing.docs) {
      await payload.delete({ collection: 'projects', id: doc.id })
    }
  }

  console.log(`\nTạo ${projects.length} dự án mới...\n`)

  for (const p of projects) {
    const dup = await payload.find({ collection: 'projects', where: { slug: { equals: p.slug } }, limit: 1 })
    if (dup.docs.length > 0) {
      console.log(`  [skip] ${p.slug} đã tồn tại`)
      continue
    }

    // Generate and upload thumbnail
    const imgBuffer = await generateThumbnail(p.imageLabel, p.gradient)
    const media = await payload.create({
      collection: 'media',
      data: { alt: p.title.vi },
      file: {
        data: imgBuffer,
        mimetype: 'image/jpeg',
        name: `${p.slug}-thumbnail.jpg`,
        size: imgBuffer.length,
      },
    })

    const projectData: Record<string, unknown> = {
      title: p.title,
      slug: p.slug,
      category: p.category,
      industry: p.industry,
      featured: p.featured,
      year: p.year,
      customerName: p.customerName,
      customerAddress: p.customerAddress,
      location: p.location,
      summary: p.summary,
      thumbnail: media.id,
      _status: 'published',
    }

    if (p.featuredType) projectData.featuredType = p.featuredType
    if (p.featuredBadgeLabel) projectData.featuredBadgeLabel = p.featuredBadgeLabel
    if (p.featuredBadgeColor) projectData.featuredBadgeColor = p.featuredBadgeColor

    await payload.create({ collection: 'projects', data: projectData })
    console.log(`  ✓ ${p.title.vi}`)
  }

  console.log(`\nHoàn tất! Đã tạo ${projects.length} dự án.\n`)
  process.exit(0)
}

seedProjects().catch((err) => {
  console.error('Lỗi seed:', err)
  process.exit(1)
})
