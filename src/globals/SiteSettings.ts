import type { GlobalConfig } from 'payload'

const defaultNavItems = [
  {
    label: 'Công ty',
    href: '/gioi-thieu',
    children: [
      { label: 'Giới thiệu', href: '/gioi-thieu' },
      { label: 'Sứ mệnh & Tầm nhìn', href: '/gioi-thieu/su-menh' },
      { label: 'Sơ đồ tổ chức', href: '/gioi-thieu/to-chuc' },
      { label: 'Chứng chỉ & Chất lượng', href: '/gioi-thieu/chung-chi' },
      { label: 'Liên hệ', href: '/lien-he' },
    ],
  },
  { label: 'Dự án', href: '/du-an-tham-khao' },
  {
    label: 'Giải pháp',
    href: '/giai-phap',
    children: [
      { label: 'Giải pháp Điện & Tự động hóa', href: '/giai-phap/dien-tu-dong-hoa' },
      { label: 'Giải pháp Số hóa', href: '/giai-phap/so-hoa' },
      { label: 'Giải pháp Đo lường', href: '/giai-phap/do-luong' },
      { label: 'Dịch vụ Công nghiệp', href: '/giai-phap/dich-vu' },
    ],
  },
  { label: 'Sản phẩm', href: '/san-pham' },
  { label: 'Tin tức', href: '/tin-tuc' },
  { label: 'Tuyển dụng', href: '/tuyen-dung' },
]

const defaultFooterColumns = [
  {
    title: 'LIÊN KẾT',
    links: [
      { label: 'Trang Chủ', href: '/' },
      { label: 'Giới Thiệu', href: '/gioi-thieu' },
      { label: 'Dịch Vụ', href: '/dich-vu' },
      { label: 'Dự Án', href: '/du-an-tham-khao' },
      { label: 'Liên Hệ', href: '/lien-he' },
    ],
  },
  {
    title: 'LIÊN HỆ',
    links: [
      {
        label: 'Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh',
        href: '',
      },
      { label: 'Tel: (028) 3636 9936', href: 'tel:02836369936' },
      { label: 'Email: info@bacau.com.vn', href: 'mailto:info@bacau.com.vn' },
    ],
  },
  {
    title: 'DỊCH VỤ',
    links: [
      { label: 'Tự Động Hóa', href: '/giai-phap/dien-tu-dong-hoa' },
      { label: 'Điện Công Nghiệp', href: '/giai-phap/dien-tu-dong-hoa' },
      { label: 'Bảo Trì & Sửa Chữa', href: '/giai-phap/dich-vu' },
      { label: 'Thiết Bị Đo Lường', href: '/giai-phap/do-luong' },
    ],
  },
]

export const SiteSettings: GlobalConfig = {
  slug: 'site-settings',
  label: 'Thiết lập Header/Footer',
  access: {
    read: () => true,
  },
  fields: [
    {
      name: 'header',
      type: 'group',
      label: 'Header',
      fields: [
        {
          name: 'logoImage',
          type: 'upload',
          relationTo: 'media',
          label: 'Logo image',
        },
        {
          name: 'logoAlt',
          type: 'text',
          localized: true,
          label: 'Logo alt text',
          admin: {
            description: 'Dùng cho ảnh logo ngoài frontend. Nếu bỏ trống sẽ fallback về logo text.',
          },
        },
        {
          name: 'logoText',
          type: 'text',
          localized: true,
          defaultValue: 'BắcÂu',
          label: 'Logo text',
        },
        {
          name: 'phone',
          type: 'text',
          defaultValue: '(028) 3636 9936',
          label: 'Số điện thoại',
        },
        {
          name: 'email',
          type: 'text',
          defaultValue: 'info@bacau.com.vn',
          label: 'Email',
        },
        {
          name: 'navItems',
          type: 'array',
          label: 'Menu chính',
          defaultValue: defaultNavItems,
          fields: [
            { name: 'label', type: 'text', localized: true, required: true },
            {
              name: 'href',
              type: 'text',
              required: true,
              admin: { description: 'Nhập path không gồm locale, ví dụ /gioi-thieu.' },
            },
            {
              name: 'children',
              type: 'array',
              label: 'Menu con',
              fields: [
                { name: 'label', type: 'text', localized: true, required: true },
                {
                  name: 'href',
                  type: 'text',
                  required: true,
                  admin: { description: 'Nhập path không gồm locale, ví dụ /gioi-thieu/su-menh.' },
                },
              ],
            },
          ],
        },
      ],
    },
    {
      name: 'footer',
      type: 'group',
      label: 'Footer',
      fields: [
        {
          name: 'logoImage',
          type: 'upload',
          relationTo: 'media',
          label: 'Logo image',
        },
        {
          name: 'logoAlt',
          type: 'text',
          localized: true,
          label: 'Logo alt text',
          admin: {
            description: 'Dùng cho ảnh logo footer ngoài frontend. Nếu bỏ trống sẽ fallback về logo text.',
          },
        },
        {
          name: 'logoText',
          type: 'text',
          localized: true,
          defaultValue: 'BắcÂu',
          label: 'Logo text',
        },
        {
          name: 'description',
          type: 'textarea',
          localized: true,
          defaultValue:
            'Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.',
        },
        {
          name: 'backgroundColor',
          type: 'text',
          defaultValue: '#0F172A',
          label: 'Màu nền',
        },
        {
          name: 'accentColor',
          type: 'text',
          defaultValue: '#B92C32',
          label: 'Màu line accent',
        },
        {
          name: 'columns',
          type: 'array',
          label: 'Các cột footer',
          defaultValue: defaultFooterColumns,
          fields: [
            { name: 'title', type: 'text', localized: true, required: true },
            {
              name: 'links',
              type: 'array',
              fields: [
                { name: 'label', type: 'textarea', localized: true, required: true },
                {
                  name: 'href',
                  type: 'text',
                  admin: {
                    description:
                      'Bỏ trống nếu chỉ muốn hiển thị text; nhập /path, tel: hoặc mailto: nếu là link.',
                  },
                },
              ],
            },
          ],
        },
        {
          name: 'copyright',
          type: 'text',
          localized: true,
          defaultValue: '© 2024 BắcÂu. All rights reserved.',
        },
        {
          name: 'credit',
          type: 'text',
          localized: true,
          defaultValue: 'Designed by BắcÂu Technology',
        },
      ],
    },
  ],
}
