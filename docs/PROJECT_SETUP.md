# BắcÂu Website — Tài liệu Setup Project

> Tạo ngày: 23/04/2026  
> Người thực hiện: Claude (AI assistant)

---

## 1. Tổng quan

Website B2B doanh nghiệp cho **Công ty TNHH Thương mại Dịch vụ Công nghệ Bắc Âu** — chuyên tự động hóa công nghiệp & kỹ thuật điện tại Việt Nam.

---

## 2. Tech Stack

| Layer | Công nghệ | Phiên bản |
|-------|-----------|-----------|
| Framework | Next.js (App Router) | 16.2.4 |
| Language | TypeScript | 5.x |
| Styling | Tailwind CSS | v4 |
| Animation | Framer Motion | 12.x |
| CMS | Payload CMS | v3 (3.84.x) |
| Database | PostgreSQL via Supabase | — |
| Media | Cloudinary | — |
| Deploy | Vercel | — |
| i18n | next-intl | 4.x |

---

## 3. Cấu trúc thư mục

```
BacAu/
├── docs/                          # Tài liệu & design files
│   ├── design/
│   │   └── design_1.pen           # File design gốc (Pencil app)
│   ├── BaoGiaWebsite.pdf
│   ├── HD25-PT-WEB-M-001-009-BA.docx
│   └── PROJECT_SETUP.md           # File này
│
├── messages/                      # Nội dung dịch i18n
│   ├── vi.json                    # Tiếng Việt
│   └── en.json                    # Tiếng Anh
│
├── src/
│   ├── app/
│   │   ├── (frontend)/
│   │   │   └── [locale]/
│   │   │       ├── layout.tsx     # Layout chính (Header + Footer + i18n)
│   │   │       └── page.tsx       # Trang chủ
│   │   ├── (payload)/
│   │   │   ├── admin/
│   │   │   │   ├── [[...segments]]/
│   │   │   │   │   ├── page.tsx   # Payload Admin UI
│   │   │   │   │   └── layout.tsx # Payload Admin Layout
│   │   │   │   └── importMap.ts
│   │   │   └── api/
│   │   │       └── [...slug]/
│   │   │           └── route.ts   # Payload REST API routes
│   │   ├── globals.css            # CSS toàn cục + Tailwind theme
│   │   ├── layout.tsx             # Root layout
│   │   └── page.tsx               # Root redirect → /vi
│   │
│   ├── collections/               # Payload CMS data schemas
│   │   ├── Users.ts
│   │   ├── Media.ts
│   │   ├── Projects.ts
│   │   ├── News.ts
│   │   ├── Products.ts
│   │   ├── Partners.ts
│   │   └── Services.ts
│   │
│   ├── components/
│   │   ├── ui/                    # Atomic UI components
│   │   │   ├── Button.tsx
│   │   │   ├── Badge.tsx
│   │   │   ├── SectionTitle.tsx
│   │   │   ├── Breadcrumb.tsx
│   │   │   └── FilterTabs.tsx
│   │   ├── layout/                # Layout components
│   │   │   ├── Header/
│   │   │   │   ├── Header.tsx
│   │   │   │   ├── MobileMenu.tsx
│   │   │   │   └── LanguageToggle.tsx
│   │   │   └── Footer.tsx
│   │   └── sections/              # Page section components
│   │       ├── HeroSection.tsx
│   │       ├── PageHero.tsx
│   │       ├── StatsBar.tsx
│   │       ├── ProjectCard.tsx
│   │       ├── ProjectsGrid.tsx
│   │       ├── NewsCard.tsx
│   │       ├── PartnerLogos.tsx
│   │       ├── ProductCard.tsx
│   │       ├── CTASection.tsx
│   │       └── SidebarNav.tsx
│   │
│   ├── i18n/
│   │   ├── request.ts             # next-intl server config
│   │   └── routing.ts             # Locale routing config
│   │
│   └── middleware.ts              # next-intl middleware (route locale detection)
│
├── payload.config.ts              # Payload CMS config chính
├── next.config.ts                 # Next.js config (withPayload + withNextIntl)
├── tsconfig.json                  # TypeScript config (@payload-config alias)
├── .env.local                     # Environment variables (KHÔNG commit)
└── package.json
```

---

## 4. Brand Design Tokens

Lấy trực tiếp từ file `design_1.pen` (Pencil MCP).

### Màu sắc

| Variable | Hex | Dùng cho |
|----------|-----|----------|
| `primary-navy` | `#0F172A` | Header, footer, nền tối |
| `primary-dark` | `#1E3A5F` | Section nền tối phụ |
| `primary-blue` | `#2563EB` | Button chính, link |
| `primary-blue-dark` | `#2b358c` | Button hover |
| `primary-red` | `#b92c32` | Badge category, highlight |
| `accent-orange` | `#FF8400` | CTA button, điểm nhấn |
| `bg-light` | `#F2F3F0` | Nền trang chính |
| `text-primary` | `#111111` | Văn bản chính |
| `text-secondary` | `#666666` | Văn bản phụ |
| `border` | `#CBCCC9` | Viền, đường phân cách |

