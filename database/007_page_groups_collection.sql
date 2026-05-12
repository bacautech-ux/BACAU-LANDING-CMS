-- Migration 007: Create page_groups collection + change pages.page_group to relationship
-- Run BEFORE deploying code

-- 1. Create page_groups table
CREATE TABLE IF NOT EXISTS public.page_groups (
    id          serial            PRIMARY KEY,
    name        character varying NOT NULL,
    color       character varying DEFAULT '#6b7280',
    "order"     numeric           DEFAULT 10,
    updated_at  timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at  timestamp(3) with time zone DEFAULT now() NOT NULL
);

CREATE INDEX IF NOT EXISTS page_groups_created_at_idx ON public.page_groups (created_at);

-- 2. Seed default groups
INSERT INTO public.page_groups (name, color, "order") VALUES
    ('Trang chủ', '#2b358c', 1),
    ('Giới thiệu', '#0891b2', 2),
    ('Giải pháp / Dịch vụ', '#7c3aed', 3),
    ('Dự án', '#059669', 4),
    ('Sản phẩm', '#d97706', 5),
    ('Tin tức / Blog', '#dc2626', 6),
    ('Khác', '#6b7280', 10)
ON CONFLICT DO NOTHING;

-- 3. Change pages.page_group from varchar (select) to integer (relationship FK)
-- Drop old column if it was varchar
ALTER TABLE public.pages DROP COLUMN IF EXISTS page_group;

-- Add new relationship column
ALTER TABLE public.pages ADD COLUMN IF NOT EXISTS page_group_id integer;

CREATE INDEX IF NOT EXISTS pages_page_group_id_idx ON public.pages (page_group_id);

ALTER TABLE public.pages
    ADD CONSTRAINT pages_page_group_id_fk
    FOREIGN KEY (page_group_id) REFERENCES public.page_groups(id) ON DELETE SET NULL;

-- 4. Assign existing pages to groups (adjust IDs based on insert order above)
-- Trang chủ group (ID=1)
UPDATE public.pages SET page_group_id = 1 WHERE slug IN ('home', 'home_v2', 'home-modern-split', 'home-data-grid', 'home-modern-rounded', 'home-ultra-modern');
-- Giới thiệu (ID=2)
UPDATE public.pages SET page_group_id = 2 WHERE slug = 'gioi-thieu';
-- Giải pháp (ID=3)
UPDATE public.pages SET page_group_id = 3 WHERE slug = 'giai-phap-dien-tu-dong-hoa';
-- Dự án (ID=4)
UPDATE public.pages SET page_group_id = 4 WHERE slug = 'du-an-tham-khao';
