import type { Block } from 'payload'

export const ProductCategoryListingBlock: Block = {
  slug: 'productCategoryListing',
  labels: { singular: 'Danh mục Sản phẩm', plural: 'Danh mục Sản phẩm' },
  fields: [
    {
      name: 'sourceMode',
      type: 'select',
      label: 'Nguồn danh mục',
      defaultValue: 'auto',
      options: [
        { label: 'Tự động (visible, sắp theo order)', value: 'auto' },
        { label: 'Chọn thủ công', value: 'manual' },
      ],
    },
    {
      name: 'categories',
      type: 'relationship',
      relationTo: 'product-categories',
      hasMany: true,
      label: 'Chọn danh mục',
      admin: {
        condition: (_, siblingData) => siblingData?.sourceMode === 'manual',
      },
    },
  ],
}
