-- Migration 006: Add ExternalLinks block — danh sách URL với auto-fetch metadata
-- Run BEFORE deploying code

-- Sequence for locales id
CREATE SEQUENCE IF NOT EXISTS pages_bl_ext_links_links_loc_id_seq;

-- Main array table
CREATE TABLE IF NOT EXISTS public.pages_blocks_external_links_links (
    _order          integer           NOT NULL,
    _parent_id      integer           NOT NULL,
    _path           text              NOT NULL,
    id              character varying NOT NULL,
    url             character varying,
    thumbnail_u_r_l character varying,
    thumbnail_id    integer,
    view_count      numeric
);

-- Locales table (title, description are localized)
CREATE TABLE IF NOT EXISTS public.pages_blocks_external_links_links_locales (
    title       character varying,
    description character varying,
    id          integer         NOT NULL DEFAULT nextval('pages_bl_ext_links_links_loc_id_seq'),
    _locale     public._locales NOT NULL,
    _parent_id  character varying NOT NULL
);

ALTER SEQUENCE pages_bl_ext_links_links_loc_id_seq OWNED BY public.pages_blocks_external_links_links_locales.id;

-- Primary keys
ALTER TABLE public.pages_blocks_external_links_links
    ADD CONSTRAINT pages_blocks_external_links_links_pkey PRIMARY KEY (id);

ALTER TABLE public.pages_blocks_external_links_links_locales
    ADD CONSTRAINT pages_bl_ext_links_links_loc_pkey PRIMARY KEY (id);

-- Unique index locales
CREATE UNIQUE INDEX IF NOT EXISTS pages_bl_ext_links_links_loc_locale_parent_idx
    ON public.pages_blocks_external_links_links_locales (_locale, _parent_id);

-- Indexes
CREATE INDEX IF NOT EXISTS pages_bl_ext_links_links_order_idx
    ON public.pages_blocks_external_links_links (_order);

CREATE INDEX IF NOT EXISTS pages_bl_ext_links_links_parent_id_idx
    ON public.pages_blocks_external_links_links (_parent_id);

CREATE INDEX IF NOT EXISTS pages_bl_ext_links_links_path_idx
    ON public.pages_blocks_external_links_links (_path);

CREATE INDEX IF NOT EXISTS pages_bl_ext_links_links_thumbnail_idx
    ON public.pages_blocks_external_links_links (thumbnail_id);

-- Foreign keys
ALTER TABLE public.pages_blocks_external_links_links
    ADD CONSTRAINT pages_bl_ext_links_links_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;

ALTER TABLE public.pages_blocks_external_links_links
    ADD CONSTRAINT pages_bl_ext_links_links_thumbnail_id_fk
    FOREIGN KEY (thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;

ALTER TABLE public.pages_blocks_external_links_links_locales
    ADD CONSTRAINT pages_bl_ext_links_links_loc_parent_id_fk
    FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_external_links_links(id) ON DELETE CASCADE;
