-- Migration 008: Add product_categories collection, products relationship, and productCategoryListing block
-- Run BEFORE deploying code

-- ============================================================
-- 1. product_categories table
-- ============================================================
CREATE TABLE IF NOT EXISTS public.product_categories (
    id              serial            PRIMARY KEY,
    slug            character varying UNIQUE,
    name_vi         character varying,
    name_en         character varying,
    description_vi  character varying,
    description_en  character varying,
    image_id        integer,
    image_url       character varying,
    "order"         numeric           DEFAULT 0,
    visible         boolean           DEFAULT true,
    name_label      character varying,
    updated_at      timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at      timestamp(3) with time zone DEFAULT now() NOT NULL
);

CREATE INDEX IF NOT EXISTS product_categories_slug_idx ON public.product_categories (slug);
CREATE INDEX IF NOT EXISTS product_categories_updated_at_idx ON public.product_categories (updated_at);
CREATE INDEX IF NOT EXISTS product_categories_created_at_idx ON public.product_categories (created_at);

ALTER TABLE public.product_categories
    ADD CONSTRAINT product_categories_image_id_fk
    FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;

-- ============================================================
-- 2. products_rels table (for hasMany productCategories)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.products_rels (
    id                      serial            PRIMARY KEY,
    "order"                 integer,
    parent_id               integer           NOT NULL,
    path                    character varying NOT NULL,
    product_categories_id   integer
);

CREATE INDEX IF NOT EXISTS products_rels_order_idx ON public.products_rels ("order");
CREATE INDEX IF NOT EXISTS products_rels_parent_idx ON public.products_rels (parent_id);
CREATE INDEX IF NOT EXISTS products_rels_path_idx ON public.products_rels (path);
CREATE INDEX IF NOT EXISTS products_rels_product_categories_id_idx ON public.products_rels (product_categories_id);

ALTER TABLE public.products_rels
    ADD CONSTRAINT products_rels_parent_fk
    FOREIGN KEY (parent_id) REFERENCES public.products(id) ON DELETE CASCADE;

ALTER TABLE public.products_rels
    ADD CONSTRAINT products_rels_product_categories_id_fk
    FOREIGN KEY (product_categories_id) REFERENCES public.product_categories(id) ON DELETE CASCADE;

-- ============================================================
-- 3. _products_v_rels table (versioned products relationship)
-- ============================================================
CREATE TABLE IF NOT EXISTS public._products_v_rels (
    id                      serial            PRIMARY KEY,
    "order"                 integer,
    parent_id               integer           NOT NULL,
    path                    character varying NOT NULL,
    product_categories_id   integer
);

CREATE INDEX IF NOT EXISTS _products_v_rels_order_idx ON public._products_v_rels ("order");
CREATE INDEX IF NOT EXISTS _products_v_rels_parent_idx ON public._products_v_rels (parent_id);
CREATE INDEX IF NOT EXISTS _products_v_rels_path_idx ON public._products_v_rels (path);
CREATE INDEX IF NOT EXISTS _products_v_rels_product_categories_id_idx ON public._products_v_rels (product_categories_id);

