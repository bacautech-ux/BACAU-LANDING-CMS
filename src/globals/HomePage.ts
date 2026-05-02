import type { GlobalConfig } from 'payload'
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
  access: {
    read: () => true, // public — frontend cần đọc không cần auth
  },
  admin: {
    group: 'Cấu hình Website',
    description: 'Sắp xếp các section hiển thị trên trang chủ',
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
