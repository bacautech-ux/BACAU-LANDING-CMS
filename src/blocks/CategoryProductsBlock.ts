import type { Block } from 'payload'

export const CategoryProductsBlock: Block = {
  slug: 'categoryProducts',
  labels: { singular: 'Sản phẩm theo Danh mục', plural: 'Sản phẩm theo Danh mục' },
  fields: [
    {
      name: 'category',
      type: 'relationship',
      relationTo: 'product-categories',
      required: true,
      label: 'Danh mục sản phẩm',
    },
  ],
}
