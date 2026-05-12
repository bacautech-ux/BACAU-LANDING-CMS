import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'

const revalidateProductCategories = () => {
  revalidatePath('/vi/industry-products')
  revalidatePath('/en/industry-products')
  revalidatePath('/vi')
  revalidatePath('/en')
}

export const ProductCategories: CollectionConfig = {
  slug: 'product-categories',
  admin: { useAsTitle: 'nameLabel' },
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  hooks: {
    afterChange: [revalidateProductCategories],
    afterDelete: [revalidateProductCategories],
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
        { name: 'vi', type: 'text', required: true, label: 'Tên danh mục (VI)' },
        { name: 'en', type: 'text', label: 'Category name (EN)' },
      ],
    },
    { name: 'slug', type: 'text', required: true, unique: true, admin: { position: 'sidebar' } },
    {
      name: 'description',
      type: 'group',
      fields: [
        { name: 'vi', type: 'textarea', label: 'Mô tả (VI)' },
        { name: 'en', type: 'textarea', label: 'Description (EN)' },
      ],
    },
    { name: 'image', type: 'upload', relationTo: 'media' },
    {
      name: 'imageURL',
      type: 'text',
      label: 'Image URL (fallback)',
      admin: { description: 'Dùng khi chưa upload ảnh. Dán URL ảnh từ Cloudinary hoặc bên ngoài.' },
    },
    { name: 'order', type: 'number', defaultValue: 0, admin: { position: 'sidebar' } },
    {
      name: 'visible',
      type: 'checkbox',
      defaultValue: true,
      label: 'Hiển thị trên website',
      admin: {
        position: 'sidebar',
        description: 'Bỏ chọn để ẩn danh mục khỏi trang sản phẩm.',
      },
    },
  ],
}
