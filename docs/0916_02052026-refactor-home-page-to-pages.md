# Refactor Home Page sang Pages Collection

Thời gian tạo: 09:16 02/05/2026

## Mục tiêu

Đưa nội dung Trang chủ từ Payload Global `home-page` sang Payload Collection `pages`, để toàn bộ page-level content của website được quản lý tập trung trong `admin/collections/pages`.

Refactor này vẫn giữ nguyên cấu trúc content hiện tại của Home Page:

- Field `layout`
- Các block hiện có: `hero`, `services`, `news`, `featuredProjects`, `partners`, `products`, `ctaBanner`, `brandLogos`
- Cách render section theo thứ tự admin đã sắp xếp
- Fallback layout mặc định khi database chưa có dữ liệu

## Thay đổi chính

### 1. Nâng schema `Pages`

File: `src/collections/Pages.ts`

Đã thêm/cập nhật:

- `title`: tên trang, localized. Field này đang để nullable để không phá các page cũ chưa có title trong database; có thể bật `required` sau khi đã backfill đủ dữ liệu.
- `template`: chuyển thành legacy hidden field, không còn hiển thị trong admin và không còn điều khiển render frontend.
- `layout`: blocks dùng lại đúng block schema của Home Global cũ
- `seo`: nhóm field SEO cơ bản gồm title, description, image

`Pages` hiện render theo `layout blocks`. Admin không cần chọn template nữa.

Group `Hero Section` cố định ở cấp page đã được xóa khỏi schema. Nếu page cần hero, admin thêm block `Hero Section` trong `layout`, giống các section khác.

Field slug đã đổi label từ `Đường dẫn URL` sang `Slug / mã trang`, vì riêng Trang chủ dùng slug nội bộ `home` nhưng URL public là `/vi` hoặc `/en`. Có hook bảo vệ để nếu document gốc là `home` thì slug luôn được giữ là `home` khi save.

### 2. Tách block renderer dùng chung

File mới: `src/components/blocks/RenderBlocks.tsx`

Renderer này map `blockType` sang React component:

- `hero` -> `HeroSection`
- `services` -> `ServicesSection`
- `news` -> `NewsSection`
- `featuredProjects` -> `FeaturedProjects`
- `partners` -> `PartnersMosaic`
- `products` -> `ProductsSection`
- `ctaBanner` -> `CTABanner`
- `brandLogos` -> `BrandLogos`

Mục đích là để Home và các trang con cùng dùng một cơ chế render layout blocks.

### 2.1. Cho phép admin chỉnh thống kê trong Hero Section

Files:

- `src/blocks/index.ts`
- `src/components/sections/HeroSection.tsx`
- `src/components/blocks/RenderBlocks.tsx`
- `src/migrations/20260502_084017_hero_stats_fields.ts`
- `src/migrations/20260502_084017_hero_stats_fields.json`

Block `Hero Section` đã có thêm field `stats` để admin chỉnh 4 thông số bên dưới hero:

- Giá trị số
- Ký tự sau số, ví dụ `+`
- Nhãn trên
- Nhãn dưới
- Màu số, nhập mã HEX như `#B92C32` hoặc `#FFFFFF`

Frontend `HeroSection` không còn hardcode toàn bộ thanh thống kê. Nếu dữ liệu cũ chưa có field `stats`, component vẫn fallback về đúng 4 thông số đang dùng trước đó:

```txt
15+ NĂM / Kinh Nghiệm
500+ DỰ ÁN / Hoàn Thành
200+ KHÁCH HÀNG / Tin Tưởng
50+ ĐỐI TÁC / Chiến Lược
```

Khi admin nhập `stats` trong block Hero Section, frontend sẽ ưu tiên dùng dữ liệu admin. Nếu admin để mảng `stats` rỗng, thanh thống kê sẽ bị ẩn.

### 2.2. Cho phép admin chỉnh section Lĩnh vực Hoạt động

Files:

