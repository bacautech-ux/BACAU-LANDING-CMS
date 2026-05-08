import { getPayload } from 'payload'

type PayloadConfig = Parameters<typeof getPayload>[0]['config']

const locales = [
  { code: 'en', title: 'Home' },
  { code: 'vi', title: 'Trang chủ' },
] as const

const defaultHeroStatsByLocale = {
  vi: [
    {
      value: 15,
      suffix: '+',
      labelTop: 'NĂM',
      labelBottom: 'Kinh Nghiệm',
      numberColor: '#B92C32',
    },
    {
      value: 500,
      suffix: '+',
      labelTop: 'DỰ ÁN',
      labelBottom: 'Hoàn Thành',
      numberColor: '#FFFFFF',
    },
    {
      value: 200,
      suffix: '+',
      labelTop: 'KHÁCH HÀNG',
      labelBottom: 'Tin Tưởng',
      numberColor: '#FFFFFF',
    },
    {
      value: 50,
      suffix: '+',
      labelTop: 'ĐỐI TÁC',
      labelBottom: 'Chiến Lược',
      numberColor: '#FFFFFF',
    },
  ],
  en: [
    {
      value: 15,
      suffix: '+',
      labelTop: 'YEARS',
      labelBottom: 'Experience',
      numberColor: '#B92C32',
    },
    {
      value: 500,
      suffix: '+',
      labelTop: 'PROJECTS',
      labelBottom: 'Completed',
      numberColor: '#FFFFFF',
    },
    {
      value: 200,
      suffix: '+',
      labelTop: 'CUSTOMERS',
      labelBottom: 'Trust Us',
      numberColor: '#FFFFFF',
    },
    {
      value: 50,
      suffix: '+',
      labelTop: 'PARTNERS',
      labelBottom: 'Strategic',
      numberColor: '#FFFFFF',
    },
  ],
} as const

const defaultHeroBadgeByLocale = {
  vi: 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU',
  en: 'BAC AU ENGINEERING JOINT STOCK COMPANY',
} as const

const defaultServiceCardsByLocale = {
  vi: [
    {
      title: 'LĨNH VỰC THI CÔNG',
      description: 'Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp',
      imageURL: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800',
      href: '/dich-vu/thi-cong',
      buttonLabel: 'Xem thêm',
    },
    {
      title: 'DỊCH VỤ CÔNG NGHIỆP',
      description: 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp',
      imageURL: 'https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800',
      href: '/dich-vu/cong-nghiep',
      buttonLabel: 'Xem thêm',
    },
    {
      title: 'DỊCH VỤ DÂN DỤNG',
      description: 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh',
      imageURL: 'https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800',
      href: '/dich-vu/dan-dung',
      buttonLabel: 'Xem thêm',
    },
  ],
  en: [
    {
      title: 'CONSTRUCTION SERVICES',
      description: 'Construction of electrical, automation, HVAC and industrial systems',
      imageURL: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800',
      href: '/services/construction',
      buttonLabel: 'View more',
    },
    {
      title: 'INDUSTRIAL SERVICES',
      description: 'Maintenance, repair and upgrade solutions for industrial automation systems',
      imageURL: 'https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800',
      href: '/services/industrial',
      buttonLabel: 'View more',
    },
    {
      title: 'RESIDENTIAL SERVICES',
      description: 'Design and installation of residential electrical, HVAC and security systems',
      imageURL: 'https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800',
      href: '/services/residential',
      buttonLabel: 'View more',
    },
  ],
} as const

const defaultFeaturedProjectTabsByLocale = {
  vi: [
    { label: 'Quản lý năng lượng', value: 'energy' },
    { label: 'Điện công nghiệp', value: 'electrical' },
    { label: 'Tự động hóa', value: 'automation' },
    { label: 'Hệ thống BMS', value: 'bms' },
  ],
  en: [
    { label: 'Energy management', value: 'energy' },
    { label: 'Industrial electrical', value: 'electrical' },
    { label: 'Automation', value: 'automation' },
    { label: 'BMS systems', value: 'bms' },
  ],
} as const

