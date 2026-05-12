import { getPayload } from 'payload'
import sharp from 'sharp'

type PayloadConfig = Parameters<typeof getPayload>[0]['config']

interface ProductSeed {
  slug: string
  name: {
    vi: string
    en: string
  }
  category:
    | 'automation'
    | 'measurement'
    | 'industrial-valve'
    | 'electrical'
    | 'motor'
    | 'sensor'
  displayCategory: {
    vi: string
    en: string
  }
  brand: string
  media: {
    filename: string
    alt: string
    svg: string
  }
}

interface PartnerSeed {
  name: string
  website: string
  order: number
  logo: {
    filename: string
    alt: string
    svg: string
  }
}

function escapeXml(value: string) {
  return value
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&apos;')
}

function productSvg(title: string, label: string, palette: [string, string, string]) {
  const [bg, accent, dark] = palette
  const safeTitle = escapeXml(title)
  const safeLabel = escapeXml(label)

  return `<svg width="900" height="1120" xmlns="http://www.w3.org/2000/svg">
    <defs>
      <linearGradient id="bg" x1="0" x2="1" y1="0" y2="1">
        <stop offset="0" stop-color="${bg}"/>
        <stop offset="0.58" stop-color="#ffffff"/>
        <stop offset="1" stop-color="#dbe3ef"/>
      </linearGradient>
      <linearGradient id="shade" x1="0" x2="0" y1="0" y2="1">
        <stop offset="0" stop-color="#ffffff" stop-opacity="0"/>
        <stop offset="0.76" stop-color="#0f172a" stop-opacity="0.08"/>
        <stop offset="1" stop-color="#0f172a" stop-opacity="0.26"/>
      </linearGradient>
    </defs>
    <rect width="900" height="1120" fill="url(#bg)"/>
    <circle cx="720" cy="190" r="210" fill="${accent}" opacity="0.12"/>
    <circle cx="150" cy="830" r="260" fill="${dark}" opacity="0.08"/>
    <g transform="translate(150 245)">
      <rect x="0" y="120" width="600" height="360" rx="54" fill="#ffffff" opacity="0.92"/>
      <rect x="70" y="186" width="460" height="68" rx="18" fill="${dark}" opacity="0.88"/>
      <rect x="70" y="292" width="205" height="112" rx="26" fill="${accent}" opacity="0.90"/>
      <rect x="325" y="292" width="205" height="112" rx="26" fill="${accent}" opacity="0.58"/>
      <path d="M104 516h392M144 566h312" stroke="${dark}" stroke-width="22" stroke-linecap="round" opacity="0.30"/>
      <g stroke="${accent}" stroke-width="16" fill="none" opacity="0.78">
        <path d="M112 82h376"/>
        <path d="M148 48v70M452 48v70"/>
      </g>
    </g>
    <text x="70" y="920" fill="${dark}" font-size="52" font-family="Arial, sans-serif" font-weight="700">${safeTitle}</text>
    <text x="70" y="988" fill="${accent}" font-size="34" font-family="Arial, sans-serif" font-weight="700">${safeLabel}</text>
    <rect width="900" height="1120" fill="url(#shade)"/>
  </svg>`
}

function logoSvg(name: string, color: string) {
  const safeName = escapeXml(name)

  return `<svg width="520" height="220" xmlns="http://www.w3.org/2000/svg">
    <rect width="520" height="220" rx="34" fill="#ffffff"/>
    <rect x="28" y="28" width="464" height="164" rx="28" fill="${color}" opacity="0.10"/>
    <circle cx="112" cy="110" r="46" fill="${color}"/>
    <path d="M92 112h40M112 92v40" stroke="#ffffff" stroke-width="12" stroke-linecap="round"/>
    <text x="182" y="126" fill="#0f172a" font-size="54" font-family="Arial, sans-serif" font-weight="700">${safeName}</text>
  </svg>`
}

const products: ProductSeed[] = [
  {
    slug: 'van-cong-nghiep-dieu-khien-tu-dong',
    name: { vi: 'Van Công Nghiệp', en: 'Industrial Valve' },
    category: 'industrial-valve',
    displayCategory: { vi: 'Valve & Actuator', en: 'Valve & Actuator' },
    brand: 'ESTEC',
    media: {
      filename: 'product-industrial-valve.png',
      alt: 'Van công nghiệp điều khiển tự động',
      svg: productSvg('Van Công Nghiệp', 'Valve & Actuator', ['#edf2f7', '#b91c1c', '#111827']),
    },
  },
  {
    slug: 'dong-co-dien-va-bien-tan',
    name: { vi: 'Động Cơ Điện', en: 'Electric Motor' },
    category: 'motor',
    displayCategory: { vi: 'Motor & Drive', en: 'Motor & Drive' },
    brand: 'ESTEC',
    media: {
      filename: 'product-motor-drive.png',
      alt: 'Động cơ điện và biến tần công nghiệp',
      svg: productSvg('Động Cơ Điện', 'Motor & Drive', ['#e6eef8', '#2563eb', '#0f172a']),
    },
  },
  {
    slug: 'cam-bien-cong-nghiep',
    name: { vi: 'Cảm Biến', en: 'Industrial Sensor' },
    category: 'sensor',
    displayCategory: { vi: 'Sensor & Instrument', en: 'Sensor & Instrument' },
    brand: 'ESTEC',
    media: {
      filename: 'product-industrial-sensor.png',
      alt: 'Cảm biến công nghiệp và thiết bị đo',
      svg: productSvg('Cảm Biến', 'Sensor & Instrument', ['#eef7f1', '#16a34a', '#14532d']),
    },
  },
  {
    slug: 'tu-dien-dieu-khien',
    name: { vi: 'Tủ Điện Điều Khiển', en: 'Control Cabinet' },
    category: 'electrical',
    displayCategory: { vi: 'Control Cabinet', en: 'Control Cabinet' },
    brand: 'ESTEC',
    media: {
      filename: 'product-control-cabinet.png',
      alt: 'Tủ điện điều khiển công nghiệp',
      svg: productSvg('Tủ Điện Điều Khiển', 'Control Cabinet', ['#f1f5f9', '#475569', '#020617']),
    },
  },
  {
    slug: 'thiet-bi-do-luong-cong-nghiep',
    name: { vi: 'Thiết Bị Đo Lường', en: 'Measuring Device' },
    category: 'measurement',
    displayCategory: { vi: 'Measurement Device', en: 'Measurement Device' },
    brand: 'ESTEC',
    media: {
      filename: 'product-measurement-device.png',
      alt: 'Thiết bị đo lường công nghiệp',
      svg: productSvg('Thiết Bị Đo Lường', 'Measurement Device', ['#f8fafc', '#7c3aed', '#312e81']),
    },
  },
]