- `src/blocks/index.ts`
- `src/components/sections/ServicesSection.tsx`
- `src/components/blocks/RenderBlocks.tsx`
- `src/scripts/migrateHomeGlobalToPage.ts`
- `src/migrations/20260502_085156_services_cards_fields.ts`
- `src/migrations/20260502_085156_services_cards_fields.json`

Block `Lĩnh vực Hoạt động` đã được mở rộng từ một field `subtitle` thành cấu trúc admin đầy đủ hơn:

- `title`: tiêu đề section
- `subtitle`: mô tả phụ
- `cards`: danh sách card lĩnh vực

Mỗi card cho phép admin chỉnh:

- Tiêu đề card
- Mô tả card
- Ảnh card
- URL ảnh fallback
- Link khi bấm nút
- Label nút

Frontend ưu tiên ảnh upload. Nếu chưa upload ảnh, frontend dùng `URL ảnh fallback`. Điều này giúp admin nhìn thấy rõ vì sao frontend vẫn có ảnh dù field upload đang trống.

Script `npm run migrate:home-page` tự init 3 card mặc định giống thiết kế:

```txt
LĨNH VỰC THI CÔNG
DỊCH VỤ CÔNG NGHIỆP
DỊCH VỤ DÂN DỤNG
```

Nếu page home đã có `cards`, script sẽ giữ dữ liệu admin đã nhập thay vì reset.

### 2.3. Cho phép admin cấu hình section Tin tức & Sự kiện

Files:

- `src/blocks/index.ts`
- `src/components/sections/NewsSection.tsx`
- `src/components/blocks/RenderBlocks.tsx`
- `src/migrations/20260502_090259_news_block_config_fields.ts`
- `src/migrations/20260502_090259_news_block_config_fields.json`

Block `Tin tức & Sự kiện` không nên nhập lại nội dung từng bài trong page, vì project đã có collection `news`. Section này hiện được cấu hình theo hướng:

- `title`: tiêu đề section
- `viewAll.label`: label link xem tất cả
- `viewAll.href`: đường dẫn xem tất cả
- `sourceMode`: tự động lấy bài mới nhất hoặc chọn bài thủ công
- `count`: cố định 3 bài theo UI hiện tại
- `featuredNews`: bài lớn bên trái khi chọn thủ công
- `secondaryNews`: hai bài nhỏ bên phải khi chọn thủ công

Frontend `NewsSection` ưu tiên:

```txt
manual selected news
→ latest published news trong collection news
```

Nội dung bài viết như tiêu đề, excerpt, ngày đăng, thumbnail vẫn quản lý ở `Collections > News`.

Đã thêm script seed 3 bài news mẫu:

- `src/scripts/seedNewsArticles.ts`
- `src/scripts/runSeedNewsArticles.ts`

Script này tạo 3 bài published và 3 thumbnail media nội bộ:

```txt
Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương
Hội thảo giải pháp quản lý năng lượng thông minh 2026
Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản
```

Lệnh đã chạy:

```bash
NODE_ENV=development PAYLOAD_CONFIG_PATH=payload.config.ts node_modules/.bin/payload run src/scripts/runSeedNewsArticles.ts
```

### 2.4. Cho phép admin cấu hình section Dự án Tiêu biểu

Files:

- `src/blocks/index.ts`
- `src/collections/Projects.ts`
- `src/components/sections/FeaturedProjects.tsx`
- `src/components/sections/FeaturedProjectsClient.tsx`
- `src/components/blocks/RenderBlocks.tsx`
- `src/scripts/migrateHomeGlobalToPage.ts`
- `src/scripts/seedFeaturedProjects.ts`
- `src/scripts/runSeedFeaturedProjects.ts`
- `src/migrations/20260502_092728_featured_projects_block_config.ts`
- `src/migrations/20260502_092728_featured_projects_block_config.json`

Block `Dự án Tiêu biểu` đã được mở rộng từ một relationship field thành cấu hình section đầy đủ:

- `title`: tiêu đề section
- `backgroundColor`: màu nền section, mặc định `#0B1221`
- `viewAll.label`: label link xem tất cả
- `viewAll.href`: đường dẫn xem tất cả
- `sourceMode`: tự động lấy dự án featured mới nhất hoặc chọn thủ công
- `count`: số dự án hiển thị, tối đa 4 theo grid 2x2
- `featuredProjects`: danh sách dự án chọn thủ công
- `tabs`: danh sách tab/pill filter

Collection `projects` được bổ sung field phục vụ hiển thị ở Home:

- `titleLabel`: field ẩn dùng cho Payload relationship picker, sync từ `title.vi`
- `featuredType`: nhóm hiển thị `energy`, `electrical`, `automation`, `bms`
- `featuredBadgeLabel`: label badge trên card
- `featuredBadgeColor`: màu badge trên card

Frontend ưu tiên:

```txt
manual selected projects
→ latest published projects có featured = true
```

Nếu không có project published/featured thì section không render dữ liệu mẫu hardcoded.

Đã thêm script seed 4 dự án tiêu biểu mẫu:

```txt
Hệ thống quản lý năng lượng KCN Việt Nam - Singapore
Trạm biến áp 110kV Nhà máy thép Formosa
Tự động hóa dây chuyền sản xuất Nestlé Việt Nam
Hệ thống BMS tòa nhà Landmark 81
```

Sau đó script `seedFeaturedProjects.ts` đã được mở rộng để seed dữ liệu test đầy đủ hơn:

- 5 project nhóm `energy`
- 5 project nhóm `electrical`
- 5 project nhóm `automation`
- 5 project nhóm `bms`
- Tổng cộng 20 project `published` và `featured = true`
- Tạo 20 thumbnail media mới với filename dạng `project-*-hero-v2.png`

Frontend `FeaturedProjects` cũng được chỉnh để fetch đủ project cho tab filter, rồi mỗi tab chỉ hiển thị tối đa `count` project. Điều này giúp admin test từng tab có đủ 4 card theo UI 2x2.

Lệnh đã chạy:

```bash
NODE_ENV=development PAYLOAD_CONFIG_PATH=payload.config.ts node_modules/.bin/payload run src/scripts/runSeedFeaturedProjects.ts
```

Lưu ý fix sau khi test admin:

- `projects.admin.useAsTitle` đổi từ `title` sang `titleLabel`, vì `title` là object `{ vi, en }` và làm relationship picker crash khi render.
- `news.admin.useAsTitle` cũng đổi sang `titleLabel` để tránh lỗi tương tự khi chọn bài thủ công.
- Frontend `FeaturedProjects` xử lý `featuredBadgeLabel` dạng localized object để không render nguyên `{ vi, en }` ngoài trang chủ.
- Script `seedFeaturedProjects.ts` đã sửa để ghi `featuredBadgeLabel` theo từng locale, tránh lưu chuỗi JSON `{"vi":"...","en":"..."}` vào locale `vi`.
- Migration liên quan: `src/migrations/20260502_093352_relationship_title_labels.ts`.

### 3. Đổi route Home sang đọc từ `pages/home`

File: `src/app/(frontend)/[locale]/page.tsx`

Trước đây route Home đọc:

```ts
payload.findGlobal({ slug: 'home-page' })
```

Hiện tại route Home đọc:

```ts
payload.find({
  collection: 'pages',
  where: { slug: { equals: 'home' } },
})
```

Nếu `pages/home` chưa có hoặc chưa có `layout`, frontend vẫn render fallback layout như trước.

### 4. Route động render bằng blocks

File: `src/app/(frontend)/[locale]/[...slug]/page.tsx`

Nếu một document trong `pages` có `layout`, route sẽ render bằng `RenderBlocks`.

Route `/vi/home` hoặc `/en/home` được redirect về `/vi` hoặc `/en` để tránh duplicate URL.

Nếu page không có `layout`, frontend trả `notFound()`. Các template legacy như `about` và `projects` không còn được dùng trong render path.

