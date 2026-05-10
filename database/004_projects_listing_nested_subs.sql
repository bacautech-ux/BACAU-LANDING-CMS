-- Migration 004: Nested sub-categories inside parentCategories for ProjectsListingBlock
-- Run AFTER deploying code changes (industryFilters moved inside parentCategories).
--
-- Note: dbName: 'pbpl_pc_industry_filters' is used in the block config so Payload
--       looks for tables named exactly: pbpl_pc_industry_filters and pbpl_pc_industry_filters_locales
--
-- Changes:
--   1. Create pbpl_pc_industry_filters — nested sub-categories per parent tab
--   2. Create pbpl_pc_industry_filters_locales — localized label field
--   3. Drop old flat industry_filters tables (no longer referenced by Payload)

-- ─── 1. Sequence for locales id ──────────────────────────────────────────────

CREATE SEQUENCE IF NOT EXISTS pbpl_pc_ind_filters_locales_id_seq;

-- ─── 2. Main subs table ───────────────────────────────────────────────────────
-- _parent_id references pages_blocks_projects_listing_parent_categories.id

CREATE TABLE IF NOT EXISTS public.pbpl_pc_industry_filters (
    _order     integer          NOT NULL,
    _parent_id character varying NOT NULL,
    id         character varying NOT NULL,
    value      character varying NOT NULL
);

-- ─── 3. Locales table for the label field ────────────────────────────────────

CREATE TABLE IF NOT EXISTS public.pbpl_pc_industry_filters_locales (
    label      character varying NOT NULL,
    id         integer           NOT NULL DEFAULT nextval('pbpl_pc_ind_filters_locales_id_seq'),
    _locale    public._locales   NOT NULL,
    _parent_id character varying NOT NULL
);

ALTER SEQUENCE pbpl_pc_ind_filters_locales_id_seq
    OWNED BY public.pbpl_pc_industry_filters_locales.id;

-- ─── 4. Primary keys ─────────────────────────────────────────────────────────

ALTER TABLE public.pbpl_pc_industry_filters
    ADD CONSTRAINT pbpl_pc_industry_filters_pkey PRIMARY KEY (id);

ALTER TABLE public.pbpl_pc_industry_filters_locales
    ADD CONSTRAINT pbpl_pc_industry_filters_locales_pkey PRIMARY KEY (id);

-- ─── 5. Unique constraint on locales ─────────────────────────────────────────

CREATE UNIQUE INDEX IF NOT EXISTS pbpl_pc_ind_filters_locales_locale_parent_idx
    ON public.pbpl_pc_industry_filters_locales (_locale, _parent_id);

-- ─── 6. Indexes ───────────────────────────────────────────────────────────────

CREATE INDEX IF NOT EXISTS pbpl_pc_industry_filters_order_idx
    ON public.pbpl_pc_industry_filters (_order);

CREATE INDEX IF NOT EXISTS pbpl_pc_industry_filters_parent_id_idx
    ON public.pbpl_pc_industry_filters (_parent_id);

-- ─── 7. Foreign keys ─────────────────────────────────────────────────────────

ALTER TABLE public.pbpl_pc_industry_filters
    ADD CONSTRAINT pbpl_pc_industry_filters_parent_id_fk
    FOREIGN KEY (_parent_id)
    REFERENCES public.pages_blocks_projects_listing_parent_categories(id)
    ON DELETE CASCADE;

ALTER TABLE public.pbpl_pc_industry_filters_locales
    ADD CONSTRAINT pbpl_pc_industry_filters_locales_parent_id_fk
    FOREIGN KEY (_parent_id)
    REFERENCES public.pbpl_pc_industry_filters(id)
    ON DELETE CASCADE;

-- ─── 8. Drop old flat industry_filters tables (no longer used) ───────────────

DROP TABLE IF EXISTS public.pages_blocks_projects_listing_industry_filters_locales CASCADE;
DROP TABLE IF EXISTS public.pages_blocks_projects_listing_industry_filters CASCADE;
