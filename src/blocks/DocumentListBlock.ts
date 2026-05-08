import type { Block, Field } from 'payload'
import {
  localizedTitleField,
  sharedBodyField,
  sharedItemsField,
  sharedParagraphsField,
} from './shared/fields'

export const DocumentListBlock: Block = {
  slug: 'documentList',
  labels: { singular: 'Document List', plural: 'Document Lists' },
  imageURL: 'https://images.unsplash.com/photo-1517842645767-c639042777db?w=400&h=200&fit=crop',
  imageAltText: 'Section tài liệu — title + text + list tài liệu',
  fields: [
    localizedTitleField(),
    { name: 'id', type: 'text', label: 'Anchor id' } as Field,
    sharedBodyField(),
    sharedParagraphsField(),
    sharedItemsField(),
  ],
}