### 5. Script migrate dữ liệu Home cũ

File mới: `src/scripts/migrateHomeGlobalToPage.ts`

Script copy nguyên `layout` từ Global `home-page` sang document `pages/home`.
Khi gặp block `Hero Section` chưa có `stats`, script tự init 4 thông số mặc định giống giao diện hiện tại:

```txt
15+ NĂM / Kinh Nghiệm
500+ DỰ ÁN / Hoàn Thành
200+ KHÁCH HÀNG / Tin Tưởng
50+ ĐỐI TÁC / Chiến Lược
```

Nếu page home đã có `stats`, script ưu tiên giữ dữ liệu đó để tránh reset nội dung admin đã nhập.

Lệnh chạy:

```bash
npm run migrate:home-page
```

Script chạy idempotent:

- Nếu `pages/home` chưa tồn tại: tạo mới
- Nếu đã tồn tại: update lại
- Copy dữ liệu theo locale `vi` và `en`

Lệnh này chạy với `NODE_ENV=development` để Payload dev push tạo các bảng block mới cho `pages.layout` trước khi copy dữ liệu.

### 6. Giữ tạm Global `home-page` nhưng ẩn khỏi admin

File: `src/globals/HomePage.ts`

Global `home-page` chưa bị xóa khỏi `payload.config.ts` để script migration còn nguồn đọc dữ liệu cũ. Tuy nhiên nó đã được đánh dấu `admin.hidden: true`, để admin không còn thấy như nơi chỉnh Home chính nữa.

Sau khi đã chạy migration và xác nhận `pages/home` hoạt động ổn ở production/staging, có thể xóa hẳn:

- `src/globals/HomePage.ts`
- import `HomePage` trong `payload.config.ts`
- `globals: [HomePage]` trong `payload.config.ts`

### 7. Cập nhật seed

File: `src/seed.ts`

Seed cũ cho `gioi-thieu` và `du-an-tham-khao` đã được thêm `title`, để dữ liệu seed mới hiển thị đẹp hơn trong admin list. Seed không còn ghi `template`.

### 8. Cập nhật lint script

File: `package.json`

`npm run lint` được đổi sang gọi trực tiếp:

```bash
node node_modules/eslint/bin/eslint.js
```

Lý do: binary `node_modules/.bin/eslint` trong workspace hiện tại resolve sai `package.json`, trong khi entry chính của ESLint chạy ổn.

### 9. Production migration

Đã tạo Payload migration để production không cần dev schema push và không có prompt `Accept warnings and push schema to database?`.

Files:

- `src/migrations/20260502_025525_refactor_pages_layout_blocks.ts`
- `src/migrations/20260502_025525_refactor_pages_layout_blocks.json`
- `src/migrations/20260502_084017_hero_stats_fields.ts`
- `src/migrations/20260502_084017_hero_stats_fields.json`
- `src/migrations/20260502_085156_services_cards_fields.ts`
- `src/migrations/20260502_085156_services_cards_fields.json`
- `src/migrations/20260502_085733_services_card_image_url.ts`
- `src/migrations/20260502_085733_services_card_image_url.json`
- `src/migrations/20260502_090259_news_block_config_fields.ts`
- `src/migrations/20260502_090259_news_block_config_fields.json`
- `src/migrations/20260502_092728_featured_projects_block_config.ts`
- `src/migrations/20260502_092728_featured_projects_block_config.json`
- `src/migrations/20260502_093352_relationship_title_labels.ts`
- `src/migrations/20260502_093352_relationship_title_labels.json`
- `src/migrations/index.ts`

`package.json` đã đổi các lệnh migration sang Payload CLI trực tiếp:

```bash
npm run migrate
npm run migrate:create
```

Production build hiện chạy `npm run migrate` trước `next build`, nên DB production sẽ apply migration file đã commit thay vì dùng dev push.