const defaultPartnerImages = [
  {
    alt: 'Đối tác công nghiệp',
    imageURL: 'https://images.unsplash.com/photo-1758599543129-5269a8f29e68?w=600',
  },
  {
    alt: 'Dây chuyền đối tác',
    imageURL: 'https://images.unsplash.com/photo-1762028892701-692dc360db08?w=600',
  },
  {
    alt: 'Thiết bị đối tác',
    imageURL: 'https://images.unsplash.com/photo-1632910121591-29e2484c0259?w=600',
  },
  {
    alt: 'Nhà máy đối tác',
    imageURL: 'https://images.unsplash.com/photo-1752412145493-e11fec9ac951?w=600',
  },
] as const

const defaultFallbackBrands = [
  { name: 'ABB' },
  { name: 'Intel' },
  { name: 'Mitsubishi' },
  { name: 'PSCL' },
  { name: 'KEIHIN' },
  { name: 'Siemens' },
] as const

function getExistingBlockArrayField(
  layout: unknown,
  blockType: string,
  fieldName: string,
  requireTitle = false,
): unknown[] | undefined {
  if (!Array.isArray(layout)) return undefined

  const targetBlock = layout.find((block) => {
    return block && typeof block === 'object' && (block as Record<string, unknown>).blockType === blockType
  })

  if (!targetBlock || typeof targetBlock !== 'object') return undefined

  const value = (targetBlock as Record<string, unknown>)[fieldName]
  if (!Array.isArray(value)) return undefined

  return hasCompleteLocalizedArrayItems(value, requireTitle) ? value : undefined
}

function getExistingHeroStats(layout: unknown) {
  return getExistingBlockArrayField(layout, 'hero', 'stats')
}

function hasCompleteLocalizedArrayItems(value: unknown, requireTitle = false) {
  return (
    Array.isArray(value) &&
    value.length > 0 &&
    value.every((item) => {
      if (!item || typeof item !== 'object') return false

      const title = (item as Record<string, unknown>).title
      if (title === undefined) return !requireTitle

      return typeof title === 'string' && title.trim().length > 0
    })
  )
}

function mergeServiceCardsWithDefaults(
  cards: unknown[],
  locale: keyof typeof defaultServiceCardsByLocale,
) {
  return cards.map((card, index) => {
    if (!card || typeof card !== 'object') return card

    const fallback = defaultServiceCardsByLocale[locale][index]
    if (!fallback) return card

    const currentCard = card as Record<string, unknown>

    return {
      ...currentCard,
      imageURL: currentCard.imageURL ?? fallback.imageURL,
      href: currentCard.href ?? fallback.href,
      buttonLabel: currentCard.buttonLabel ?? fallback.buttonLabel,
    }
  })
}

