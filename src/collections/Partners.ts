import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'

const revalidatePartners = () => {
  revalidatePath('/vi')
  revalidatePath('/en')
  revalidatePath('/', 'layout')
}

export const Partners: CollectionConfig = {
  slug: 'partners',
  admin: { useAsTitle: 'name' },
  hooks: {
    afterChange: [revalidatePartners],
    afterDelete: [revalidatePartners],
  },
  fields: [
    { name: 'name', type: 'text', required: true },
    { name: 'logo', type: 'upload', relationTo: 'media' },
    { name: 'website', type: 'text' },
    { name: 'order', type: 'number', defaultValue: 0, admin: { position: 'sidebar' } },
  ],
}
