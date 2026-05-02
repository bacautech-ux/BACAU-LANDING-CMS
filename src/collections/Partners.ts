import type { CollectionConfig } from 'payload'

export const Partners: CollectionConfig = {
  slug: 'partners',
  admin: { useAsTitle: 'name' },
  fields: [
    { name: 'name', type: 'text', required: true },
    { name: 'logo', type: 'upload', relationTo: 'media', required: true },
    { name: 'website', type: 'text' },
    { name: 'order', type: 'number', defaultValue: 0, admin: { position: 'sidebar' } },
  ],
}