Lưu ý: migration này là baseline migration đầu tiên của project, sinh từ schema hiện tại. Nó phù hợp cho production/staging database mới hoặc database chưa từng được quản lý bằng migration. Local database hiện tại đã từng dùng dev push, nên `migrate:status` sẽ thấy migration này là `No` dù schema đã có; không chạy `npm run migrate` vào local DB đó nếu chưa có chiến lược baseline migration table.

### 10. Local cleanup Pages data

Theo yêu cầu local-only, đã dọn collection `pages` để chỉ còn page Trang chủ và đưa `home` về `id = 1`.

Script:

```bash
node_modules/.bin/tsx src/scripts/normalizeHomePageId.ts
```

Script này:

- Xóa tất cả page có `slug <> 'home'`
- Clone row `home` sang `id = 1` nếu `home` đang có id khác
- Cập nhật các bảng con/FK trỏ về `pages.id`, gồm locales, blocks, rels, locked document rels nếu có
- Xóa row `home` cũ
- Reset sequence của bảng `pages`

Kết quả local sau khi chạy:

```txt
pages = [{ id: 1, slug: 'home' }]
```

Script này là công cụ dọn local data, không phải production migration.

### 11. CMS hóa Partners, Products, CTA Banner, Brand Logos

Đã refactor tiếp các section còn hardcode nhiều nội dung so với design:

- `Partners`: admin cấu hình được title, subtitle, màu background, 4 ảnh mosaic bằng upload hoặc URL fallback.
- `Products`: admin cấu hình được title, subtitle, sourceMode `latest/manual`, số item, và chọn thủ công product nếu cần.
- `CTA Banner`: admin cấu hình được label, title, description, nút, link, màu nền, màu gradient và màu accent.
- `Brand Logos`: admin cấu hình được title, sourceMode `latest/manual`, số logo, chọn partner thủ công, hoặc fallback brand text khi chưa có logo.

Files chính:

- `src/blocks/index.ts`
- `src/components/blocks/RenderBlocks.tsx`
- `src/components/sections/PartnersMosaic.tsx`
- `src/components/sections/ProductsSection.tsx`
- `src/components/sections/CTABanner.tsx`
- `src/components/sections/BrandLogos.tsx`
- `src/collections/Products.ts`
- `src/scripts/migrateHomeGlobalToPage.ts`

Logic frontend:

- `Partners`: ưu tiên ảnh upload từ block, sau đó tới `imageURL`, cuối cùng mới dùng fallback image trong component.
- `Products`: nếu `sourceMode = manual` thì ưu tiên product admin chọn; sau đó lấy latest published/featured products từ collection `products`.
- `CTA Banner`: toàn bộ text/link/màu lấy từ block, chỉ còn fallback default để tránh section bị trống.
- `Brand Logos`: nếu `manual` thì ưu tiên partner admin chọn; sau đó lấy latest partners theo `order`; nếu chưa có logo thì show fallback brand text.

Đã bổ sung field `displayCategory` localized và hidden `nameLabel` cho collection `products` để relationship picker không hiện object `{vi,en}`.

Migration mới:

- `src/migrations/20260502_141617_cms_config_partners_products_cta_brands.ts`
- `src/migrations/20260502_141617_cms_config_partners_products_cta_brands.json`

Script seed dữ liệu test:

- `src/scripts/seedProductsAndPartners.ts`
- `src/scripts/runSeedProductsAndPartners.ts`

Kết quả local sau khi chạy seed:

- 5 product published/featured, có thumbnail PNG đầy đủ.
- 6 partner, có logo PNG đầy đủ.

Header/Footer không đưa vào `pages.layout` vì đây không phải page block; đã tách thành Global `site-settings` để admin chỉnh navigation/footer dùng chung toàn site.

Global mới:

- `src/globals/SiteSettings.ts`
- Registered trong `payload.config.ts`

Header/Footer logic:

- `Header` đọc `site-settings.header` để lấy logo text, phone, email, menu chính và menu con.
- `Footer` đọc `site-settings.footer` để lấy logo text, mô tả, màu nền, màu accent, các cột link, copyright và credit.
- Link nội bộ trong admin nhập không gồm locale, ví dụ `/gioi-thieu`; frontend tự thêm `/vi` hoặc `/en`.
- Nếu global chưa được admin save, frontend dùng fallback hiện tại để không vỡ layout.

Migration cho Header/Footer:

- `src/migrations/20260502_142730_cms_config_site_settings.ts`
- `src/migrations/20260502_142730_cms_config_site_settings.json`

## Kiểm tra đã chạy

```bash
npx tsc --noEmit
npm run lint
npm run migrate:home-page
PAYLOAD_CONFIG_PATH=payload.config.ts node_modules/.bin/payload migrate:status
node_modules/.bin/tsx src/scripts/normalizeHomePageId.ts
```

Kết quả:

- `npx tsc --noEmit`: pass
- `npm run lint`: pass
- `npm run migrate:home-page`: pass, đã tạo `pages/home (vi)` và update `pages/home (en)`
- `npm run migrate:home-page`: đã chạy lại sau khi thêm `stats`, local DB có sẵn 4 item stats cho Hero Section của `pages/home`
- `npm run migrate:home-page`: đã chạy lại sau khi thêm `cards`, local DB có sẵn 3 card cho section Lĩnh vực Hoạt động của `pages/home`
- `npm run migrate:home-page`: đã chạy lại sau khi thêm `URL ảnh fallback`, local DB có sẵn 3 URL ảnh cho service cards
- `npm run migrate:home-page`: đã chạy lại sau khi thêm cấu hình News block, local DB có title, view all và sourceMode `latest`
- `runSeedNewsArticles.ts`: pass, local DB có 3 bài `news` published và thumbnail media id 2, 3, 4
- `npm run migrate:home-page`: đã chạy lại sau khi thêm cấu hình Featured Projects block, local DB có title, backgroundColor, view all, sourceMode và tabs
- `runSeedFeaturedProjects.ts`: pass, local DB có 20 dự án `projects` published/featured, mỗi nhóm `energy/electrical/automation/bms` có 5 project
- `runSeedFeaturedProjects.ts` và `runSeedNewsArticles.ts`: đã chạy lại để backfill `titleLabel` cho relationship picker
- `npm run migrate:home-page`: đã chạy lại sau khi thêm cấu hình Partners, Products, CTA Banner, Brand Logos
- `runSeedProductsAndPartners.ts`: pass, local DB có 5 product và 6 partner kèm thumbnail/logo
- `npm run migrate:home-page`: đã chạy lại sau khi thêm Global `site-settings` cho Header/Footer
- `migrate:status`: pass, Payload đọc migration từ `src/migrations`
- `normalizeHomePageId.ts`: pass, local DB chỉ còn `home` với `id = 1`

## Bước vận hành tiếp theo

1. Migration đã chạy thành công ở local. Khi deploy sang môi trường khác có database riêng, chạy lại:

```bash
npm run migrate:home-page
```

2. Vào Payload Admin kiểm tra `Collections > Các Trang`, phải có document:

```txt
slug: home
template: home
layout: giữ nguyên các section từ Home cũ
```

3. Kiểm tra frontend:

```txt
/vi
/en
```

4. Khi chắc chắn Home đã chạy từ `pages/home`, có thể xóa hẳn Global `home-page` khỏi config trong một commit sau.

## Responsive theo design Pencil

Ngày 02/05/2026 đã đọc lại các frame trong `docs/design/design_1.pen`:

- `ESTEC - Trang chủ` desktop: 1440px
- `ESTEC - Trang chủ (Tablet)`: 768px
- `ESTEC - Trang chủ (Mobile)`: 375px

Đã chỉnh responsive cho các phần trang chủ:

- `Header`: mobile chỉ còn thanh header 36px, ẩn top info bar; tablet dùng padding 24px; desktop giữ layout đầy đủ.
- `HeroSection`: desktop giữ full hero 700px + content + stats; tablet/mobile theo design chỉ còn banner ảnh thấp 300px/220px và ẩn stats.
- `ServicesSection`: desktop 3 cột; tablet 3 cột compact; mobile stack 1 cột.
- `NewsSection`: desktop layout 1 bài lớn + 2 bài nhỏ; tablet giữ 2 cột compact; mobile stack dọc.
- `FeaturedProjects`: desktop 2 cột; tablet 2 cột compact; mobile 1 cột, tabs scroll ngang.
- `PartnersMosaic`: desktop giữ mosaic 3 cột; tablet mosaic thấp hơn; mobile stack ảnh dọc.
- `ProductsSection`: desktop 5 cột; tablet 3 cột; mobile 1 cột.
- `CTA Banner`: desktop padding rộng; tablet/mobile giảm padding, button stack trên mobile.
- `BrandLogos`: desktop 6 logo ngang; mobile thành grid 2 cột.
- `Footer`: desktop 4 cột; tablet 4 cột compact; mobile stack dọc.

Kiểm tra đã chạy sau responsive:

```bash
npx tsc --noEmit
npm run lint
git diff --check
curl -sS -I http://localhost:3000/vi
```

Kết quả: typecheck/lint/diff check pass, route `/vi` trả `200 OK`.

## CMS hóa các page còn lại trong design Pencil

Ngày 02/05/2026 đã đọc tiếp các frame còn lại trong `docs/design/design_1.pen`:

- `ESTEC - Giới thiệu công ty` + tablet/mobile
- `ESTEC - Dự án Tham khảo` + tablet/mobile
- `ESTEC - Chi tiết Dự án` + tablet/mobile

Quyết định kiến trúc:

- `gioi-thieu` và `du-an-tham-khao` là page trong collection `pages`, render bằng `layout` blocks giống Home.
- `chi-tiet-du-an/[slug]` không tạo từng page trong `pages`; route này render trực tiếp từ collection `projects`, vì mỗi dự án là một record CMS.
- Header, Footer, Brand Logos tiếp tục dùng component/global chung.

Block mới:

- `pageHero`: banner ảnh + breadcrumb + title.
- `aboutContent`: sidebar menu + nhiều section nội dung, ảnh, cards.
- `projectsListing`: filter tabs + grid dự án lấy từ collection `projects`.

Files chính:

- `src/blocks/index.ts`
- `src/collections/Pages.ts`
- `src/collections/Projects.ts`
- `src/components/blocks/RenderBlocks.tsx`
- `src/components/sections/AboutContentSection.tsx`
- `src/components/sections/ProjectsListingSection.tsx`
- `src/components/sections/ProjectsPageClient.tsx`
- `src/components/sections/ProjectFilterBar.tsx`
- `src/app/(frontend)/[locale]/chi-tiet-du-an/[slug]/page.tsx`

Project detail đã đổi từ hardcode object trong file sang fetch từ Payload collection `projects`.

Field mới trong `projects` để admin setup chi tiết:

- `detailHeroImage`
- `introImage`
- `customerReasons`
- `resultItems`

Script init:

- `src/scripts/initCorePages.ts`
- `src/scripts/runInitCorePages.ts`

Script đã tạo/update:

- Page `gioi-thieu`
- Page `du-an-tham-khao`
- Backfill detail content cho project seed `he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore`

Migration mới:

- `src/migrations/20260502_152841_cms_core_pages_about_projects.ts`
- `src/migrations/20260502_152841_cms_core_pages_about_projects.json`

Kiểm tra đã chạy:

```bash
npm run migrate:home-page
NODE_ENV=development PAYLOAD_CONFIG_PATH=payload.config.ts node_modules/.bin/payload run src/scripts/runInitCorePages.ts
curl -sS -I http://localhost:3000/vi/gioi-thieu
curl -sS -I http://localhost:3000/vi/du-an-tham-khao
curl -sS -I http://localhost:3000/vi/chi-tiet-du-an/he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore
npx tsc --noEmit
npm run lint
git diff --check
```

