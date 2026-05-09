import type { GlobalConfig } from 'payload'
import { revalidatePath } from 'next/cache'
import {
  HeroBlock,
  ServicesBlock,
  NewsBlock,
  FeaturedProjectsBlock,
  PartnersBlock,
  ProductsBlock,
  CTABannerBlock,
  BrandLogosBlock,
} from '../blocks'

export const HomePage: GlobalConfig = {
  slug: 'home-page',
  label: 'Trang Chủ',
  hooks: {
    afterChange: [() => { revalidatePath('/vi'); revalidatePath('/en') }],
  },
  access: {
    read: () => true,
  },
  admin: {
    group: 'Cấu hình Website',
    hidden: true,
    description: 'Deprecated: chỉ giữ tạm để migrate dữ liệu sang Pages > home',
  },
  fields: [
    {
      name: 'layout',
      type: 'blocks',
      label: 'Bố cục trang chủ',
      labels: {
        singular: 'Section',
        plural: 'Sections',
      },
      blocks: [
        HeroBlock,
        ServicesBlock,
        NewsBlock,
        FeaturedProjectsBlock,
        PartnersBlock,
        ProductsBlock,
        CTABannerBlock,
        BrandLogosBlock,
      ],
    },
  ],
}
