import type { Block, Field } from 'payload'
import {
  localizedTitleField,
  sharedBodyField,
  sharedImagePositionField,
  sharedImagesField,
  sharedParagraphsField,
} from './shared/fields'

export const ContentIntroBlock: Block = {
  slug: 'contentIntro',
  labels: { singular: 'Content Intro Split', plural: 'Content Intro Split' },
  imageURL: 'https://images.unsplash.com/photo-1758626038030-96f813504d15?w=400&h=200&fit=crop',
  imageAltText: 'Section intro — 1 ảnh lớn + đoạn văn bên cạnh',
  fields: [
    { name: 'id', type: 'text', label: 'Anchor id' },
    localizedTitleField(),
    sharedBodyField(),
    sharedParagraphsField(),
    sharedImagePositionField(),
    {
      ...(sharedImagesField() as Field),
      maxRows: 1,
      label: 'Ảnh chính',
    } as Field,
  ],
}
