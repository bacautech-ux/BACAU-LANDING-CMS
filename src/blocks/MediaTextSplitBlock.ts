import type { Block, Field } from 'payload'
import {
  localizedTitleField,
  sharedImagePositionField,
  sharedImagesField,
  sharedParagraphsField,
} from './shared/fields'

export const MediaTextSplitBlock: Block = {
  slug: 'mediaTextSplit',
  labels: { singular: 'Media + Text Split', plural: 'Media + Text Split' },
  imageURL: 'https://images.unsplash.com/photo-1672220262141-bf7119d3081d?w=400&h=200&fit=crop',
  imageAltText: 'Section split — 1 media lớn + nhiều đoạn text',
  fields: [
    { name: 'id', type: 'text', label: 'Anchor id' } as Field,
    localizedTitleField(),
    sharedParagraphsField(),
    sharedImagePositionField(),
    {
      ...(sharedImagesField() as Field),
      maxRows: 1,
      label: 'Media chính',
    } as Field,
  ],
}
