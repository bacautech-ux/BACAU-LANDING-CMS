import type { CollectionConfig } from 'payload'

export const Pages: CollectionConfig = {
  slug: 'pages',
  labels: { singular: 'Trang', plural: 'Các Trang' },
  admin: {
    group: 'Cấu hình Website',
    useAsTitle: 'slug',
    description: 'Quản lý trang tĩnh — admin tự tạo URL, chọn template',
  },
  access: {
    read: () => true,
  },
  fields: [
    {
      name: 'slug',
      type: 'text',
      required: true,
      unique: true,
      label: 'Đường dẫn URL',
      admin: {
        description: 'VD: gioi-thieu, du-an-tham-khao, lien-he (không có dấu /)',
      },
    },
    {
      name: 'template',
      type: 'select',
      required: true,
      label: 'Template',
      admin: {
        description: 'Chọn layout hiển thị cho trang này',
      },
      options: [
        { label: 'Giới thiệu công ty', value: 'about' },
        { label: 'Dự án tham khảo', value: 'projects' },
      ],
    },
    {
      name: 'hero',
      type: 'group',
      label: 'Hero Section',
      fields: [
        {
          name: 'heading',
          type: 'text',
          label: 'Tiêu đề lớn',
          localized: true,
        },
        {
          name: 'breadcrumbLabel',
          type: 'text',
          label: 'Nhãn breadcrumb',
          localized: true,
        },
        {
          name: 'backgroundImage',
          type: 'upload',
          relationTo: 'media',
          label: 'Ảnh nền hero',
        },
      ],
    },
  ],
}
