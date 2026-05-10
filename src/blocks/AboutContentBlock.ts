import type { Block } from 'payload'

export const AboutContentBlock: Block = {
  slug: 'aboutContent',
  labels: { singular: 'Nội dung Giới thiệu', plural: 'Nội dung Giới thiệu' },
  imageURL: 'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=400&h=200&fit=crop',
  imageAltText: 'Nội dung Giới thiệu — sidebar trái + nhiều section nội dung',
  fields: [
    {
      name: 'sidebarGroups',
      type: 'array',
      label: 'Sidebar menu',
      fields: [
        { name: 'title', type: 'text', localized: true, required: true, label: 'Tiêu đề nhóm' },
        { name: 'titleHref', type: 'text', localized: true, label: 'Link tiêu đề nhóm' },
        {
          name: 'items',
          type: 'array',
          label: 'Link con',
          fields: [
            { name: 'label', type: 'text', localized: true, required: true },
            { name: 'href', type: 'text', localized: true, required: true },
          ],
        },
      ],
    },
    {
      name: 'sections',
      type: 'array',
      label: 'Các section nội dung',
      fields: [
        { name: 'id', type: 'text', required: true, label: 'Anchor id' },
        {
          name: 'variant',
          type: 'select',
          label: 'Kiểu layout section',
          defaultValue: 'gallery',
          options: [
            { label: 'Intro: 1 ảnh + text bên phải', value: 'intro' },
            { label: 'Card grid', value: 'cards' },
            { label: 'Gallery ảnh', value: 'gallery' },
            { label: 'Item grid / card list', value: 'itemGrid' },
            { label: 'Split media + text', value: 'splitMedia' },
            { label: 'Danh sách tài liệu', value: 'documentList' },
            { label: 'Tab chứng nhận & tài liệu', value: 'tabbedDocuments' },
          ],
          admin: {
            description: 'Chọn layout gần với design của section này để frontend render đúng.',
          },
        },
        { name: 'title', type: 'text', localized: true, required: true, label: 'Tiêu đề section' },
        {
          name: 'body',
          type: 'textarea',
          localized: true,
          label: 'Nội dung mô tả',
          admin: {
            description: 'Dùng cho section có 1 đoạn mô tả ngắn phía trên grid/list.',
            condition: (_, siblingData) => ['gallery', 'itemGrid', 'documentList'].includes(siblingData?.variant),
          },
        },
        {
          name: 'paragraphs',
          type: 'array',
          label: 'Các đoạn text',
          admin: {
            description: 'Dùng cho section kiểu intro hoặc media + text.',
            condition: (_, siblingData) => ['intro', 'splitMedia'].includes(siblingData?.variant),
          },
          fields: [{ name: 'text', type: 'textarea', localized: true, required: true, label: 'Đoạn văn' }],
        },
        {
          name: 'columns',
          type: 'select',
          label: 'Số cột item/grid desktop',
          defaultValue: '3',
          admin: {
            condition: (_, siblingData) => ['cards', 'gallery', 'itemGrid'].includes(siblingData?.variant),
          },
          options: [
            { label: '2 cột', value: '2' },
            { label: '3 cột', value: '3' },
            { label: '4 cột', value: '4' },
          ],
        },
        {
          name: 'imagePosition',
          type: 'radio',
          label: 'Vị trí ảnh',
          defaultValue: 'left',
          options: [
            { label: 'Ảnh trái', value: 'left' },
            { label: 'Ảnh phải', value: 'right' },
          ],
          admin: {
            condition: (_, siblingData) => ['intro', 'splitMedia'].includes(siblingData?.variant),
          },
        },
        {
          name: 'images',
          type: 'array',
          label: 'Ảnh trong section',
          maxRows: 12,
          admin: {
            description: 'Intro và splitMedia thường dùng 1 ảnh; gallery dùng nhiều ảnh.',
            condition: (_, siblingData) => ['intro', 'gallery', 'splitMedia'].includes(siblingData?.variant),
          },
          fields: [
            { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh upload' },
            { name: 'imageURL', type: 'text', label: 'URL ảnh fallback' },
            { name: 'alt', type: 'text', localized: true, label: 'Alt text' },
            { name: 'caption', type: 'text', localized: true, label: 'Caption / label' },
          ],
        },
        {
          name: 'tabs',
          type: 'array',
          label: 'Tabs tài liệu',
          admin: {
            description: 'Mỗi tab là một danh mục (vd: Chứng nhận, Tài liệu). Mỗi tab chứa nhiều file tải về.',
            condition: (_, siblingData) => siblingData?.variant === 'tabbedDocuments',
          },
          fields: [
            { name: 'tabTitle', type: 'text', localized: true, required: true, label: 'Tên tab' },
            {
              name: 'files',
              type: 'array',
              label: 'Danh sách file',
              fields: [
                { name: 'title', type: 'text', localized: true, required: true, label: 'Tên hiển thị' },
                { name: 'file', type: 'upload', relationTo: 'media', label: 'File tải về' },
                { name: 'fileURL', type: 'text', label: 'URL fallback (nếu không upload)' },
              ],
            },
          ],
        },
        {
          name: 'items',
          type: 'array',
          label: 'Items nâng cao',
          admin: {
            description:
              'Dùng cho product cards, service cards, office cards, certification cards và danh sách tài liệu.',
            condition: (_, siblingData) => ['cards', 'itemGrid', 'documentList'].includes(siblingData?.variant),
          },
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
        },
      ],
    },
  ],
}