const partners: PartnerSeed[] = [
  {
    name: 'ABB',
    website: 'https://global.abb',
    order: 1,
    logo: { filename: 'partner-abb.png', alt: 'ABB logo', svg: logoSvg('ABB', '#ef4444') },
  },
  {
    name: 'Intel',
    website: 'https://www.intel.com',
    order: 2,
    logo: { filename: 'partner-intel.png', alt: 'Intel logo', svg: logoSvg('Intel', '#2563eb') },
  },
  {
    name: 'Mitsubishi',
    website: 'https://www.mitsubishielectric.com',
    order: 3,
    logo: {
      filename: 'partner-mitsubishi.png',
      alt: 'Mitsubishi logo',
      svg: logoSvg('Mitsubishi', '#dc2626'),
    },
  },
  {
    name: 'PSCL',
    website: 'https://www.pscl.com',
    order: 4,
    logo: { filename: 'partner-pscl.png', alt: 'PSCL logo', svg: logoSvg('PSCL', '#0f766e') },
  },
  {
    name: 'KEIHIN',
    website: 'https://www.hitachiastemo.com',
    order: 5,
    logo: { filename: 'partner-keihin.png', alt: 'KEIHIN logo', svg: logoSvg('KEIHIN', '#ea580c') },
  },
  {
    name: 'Siemens',
    website: 'https://www.siemens.com',
    order: 6,
    logo: {
      filename: 'partner-siemens.png',
      alt: 'Siemens logo',
      svg: logoSvg('Siemens', '#0891b2'),
    },
  },
]

async function createMedia(
  payload: Awaited<ReturnType<typeof getPayload>>,
  filename: string,
  alt: string,
  svg: string,
): Promise<number> {
  const existing = await payload.find({
    collection: 'media',
    where: { filename: { equals: filename } },
    limit: 1,
  })

  if (existing.docs[0]) return existing.docs[0].id

  const buffer = await sharp(Buffer.from(svg)).png().toBuffer()
  const media = await payload.create({
    collection: 'media',
    data: { alt, caption: alt },
    file: {
      data: buffer,
      mimetype: 'image/png',
      name: filename,
      size: buffer.length,
    },
  })

  return media.id
}

async function seedProducts(payload: Awaited<ReturnType<typeof getPayload>>) {
  for (const product of products) {
    const thumbnail = await createMedia(
      payload,
      product.media.filename,
      product.media.alt,
      product.media.svg,
    )
    const existing = await payload.find({
      collection: 'products',
      where: { slug: { equals: product.slug } },
      limit: 1,
    })
    const data = {
      name: product.name,
      slug: product.slug,
      thumbnail,
      brand: product.brand,
      featured: true,
      _status: 'published' as const,
    }

    const productDoc = existing.docs[0]
      ? await payload.update({
          collection: 'products',
          id: existing.docs[0].id,
          data: data as never,
        })
      : await payload.create({
          collection: 'products',
          data: data as never,
        })
    console.log(`[seed] products/${product.slug}`)
  }
}

async function seedPartners(payload: Awaited<ReturnType<typeof getPayload>>) {
  for (const partner of partners) {
    const logo = await createMedia(payload, partner.logo.filename, partner.logo.alt, partner.logo.svg)
    const existing = await payload.find({
      collection: 'partners',
      where: { name: { equals: partner.name } },
      limit: 1,
    })
    const data = {
      name: partner.name,
      website: partner.website,
      order: partner.order,
      logo,
    }

    if (existing.docs[0]) {
      await payload.update({
        collection: 'partners',
        id: existing.docs[0].id,
        data,
      })
    } else {
      await payload.create({
        collection: 'partners',
        data,
      })
    }
    console.log(`[seed] partners/${partner.name}`)
  }
}

export async function script(config: PayloadConfig) {
  const payload = await getPayload({ config })

  await seedProducts(payload)
  await seedPartners(payload)

  await payload.destroy()
  console.log(`[done] Seeded ${products.length} products and ${partners.length} partners`)
}
