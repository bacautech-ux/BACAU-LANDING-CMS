-- Migration 004: Nested sub-categories inside parentCategories for ProjectsListingBlock
-- Run AFTER deploying code changes (industryFilters moved inside parentCategories).
--
-- Changes:
--   1. Create new nested table: pages_blocks_projects_listing_parent_categories_subs
--      (dbName: 'subs' to stay under Postgres 63-char identifier limit)
--   2. Create its locales table for the localized `label` field
--   3. Drop old flat industry_filters tables (no longer referenced by Payload)

-- ─── 1. Sequence for the locales table id (short name, avoids 63-char limit) ──

CREATE SEQUENCE IF NOT EXISTS pbpl_pc_subs_loc_id_seq;

-- ─── 2. New nested subs table (mirrors industry_filters structure but
--        _parent_id references parent_categories.id, not the block root) ────────

CREATE TABLE IF NOT EXISTS public.pages_blocks_projects_listing_parent_categories_subs (
    _order  integer          NOT NULL,
    _parent_id character varying NOT NULL,
    id      character varying NOT NULL,
    value   character varying NOT NULL
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

-- ─── 5. Unique constraint on locales (one locale per row) ────────────────────

CREATE UNIQUE INDEX IF NOT EXISTS pbpl_pc_subs_locales_locale_parent_idx
    ON public.pages_blocks_projects_listing_parent_categories_subs_locales (_locale, _parent_id);

-- ─── 6. Indexes on subs table ────────────────────────────────────────────────

CREATE INDEX IF NOT EXISTS pbpl_pc_subs_order_idx
    ON public.pages_blocks_projects_listing_parent_categories_subs (_order);

CREATE INDEX IF NOT EXISTS pbpl_pc_subs_parent_id_idx
    ON public.pages_blocks_projects_listing_parent_categories_subs (_parent_id);

-- ─── 7. Foreign keys ─────────────────────────────────────────────────────────

-- subs._parent_id → parent_categories.id
ALTER TABLE public.pages_blocks_projects_listing_parent_categories_subs
    ADD CONSTRAINT pbpl_pc_subs_parent_id_fk
    FOREIGN KEY (_parent_id)
    REFERENCES public.pages_blocks_projects_listing_parent_categories(id)
    ON DELETE CASCADE;

-- subs_locales._parent_id → subs.id
ALTER TABLE public.pages_blocks_projects_listing_parent_categories_subs_locales
    ADD CONSTRAINT pbpl_pc_subs_locales_parent_id_fk
    FOREIGN KEY (_parent_id)
    REFERENCES public.pages_blocks_projects_listing_parent_categories_subs(id)
    ON DELETE CASCADE;

-- ─── 8. Drop old flat industry_filters tables (no longer used) ───────────────

DROP TABLE IF EXISTS public.pages_blocks_projects_listing_industry_filters_locales CASCADE;
DROP TABLE IF EXISTS public.pages_blocks_projects_listing_industry_filters CASCADE;
