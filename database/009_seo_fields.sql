-- Migration 009: Add SEO fields to products, projects, news collections
-- Run BEFORE deploying code

-- ============================================================
-- 1. Products: add seo columns (non-localized)
-- ============================================================
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS seo_title character varying;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS seo_description character varying;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS seo_image_id integer;

CREATE INDEX IF NOT EXISTS products_seo_image_idx ON public.products (seo_image_id);
DO $$ BEGIN
  ALTER TABLE public.products
    ADD CONSTRAINT products_seo_image_id_media_id_fk
    FOREIGN KEY (seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;

-- Versioned products
ALTER TABLE public._products_v ADD COLUMN IF NOT EXISTS version_seo_title character varying;
ALTER TABLE public._products_v ADD COLUMN IF NOT EXISTS version_seo_description character varying;
ALTER TABLE public._products_v ADD COLUMN IF NOT EXISTS version_seo_image_id integer;

CREATE INDEX IF NOT EXISTS _products_v_version_seo_image_idx ON public._products_v (version_seo_image_id);
DO $$ BEGIN
  ALTER TABLE public._products_v
    ADD CONSTRAINT _products_v_version_seo_image_id_media_id_fk
    FOREIGN KEY (version_seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;

-- ============================================================
-- 2. Projects: add seo columns (localized title/description)
-- ============================================================
ALTER TABLE public.projects ADD COLUMN IF NOT EXISTS seo_image_id integer;

CREATE INDEX IF NOT EXISTS projects_seo_image_idx ON public.projects (seo_image_id);
DO $$ BEGIN
  ALTER TABLE public.projects
    ADD CONSTRAINT projects_seo_image_id_media_id_fk
    FOREIGN KEY (seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;

-- Projects locales: seo_title, seo_description
ALTER TABLE public.projects_locales ADD COLUMN IF NOT EXISTS seo_title character varying;
ALTER TABLE public.projects_locales ADD COLUMN IF NOT EXISTS seo_description character varying;

-- Versioned projects
ALTER TABLE public._projects_v ADD COLUMN IF NOT EXISTS version_seo_image_id integer;

CREATE INDEX IF NOT EXISTS _projects_v_version_seo_image_idx ON public._projects_v (version_seo_image_id);
DO $$ BEGIN
  ALTER TABLE public._projects_v
    ADD CONSTRAINT _projects_v_version_seo_image_id_media_id_fk
    FOREIGN KEY (version_seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;

ALTER TABLE public._projects_v_locales ADD COLUMN IF NOT EXISTS version_seo_title character varying;
ALTER TABLE public._projects_v_locales ADD COLUMN IF NOT EXISTS version_seo_description character varying;

-- ============================================================
-- 3. News: add seo columns (non-localized)
-- ============================================================
ALTER TABLE public.news ADD COLUMN IF NOT EXISTS seo_title character varying;
ALTER TABLE public.news ADD COLUMN IF NOT EXISTS seo_description character varying;
ALTER TABLE public.news ADD COLUMN IF NOT EXISTS seo_image_id integer;

CREATE INDEX IF NOT EXISTS news_seo_image_idx ON public.news (seo_image_id);
DO $$ BEGIN
  ALTER TABLE public.news
    ADD CONSTRAINT news_seo_image_id_media_id_fk
    FOREIGN KEY (seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;

-- Versioned news
ALTER TABLE public._news_v ADD COLUMN IF NOT EXISTS version_seo_title character varying;
ALTER TABLE public._news_v ADD COLUMN IF NOT EXISTS version_seo_description character varying;
ALTER TABLE public._news_v ADD COLUMN IF NOT EXISTS version_seo_image_id integer;

CREATE INDEX IF NOT EXISTS _news_v_version_seo_image_idx ON public._news_v (version_seo_image_id);
DO $$ BEGIN
  ALTER TABLE public._news_v
    ADD CONSTRAINT _news_v_version_seo_image_id_media_id_fk
    FOREIGN KEY (version_seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;
EXCEPTION WHEN duplicate_object THEN NULL;
END $$;
