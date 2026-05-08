import type { Block, Field } from 'payload'
import {
  localizedTitleField,
  sharedBodyField,
  sharedColumnsField,
  sharedImagesField,
  sharedParagraphsField,
} from './shared/fields'

export const ImageGalleryBlock: Block = {
  slug: 'imageGallery',
  labels: { singular: 'Image Gallery', plural: 'Image Galleries' },
  imageURL: 'https://images.unsplash.com/photo-1609556273935-f295c9dd95c1?w=400&h=200&fit=crop',
  imageAltText: 'Section gallery — title + text + nhiều ảnh',
  fields: [
    localizedTitleField(),
    { name: 'id', type: 'text', label: 'Anchor id' } as Field,
    sharedBodyField(),
    sharedParagraphsField(),
    sharedColumnsField(),
    sharedImagesField(),
  ],
}
