import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'

const revalidateProducts = () => {
  revalidatePath('/vi/san-pham')
  revalidatePath('/en/san-pham')
  revalidatePath('/vi/industry-products')
  revalidatePath('/en/industry-products')
  revalidatePath('/vi')
  revalidatePath('/en')
}

export const Products: CollectionConfig = {
  slug: 'products',
  admin: { useAsTitle: 'nameLabel' },
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  versions: { drafts: true },
  hooks: {
    afterChange: [revalidateProducts],
    afterDelete: [revalidateProducts],
    beforeValidate: [
      ({ data }) => {
        if (!data) return data

        return {
          ...data,
          nameLabel: data.name?.vi ?? data.nameLabel ?? data.slug,
        }
      },
    ],
  },
  fields: [
    {
      name: 'nameLabel',
      type: 'text',
      admin: { hidden: true },
    },
    {
      name: 'name',
      type: 'group',
      fields: [
        { name: 'vi', type: 'text', required: true, label: 'Tên sản phẩm (VI)' },
        { name: 'en', type: 'text', label: 'Product name (EN)' },
      ],
    },
    { name: 'slug', type: 'text', required: true, unique: true, admin: { position: 'sidebar' } },
    {
      name: 'productCategories',
      type: 'relationship',
      relationTo: 'product-categories',
      hasMany: true,
      label: 'Danh mục sản phẩm',
    },
    { name: 'thumbnail', type: 'upload', relationTo: 'media', required: true },
    {
      name: 'gallery',
      type: 'array',
      label: 'Hình ảnh sản phẩm',
      maxRows: 10,
      fields: [
        { name: 'image', type: 'upload', relationTo: 'media', required: true },
        { name: 'imageURL', type: 'text', label: 'Image URL (fallback)' },
      ],
    },
    {
      name: 'shortDescription',
      type: 'group',
      label: 'Mô tả ngắn',
      fields: [
        { name: 'vi', type: 'textarea', label: 'VI' },
        { name: 'en', type: 'textarea', label: 'EN' },
      ],
    },
    {
      name: 'description',
      type: 'group',
      label: 'Mô tả chi tiết (Rich Text)',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    { name: 'brand', type: 'text', label: 'Thương hiệu' },
    { name: 'featured', type: 'checkbox', defaultValue: false },
    {
      name: 'seo',
      type: 'group',
      label: 'SEO',
      fields: [
        { name: 'title', type: 'text', label: 'SEO title' },
        { name: 'description', type: 'textarea', label: 'SEO description' },
        { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh chia sẻ (OG Image)' },
      ],
    },
  ],
}