function withDefaultHomeBlockData(
  layout: unknown,
  locale: keyof typeof defaultHeroStatsByLocale & keyof typeof defaultServiceCardsByLocale,
  existingStats?: unknown[],
  existingServiceCards?: unknown[],
) {
  if (!Array.isArray(layout)) return []

  return layout.map((block) => {
    if (!block || typeof block !== 'object') return block

    const currentBlock = block as Record<string, unknown>

    if (currentBlock.blockType === 'hero') {
      return {
        ...currentBlock,
        badgeText:
          typeof currentBlock.badgeText === 'string' && currentBlock.badgeText.trim().length > 0
            ? currentBlock.badgeText
            : defaultHeroBadgeByLocale[locale],
        stats:
          Array.isArray(currentBlock.stats) && currentBlock.stats.length > 0
            ? currentBlock.stats
            : (existingStats ?? defaultHeroStatsByLocale[locale]),
      }
    }

    if (currentBlock.blockType === 'services') {
      if (hasCompleteLocalizedArrayItems(currentBlock.cards, true)) {
        return {
          ...currentBlock,
          cards: mergeServiceCardsWithDefaults(currentBlock.cards as unknown[], locale),
        }
      }

      return {
        ...currentBlock,
        title: currentBlock.title ?? (locale === 'vi' ? 'LĨNH VỰC HOẠT ĐỘNG' : 'SERVICE AREAS'),
        cards: existingServiceCards
          ? mergeServiceCardsWithDefaults(existingServiceCards, locale)
          : defaultServiceCardsByLocale[locale],
      }
    }

    if (currentBlock.blockType === 'featuredProjects') {
      return {
        ...currentBlock,
        title: currentBlock.title ?? (locale === 'vi' ? 'DỰ ÁN TIÊU BIỂU' : 'FEATURED PROJECTS'),
        backgroundColor: currentBlock.backgroundColor ?? '#0B1221',
        viewAll: currentBlock.viewAll ?? {
          label: locale === 'vi' ? 'Xem tất cả →' : 'View all →',
          href: locale === 'vi' ? '/du-an-tham-khao' : '/projects',
        },
        sourceMode: currentBlock.sourceMode ?? 'latest',
        count: currentBlock.count ?? 4,
        tabs: hasCompleteLocalizedArrayItems(currentBlock.tabs, true)
          ? currentBlock.tabs
          : defaultFeaturedProjectTabsByLocale[locale],
      }
    }

    if (currentBlock.blockType === 'partners') {
      return {
        ...currentBlock,
        title: currentBlock.title ?? (locale === 'vi' ? 'ĐỐI TÁC' : 'PARTNERS'),
        backgroundColor: currentBlock.backgroundColor ?? '#0B1221',
        images: hasCompleteLocalizedArrayItems(currentBlock.images, false)
          ? currentBlock.images
          : defaultPartnerImages,
      }
    }

    if (currentBlock.blockType === 'products') {
      return {
        ...currentBlock,
        title: currentBlock.title ?? (locale === 'vi' ? 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP' : 'INDUSTRIAL EQUIPMENT & PRODUCTS'),
        sourceMode: currentBlock.sourceMode ?? 'latest',
        count: currentBlock.count ?? 5,
      }
    }

    if (currentBlock.blockType === 'ctaBanner') {
      return {
        ...currentBlock,
        backgroundColor: currentBlock.backgroundColor ?? '#0F172A',
        gradientFrom: currentBlock.gradientFrom ?? '#B92C32',
        gradientMiddle: currentBlock.gradientMiddle ?? '#2b358c',
        gradientTo: currentBlock.gradientTo ?? '#0F172A',
        accentColor: currentBlock.accentColor ?? '#B92C32',
      }
    }

    if (currentBlock.blockType === 'brandLogos') {
      return {
        ...currentBlock,
        title: currentBlock.title ?? (locale === 'vi' ? 'ĐỐI TÁC CHIẾN LƯỢC' : 'STRATEGIC PARTNERS'),
        sourceMode: currentBlock.sourceMode ?? 'latest',
        count: currentBlock.count ?? 6,
        fallbackBrands: hasCompleteLocalizedArrayItems(currentBlock.fallbackBrands, false)
          ? currentBlock.fallbackBrands
          : defaultFallbackBrands,
      }
    }

    return block
  })
}

async function getExistingHomePageId(payload: Awaited<ReturnType<typeof getPayload>>) {
  const existing = await payload.find({
    collection: 'pages',
    where: {
      slug: { equals: 'home' },
    },
    limit: 1,
  })

  return existing.docs[0]?.id
}

export async function script(config: PayloadConfig) {
  const payload = await getPayload({ config })
  let pageId = await getExistingHomePageId(payload)

  for (const locale of locales) {
    const globalHome = await payload.findGlobal({
      slug: 'home-page',
      depth: 2,
      locale: locale.code,
      fallbackLocale: 'vi',
    })

    const existingPage = pageId
      ? await payload.findByID({
          collection: 'pages',
          id: pageId,
          depth: 2,
          locale: locale.code,
          fallbackLocale: 'vi',
        })
      : undefined
    const existingStats = getExistingHeroStats(existingPage?.layout)
    const existingServiceCards = getExistingBlockArrayField(
      existingPage?.layout,
      'services',
      'cards',
      true,
    )
    const layout = withDefaultHomeBlockData(
      globalHome?.layout,
      locale.code,
      existingStats,
      existingServiceCards,
    )

    if (!pageId) {
      const created = await payload.create({
        collection: 'pages',
        locale: locale.code,
        data: {
          title: locale.title,
          slug: 'home',
          layout,
        },
      })

      pageId = created.id
      console.log(`[created] pages/home (${locale.code})`)
      continue
    }

    await payload.update({
      collection: 'pages',
      id: pageId,
      locale: locale.code,
      data: {
        title: locale.title,
        slug: 'home',
        layout,
      },
    })

    console.log(`[updated] pages/home (${locale.code})`)
  }

  console.log('[done] Migrated Global home-page layout to Pages collection slug "home"')
  await payload.destroy()
}