Kết quả: cả 3 route public trả `200 OK`, typecheck/lint/diff check pass.

## Thư viện Blocks trong Payload Admin

Ngày 03/05/2026 đã thêm admin custom view để xem danh sách block/component đang có trong Page Builder.

Mục tiêu:

- Payload vẫn add block trực tiếp trong `Pages > Bố cục nội dung`.
- Bổ sung một nơi xem tổng quan các block có thể dùng, thay vì phải mở dropdown trong từng page.
- Không thay đổi dữ liệu render frontend của các page.
- Không seed database; danh sách đọc trực tiếp từ `PageLayoutBlocks` trong code.

Admin URL:

- `/admin/block-library`

Nguồn dữ liệu:

- `src/blocks/index.ts` export `PageLayoutBlocks`.
- `src/collections/Pages.ts` dùng chính `PageLayoutBlocks` cho field `layout`.
- `src/components/admin/BlockLibraryView.tsx` đọc `PageLayoutBlocks` để render catalog.

Vì vậy, số block hiển thị trong thư viện luôn khớp với số block admin có thể add trong `Pages > Bố cục nội dung`.

Block hiện đang khả dụng:

- `pageHero`
- `hero`
- `aboutContent`
- `projectsListing`
- `services`
- `news`
- `featuredProjects`
- `partners`
- `products`
- `ctaBanner`
- `brandLogos`

Files mới:

- `src/components/admin/BlockLibraryView.tsx`
- `src/components/admin/BlockLibraryNavLink.tsx`

Kiểm tra đã chạy:

```bash
npm run migrate:home-page
npm run generate:importmap
npx tsc --noEmit
npm run lint
git diff --check
curl -sS -I http://localhost:3000/admin/block-library
```

Kết quả: typecheck/lint/diff check pass, route admin `/admin/block-library` trả `200 OK`.

## Update 0059 03052026 - Refactor page Giới thiệu công ty theo design_1.pen

Đã đọc lại frame `ESTEC - Giới thiệu công ty` cùng tablet/mobile trong `docs/design/design_1.pen` và refactor lại page `gioi-thieu` theo hướng bám design thay vì dùng bản seed rút gọn cũ.

Các thay đổi chính:

- Mở rộng block `aboutContent`:
  - thêm `sections[].variant`
  - thêm `sections[].paragraphs`
  - thêm `sections[].columns`
  - thêm `sections[].imagePosition`
  - thêm `sections[].images[].caption`
  - thêm `sections[].items[]`
- `AboutContentSection` giờ render nhiều kiểu section:
  - `intro`
  - `cards`
  - `gallery`
  - `itemGrid`
  - `splitMedia`
  - `documentList`
- `SidebarMenu` được làm lại theo kiểu list tĩnh, bỏ button lồng `Link`, phù hợp hơn với page mục lục dài.
- Script `src/scripts/initCorePages.ts` đã seed lại page `gioi-thieu` với cấu trúc gần design hơn:
  - 5 nhóm sidebar
  - 13 section nội dung
  - hero title đổi thành `CÔNG TY BẮC ÂU`
  - thêm đủ các khối: giới thiệu, sứ mệnh, 3 nhóm giải pháp, sản phẩm, dịch vụ, nhà xưởng, văn phòng, chứng chỉ chất lượng, HSE, chứng nhận, tài liệu
- Migration mới:
  - `src/migrations/20260503_003916_about_content_layout_variants.ts`

Ghi chú DB local:

- `runInitCorePages.ts` đã chạy xong và seed lại dữ liệu page.
- `npm run migrate` trên local DB hiện tại bị kẹt vì database này trước đó đã chạy bằng `dev push`, nên Payload cố replay từ migration đầu tiên trên một schema đã tồn tại sẵn. Đây là vấn đề lịch sử migration của local DB, không phải lỗi riêng của migration mới.