### Typography

- **Font chính:** Inter (Google Fonts, subset Latin + Vietnamese)
- Khai báo qua `next/font/google` trong layout

---

## 5. Payload CMS Collections

### Users
- Auth collection (đăng nhập admin)
- Fields: `name`, `role` (admin | editor)

### Media
- Upload collection — ảnh, file
- Fields: `alt`, `caption`
- Tích hợp Cloudinary để host media

### Projects (Dự án Tham khảo)
- Fields song ngữ: `title`, `summary`, `intro`, `solutions`, `results`
- `category`: electrical-automation | digitalization | measurement | industrial-services
- `industry`: oil-gas | fertilizer-chemical | power | cement-mining | steel | food-beverage | ...
- `images` array, `featured` checkbox
- Hỗ trợ draft/publish

### News (Tin tức & Sự kiện)
- Fields song ngữ: `title`, `excerpt`, `content`
- `publishedAt`, `tags`, `thumbnail`
- Hỗ trợ draft/publish

### Products (Sản phẩm)
- Fields song ngữ: `name`, `description`
- `category`: automation | measurement | industrial-valve | electrical | motor | sensor
- `brand`, `featured`

### Partners (Đối tác)
- `name`, `logo`, `website`, `order`

### Services (Giải pháp & Dịch vụ)
- Fields song ngữ: `name`, `summary`, `content`
- `category`, `icon`, `order`

---

## 6. Components Tái sử dụng

### UI Components (`src/components/ui/`)

#### `Button`
```tsx
<Button variant="primary" | "secondary" | "outline" | "ghost"
        size="sm" | "md" | "lg"
        href="/path"        // render as <Link> nếu có href
        external={boolean}> // target="_blank"
  Label
</Button>
```

#### `Badge`
```tsx
<Badge variant="red" | "navy" | "orange" | "gray">
  Category Label
</Badge>
```

#### `SectionTitle`
```tsx
<SectionTitle
  title="Tiêu đề section"
  subtitle="Mô tả phụ"
  align="left" | "center"
  light={boolean}   // text trắng cho nền tối
  action={<Button>Xem tất cả</Button>}
/>
```

#### `Breadcrumb`
```tsx
<Breadcrumb
  items={[{ label: 'Trang chủ', href: '/vi' }, { label: 'Dự án' }]}
  light={boolean}  // màu trắng cho hero tối
/>
```

#### `FilterTabs` (Client Component)
```tsx
<FilterTabs
  options={[{ label: 'Tất cả', value: 'all' }, ...]}
  active={activeValue}
  onChange={(value) => setActive(value)}
/>
```

---

### Layout Components

#### `Header` (Server Component)
- Sticky top, `z-50`
- Top bar: phone, email, toggle VI/EN
- Desktop: logo + mega menu dropdown
- Mobile: hamburger → `MobileMenu`
- Import: `import { Header } from '@/components/layout/Header/Header'`

#### `LanguageToggle` (Client Component)
- Tự động detect current path và swap locale
- Dùng `usePathname()` để build URL mới

#### `MobileMenu` (Client Component)
- Accordion cho sub-menu
- Animated hamburger icon

#### `Footer` (Server Component)
- 4 cột: Brand + Links + Services + Contact
- Dùng `getTranslations` từ next-intl

---

### Section Components (`src/components/sections/`)

#### `HeroSection` — Trang chủ hero
```tsx
<HeroSection
  title="Giải pháp Tự động hóa..."
  subtitle="Mô tả ngắn"
  primaryCTA={{ label: 'Xem dự án', href: '/vi/du-an' }}
  secondaryCTA={{ label: 'Liên hệ', href: '/vi/lien-he' }}
  backgroundImage="/path/to/image.jpg"
/>
```
- Full-width image + dark overlay
- Framer Motion animation (fade + slide up)

#### `PageHero` — Hero nhỏ cho trang con
```tsx
<PageHero
  title="Tên trang"
  backgroundImage="/path/img.jpg"  // optional
  breadcrumbs={[{ label: 'Trang chủ', href: '/vi' }, { label: 'Giới thiệu' }]}
/>
```

#### `StatsBar` — Thanh thống kê với counter animation
```tsx
<StatsBar stats={[
  { value: 500, suffix: '+', label: 'Dự án hoàn thành' },
  { value: 200, suffix: '+', label: 'Khách hàng' },
]} />
```
- IntersectionObserver trigger
- Count-up animation khi vào viewport

#### `ProjectCard`
```tsx
<ProjectCard
  project={{ slug, title, summary, category, categoryLabel, thumbnail, thumbnailAlt }}
  locale="vi"
/>
```
- Link đến `/${locale}/du-an/${slug}`
- Hover: scale image + shadow
- Badge đỏ category

