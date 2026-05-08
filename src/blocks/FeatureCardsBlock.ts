import type { Block } from 'payload'
import {
  localizedTitleField,
  sharedBodyField,
  sharedColumnsField,
  sharedItemsField,
  sharedParagraphsField,
} from './shared/fields'

export const FeatureCardsBlock: Block = {
  slug: 'featureCards',
  labels: { singular: 'Feature Cards', plural: 'Feature Cards' },
  imageURL: 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?w=400&h=200&fit=crop',
  imageAltText: 'Section card grid — title + mô tả + các card',
  fields: [
    localizedTitleField(),
    sharedBodyField(),
    sharedParagraphsField(),
    sharedColumnsField(),
    sharedItemsField(),
  ],
}
