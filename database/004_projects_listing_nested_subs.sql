-- Migration 004: Nested sub-categories inside parentCategories for ProjectsListingBlock
-- Run AFTER deploying code changes (industryFilters moved inside parentCategories).
--
-- dbName: 'pages_blocks_projects_listing_parent_categories_subs' (52 chars, under 63 limit)
-- Payload looks for tables named exactly:
--   pages_blocks_projects_listing_parent_categories_subs
--   pages_blocks_projects_listing_parent_categories_subs_locales
--
-- Changes:
--   1. Create nested subs table (_parent_id → parent_categories.id)
--   2. Create locales table for the label field
--   3. Drop old flat industry_filters tables (no longer referenced by Payload)

-- ─── 1. Sequence for locales id ──────────────────────────────────────────────

CREATE SEQUENCE IF NOT EXISTS pbpl_pc_subs_loc_id_seq;

-- ─── 2. Main subs table ───────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS public.pages_blocks_projects_listing_parent_categories_subs (
    _order     integer          NOT NULL,
    _parent_id character varying NOT NULL,
    id         character varying NOT NULL,
    value      character varying NOT NULL
);

-- ─── 3. Locales table for the label field ────────────────────────────────────

CREATE TABLE IF NOT EXISTS public.pages_blocks_projects_listing_parent_categories_subs_locales (
    label      character varying NOT NULL,
    id         integer           NOT NULL DEFAULT nextval('pbpl_pc_subs_loc_id_seq'),
    _locale    public._locales   NOT NULL,
    _parent_id character varying NOT NULL
);

ALTER SEQUENCE pbpl_pc_subs_loc_id_seq
    OWNED BY public.pages_blocks_projects_listing_parent_categories_subs_locales.id;

-- ─── 4. Primary keys ─────────────────────────────────────────────────────────

ALTER TABLE public.pages_blocks_projects_listing_parent_categories_subs
    ADD CONSTRAINT pages_blocks_projects_listing_parent_categories_subs_pkey
    PRIMARY KEY (id);

ALTER TABLE public.pages_blocks_projects_listing_parent_categories_subs_locales
    ADD CONSTRAINT pbpl_pc_subs_locales_pkey
    PRIMARY KEY (id);

-- ─── 5. Unique constraint on locales ─────────────────────────────────────────

CREATE UNIQUE INDEX IF NOT EXISTS pbpl_pc_subs_locales_locale_parent_idx
    ON public.pages_blocks_projects_listing_parent_categories_subs_locales (_locale, _parent_id);

-- ─── 6. Indexes ───────────────────────────────────────────────────────────────

CREATE INDEX IF NOT EXISTS pbpl_pc_subs_order_idx
    ON public.pages_blocks_projects_listing_parent_categories_subs (_order);

CREATE INDEX IF NOT EXISTS pbpl_pc_subs_parent_id_idx
    ON public.pages_blocks_projects_listing_parent_categories_subs (_parent_id);

-- ─── 7. Foreign keys ─────────────────────────────────────────────────────────

ALTER TABLE public.pages_blocks_projects_listing_parent_categories_subs
    ADD CONSTRAINT pbpl_pc_subs_parent_id_fk
    FOREIGN KEY (_parent_id)
    REFERENCES public.pages_blocks_projects_listing_parent_categories(id)
    ON DELETE CASCADE;

ALTER TABLE public.pages_blocks_projects_listing_parent_categories_subs_locales
    ADD CONSTRAINT pbpl_pc_subs_locales_parent_id_fk
    FOREIGN KEY (_parent_id)
    REFERENCES public.pages_blocks_projects_listing_parent_categories_subs(id)
    ON DELETE CASCADE;

-- ─── 8. Drop old flat industry_filters tables (no longer used) ───────────────

DROP TABLE IF EXISTS public.pages_blocks_projects_listing_industry_filters_locales CASCADE;
DROP TABLE IF EXISTS public.pages_blocks_projects_listing_industry_filters CASCADE;
