# Layout Spacing Standard

## Section padding chuẩn

Tất cả các `<section>` trên toàn site dùng chung bộ padding sau:

| Breakpoint | Horizontal (px) | Vertical (py) | Giá trị thực |
|---|---|---|---|
| mobile (default) | `px-4` | `py-8` | 16px / 32px |
| tablet `md` | `md:px-6` | `md:py-12` | 24px / 48px |
| desktop `xl` | `xl:px-[60px]` | `xl:py-16` | 60px / 64px |

**Class đầy đủ:**
```
px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16
```

Horizontal padding `xl:px-[60px]` = 60px khớp với Header, đảm bảo content thẳng hàng từ trên xuống dưới.

---

## Các ngoại lệ

| Component | Padding | Lý do |
|---|---|---|
| `Header` | `px-3 md:px-6 xl:px-[60px]` | Compact hơn ở mobile (navbar) |
| `Footer` | `px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-14` | py nhỏ hơn 1 bậc vì footer compact hơn section |
| `CTABanner` | `px-4 py-10 md:px-24 xl:px-[200px] xl:py-20` | Nội dung căn giữa — padding ngang lớn để thu hẹp text width |
| `PageHero` | `px-4 pb-5 md:px-6 md:pb-6 xl:px-[60px] xl:pb-[30px]` | Chỉ có `pb` (bottom), không có `pt` vì ảnh fill full-height |
| `HeroSection` | Full-bleed, nội dung bên trong dùng padding riêng | Hero banner không cần section padding |

---

## Áp dụng vào code mới

Khi tạo section component mới, copy đúng class chuẩn vào `<section>`:

```tsx
// Nền trắng
<section className="bg-white px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16">

// Nền xám nhạt
<section className="bg-bg-light px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16">

// Nền tối (inline style)
<section
  className="px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16"
  style={{ background: backgroundColor }}
>
```

---

## Các section đã áp dụng chuẩn

- `WelcomeIntro`
- `NewsSection` (cả 2 variant: `featured` và `grid`)
- `FeaturedProjects`
- `ServicesSection`
- `ProductsSection`
- `PartnersMosaic`
- `BrandLogos`
- `Footer` (dùng chuẩn riêng cho footer, xem bảng ngoại lệ)
