import type { Field } from 'payload'

export const localizedTitleField = (): Field => ({
  name: 'title',
  type: 'text',
  localized: true,
  required: true,
  label: 'Tiêu đề section',
})

export const sharedParagraphsField = (): Field => ({
  name: 'paragraphs',
  type: 'array',
  label: 'Các đoạn text',
  fields: [{ name: 'text', type: 'textarea', localized: true, required: true, label: 'Đoạn văn' }],
})

export const sharedBodyField = (): Field => ({
  name: 'body',
  type: 'textarea',
  localized: true,
  label: 'Mô tả ngắn',
})

export const sharedColumnsField = (): Field => ({
  name: 'columns',
  type: 'select',
  label: 'Số cột desktop',
  defaultValue: '3',
  options: [
    { label: '2 cột', value: '2' },
    { label: '3 cột', value: '3' },
    { label: '4 cột', value: '4' },
  ],
})

export const sharedImagePositionField = (): Field => ({
  name: 'imagePosition',
  type: 'radio',
  label: 'Vị trí ảnh',
  defaultValue: 'left',
  options: [
    { label: 'Ảnh trái', value: 'left' },
    { label: 'Ảnh phải', value: 'right' },
  ],
})

export const sharedImagesField = (): Field => ({
  name: 'images',
  type: 'array',
  label: 'Danh sách ảnh',
  maxRows: 12,
  fields: [
    { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh upload' },
    { name: 'imageURL', type: 'text', label: 'URL ảnh fallback' },
    { name: 'alt', type: 'text', localized: true, label: 'Alt text' },
    { name: 'caption', type: 'text', localized: true, label: 'Caption / label' },
  ],
})

export const sharedItemsField = (): Field => ({
  name: 'items',
  type: 'array',
  label: 'Danh sách item',
  fields: [
    { name: 'title', type: 'text', localized: true, required: true, label: 'Tiêu đề item' },
    { name: 'subtitle', type: 'text', localized: true, label: 'Subtitle / label phụ' },
    { name: 'description', type: 'textarea', localized: true, label: 'Mô tả item' },
    { name: 'meta', type: 'text', localized: true, label: 'Meta text' },
    { name: 'icon', type: 'text', label: 'Icon text' },
    { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh upload' },
    { name: 'imageURL', type: 'text', label: 'URL ảnh fallback' },
    { name: 'alt', type: 'text', localized: true, label: 'Alt text' },
    { name: 'href', type: 'text', label: 'Link' },
    { name: 'buttonLabel', type: 'text', localized: true, label: 'Nhãn nút' },
  ],
})
