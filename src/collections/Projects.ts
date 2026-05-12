import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'

const revalidateProject = ({ doc }: { doc: { slug?: string } }) => {
  try {
    revalidatePath('/vi/du-an-tham-khao')
    revalidatePath('/en/du-an-tham-khao')
    revalidatePath('/vi')
    revalidatePath('/en')
    if (doc?.slug) {
      revalidatePath(`/vi/chi-tiet-du-an/${doc.slug}`)
      revalidatePath(`/en/chi-tiet-du-an/${doc.slug}`)
    }
  } catch {
    // Outside Next.js context (e.g. seed scripts)
  }
}

export const Projects: CollectionConfig = {
  slug: 'projects',
  admin: { useAsTitle: 'titleLabel' },
  versions: { drafts: true },
  hooks: {
    afterChange: [revalidateProject],
    afterDelete: [revalidateProject],
    beforeValidate: [
      ({ data }) => {
        if (!data) return data

        return {
          ...data,
          titleLabel: data.title?.vi ?? data.titleLabel ?? data.slug,
        }
      },
    ],
  },
  fields: [
    {
      name: 'titleLabel',
      type: 'text',
      admin: {
        hidden: true,
      },
    },
    {
      name: 'title',
      type: 'group',
      fields: [
        { name: 'vi', type: 'text', required: true, label: 'Tiêu đề (VI)' },
        { name: 'en', type: 'text', label: 'Title (EN)' },
      ],
    },
    {
      name: 'slug',
      type: 'text',
      required: true,
      unique: true,
      admin: { position: 'sidebar' },
    },
    {
      name: 'category',
      type: 'select',
      required: true,
      options: [
        { label: 'Giải pháp Điện & Tự động hóa', value: 'electrical-automation' },
        { label: 'Giải pháp Số hóa', value: 'digitalization' },
        { label: 'Giải pháp Đo lường', value: 'measurement' },
        { label: 'Dịch vụ Công nghiệp', value: 'industrial-services' },
      ],
    },
    {
      name: 'industry',
      type: 'select',
      options: [
        { label: 'Dầu khí', value: 'oil-gas' },
        { label: 'Phân bón & Hóa chất', value: 'fertilizer-chemical' },
        { label: 'Điện', value: 'power' },
        { label: 'Xi măng & Khai khoáng', value: 'cement-mining' },
        { label: 'Thép', value: 'steel' },
        { label: 'Thực phẩm & Đồ uống', value: 'food-beverage' },
        { label: 'Hàng tiêu dùng', value: 'consumer-goods' },
        { label: 'Nước & Nước thải', value: 'water' },
        { label: 'Cảng', value: 'port' },
        { label: 'Khác', value: 'other' },
      ],
    },
    {
      name: 'featuredType',
      type: 'select',
      label: 'Nhóm hiển thị ở Dự án tiêu biểu',
      admin: {
        description: 'Dùng cho badge và tab filter ở block Dự án tiêu biểu trên Home.',
      },
      options: [
        { label: 'Quản lý năng lượng', value: 'energy' },
        { label: 'Điện công nghiệp', value: 'electrical' },
        { label: 'Tự động hóa', value: 'automation' },
        { label: 'Hệ thống BMS', value: 'bms' },
      ],
    },
    {
      name: 'featuredBadgeLabel',
      type: 'text',
      localized: true,
      label: 'Label badge trên card tiêu biểu',
    },
    {
      name: 'featuredBadgeColor',
      type: 'text',
      label: 'Màu badge trên card tiêu biểu',
      defaultValue: '#2b358c',
      admin: {
        description: 'Nhập mã màu HEX. VD: #B92C32, #2b358c, #6366F1.',
      },
    },
    { name: 'thumbnail', type: 'upload', relationTo: 'media', required: true },
    {
      name: 'customerName',
      type: 'group',
      label: 'Tên khách hàng',
      fields: [
        { name: 'vi', type: 'text', label: 'VI' },
        { name: 'en', type: 'text', label: 'EN' },
      ],
    },
    { name: 'customerAddress', type: 'text' },
    { name: 'location', type: 'text', label: 'Địa điểm thực hiện' },
    { name: 'year', type: 'number', label: 'Năm thực hiện' },
    {
      name: 'detailHeroImage',
      type: 'upload',
      relationTo: 'media',
      label: 'Ảnh hero trang chi tiết',
    },
    {
      name: 'introImage',
      type: 'upload',
      relationTo: 'media',
      label: 'Ảnh phần giới thiệu',
    },
    {
      name: 'summary',
      type: 'group',
      label: 'Mô tả ngắn',
      fields: [
        { name: 'vi', type: 'textarea', label: 'VI' },
        { name: 'en', type: 'textarea', label: 'EN' },
      ],
    },
    {
      name: 'intro',
      type: 'group',
      label: 'Giới thiệu dự án',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'solutions',
      type: 'group',
      label: 'Công việc & Giải pháp',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'customerReasons',
      type: 'array',
      label: 'Lý giải của khách hàng',
      fields: [{ name: 'text', type: 'textarea', localized: true, required: true }],
    },
    {
      name: 'resultItems',
      type: 'array',
      label: 'Kết quả đạt được dạng bullet',
      fields: [{ name: 'text', type: 'textarea', localized: true, required: true }],
    },
    {
      name: 'results',
      type: 'group',
      label: 'Kết quả đạt được',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'images',
      type: 'array',
      label: 'Hình ảnh dự án',
      fields: [{ name: 'image', type: 'upload', relationTo: 'media' }],
    },
    { name: 'featured', type: 'checkbox', label: 'Dự án tiêu biểu', defaultValue: false },
  ],
}
