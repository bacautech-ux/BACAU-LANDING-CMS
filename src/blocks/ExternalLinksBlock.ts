import type { Block } from 'payload'

export const ExternalLinksBlock: Block = {
  slug: 'externalLinks',
  labels: { singular: 'Danh sách URL', plural: 'Danh sách URL' },
  imageURL: 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=400&h=200&fit=crop',
  imageAltText: 'Danh sách URL — grid các link bên ngoài với thumbnail, tiêu đề, mô tả',
  fields: [
    {
      name: 'title',
      type: 'text',
      localized: true,
      required: true,
      label: 'Tiêu đề section',
    },
    {
      name: 'links',
      type: 'array',
      label: 'Danh sách URL',
      admin: {
        description: 'Nhập URL, sau đó dùng nút "Fetch metadata" ở admin hoặc tự điền title/description/thumbnail.',
      },
      fields: [
        {
          name: 'url',
          type: 'text',
          required: true,
          label: 'URL',
          admin: { description: 'Link bài viết / trang bên ngoài' },
        },
        {
          name: 'title',
          type: 'text',
          localized: true,
          label: 'Tiêu đề (override)',
          admin: { description: 'Để trống = dùng tiêu đề auto-fetch từ URL' },
        },
        {
          name: 'description',
          type: 'textarea',
          localized: true,
          label: 'Mô tả (override)',
          admin: { description: 'Để trống = dùng mô tả auto-fetch từ URL' },
        },
        {
          name: 'thumbnailURL',
          type: 'text',
          label: 'URL thumbnail (auto-fetch)',
          admin: { description: 'URL ảnh OG lấy từ trang nguồn' },
        },
        {
          name: 'thumbnail',
          type: 'upload',
          relationTo: 'media',
          label: 'Thumbnail (upload override)',
          admin: { description: 'Upload ảnh sẽ ưu tiên hơn URL thumbnail' },
        },
        {
          name: 'viewCount',
          type: 'number',
          label: 'Lượt xem',
          admin: { description: 'Hiển thị số lượt xem (tuỳ chọn)' },
        },
      ],
    },
    {
      name: 'loadMoreLabel',
      type: 'text',
      localized: true,
      label: 'Nhãn nút xem thêm',
      defaultValue: 'XEM THÊM',
    },
    {
      name: 'loadMoreHref',
      type: 'text',
      label: 'Link nút xem thêm',
      admin: { description: 'Để trống = hiển thị thêm item (client-side). Có link = chuyển trang.' },
    },
    {
      name: 'initialCount',
      type: 'number',
      label: 'Số item hiển thị ban đầu',
      defaultValue: 12,
      admin: { description: 'Số card hiển thị trước khi bấm "Xem thêm"' },
    },
  ],
}
