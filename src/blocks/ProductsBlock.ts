import type { Block } from 'payload'

export const ProductsBlock: Block = {
  slug: 'products',
  labels: { singular: 'Thiết bị & Sản phẩm', plural: 'Thiết bị & Sản phẩm' },
  imageURL: 'https://images.unsplash.com/photo-1703668984128-b506579acdd2?w=400&h=200&fit=crop',
  imageAltText: 'Thiết bị & Sản phẩm — 5 product cards hàng ngang',
  fields: [
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề section', defaultValue: 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP' },
    { name: 'subtitle', type: 'text', localized: true, label: 'Mô tả phụ', defaultValue: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới' },
    {
      name: 'sourceMode',
      type: 'select',
      label: 'Nguồn sản phẩm',
      defaultValue: 'latest',
      options: [
        { label: 'Tự động lấy sản phẩm nổi bật mới nhất', value: 'latest' },
        { label: 'Chọn sản phẩm thủ công', value: 'manual' },
      ],
    },
    { name: 'count', type: 'number', label: 'Số sản phẩm hiển thị', defaultValue: 5, min: 1, max: 5 },
    {
      name: 'featuredProducts',
      type: 'relationship',
      relationTo: 'products',
      hasMany: true,
      maxRows: 5,
      label: 'Chọn sản phẩm thủ công',
    },
  ],
}
