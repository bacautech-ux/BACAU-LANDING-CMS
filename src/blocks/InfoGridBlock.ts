import type { Block, Field } from 'payload'
import {
  localizedTitleField,
  sharedBodyField,
  sharedColumnsField,
  sharedItemsField,
  sharedParagraphsField,
} from './shared/fields'

export const InfoGridBlock: Block = {
  slug: 'infoGrid',
  labels: { singular: 'Info Card Grid', plural: 'Info Card Grids' },
  imageURL: 'https://images.unsplash.com/photo-1714058322554-c886245e3aa6?w=400&h=200&fit=crop',
  imageAltText: 'Section info grid — cards có ảnh / text / link',
  fields: [
    localizedTitleField(),
    { name: 'id', type: 'text', label: 'Anchor id' } as Field,
    sharedBodyField(),
    sharedParagraphsField(),
    sharedColumnsField(),
    sharedItemsField(),
  ],
}
