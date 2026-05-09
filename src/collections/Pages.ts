import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'
import {
  PageLayoutBlocks,
} from '../blocks'

export const Pages: CollectionConfig = {
  slug: 'pages',
  labels: { singular: 'Trang', plural: 'Các Trang' },
  hooks: {
    beforeValidate: [
      ({ data, originalDoc }) => {
        if (originalDoc?.slug === 'home') {
          return { ...data, slug: 'home' }
        }

        return data
      },
    ],
    afterChange: [
      ({ doc }) => {
        const slug = doc?.slug
        const base = process.env.NEXT_PUBLIC_SERVER_URL ?? 'https://bacau-landing-cms.vercel.app'
        if (slug === 'home') {
          revalidatePath('/vi')
          revalidatePath('/en')
          revalidatePath('/')
          fetch(`${base}/vi`, { cache: 'no-store' }).catch(() => null)
          fetch(`${base}/en`, { cache: 'no-store' }).catch(() => null)
        } else if (slug) {
          revalidatePath(`/vi/${slug}`)
          revalidatePath(`/en/${slug}`)
          fetch(`${base}/vi/${slug}`, { cache: 'no-store' }).catch(() => null)
          fetch(`${base}/en/${slug}`, { cache: 'no-store' }).catch(() => null)
        }
      },
    ],
  },
  admin: {
    group: 'Cấu hình Website',
    useAsTitle: 'title',
    description: 'Quản lý trang website — admin tự tạo URL, chọn template và sắp xếp section',
    components: {
      views: {
        blockLibraryRedirect: {
          Component: '/src/components/admin/BlockLibraryRedirect.tsx#BlockLibraryRedirect',
          path: '/block-library',
        },
      },
    },
  },
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  fields: [
    {
      name: 'title',
      type: 'text',
      localized: true,
      label: 'Tên trang',
    },
    {
      name: 'slug',
      type: 'text',
      required: true,
      unique: true,
      label: 'Slug / mã trang',
      admin: {
        description: 'Dùng để định danh page trong CMS. Riêng Trang chủ dùng "home"; URL public là /vi hoặc /en.',
        components: {
          Cell: '/src/components/admin/PagePreviewCell#PagePreviewCell',
        },
      },
    },
    {
      name: 'template',
      type: 'select',
      defaultValue: 'builder',
      label: 'Template',
      admin: {
        hidden: true,
        description: 'Legacy field, không dùng trong admin. Page hiện render bằng layout blocks.',
      },
      options: [
        { label: 'Trang chủ', value: 'home' },
        { label: 'Page builder', value: 'builder' },
        { label: 'Giới thiệu công ty', value: 'about' },
        { label: 'Dự án tham khảo', value: 'projects' },
      ],
    },
    {
      name: 'layout',
      type: 'blocks',
      label: 'Bố cục nội dung',
      labels: {
        singular: 'Section',
        plural: 'Sections',
      },
      admin: {
        description: 'Dùng cho Trang chủ và các trang page-builder. Giữ cùng cấu trúc block với Home Page cũ.',
      },
      blocks: PageLayoutBlocks,
    },
    {
      name: 'seo',
      type: 'group',
      label: 'SEO',
      fields: [
        {
          name: 'title',
          type: 'text',
          localized: true,
          label: 'SEO title',
        },
        {
          name: 'description',
          type: 'textarea',
          localized: true,
          label: 'SEO description',
        },
        {
          name: 'image',
          type: 'upload',
          relationTo: 'media',
          label: 'Ảnh chia sẻ',
        },
      ],
    },
  ],
}