#### `ProjectsGrid` (Client Component)
```tsx
<ProjectsGrid
  projects={projectsArray}
  filterOptions={[{ label: 'Tự động hóa', value: 'electrical-automation' }, ...]}
  locale="vi"
  allLabel="Tất cả"
/>
```
- Tích hợp `FilterTabs` + grid `ProjectCard`
- Client-side filter

#### `NewsCard`
```tsx
<NewsCard
  article={{ slug, title, excerpt, publishedAt, thumbnail, thumbnailAlt }}
  locale="vi"
  variant="horizontal" | "vertical"
/>
```
- `horizontal`: ảnh trái + text phải (dùng trên trang chủ)
- `vertical`: ảnh trên + text dưới (dùng trên trang tin tức)

#### `PartnerLogos`
```tsx
<PartnerLogos
  partners={[{ name: 'ABB', logo: '/logos/abb.svg', website: '...' }]}
  title="Đối tác Chiến lược"
/>
```
- Nền `primary-navy`, logo trắng (filter invert)

#### `ProductCard`
```tsx
<ProductCard
  product={{ slug, name, category, categoryLabel, thumbnail, thumbnailAlt, brand }}
  locale="vi"
/>
```

#### `CTASection`
```tsx
<CTASection
  title="Bắt đầu Dự án ngay"
  subtitle="Mô tả phụ"
  primaryCTA={{ label: 'Liên hệ', href: '/vi/lien-he' }}
  secondaryCTA={{ label: 'Xem dự án', href: '/vi/du-an' }}
/>
```

#### `SidebarNav` (Client Component)
```tsx
<SidebarNav
  title="Công ty BắcÂu"
  items={[
    { label: 'Giới thiệu', href: '/vi/gioi-thieu' },
    { label: 'Sứ mệnh', href: '/vi/gioi-thieu/su-menh', children: [...] },
  ]}
/>
```
- `sticky top-24`
- Active state dựa trên `usePathname()`
- Border-left đỏ cho item active

---

## 7. i18n — Đa ngôn ngữ

### Routing

| URL | Locale | Trang |
|-----|--------|-------|
| `/vi` | vi | Trang chủ |
| `/en` | en | Homepage |
| `/vi/gioi-thieu` | vi | Giới thiệu |
| `/en/about` | en | About |
| `/vi/du-an` | vi | Dự án |
| `/en/projects` | en | Projects |

### Cách dùng trong Server Component
```tsx
import { getTranslations } from 'next-intl/server'
const t = await getTranslations('sections')
t('featuredProjects') // → "Dự án Tiêu biểu"
```

### Cách dùng trong Client Component
```tsx
import { useTranslations } from 'next-intl'
const t = useTranslations('nav')
```

### Thêm key mới
Thêm cùng lúc vào cả `messages/vi.json` và `messages/en.json`.

---

## 8. Environment Variables

File `.env.local` (không commit lên git):

```env
# Database (Supabase PostgreSQL)
DATABASE_URL=postgresql://postgres:[PASSWORD]@db.[REF].supabase.co:5432/postgres

# Payload CMS
PAYLOAD_SECRET=your-super-secret-key-minimum-32-chars

# Cloudinary
CLOUDINARY_CLOUD_NAME=your-cloud-name
CLOUDINARY_API_KEY=your-api-key
CLOUDINARY_API_SECRET=your-api-secret

# App
NEXT_PUBLIC_SITE_URL=http://localhost:3000
```

---

## 9. Cách chạy dự án

### Development
```bash
# Cài dependencies (lần đầu)
npm install

# Chạy dev server
node node_modules/next/dist/bin/next dev

# Mở http://localhost:3000 → tự redirect về /vi
# Payload Admin: http://localhost:3000/admin
```

> **Lưu ý:** Dùng `node node_modules/next/dist/bin/next dev` thay vì `npm run dev` vì có bug symlink với Node.js 22.

### Build production
```bash
npm run build
npm start
```

---

## 10. Bước tiếp theo (TODO)

- [ ] Điền đầy đủ credentials vào `.env.local`
- [ ] Kết nối Supabase và chạy migrate Payload
- [ ] Tạo tài khoản admin đầu tiên tại `/admin`
- [ ] Code trang **Giới thiệu công ty** (`/vi/gioi-thieu`) — layout 2 cột có SidebarNav
- [ ] Code trang **Dự án Tham khảo** (`/vi/du-an`) — filter kép + grid
- [ ] Code trang **Chi tiết Dự án** (`/vi/du-an/[slug]`)
- [ ] Code trang **Giải pháp & Dịch vụ** (`/vi/giai-phap`)
- [ ] Code trang **Sản phẩm** (`/vi/san-pham`)
- [ ] Code trang **Tin tức** (`/vi/tin-tuc`)
- [ ] Code trang **Liên hệ** (`/vi/lien-he`) — form gửi email
- [ ] Code trang **Tuyển dụng** (`/vi/tuyen-dung`)
- [ ] Kết nối Cloudinary vào Payload Media collection
- [ ] Thêm logo partners vào `/public/logos/`
- [ ] SEO: metadata, sitemap, OG tags
- [ ] Deploy lên Vercel
