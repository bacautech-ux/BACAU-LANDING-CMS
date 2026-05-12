import type { CollectionConfig } from 'payload'

export const PageGroups: CollectionConfig = {
  slug: 'page-groups',
  labels: { singular: 'Nhóm trang', plural: 'Nhóm trang' },
  admin: {
    group: 'Cấu hình Website',
    useAsTitle: 'name',
    defaultColumns: ['name', 'color', 'order'],
    description: 'Tạo và quản lý nhóm để phân loại các trang trong CMS',
  },
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  fields: [
    {
      name: 'name',
      type: 'text',
      required: true,
      label: 'Tên nhóm',
      admin: { description: 'Ví dụ: Trang chủ, Giới thiệu, Giải pháp...' },
    },
    {
      name: 'color',
      type: 'text',
      label: 'Màu nhóm',
      defaultValue: '#6b7280',
      admin: { description: 'Mã HEX, ví dụ: #2b358c. Dùng cho badge và icon trong danh sách.' },
    },
    {
      name: 'order',
      type: 'number',
      label: 'Thứ tự hiển thị',
      defaultValue: 10,
      admin: { description: 'Số nhỏ hiện trước. Ví dụ: Trang chủ = 1, Giới thiệu = 2...' },
    },
  ],
}
