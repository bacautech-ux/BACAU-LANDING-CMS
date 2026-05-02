import { defineRouting } from 'next-intl/routing'

export const routing = defineRouting({
  locales: ['vi', 'en'],
  defaultLocale: 'vi',
  pathnames: {
    '/': '/',
    '/gioi-thieu': { vi: '/gioi-thieu', en: '/about' },
    '/du-an-tham-khao': { vi: '/du-an-tham-khao', en: '/projects' },
    '/san-pham': { vi: '/san-pham', en: '/products' },
    '/giai-phap': { vi: '/giai-phap', en: '/solutions' },
    '/tin-tuc': { vi: '/tin-tuc', en: '/news' },
    '/tuyen-dung': { vi: '/tuyen-dung', en: '/careers' },
    '/lien-he': { vi: '/lien-he', en: '/contact' },
  },
})
