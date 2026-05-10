import type { Block } from 'payload'

export const ProjectsListingBlock: Block = {
  slug: 'projectsListing',
  labels: { singular: 'Danh sách Dự án', plural: 'Danh sách Dự án' },
  imageURL: 'https://images.unsplash.com/photo-1718091289341-7ef5d938d0fc?w=400&h=200&fit=crop',
  imageAltText: 'Danh sách Dự án — filter tabs + grid project cards',
  fields: [
    {
      name: 'sourceMode',
      type: 'select',
      label: 'Nguồn dự án',
      defaultValue: 'latest',
      options: [
        { label: 'Tự động lấy project published', value: 'latest' },
        { label: 'Chọn project thủ công', value: 'manual' },
      ],
    },
    { name: 'limit', type: 'number', label: 'Số project tối đa', defaultValue: 24, min: 1, max: 60 },
    {
      name: 'projects',
      type: 'relationship',
      relationTo: 'projects',
      hasMany: true,
      label: 'Chọn project thủ công',
    },
    {
      name: 'parentCategories',
      type: 'array',
      label: 'Tabs danh mục chính',
      fields: [
        { name: 'label', type: 'text', localized: true, required: true },
        {
          name: 'value',
          type: 'select',
          required: true,
          options: [
            { label: 'Giải pháp Điện & Tự động hóa', value: 'electrical-automation' },
            { label: 'Giải pháp Số hóa', value: 'digitalization' },
            { label: 'Dịch vụ Công nghiệp', value: 'industrial-services' },
            { label: 'Giải pháp Đo lường', value: 'measurement' },
          ],
        },
        {
          name: 'industryFilters',
          type: 'array',
          label: 'Danh mục con (filter ngành hàng)',
          dbName: 'subs',
          fields: [
            { name: 'label', type: 'text', localized: true, required: true },
            { name: 'value', type: 'text', required: true },
          ],
        },
      ],
    },
  ],
}
