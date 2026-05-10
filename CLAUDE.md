# CLAUDE.md — Project Rules

## Database Migrations

Production dùng PostgreSQL (Supabase) với `push: false` — Payload/Drizzle **không tự migrate schema trên production**. Mọi thay đổi schema phải có file SQL migration để chạy tay.

### Khi nào phải tạo migration

Tạo migration bất cứ khi nào có thay đổi liên quan đến database, bao gồm:

- Thêm / xoá / đổi tên **collection** trong Payload
- Thêm / xoá / đổi tên **field** trong collection hoặc block (đặc biệt array fields — tạo/xoá bảng riêng)
- Thêm **block mới** có array fields (mỗi array là một bảng riêng)
- Xoá **block** hoặc **field** không còn dùng
- Thay đổi **enum** (thêm/xoá option trong `select` field)
- Thêm / xoá **global** trong Payload
- Thay đổi `dbName` trên bất kỳ field nào

### Quy trình

1. Làm thay đổi trong code (collection, block, field...)
2. **Tạo file migration** tại `database/00N_tên_mô_tả.sql`
3. Push code lên git
4. **Báo rõ** với user: "Cần chạy migration `00N_tên.sql` trên Supabase trước khi deploy"

### Quy ước đặt tên file

```
database/
  001_initial_schema.sql
  002_import_data.sql
  003_page_hero_breadcrumbs_tabbed_docs.sql
  004_projects_listing_nested_subs.sql
  005_...sql          ← migration tiếp theo
```

Tên file: `NNN_mô_tả_ngắn_gọn.sql` (số thứ tự 3 chữ số, dùng underscore).

### Cấu trúc file migration

```sql
-- Migration NNN: Mô tả ngắn gọn việc migration này làm
-- Run BEFORE / AFTER deploying code (ghi rõ thứ tự)

-- Nội dung SQL...
```

Luôn ghi rõ trong comment đầu file: chạy migration này **trước hay sau** khi deploy code.

### Naming conventions — Payload table names

Payload tự sinh tên bảng từ tên collection/block/field. Lưu ý:

- PostgreSQL giới hạn tên tối đa **63 ký tự**
- Array field lồng nhau dễ sinh tên > 63 ký tự → dùng `dbName` để đặt tên ngắn hơn
- `dbName` trên array field = **tên bảng đầy đủ** (không phải suffix)
- Khi dùng `dbName`, tên bảng locales = `{dbName}_locales`

Ví dụ:
```ts
// Tên tự sinh: pages_blocks_projects_listing_parent_categories_industry_filters = 64 ký tự → LỖI
// Dùng dbName để đặt tên đầy đủ hợp lệ:
{
  name: 'industryFilters',
  type: 'array',
  dbName: 'pages_blocks_projects_listing_parent_categories_subs', // 52 ký tự ✓
  fields: [...]
}
```

### Template migration cho array field mới

```sql
-- Sequence cho locales id
CREATE SEQUENCE IF NOT EXISTS <short_seq_name>_id_seq;

-- Bảng chính
CREATE TABLE IF NOT EXISTS public.<table_name> (
    _order     integer          NOT NULL,
    _parent_id character varying NOT NULL,
    id         character varying NOT NULL,
    -- các fields khác...
);

-- Bảng locales (nếu có localized field)
CREATE TABLE IF NOT EXISTS public.<table_name>_locales (
    <localized_field> character varying NOT NULL,
    id         integer           NOT NULL DEFAULT nextval('<short_seq_name>_id_seq'),
    _locale    public._locales   NOT NULL,
    _parent_id character varying NOT NULL
);

ALTER SEQUENCE <short_seq_name>_id_seq OWNED BY public.<table_name>_locales.id;

-- Primary keys
ALTER TABLE public.<table_name> ADD CONSTRAINT <table_name>_pkey PRIMARY KEY (id);
ALTER TABLE public.<table_name>_locales ADD CONSTRAINT <table_name>_locales_pkey PRIMARY KEY (id);

-- Unique index locales
CREATE UNIQUE INDEX IF NOT EXISTS <short>_locale_parent_idx
    ON public.<table_name>_locales (_locale, _parent_id);

-- Indexes
CREATE INDEX IF NOT EXISTS <short>_order_idx ON public.<table_name> (_order);
CREATE INDEX IF NOT EXISTS <short>_parent_id_idx ON public.<table_name> (_parent_id);

-- Foreign keys
ALTER TABLE public.<table_name>
    ADD CONSTRAINT <short>_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.<parent_table>(id) ON DELETE CASCADE;

ALTER TABLE public.<table_name>_locales
    ADD CONSTRAINT <short>_locales_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.<table_name>(id) ON DELETE CASCADE;
```