ALTER TABLE public._products_v_rels
    ADD CONSTRAINT _products_v_rels_parent_fk
    FOREIGN KEY (parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;

ALTER TABLE public._products_v_rels
    ADD CONSTRAINT _products_v_rels_product_categories_id_fk
    FOREIGN KEY (product_categories_id) REFERENCES public.product_categories(id) ON DELETE CASCADE;

-- ============================================================
-- 4. Add product_categories_id to pages_rels (for block relationship)
-- ============================================================
ALTER TABLE public.pages_rels ADD COLUMN IF NOT EXISTS product_categories_id integer;

CREATE INDEX IF NOT EXISTS pages_rels_product_categories_id_idx ON public.pages_rels (product_categories_id);

ALTER TABLE public.pages_rels
    ADD CONSTRAINT pages_rels_product_categories_fk
    FOREIGN KEY (product_categories_id) REFERENCES public.product_categories(id) ON DELETE CASCADE;

-- ============================================================
-- 5. Add product_categories_id to payload_locked_documents_rels
-- ============================================================
ALTER TABLE public.payload_locked_documents_rels ADD COLUMN IF NOT EXISTS product_categories_id integer;

CREATE INDEX IF NOT EXISTS payload_locked_documents_rels_product_categories_id_idx
    ON public.payload_locked_documents_rels (product_categories_id);

ALTER TABLE public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_product_categories_fk
    FOREIGN KEY (product_categories_id) REFERENCES public.product_categories(id) ON DELETE CASCADE;

-- ============================================================
-- 6. Block table: pages_blocks_product_category_listing
-- ============================================================
DO $$ BEGIN
  CREATE TYPE public.enum_pages_blocks_product_cat_listing_source_mode AS ENUM ('auto', 'manual');
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;

CREATE TABLE IF NOT EXISTS public.pages_blocks_product_category_listing (
    _order      integer           NOT NULL,
    _parent_id  integer           NOT NULL,
    _path       text              NOT NULL,
    id          character varying NOT NULL PRIMARY KEY,
    block_name  character varying,
    source_mode public.enum_pages_blocks_product_cat_listing_source_mode DEFAULT 'auto'
);

CREATE INDEX IF NOT EXISTS pages_blocks_product_cat_listing_order_idx
    ON public.pages_blocks_product_category_listing (_order);
CREATE INDEX IF NOT EXISTS pages_blocks_product_cat_listing_parent_id_idx
    ON public.pages_blocks_product_category_listing (_parent_id);
CREATE INDEX IF NOT EXISTS pages_blocks_product_cat_listing_path_idx
    ON public.pages_blocks_product_category_listing (_path);

ALTER TABLE public.pages_blocks_product_category_listing
    ADD CONSTRAINT pages_blocks_product_cat_listing_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;

-- ============================================================
-- 7. Block table: pages_blocks_category_products
-- ============================================================
CREATE TABLE IF NOT EXISTS public.pages_blocks_category_products (
    _order      integer           NOT NULL,
    _parent_id  integer           NOT NULL,
    _path       text              NOT NULL,
    id          character varying NOT NULL PRIMARY KEY,
    block_name  character varying,
    category_id integer
);

CREATE INDEX IF NOT EXISTS pages_blocks_cat_products_order_idx
    ON public.pages_blocks_category_products (_order);
CREATE INDEX IF NOT EXISTS pages_blocks_cat_products_parent_id_idx
    ON public.pages_blocks_category_products (_parent_id);
CREATE INDEX IF NOT EXISTS pages_blocks_cat_products_path_idx
    ON public.pages_blocks_category_products (_path);
CREATE INDEX IF NOT EXISTS pages_blocks_cat_products_category_id_idx
    ON public.pages_blocks_category_products (category_id);

ALTER TABLE public.pages_blocks_category_products
    ADD CONSTRAINT pages_blocks_cat_products_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;

ALTER TABLE public.pages_blocks_category_products
    ADD CONSTRAINT pages_blocks_cat_products_category_id_fk
    FOREIGN KEY (category_id) REFERENCES public.product_categories(id) ON DELETE SET NULL;

-- ============================================================
-- 8. Add shortDescription columns to products
-- ============================================================
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS short_description_vi character varying;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS short_description_en character varying;
ALTER TABLE public._products_v ADD COLUMN IF NOT EXISTS version_short_description_vi character varying;
ALTER TABLE public._products_v ADD COLUMN IF NOT EXISTS version_short_description_en character varying;

-- ============================================================
-- 9. products_gallery array table
-- ============================================================
CREATE TABLE IF NOT EXISTS public.products_gallery (
    _order      integer           NOT NULL,
    _parent_id  integer           NOT NULL,
    id          character varying NOT NULL PRIMARY KEY,
    image_id    integer,
    image_u_r_l character varying
);

CREATE INDEX IF NOT EXISTS products_gallery_order_idx ON public.products_gallery (_order);
CREATE INDEX IF NOT EXISTS products_gallery_parent_id_idx ON public.products_gallery (_parent_id);
CREATE INDEX IF NOT EXISTS products_gallery_image_idx ON public.products_gallery (image_id);

ALTER TABLE public.products_gallery
    ADD CONSTRAINT products_gallery_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.products(id) ON DELETE CASCADE;

ALTER TABLE public.products_gallery
    ADD CONSTRAINT products_gallery_image_id_media_id_fk
    FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;

-- ============================================================
-- 10. _products_v_version_gallery (versioned gallery)
-- ============================================================
CREATE SEQUENCE IF NOT EXISTS _products_v_version_gallery_id_seq;

CREATE TABLE IF NOT EXISTS public._products_v_version_gallery (
    _order      integer           NOT NULL,
    _parent_id  integer           NOT NULL,
    id          integer           NOT NULL DEFAULT nextval('_products_v_version_gallery_id_seq'),
    image_id    integer,
    image_u_r_l character varying,
    _uuid       character varying,
    PRIMARY KEY (id)
);

ALTER SEQUENCE _products_v_version_gallery_id_seq OWNED BY public._products_v_version_gallery.id;

CREATE INDEX IF NOT EXISTS _products_v_version_gallery_order_idx ON public._products_v_version_gallery (_order);
CREATE INDEX IF NOT EXISTS _products_v_version_gallery_parent_id_idx ON public._products_v_version_gallery (_parent_id);
CREATE INDEX IF NOT EXISTS _products_v_version_gallery_image_idx ON public._products_v_version_gallery (image_id);

ALTER TABLE public._products_v_version_gallery
    ADD CONSTRAINT _products_v_version_gallery_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;

ALTER TABLE public._products_v_version_gallery
    ADD CONSTRAINT _products_v_version_gallery_image_id_media_id_fk
    FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;

-- ============================================================
-- 11. Remove old category/displayCategory columns from products (locales tables dropped by Drizzle push)
-- ============================================================
ALTER TABLE public.products DROP COLUMN IF EXISTS category;
ALTER TABLE public.products DROP COLUMN IF EXISTS display_category;
ALTER TABLE public._products_v DROP COLUMN IF EXISTS version_category;
ALTER TABLE public._products_v DROP COLUMN IF EXISTS version_display_category;
DROP TYPE IF EXISTS public.enum_products_category;
DROP TYPE IF EXISTS public.enum__products_v_version_category;

-- ============================================================
-- 12. Seed sample categories from design
-- ============================================================
INSERT INTO public.product_categories (name_vi, name_en, slug, "order", visible, name_label) VALUES
    ('Động cơ & Biến tần INNOMOTICS', 'INNOMOTICS Motors & Drives', 'innomotics', 1, true, 'Động cơ & Biến tần INNOMOTICS'),
    ('Tự động hóa', 'Automation', 'tu-dong-hoa', 2, true, 'Tự động hóa'),
    ('Thiết bị đo lường SIEMENS', 'SIEMENS Measurement', 'do-luong-siemens', 3, true, 'Thiết bị đo lường SIEMENS'),
    ('FLENDER', 'FLENDER', 'flender', 4, true, 'FLENDER'),
    ('Tokyo Keiki', 'Tokyo Keiki', 'tokyo-keiki', 5, true, 'Tokyo Keiki'),
    ('Thiết bị phân tích HORIBA', 'HORIBA Analysis Equipment', 'horiba', 6, true, 'Thiết bị phân tích HORIBA'),
    ('Van', 'Valves', 'van', 7, true, 'Van'),
    ('Động cơ giảm tốc', 'Gear Motors', 'dong-co-giam-toc', 8, true, 'Động cơ giảm tốc')
ON CONFLICT DO NOTHING;
