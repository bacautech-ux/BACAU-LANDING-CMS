--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: _locales; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public._locales AS ENUM (
    'vi',
    'en'
);


--
-- Name: enum__news_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__news_v_published_locale AS ENUM (
    'vi',
    'en'
);


--
-- Name: enum__news_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__news_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__news_v_version_tags; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__news_v_version_tags AS ENUM (
    'Tin tức',
    'Sự kiện',
    'Hội thảo',
    'Thông cáo'
);


--
-- Name: enum__products_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_published_locale AS ENUM (
    'vi',
    'en'
);


--
-- Name: enum__products_v_version_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_category AS ENUM (
    'automation',
    'measurement',
    'industrial-valve',
    'electrical',
    'motor',
    'sensor'
);


--
-- Name: enum__products_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__projects_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__projects_v_published_locale AS ENUM (
    'vi',
    'en'
);


--
-- Name: enum__projects_v_version_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__projects_v_version_category AS ENUM (
    'electrical-automation',
    'digitalization',
    'measurement',
    'industrial-services'
);


--
-- Name: enum__projects_v_version_featured_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__projects_v_version_featured_type AS ENUM (
    'energy',
    'electrical',
    'automation',
    'bms'
);


--
-- Name: enum__projects_v_version_industry; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__projects_v_version_industry AS ENUM (
    'oil-gas',
    'fertilizer-chemical',
    'power',
    'cement-mining',
    'steel',
    'food-beverage',
    'consumer-goods',
    'water',
    'port',
    'other'
);


--
-- Name: enum__projects_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__projects_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__services_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__services_v_published_locale AS ENUM (
    'vi',
    'en'
);


--
-- Name: enum__services_v_version_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__services_v_version_category AS ENUM (
    'electrical-automation',
    'digitalization',
    'measurement',
    'industrial-services'
);


--
-- Name: enum__services_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__services_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_home_page_blocks_brand_logos_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_brand_logos_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_home_page_blocks_featured_projects_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_featured_projects_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_home_page_blocks_featured_projects_tabs_value; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_featured_projects_tabs_value AS ENUM (
    'energy',
    'electrical',
    'automation',
    'bms'
);


--
-- Name: enum_home_page_blocks_featured_projects_text_theme; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_featured_projects_text_theme AS ENUM (
    'dark',
    'light'
);


--
-- Name: enum_home_page_blocks_featured_projects_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_featured_projects_variant AS ENUM (
    'grid',
    'alternating',
    'list'
);


--
-- Name: enum_home_page_blocks_hero_background_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_hero_background_type AS ENUM (
    'image',
    'video'
);


--
-- Name: enum_home_page_blocks_hero_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_hero_variant AS ENUM (
    'corporate',
    'modernSplit',
    'dataGrid',
    'modernRounded',
    'ultraModern'
);


--
-- Name: enum_home_page_blocks_news_display_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_news_display_mode AS ENUM (
    'featured',
    'grid'
);


--
-- Name: enum_home_page_blocks_news_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_news_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_home_page_blocks_products_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_products_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_home_page_blocks_services_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_home_page_blocks_services_variant AS ENUM (
    'cards',
    'bento',
    'alternating'
);


--
-- Name: enum_news_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_news_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_news_tags; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_news_tags AS ENUM (
    'Tin tức',
    'Sự kiện',
    'Hội thảo',
    'Thông cáo'
);


--
-- Name: enum_pages_blocks_about_content_sections_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_about_content_sections_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_about_content_sections_image_position; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_about_content_sections_image_position AS ENUM (
    'left',
    'right'
);


--
-- Name: enum_pages_blocks_about_content_sections_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_about_content_sections_variant AS ENUM (
    'intro',
    'cards',
    'gallery',
    'itemGrid',
    'splitMedia',
    'documentList'
);


--
-- Name: enum_pages_blocks_brand_logos_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_brand_logos_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_pages_blocks_content_intro_image_position; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_intro_image_position AS ENUM (
    'left',
    'right'
);


--
-- Name: enum_pages_blocks_feature_cards_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_feature_cards_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_featured_projects_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_featured_projects_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_pages_blocks_featured_projects_tabs_value; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_featured_projects_tabs_value AS ENUM (
    'energy',
    'electrical',
    'automation',
    'bms'
);


--
-- Name: enum_pages_blocks_featured_projects_text_theme; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_featured_projects_text_theme AS ENUM (
    'dark',
    'light'
);


--
-- Name: enum_pages_blocks_featured_projects_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_featured_projects_variant AS ENUM (
    'grid',
    'alternating',
    'list'
);


--
-- Name: enum_pages_blocks_hero_background_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_hero_background_type AS ENUM (
    'image',
    'video'
);


--
-- Name: enum_pages_blocks_hero_banner_background_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_hero_banner_background_type AS ENUM (
    'image',
    'video'
);


--
-- Name: enum_pages_blocks_hero_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_hero_variant AS ENUM (
    'corporate',
    'modernSplit',
    'dataGrid',
    'modernRounded',
    'ultraModern'
);


--
-- Name: enum_pages_blocks_image_gallery_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_image_gallery_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_info_grid_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_info_grid_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_media_text_split_image_position; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_media_text_split_image_position AS ENUM (
    'left',
    'right'
);


--
-- Name: enum_pages_blocks_news_display_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_news_display_mode AS ENUM (
    'featured',
    'grid'
);


--
-- Name: enum_pages_blocks_news_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_news_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_pages_blocks_products_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_products_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_pages_blocks_projects_listing_parent_categories_value; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_projects_listing_parent_categories_value AS ENUM (
    'electrical-automation',
    'digitalization',
    'industrial-services',
    'measurement'
);


--
-- Name: enum_pages_blocks_projects_listing_source_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_projects_listing_source_mode AS ENUM (
    'latest',
    'manual'
);


--
-- Name: enum_pages_blocks_services_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_services_variant AS ENUM (
    'cards',
    'bento',
    'alternating'
);


--
-- Name: enum_pages_template; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_template AS ENUM (
    'home',
    'builder',
    'about',
    'projects'
);


--
-- Name: enum_products_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_category AS ENUM (
    'automation',
    'measurement',
    'industrial-valve',
    'electrical',
    'motor',
    'sensor'
);


--
-- Name: enum_products_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_projects_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_projects_category AS ENUM (
    'electrical-automation',
    'digitalization',
    'measurement',
    'industrial-services'
);


--
-- Name: enum_projects_featured_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_projects_featured_type AS ENUM (
    'energy',
    'electrical',
    'automation',
    'bms'
);


--
-- Name: enum_projects_industry; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_projects_industry AS ENUM (
    'oil-gas',
    'fertilizer-chemical',
    'power',
    'cement-mining',
    'steel',
    'food-beverage',
    'consumer-goods',
    'water',
    'port',
    'other'
);


--
-- Name: enum_projects_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_projects_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_services_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_services_category AS ENUM (
    'electrical-automation',
    'digitalization',
    'measurement',
    'industrial-services'
);


--
-- Name: enum_services_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_services_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_users_role; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_users_role AS ENUM (
    'admin',
    'editor'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _news_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._news_v (
    id integer NOT NULL,
    parent_id integer,
    version_title_vi character varying,
    version_title_en character varying,
    version_slug character varying,
    version_published_at timestamp(3) with time zone,
    version_thumbnail_id integer,
    version_excerpt_vi character varying,
    version_excerpt_en character varying,
    version_content_vi jsonb,
    version_content_en jsonb,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__news_v_version_status DEFAULT 'draft'::public.enum__news_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    snapshot boolean,
    published_locale public.enum__news_v_published_locale,
    version_title_label character varying
);


--
-- Name: _news_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._news_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _news_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._news_v_id_seq OWNED BY public._news_v.id;


--
-- Name: _news_v_version_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._news_v_version_tags (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum__news_v_version_tags,
    id integer NOT NULL
);


--
-- Name: _news_v_version_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._news_v_version_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _news_v_version_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._news_v_version_tags_id_seq OWNED BY public._news_v_version_tags.id;


--
-- Name: _products_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v (
    id integer NOT NULL,
    parent_id integer,
    version_name_vi character varying,
    version_name_en character varying,
    version_slug character varying,
    version_category public.enum__products_v_version_category,
    version_thumbnail_id integer,
    version_description_vi jsonb,
    version_description_en jsonb,
    version_brand character varying,
    version_featured boolean DEFAULT false,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__products_v_version_status DEFAULT 'draft'::public.enum__products_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    snapshot boolean,
    published_locale public.enum__products_v_published_locale,
    version_name_label character varying
);


--
-- Name: _products_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_id_seq OWNED BY public._products_v.id;


--
-- Name: _products_v_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_locales (
    version_display_category character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _products_v_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_locales_id_seq OWNED BY public._products_v_locales.id;


--
-- Name: _projects_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v (
    id integer NOT NULL,
    parent_id integer,
    version_title_vi character varying,
    version_title_en character varying,
    version_slug character varying,
    version_category public.enum__projects_v_version_category,
    version_industry public.enum__projects_v_version_industry,
    version_thumbnail_id integer,
    version_customer_name_vi character varying,
    version_customer_name_en character varying,
    version_customer_address character varying,
    version_location character varying,
    version_year numeric,
    version_summary_vi character varying,
    version_summary_en character varying,
    version_intro_vi jsonb,
    version_intro_en jsonb,
    version_solutions_vi jsonb,
    version_solutions_en jsonb,
    version_results_vi jsonb,
    version_results_en jsonb,
    version_featured boolean DEFAULT false,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__projects_v_version_status DEFAULT 'draft'::public.enum__projects_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    snapshot boolean,
    published_locale public.enum__projects_v_published_locale,
    version_featured_type public.enum__projects_v_version_featured_type,
    version_featured_badge_color character varying DEFAULT '#2b358c'::character varying,
    version_title_label character varying,
    version_detail_hero_image_id integer,
    version_intro_image_id integer
);


--
-- Name: _projects_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_id_seq OWNED BY public._projects_v.id;


--
-- Name: _projects_v_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v_locales (
    version_featured_badge_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _projects_v_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_locales_id_seq OWNED BY public._projects_v_locales.id;


--
-- Name: _projects_v_version_customer_reasons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v_version_customer_reasons (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying
);


--
-- Name: _projects_v_version_customer_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_version_customer_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_version_customer_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_version_customer_reasons_id_seq OWNED BY public._projects_v_version_customer_reasons.id;


--
-- Name: _projects_v_version_customer_reasons_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v_version_customer_reasons_locales (
    text character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _projects_v_version_customer_reasons_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_version_customer_reasons_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_version_customer_reasons_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_version_customer_reasons_locales_id_seq OWNED BY public._projects_v_version_customer_reasons_locales.id;


--
-- Name: _projects_v_version_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v_version_images (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    image_id integer,
    _uuid character varying
);


--
-- Name: _projects_v_version_images_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_version_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_version_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_version_images_id_seq OWNED BY public._projects_v_version_images.id;


--
-- Name: _projects_v_version_result_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v_version_result_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying
);


--
-- Name: _projects_v_version_result_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_version_result_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_version_result_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_version_result_items_id_seq OWNED BY public._projects_v_version_result_items.id;


--
-- Name: _projects_v_version_result_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._projects_v_version_result_items_locales (
    text character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _projects_v_version_result_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._projects_v_version_result_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _projects_v_version_result_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._projects_v_version_result_items_locales_id_seq OWNED BY public._projects_v_version_result_items_locales.id;


--
-- Name: _services_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._services_v (
    id integer NOT NULL,
    parent_id integer,
    version_name_vi character varying,
    version_name_en character varying,
    version_slug character varying,
    version_category public.enum__services_v_version_category,
    version_icon_id integer,
    version_thumbnail_id integer,
    version_summary_vi character varying,
    version_summary_en character varying,
    version_content_vi jsonb,
    version_content_en jsonb,
    version_order numeric DEFAULT 0,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__services_v_version_status DEFAULT 'draft'::public.enum__services_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    snapshot boolean,
    published_locale public.enum__services_v_published_locale
);


--
-- Name: _services_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._services_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _services_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._services_v_id_seq OWNED BY public._services_v.id;


--
-- Name: home_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: home_page_blocks_brand_logos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_brand_logos (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    source_mode public.enum_home_page_blocks_brand_logos_source_mode DEFAULT 'latest'::public.enum_home_page_blocks_brand_logos_source_mode,
    count numeric DEFAULT 6
);


--
-- Name: home_page_blocks_brand_logos_fallback_brands; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_brand_logos_fallback_brands (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL
);


--
-- Name: home_page_blocks_brand_logos_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_brand_logos_locales (
    title character varying DEFAULT 'ĐỐI TÁC CHIẾN LƯỢC'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_brand_logos_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_brand_logos_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_brand_logos_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_brand_logos_locales_id_seq OWNED BY public.home_page_blocks_brand_logos_locales.id;


--
-- Name: home_page_blocks_cta_banner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_cta_banner (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    primary_c_t_a_href character varying DEFAULT '/lien-he'::character varying,
    secondary_c_t_a_href character varying DEFAULT '/dich-vu'::character varying,
    block_name character varying,
    background_color character varying DEFAULT '#0F172A'::character varying,
    gradient_from character varying DEFAULT '#B92C32'::character varying,
    gradient_middle character varying DEFAULT '#2b358c'::character varying,
    gradient_to character varying DEFAULT '#0F172A'::character varying,
    accent_color character varying DEFAULT '#B92C32'::character varying
);


--
-- Name: home_page_blocks_cta_banner_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_cta_banner_locales (
    title character varying DEFAULT 'Bắt đầu Dự án của bạn ngay hôm nay'::character varying,
    subtitle character varying DEFAULT 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp'::character varying,
    primary_c_t_a_label character varying DEFAULT 'Liên hệ Ngay'::character varying,
    secondary_c_t_a_label character varying DEFAULT 'Xem Dịch vụ'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_cta_banner_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_cta_banner_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_cta_banner_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_cta_banner_locales_id_seq OWNED BY public.home_page_blocks_cta_banner_locales.id;


--
-- Name: home_page_blocks_featured_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_featured_projects (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    background_color character varying DEFAULT '#0B1221'::character varying,
    view_all_href character varying DEFAULT '/du-an-tham-khao'::character varying,
    source_mode public.enum_home_page_blocks_featured_projects_source_mode DEFAULT 'latest'::public.enum_home_page_blocks_featured_projects_source_mode,
    count numeric DEFAULT 4,
    text_theme public.enum_home_page_blocks_featured_projects_text_theme DEFAULT 'dark'::public.enum_home_page_blocks_featured_projects_text_theme,
    variant public.enum_home_page_blocks_featured_projects_variant DEFAULT 'grid'::public.enum_home_page_blocks_featured_projects_variant
);


--
-- Name: home_page_blocks_featured_projects_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_featured_projects_locales (
    title character varying DEFAULT 'DỰ ÁN TIÊU BIỂU'::character varying,
    view_all_label character varying DEFAULT 'Xem tất cả →'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_featured_projects_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_featured_projects_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_featured_projects_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_featured_projects_locales_id_seq OWNED BY public.home_page_blocks_featured_projects_locales.id;


--
-- Name: home_page_blocks_featured_projects_tabs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_featured_projects_tabs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value public.enum_home_page_blocks_featured_projects_tabs_value NOT NULL
);


--
-- Name: home_page_blocks_featured_projects_tabs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_featured_projects_tabs_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_featured_projects_tabs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_featured_projects_tabs_locales_id_seq OWNED BY public.home_page_blocks_featured_projects_tabs_locales.id;


--
-- Name: home_page_blocks_hero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_hero (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    background_image_id integer,
    primary_c_t_a_href character varying DEFAULT '/dich-vu'::character varying,
    secondary_c_t_a_href character varying DEFAULT '/lien-he'::character varying,
    block_name character varying,
    background_type public.enum_home_page_blocks_hero_background_type DEFAULT 'image'::public.enum_home_page_blocks_hero_background_type,
    background_video_id integer,
    variant public.enum_home_page_blocks_hero_variant DEFAULT 'corporate'::public.enum_home_page_blocks_hero_variant,
    hero_image_id integer,
    hero_image_u_r_l character varying
);


--
-- Name: home_page_blocks_hero_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_hero_locales (
    title character varying NOT NULL,
    subtitle character varying,
    primary_c_t_a_label character varying DEFAULT 'Khám phá Dịch vụ'::character varying,
    secondary_c_t_a_label character varying DEFAULT 'Liên hệ Tư vấn'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    badge_text character varying DEFAULT 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU'::character varying
);


--
-- Name: home_page_blocks_hero_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_hero_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_hero_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_hero_locales_id_seq OWNED BY public.home_page_blocks_hero_locales.id;


--
-- Name: home_page_blocks_hero_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_hero_stats (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value numeric DEFAULT 15 NOT NULL,
    suffix character varying DEFAULT '+'::character varying,
    number_color character varying DEFAULT '#FFFFFF'::character varying
);


--
-- Name: home_page_blocks_hero_stats_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_hero_stats_locales (
    label_top character varying DEFAULT 'NĂM'::character varying,
    label_bottom character varying DEFAULT 'Kinh Nghiệm'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_hero_stats_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_hero_stats_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_hero_stats_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_hero_stats_locales_id_seq OWNED BY public.home_page_blocks_hero_stats_locales.id;


--
-- Name: home_page_blocks_hero_trust_partners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_hero_trust_partners (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    logo_id integer
);


--
-- Name: home_page_blocks_news; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_news (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    count numeric DEFAULT 3,
    block_name character varying,
    view_all_href character varying DEFAULT '/tin-tuc'::character varying,
    source_mode public.enum_home_page_blocks_news_source_mode DEFAULT 'latest'::public.enum_home_page_blocks_news_source_mode,
    featured_news_id integer,
    display_mode public.enum_home_page_blocks_news_display_mode DEFAULT 'featured'::public.enum_home_page_blocks_news_display_mode
);


--
-- Name: home_page_blocks_news_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_news_locales (
    title character varying DEFAULT 'TIN TỨC & SỰ KIỆN'::character varying,
    view_all_label character varying DEFAULT 'Xem tất cả →'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_news_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_news_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_news_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_news_locales_id_seq OWNED BY public.home_page_blocks_news_locales.id;


--
-- Name: home_page_blocks_partners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_partners (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    background_color character varying DEFAULT '#0B1221'::character varying
);


--
-- Name: home_page_blocks_partners_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_partners_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: home_page_blocks_partners_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_partners_images_locales (
    alt character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_partners_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_partners_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_partners_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_partners_images_locales_id_seq OWNED BY public.home_page_blocks_partners_images_locales.id;


--
-- Name: home_page_blocks_partners_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_partners_locales (
    subtitle character varying DEFAULT 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title character varying DEFAULT 'ĐỐI TÁC'::character varying
);


--
-- Name: home_page_blocks_partners_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_partners_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_partners_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_partners_locales_id_seq OWNED BY public.home_page_blocks_partners_locales.id;


--
-- Name: home_page_blocks_products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_products (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    source_mode public.enum_home_page_blocks_products_source_mode DEFAULT 'latest'::public.enum_home_page_blocks_products_source_mode,
    count numeric DEFAULT 5
);


--
-- Name: home_page_blocks_products_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_products_locales (
    subtitle character varying DEFAULT 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title character varying DEFAULT 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP'::character varying
);


--
-- Name: home_page_blocks_products_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_products_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_products_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_products_locales_id_seq OWNED BY public.home_page_blocks_products_locales.id;


--
-- Name: home_page_blocks_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    variant public.enum_home_page_blocks_services_variant DEFAULT 'cards'::public.enum_home_page_blocks_services_variant
);


--
-- Name: home_page_blocks_services_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_services_cards (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    href character varying,
    image_u_r_l character varying
);


--
-- Name: home_page_blocks_services_cards_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_services_cards_locales (
    title character varying NOT NULL,
    description character varying,
    button_label character varying DEFAULT 'Xem thêm'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: home_page_blocks_services_cards_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_services_cards_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_services_cards_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_services_cards_locales_id_seq OWNED BY public.home_page_blocks_services_cards_locales.id;


--
-- Name: home_page_blocks_services_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_blocks_services_locales (
    subtitle character varying DEFAULT 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title character varying DEFAULT 'LĨNH VỰC HOẠT ĐỘNG'::character varying
);


--
-- Name: home_page_blocks_services_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_blocks_services_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_blocks_services_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_blocks_services_locales_id_seq OWNED BY public.home_page_blocks_services_locales.id;


--
-- Name: home_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_id_seq OWNED BY public.home_page.id;


--
-- Name: home_page_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_page_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    projects_id integer,
    news_id integer,
    products_id integer,
    partners_id integer
);


--
-- Name: home_page_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_page_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_page_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_page_rels_id_seq OWNED BY public.home_page_rels.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    caption character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title_vi character varying,
    title_en character varying,
    slug character varying,
    published_at timestamp(3) with time zone,
    thumbnail_id integer,
    excerpt_vi character varying,
    excerpt_en character varying,
    content_vi jsonb,
    content_en jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_news_status DEFAULT 'draft'::public.enum_news_status,
    title_label character varying
);


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.news_tags (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_news_tags,
    id integer NOT NULL
);


--
-- Name: news_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.news_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: news_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.news_tags_id_seq OWNED BY public.news_tags.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    slug character varying NOT NULL,
    template public.enum_pages_template DEFAULT 'builder'::public.enum_pages_template,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    seo_image_id integer
);


--
-- Name: pages_blocks_about_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_about_content_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    variant public.enum_pages_blocks_about_content_sections_variant DEFAULT 'gallery'::public.enum_pages_blocks_about_content_sections_variant,
    columns public.enum_pages_blocks_about_content_sections_columns DEFAULT '3'::public.enum_pages_blocks_about_content_sections_columns,
    image_position public.enum_pages_blocks_about_content_sections_image_position DEFAULT 'left'::public.enum_pages_blocks_about_content_sections_image_position
);


--
-- Name: pages_blocks_about_content_sections_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_about_content_sections_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_images_locales (
    alt character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    caption character varying
);


--
-- Name: pages_blocks_about_content_sections_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_about_content_sections_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_about_content_sections_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_about_content_sections_images_locales_id_seq OWNED BY public.pages_blocks_about_content_sections_images_locales.id;


--
-- Name: pages_blocks_about_content_sections_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon character varying,
    image_id integer,
    image_u_r_l character varying,
    href character varying
);


--
-- Name: pages_blocks_about_content_sections_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_items_locales (
    title character varying,
    subtitle character varying,
    description character varying,
    meta character varying,
    alt character varying,
    button_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sections_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_about_content_sections_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_about_content_sections_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_about_content_sections_items_locales_id_seq OWNED BY public.pages_blocks_about_content_sections_items_locales.id;


--
-- Name: pages_blocks_about_content_sections_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_locales (
    title character varying NOT NULL,
    body character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sections_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_about_content_sections_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_about_content_sections_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_about_content_sections_locales_id_seq OWNED BY public.pages_blocks_about_content_sections_locales.id;


--
-- Name: pages_blocks_about_content_sections_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sections_paragraphs_locales (
    text character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_about_content_sections_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_about_content_sections_paragraphs_locales_id_seq OWNED BY public.pages_blocks_about_content_sections_paragraphs_locales.id;


--
-- Name: pages_blocks_about_content_sidebar_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sidebar_groups (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sidebar_groups_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sidebar_groups_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sidebar_groups_items_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    href character varying NOT NULL
);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_about_content_sidebar_groups_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_about_content_sidebar_groups_items_locales_id_seq OWNED BY public.pages_blocks_about_content_sidebar_groups_items_locales.id;


--
-- Name: pages_blocks_about_content_sidebar_groups_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_content_sidebar_groups_locales (
    title character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title_href character varying
);


--
-- Name: pages_blocks_about_content_sidebar_groups_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_about_content_sidebar_groups_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_about_content_sidebar_groups_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_about_content_sidebar_groups_locales_id_seq OWNED BY public.pages_blocks_about_content_sidebar_groups_locales.id;


--
-- Name: pages_blocks_brand_logos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_brand_logos (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    source_mode public.enum_pages_blocks_brand_logos_source_mode DEFAULT 'latest'::public.enum_pages_blocks_brand_logos_source_mode,
    count numeric DEFAULT 6
);


--
-- Name: pages_blocks_brand_logos_fallback_brands; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_brand_logos_fallback_brands (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL
);


--
-- Name: pages_blocks_brand_logos_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_brand_logos_locales (
    title character varying DEFAULT 'ĐỐI TÁC CHIẾN LƯỢC'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_brand_logos_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_brand_logos_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_brand_logos_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_brand_logos_locales_id_seq OWNED BY public.pages_blocks_brand_logos_locales.id;


--
-- Name: pages_blocks_content_intro; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_intro (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    image_position public.enum_pages_blocks_content_intro_image_position DEFAULT 'left'::public.enum_pages_blocks_content_intro_image_position,
    block_name character varying
);


--
-- Name: pages_blocks_content_intro_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_intro_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_content_intro_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_intro_images_locales (
    alt character varying,
    caption character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_content_intro_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_content_intro_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_content_intro_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_content_intro_images_locales_id_seq OWNED BY public.pages_blocks_content_intro_images_locales.id;


--
-- Name: pages_blocks_content_intro_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_intro_locales (
    title character varying NOT NULL,
    body character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_content_intro_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_content_intro_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_content_intro_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_content_intro_locales_id_seq OWNED BY public.pages_blocks_content_intro_locales.id;


--
-- Name: pages_blocks_content_intro_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_intro_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_content_intro_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_intro_paragraphs_locales (
    text character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_content_intro_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_content_intro_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_content_intro_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_content_intro_paragraphs_locales_id_seq OWNED BY public.pages_blocks_content_intro_paragraphs_locales.id;


--
-- Name: pages_blocks_cta_banner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_cta_banner (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    primary_c_t_a_href character varying DEFAULT '/lien-he'::character varying,
    secondary_c_t_a_href character varying DEFAULT '/dich-vu'::character varying,
    block_name character varying,
    background_color character varying DEFAULT '#0F172A'::character varying,
    gradient_from character varying DEFAULT '#B92C32'::character varying,
    gradient_middle character varying DEFAULT '#2b358c'::character varying,
    gradient_to character varying DEFAULT '#0F172A'::character varying,
    accent_color character varying DEFAULT '#B92C32'::character varying
);


--
-- Name: pages_blocks_cta_banner_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_cta_banner_locales (
    title character varying DEFAULT 'Bắt đầu Dự án của bạn ngay hôm nay'::character varying,
    subtitle character varying DEFAULT 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp'::character varying,
    primary_c_t_a_label character varying DEFAULT 'Liên hệ Ngay'::character varying,
    secondary_c_t_a_label character varying DEFAULT 'Xem Dịch vụ'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_cta_banner_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_cta_banner_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_cta_banner_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_cta_banner_locales_id_seq OWNED BY public.pages_blocks_cta_banner_locales.id;


--
-- Name: pages_blocks_document_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_document_list (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_document_list_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_document_list_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon character varying,
    image_id integer,
    image_u_r_l character varying,
    href character varying
);


--
-- Name: pages_blocks_document_list_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_document_list_items_locales (
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    meta character varying,
    alt character varying,
    button_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_document_list_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_document_list_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_document_list_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_document_list_items_locales_id_seq OWNED BY public.pages_blocks_document_list_items_locales.id;


--
-- Name: pages_blocks_document_list_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_document_list_locales (
    title character varying NOT NULL,
    body character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_document_list_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_document_list_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_document_list_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_document_list_locales_id_seq OWNED BY public.pages_blocks_document_list_locales.id;


--
-- Name: pages_blocks_document_list_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_document_list_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_document_list_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_document_list_paragraphs_locales (
    text character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_document_list_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_document_list_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_document_list_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_document_list_paragraphs_locales_id_seq OWNED BY public.pages_blocks_document_list_paragraphs_locales.id;


--
-- Name: pages_blocks_feature_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_feature_cards (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    columns public.enum_pages_blocks_feature_cards_columns DEFAULT '3'::public.enum_pages_blocks_feature_cards_columns,
    block_name character varying
);


--
-- Name: pages_blocks_feature_cards_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_feature_cards_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon character varying,
    image_id integer,
    image_u_r_l character varying,
    href character varying
);


--
-- Name: pages_blocks_feature_cards_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_feature_cards_items_locales (
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    meta character varying,
    alt character varying,
    button_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_feature_cards_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_feature_cards_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_feature_cards_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_feature_cards_items_locales_id_seq OWNED BY public.pages_blocks_feature_cards_items_locales.id;


--
-- Name: pages_blocks_feature_cards_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_feature_cards_locales (
    title character varying NOT NULL,
    body character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_feature_cards_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_feature_cards_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_feature_cards_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_feature_cards_locales_id_seq OWNED BY public.pages_blocks_feature_cards_locales.id;


--
-- Name: pages_blocks_feature_cards_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_feature_cards_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_feature_cards_paragraphs_locales (
    text character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_feature_cards_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_feature_cards_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_feature_cards_paragraphs_locales_id_seq OWNED BY public.pages_blocks_feature_cards_paragraphs_locales.id;


--
-- Name: pages_blocks_featured_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_featured_projects (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    background_color character varying DEFAULT '#0B1221'::character varying,
    view_all_href character varying DEFAULT '/du-an-tham-khao'::character varying,
    source_mode public.enum_pages_blocks_featured_projects_source_mode DEFAULT 'latest'::public.enum_pages_blocks_featured_projects_source_mode,
    count numeric DEFAULT 4,
    text_theme public.enum_pages_blocks_featured_projects_text_theme DEFAULT 'dark'::public.enum_pages_blocks_featured_projects_text_theme,
    variant public.enum_pages_blocks_featured_projects_variant DEFAULT 'grid'::public.enum_pages_blocks_featured_projects_variant
);


--
-- Name: pages_blocks_featured_projects_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_featured_projects_locales (
    title character varying DEFAULT 'DỰ ÁN TIÊU BIỂU'::character varying,
    view_all_label character varying DEFAULT 'Xem tất cả →'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_featured_projects_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_featured_projects_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_featured_projects_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_featured_projects_locales_id_seq OWNED BY public.pages_blocks_featured_projects_locales.id;


--
-- Name: pages_blocks_featured_projects_tabs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_featured_projects_tabs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value public.enum_pages_blocks_featured_projects_tabs_value NOT NULL
);


--
-- Name: pages_blocks_featured_projects_tabs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_featured_projects_tabs_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_featured_projects_tabs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_featured_projects_tabs_locales_id_seq OWNED BY public.pages_blocks_featured_projects_tabs_locales.id;


--
-- Name: pages_blocks_hero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_hero (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    background_type public.enum_pages_blocks_hero_background_type DEFAULT 'image'::public.enum_pages_blocks_hero_background_type,
    background_image_id integer,
    background_video_id integer,
    primary_c_t_a_href character varying DEFAULT '/dich-vu'::character varying,
    secondary_c_t_a_href character varying DEFAULT '/lien-he'::character varying,
    block_name character varying,
    variant public.enum_pages_blocks_hero_variant DEFAULT 'corporate'::public.enum_pages_blocks_hero_variant,
    hero_image_id integer,
    hero_image_u_r_l character varying
);


--
-- Name: pages_blocks_hero_banner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_hero_banner (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    background_image_id integer,
    background_image_u_r_l character varying,
    height numeric DEFAULT 700,
    overlay_opacity numeric DEFAULT 40,
    block_name character varying,
    background_type public.enum_pages_blocks_hero_banner_background_type DEFAULT 'image'::public.enum_pages_blocks_hero_banner_background_type,
    background_video_id integer,
    poster_image_id integer
);


--
-- Name: pages_blocks_hero_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_hero_locales (
    title character varying NOT NULL,
    subtitle character varying,
    primary_c_t_a_label character varying DEFAULT 'Khám phá Dịch vụ'::character varying,
    secondary_c_t_a_label character varying DEFAULT 'Liên hệ Tư vấn'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    badge_text character varying DEFAULT 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU'::character varying
);


--
-- Name: pages_blocks_hero_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_hero_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_hero_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_hero_locales_id_seq OWNED BY public.pages_blocks_hero_locales.id;


--
-- Name: pages_blocks_hero_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_hero_stats (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value numeric DEFAULT 15 NOT NULL,
    suffix character varying DEFAULT '+'::character varying,
    number_color character varying DEFAULT '#FFFFFF'::character varying
);


--
-- Name: pages_blocks_hero_stats_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_hero_stats_locales (
    label_top character varying DEFAULT 'NĂM'::character varying,
    label_bottom character varying DEFAULT 'Kinh Nghiệm'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_hero_stats_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_hero_stats_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_hero_stats_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_hero_stats_locales_id_seq OWNED BY public.pages_blocks_hero_stats_locales.id;


--
-- Name: pages_blocks_hero_trust_partners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_hero_trust_partners (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    logo_id integer
);


--
-- Name: pages_blocks_image_gallery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    columns public.enum_pages_blocks_image_gallery_columns DEFAULT '3'::public.enum_pages_blocks_image_gallery_columns,
    block_name character varying
);


--
-- Name: pages_blocks_image_gallery_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_image_gallery_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery_images_locales (
    alt character varying,
    caption character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_image_gallery_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_image_gallery_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_image_gallery_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_image_gallery_images_locales_id_seq OWNED BY public.pages_blocks_image_gallery_images_locales.id;


--
-- Name: pages_blocks_image_gallery_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery_locales (
    title character varying NOT NULL,
    body character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_image_gallery_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_image_gallery_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_image_gallery_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_image_gallery_locales_id_seq OWNED BY public.pages_blocks_image_gallery_locales.id;


--
-- Name: pages_blocks_image_gallery_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery_paragraphs_locales (
    text character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_image_gallery_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_image_gallery_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_image_gallery_paragraphs_locales_id_seq OWNED BY public.pages_blocks_image_gallery_paragraphs_locales.id;


--
-- Name: pages_blocks_info_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    columns public.enum_pages_blocks_info_grid_columns DEFAULT '3'::public.enum_pages_blocks_info_grid_columns,
    block_name character varying
);


--
-- Name: pages_blocks_info_grid_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_grid_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon character varying,
    image_id integer,
    image_u_r_l character varying,
    href character varying
);


--
-- Name: pages_blocks_info_grid_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_grid_items_locales (
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    meta character varying,
    alt character varying,
    button_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_info_grid_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_info_grid_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_info_grid_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_info_grid_items_locales_id_seq OWNED BY public.pages_blocks_info_grid_items_locales.id;


--
-- Name: pages_blocks_info_grid_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_grid_locales (
    title character varying NOT NULL,
    body character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_info_grid_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_info_grid_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_info_grid_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_info_grid_locales_id_seq OWNED BY public.pages_blocks_info_grid_locales.id;


--
-- Name: pages_blocks_info_grid_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_grid_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_info_grid_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_grid_paragraphs_locales (
    text character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_info_grid_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_info_grid_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_info_grid_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_info_grid_paragraphs_locales_id_seq OWNED BY public.pages_blocks_info_grid_paragraphs_locales.id;


--
-- Name: pages_blocks_media_text_split; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_text_split (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    image_position public.enum_pages_blocks_media_text_split_image_position DEFAULT 'left'::public.enum_pages_blocks_media_text_split_image_position,
    block_name character varying
);


--
-- Name: pages_blocks_media_text_split_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_text_split_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_media_text_split_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_text_split_images_locales (
    alt character varying,
    caption character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_media_text_split_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_media_text_split_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_media_text_split_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_media_text_split_images_locales_id_seq OWNED BY public.pages_blocks_media_text_split_images_locales.id;


--
-- Name: pages_blocks_media_text_split_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_text_split_locales (
    title character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_media_text_split_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_media_text_split_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_media_text_split_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_media_text_split_locales_id_seq OWNED BY public.pages_blocks_media_text_split_locales.id;


--
-- Name: pages_blocks_media_text_split_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_text_split_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_text_split_paragraphs_locales (
    text character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_media_text_split_paragraphs_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_media_text_split_paragraphs_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_media_text_split_paragraphs_locales_id_seq OWNED BY public.pages_blocks_media_text_split_paragraphs_locales.id;


--
-- Name: pages_blocks_news; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_news (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    count numeric DEFAULT 3,
    block_name character varying,
    view_all_href character varying DEFAULT '/tin-tuc'::character varying,
    source_mode public.enum_pages_blocks_news_source_mode DEFAULT 'latest'::public.enum_pages_blocks_news_source_mode,
    featured_news_id integer,
    display_mode public.enum_pages_blocks_news_display_mode DEFAULT 'featured'::public.enum_pages_blocks_news_display_mode
);


--
-- Name: pages_blocks_news_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_news_locales (
    title character varying DEFAULT 'TIN TỨC & SỰ KIỆN'::character varying,
    view_all_label character varying DEFAULT 'Xem tất cả →'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_news_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_news_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_news_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_news_locales_id_seq OWNED BY public.pages_blocks_news_locales.id;


--
-- Name: pages_blocks_page_hero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_page_hero (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    background_image_id integer,
    background_image_u_r_l character varying,
    block_name character varying
);


--
-- Name: pages_blocks_page_hero_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_page_hero_locales (
    title character varying NOT NULL,
    breadcrumb_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_page_hero_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_page_hero_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_page_hero_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_page_hero_locales_id_seq OWNED BY public.pages_blocks_page_hero_locales.id;


--
-- Name: pages_blocks_partners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_partners (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    background_color character varying DEFAULT '#0B1221'::character varying
);


--
-- Name: pages_blocks_partners_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_partners_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_partners_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_partners_images_locales (
    alt character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_partners_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_partners_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_partners_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_partners_images_locales_id_seq OWNED BY public.pages_blocks_partners_images_locales.id;


--
-- Name: pages_blocks_partners_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_partners_locales (
    subtitle character varying DEFAULT 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title character varying DEFAULT 'ĐỐI TÁC'::character varying
);


--
-- Name: pages_blocks_partners_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_partners_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_partners_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_partners_locales_id_seq OWNED BY public.pages_blocks_partners_locales.id;


--
-- Name: pages_blocks_products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_products (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    source_mode public.enum_pages_blocks_products_source_mode DEFAULT 'latest'::public.enum_pages_blocks_products_source_mode,
    count numeric DEFAULT 5
);


--
-- Name: pages_blocks_products_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_products_locales (
    subtitle character varying DEFAULT 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title character varying DEFAULT 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP'::character varying
);


--
-- Name: pages_blocks_products_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_products_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_products_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_products_locales_id_seq OWNED BY public.pages_blocks_products_locales.id;


--
-- Name: pages_blocks_projects_listing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_projects_listing (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    source_mode public.enum_pages_blocks_projects_listing_source_mode DEFAULT 'latest'::public.enum_pages_blocks_projects_listing_source_mode,
    "limit" numeric DEFAULT 24,
    block_name character varying
);


--
-- Name: pages_blocks_projects_listing_industry_filters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_projects_listing_industry_filters (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_projects_listing_industry_filters_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_projects_listing_industry_filters_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_projects_listing_industry_filters_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_projects_listing_industry_filters_locales_id_seq OWNED BY public.pages_blocks_projects_listing_industry_filters_locales.id;


--
-- Name: pages_blocks_projects_listing_parent_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_projects_listing_parent_categories (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value public.enum_pages_blocks_projects_listing_parent_categories_value NOT NULL
);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_projects_listing_parent_categories_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_projects_listing_parent_categories_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_projects_listing_parent_categories_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_projects_listing_parent_categories_locales_id_seq OWNED BY public.pages_blocks_projects_listing_parent_categories_locales.id;


--
-- Name: pages_blocks_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    variant public.enum_pages_blocks_services_variant DEFAULT 'cards'::public.enum_pages_blocks_services_variant
);


--
-- Name: pages_blocks_services_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services_cards (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    href character varying,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_services_cards_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services_cards_locales (
    title character varying NOT NULL,
    description character varying,
    button_label character varying DEFAULT 'Xem thêm'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_services_cards_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_services_cards_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_services_cards_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_services_cards_locales_id_seq OWNED BY public.pages_blocks_services_cards_locales.id;


--
-- Name: pages_blocks_services_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services_locales (
    subtitle character varying DEFAULT 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL,
    title character varying DEFAULT 'LĨNH VỰC HOẠT ĐỘNG'::character varying
);


--
-- Name: pages_blocks_services_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_services_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_services_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_services_locales_id_seq OWNED BY public.pages_blocks_services_locales.id;


--
-- Name: pages_blocks_welcome_intro; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_welcome_intro (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    cta_href character varying DEFAULT '/gioi-thieu'::character varying,
    block_name character varying,
    auto_play boolean DEFAULT true,
    auto_play_interval numeric DEFAULT 4
);


--
-- Name: pages_blocks_welcome_intro_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_welcome_intro_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    image_u_r_l character varying
);


--
-- Name: pages_blocks_welcome_intro_images_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_welcome_intro_images_locales (
    alt character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_welcome_intro_images_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_welcome_intro_images_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_welcome_intro_images_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_welcome_intro_images_locales_id_seq OWNED BY public.pages_blocks_welcome_intro_images_locales.id;


--
-- Name: pages_blocks_welcome_intro_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_welcome_intro_locales (
    eyebrow character varying DEFAULT 'CHÀO MỪNG'::character varying,
    body character varying,
    cta_label character varying DEFAULT 'Xem thêm'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_welcome_intro_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_welcome_intro_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_welcome_intro_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_welcome_intro_locales_id_seq OWNED BY public.pages_blocks_welcome_intro_locales.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_locales (
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL,
    title character varying,
    seo_title character varying,
    seo_description character varying
);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_locales_id_seq OWNED BY public.pages_locales.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    projects_id integer,
    news_id integer,
    products_id integer,
    partners_id integer
);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: partners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.partners (
    id integer NOT NULL,
    name character varying NOT NULL,
    logo_id integer NOT NULL,
    website character varying,
    "order" numeric DEFAULT 0,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: partners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.partners_id_seq OWNED BY public.partners.id;


--
-- Name: payload_kv; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_kv (
    id integer NOT NULL,
    key character varying NOT NULL,
    data jsonb NOT NULL
);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_kv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_kv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_kv_id_seq OWNED BY public.payload_kv.id;


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer,
    media_id integer,
    projects_id integer,
    news_id integer,
    products_id integer,
    partners_id integer,
    services_id integer,
    pages_id integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name_vi character varying,
    name_en character varying,
    slug character varying,
    category public.enum_products_category,
    thumbnail_id integer,
    description_vi jsonb,
    description_en jsonb,
    brand character varying,
    featured boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_products_status DEFAULT 'draft'::public.enum_products_status,
    name_label character varying
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: products_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_locales (
    display_category character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: products_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_locales_id_seq OWNED BY public.products_locales.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    title_vi character varying,
    title_en character varying,
    slug character varying,
    category public.enum_projects_category,
    industry public.enum_projects_industry,
    thumbnail_id integer,
    customer_name_vi character varying,
    customer_name_en character varying,
    customer_address character varying,
    location character varying,
    year numeric,
    summary_vi character varying,
    summary_en character varying,
    intro_vi jsonb,
    intro_en jsonb,
    solutions_vi jsonb,
    solutions_en jsonb,
    results_vi jsonb,
    results_en jsonb,
    featured boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_projects_status DEFAULT 'draft'::public.enum_projects_status,
    featured_type public.enum_projects_featured_type,
    featured_badge_color character varying DEFAULT '#2b358c'::character varying,
    title_label character varying,
    detail_hero_image_id integer,
    intro_image_id integer
);


--
-- Name: projects_customer_reasons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_customer_reasons (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL
);


--
-- Name: projects_customer_reasons_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_customer_reasons_locales (
    text character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: projects_customer_reasons_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_customer_reasons_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_customer_reasons_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_customer_reasons_locales_id_seq OWNED BY public.projects_customer_reasons_locales.id;


--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_images (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    image_id integer
);


--
-- Name: projects_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_locales (
    featured_badge_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: projects_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_locales_id_seq OWNED BY public.projects_locales.id;


--
-- Name: projects_result_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_result_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL
);


--
-- Name: projects_result_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_result_items_locales (
    text character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: projects_result_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_result_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_result_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_result_items_locales_id_seq OWNED BY public.projects_result_items_locales.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id integer NOT NULL,
    name_vi character varying,
    name_en character varying,
    slug character varying,
    category public.enum_services_category,
    icon_id integer,
    thumbnail_id integer,
    summary_vi character varying,
    summary_en character varying,
    content_vi jsonb,
    content_en jsonb,
    "order" numeric DEFAULT 0,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_services_status DEFAULT 'draft'::public.enum_services_status
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: site_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings (
    id integer NOT NULL,
    header_phone character varying DEFAULT '(028) 3636 9936'::character varying,
    header_email character varying DEFAULT 'info@bacau.com.vn'::character varying,
    footer_background_color character varying DEFAULT '#0F172A'::character varying,
    footer_accent_color character varying DEFAULT '#B92C32'::character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    header_logo_image_id integer,
    footer_logo_image_id integer
);


--
-- Name: site_settings_footer_columns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_footer_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL
);


--
-- Name: site_settings_footer_columns_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_footer_columns_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    href character varying
);


--
-- Name: site_settings_footer_columns_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_footer_columns_links_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: site_settings_footer_columns_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_footer_columns_links_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_footer_columns_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_footer_columns_links_locales_id_seq OWNED BY public.site_settings_footer_columns_links_locales.id;


--
-- Name: site_settings_footer_columns_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_footer_columns_locales (
    title character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: site_settings_footer_columns_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_footer_columns_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_footer_columns_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_footer_columns_locales_id_seq OWNED BY public.site_settings_footer_columns_locales.id;


--
-- Name: site_settings_header_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    href character varying NOT NULL
);


--
-- Name: site_settings_header_nav_items_children; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_header_nav_items_children (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    href character varying NOT NULL
);


--
-- Name: site_settings_header_nav_items_children_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_header_nav_items_children_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: site_settings_header_nav_items_children_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_header_nav_items_children_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_header_nav_items_children_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_header_nav_items_children_locales_id_seq OWNED BY public.site_settings_header_nav_items_children_locales.id;


--
-- Name: site_settings_header_nav_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_header_nav_items_locales (
    label character varying NOT NULL,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: site_settings_header_nav_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_header_nav_items_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_header_nav_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_header_nav_items_locales_id_seq OWNED BY public.site_settings_header_nav_items_locales.id;


--
-- Name: site_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_id_seq OWNED BY public.site_settings.id;


--
-- Name: site_settings_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_locales (
    header_logo_text character varying DEFAULT 'BắcÂu'::character varying,
    footer_logo_text character varying DEFAULT 'BắcÂu'::character varying,
    footer_description character varying DEFAULT 'Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.'::character varying,
    footer_copyright character varying DEFAULT '© 2024 BắcÂu. All rights reserved.'::character varying,
    footer_credit character varying DEFAULT 'Designed by BắcÂu Technology'::character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL,
    header_logo_alt character varying,
    footer_logo_alt character varying
);


--
-- Name: site_settings_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_locales_id_seq OWNED BY public.site_settings_locales.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    role public.enum_users_role DEFAULT 'editor'::public.enum_users_role NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


--
-- Name: _news_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v ALTER COLUMN id SET DEFAULT nextval('public._news_v_id_seq'::regclass);


--
-- Name: _news_v_version_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v_version_tags ALTER COLUMN id SET DEFAULT nextval('public._news_v_version_tags_id_seq'::regclass);


--
-- Name: _products_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v ALTER COLUMN id SET DEFAULT nextval('public._products_v_id_seq'::regclass);


--
-- Name: _products_v_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_locales ALTER COLUMN id SET DEFAULT nextval('public._products_v_locales_id_seq'::regclass);


--
-- Name: _projects_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v ALTER COLUMN id SET DEFAULT nextval('public._projects_v_id_seq'::regclass);


--
-- Name: _projects_v_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_locales ALTER COLUMN id SET DEFAULT nextval('public._projects_v_locales_id_seq'::regclass);


--
-- Name: _projects_v_version_customer_reasons id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_customer_reasons ALTER COLUMN id SET DEFAULT nextval('public._projects_v_version_customer_reasons_id_seq'::regclass);


--
-- Name: _projects_v_version_customer_reasons_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_customer_reasons_locales ALTER COLUMN id SET DEFAULT nextval('public._projects_v_version_customer_reasons_locales_id_seq'::regclass);


--
-- Name: _projects_v_version_images id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_images ALTER COLUMN id SET DEFAULT nextval('public._projects_v_version_images_id_seq'::regclass);


--
-- Name: _projects_v_version_result_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_result_items ALTER COLUMN id SET DEFAULT nextval('public._projects_v_version_result_items_id_seq'::regclass);


--
-- Name: _projects_v_version_result_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_result_items_locales ALTER COLUMN id SET DEFAULT nextval('public._projects_v_version_result_items_locales_id_seq'::regclass);


--
-- Name: _services_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._services_v ALTER COLUMN id SET DEFAULT nextval('public._services_v_id_seq'::regclass);


--
-- Name: home_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page ALTER COLUMN id SET DEFAULT nextval('public.home_page_id_seq'::regclass);


--
-- Name: home_page_blocks_brand_logos_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_brand_logos_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_cta_banner_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_cta_banner_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_cta_banner_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_featured_projects_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_featured_projects_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_featured_projects_tabs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_tabs_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_featured_projects_tabs_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_hero_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_hero_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_hero_stats_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_stats_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_hero_stats_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_news_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_news_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_news_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_partners_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_images_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_partners_images_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_partners_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_partners_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_products_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_products_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_products_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_services_cards_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_cards_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_services_cards_locales_id_seq'::regclass);


--
-- Name: home_page_blocks_services_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_locales ALTER COLUMN id SET DEFAULT nextval('public.home_page_blocks_services_locales_id_seq'::regclass);


--
-- Name: home_page_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels ALTER COLUMN id SET DEFAULT nextval('public.home_page_rels_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news_tags ALTER COLUMN id SET DEFAULT nextval('public.news_tags_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_blocks_about_content_sections_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_images_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_about_content_sections_images_locales_id_seq'::regclass);


--
-- Name: pages_blocks_about_content_sections_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_items_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_about_content_sections_items_locales_id_seq'::regclass);


--
-- Name: pages_blocks_about_content_sections_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_about_content_sections_locales_id_seq'::regclass);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_about_content_sections_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_items_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_about_content_sidebar_groups_items_locales_id_seq'::regclass);


--
-- Name: pages_blocks_about_content_sidebar_groups_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_about_content_sidebar_groups_locales_id_seq'::regclass);


--
-- Name: pages_blocks_brand_logos_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_brand_logos_locales_id_seq'::regclass);


--
-- Name: pages_blocks_content_intro_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_images_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_content_intro_images_locales_id_seq'::regclass);


--
-- Name: pages_blocks_content_intro_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_content_intro_locales_id_seq'::regclass);


--
-- Name: pages_blocks_content_intro_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_content_intro_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_cta_banner_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_banner_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_cta_banner_locales_id_seq'::regclass);


--
-- Name: pages_blocks_document_list_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_items_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_document_list_items_locales_id_seq'::regclass);


--
-- Name: pages_blocks_document_list_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_document_list_locales_id_seq'::regclass);


--
-- Name: pages_blocks_document_list_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_document_list_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_feature_cards_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_items_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_feature_cards_items_locales_id_seq'::regclass);


--
-- Name: pages_blocks_feature_cards_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_feature_cards_locales_id_seq'::regclass);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_feature_cards_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_featured_projects_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_featured_projects_locales_id_seq'::regclass);


--
-- Name: pages_blocks_featured_projects_tabs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_tabs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_featured_projects_tabs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_hero_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_hero_locales_id_seq'::regclass);


--
-- Name: pages_blocks_hero_stats_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_stats_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_hero_stats_locales_id_seq'::regclass);


--
-- Name: pages_blocks_image_gallery_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_images_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_image_gallery_images_locales_id_seq'::regclass);


--
-- Name: pages_blocks_image_gallery_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_image_gallery_locales_id_seq'::regclass);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_image_gallery_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_info_grid_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_items_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_info_grid_items_locales_id_seq'::regclass);


--
-- Name: pages_blocks_info_grid_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_info_grid_locales_id_seq'::regclass);


--
-- Name: pages_blocks_info_grid_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_info_grid_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_media_text_split_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_images_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_media_text_split_images_locales_id_seq'::regclass);


--
-- Name: pages_blocks_media_text_split_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_media_text_split_locales_id_seq'::regclass);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_paragraphs_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_media_text_split_paragraphs_locales_id_seq'::regclass);


--
-- Name: pages_blocks_news_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_news_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_news_locales_id_seq'::regclass);


--
-- Name: pages_blocks_page_hero_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_page_hero_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_page_hero_locales_id_seq'::regclass);


--
-- Name: pages_blocks_partners_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_images_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_partners_images_locales_id_seq'::regclass);


--
-- Name: pages_blocks_partners_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_partners_locales_id_seq'::regclass);


--
-- Name: pages_blocks_products_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_products_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_products_locales_id_seq'::regclass);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_industry_filters_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_projects_listing_industry_filters_locales_id_seq'::regclass);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_parent_categories_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_projects_listing_parent_categories_locales_id_seq'::regclass);


--
-- Name: pages_blocks_services_cards_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_cards_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_services_cards_locales_id_seq'::regclass);


--
-- Name: pages_blocks_services_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_services_locales_id_seq'::regclass);


--
-- Name: pages_blocks_welcome_intro_images_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_images_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_welcome_intro_images_locales_id_seq'::regclass);


--
-- Name: pages_blocks_welcome_intro_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_welcome_intro_locales_id_seq'::regclass);


--
-- Name: pages_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_locales_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: partners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.partners ALTER COLUMN id SET DEFAULT nextval('public.partners_id_seq'::regclass);


--
-- Name: payload_kv id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv ALTER COLUMN id SET DEFAULT nextval('public.payload_kv_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: products_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_locales ALTER COLUMN id SET DEFAULT nextval('public.products_locales_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: projects_customer_reasons_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_customer_reasons_locales ALTER COLUMN id SET DEFAULT nextval('public.projects_customer_reasons_locales_id_seq'::regclass);


--
-- Name: projects_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_locales ALTER COLUMN id SET DEFAULT nextval('public.projects_locales_id_seq'::regclass);


--
-- Name: projects_result_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_result_items_locales ALTER COLUMN id SET DEFAULT nextval('public.projects_result_items_locales_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: site_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings ALTER COLUMN id SET DEFAULT nextval('public.site_settings_id_seq'::regclass);


--
-- Name: site_settings_footer_columns_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_links_locales ALTER COLUMN id SET DEFAULT nextval('public.site_settings_footer_columns_links_locales_id_seq'::regclass);


--
-- Name: site_settings_footer_columns_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_locales ALTER COLUMN id SET DEFAULT nextval('public.site_settings_footer_columns_locales_id_seq'::regclass);


--
-- Name: site_settings_header_nav_items_children_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_children_locales ALTER COLUMN id SET DEFAULT nextval('public.site_settings_header_nav_items_children_locales_id_seq'::regclass);


--
-- Name: site_settings_header_nav_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_locales ALTER COLUMN id SET DEFAULT nextval('public.site_settings_header_nav_items_locales_id_seq'::regclass);


--
-- Name: site_settings_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_locales ALTER COLUMN id SET DEFAULT nextval('public.site_settings_locales_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: _news_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._news_v (id, parent_id, version_title_vi, version_title_en, version_slug, version_published_at, version_thumbnail_id, version_excerpt_vi, version_excerpt_en, version_content_vi, version_content_en, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, snapshot, published_locale, version_title_label) FROM stdin;
4	1	Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương	Bac Au completes factory automation project in Binh Duong	du-an-tu-dong-hoa-nha-may-binh-duong-2026	2026-03-20 02:00:00+00	2	Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.	The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:34:48.508+00	2026-05-02 09:18:04.36+00	published	2026-05-02 09:34:48.526+00	2026-05-02 09:34:48.526+00	t	\N	\N	Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương
1	1	Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương	Bac Au completes factory automation project in Binh Duong	du-an-tu-dong-hoa-nha-may-binh-duong-2026	2026-03-20 02:00:00+00	2	Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.	The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:18:04.36+00	2026-05-02 09:18:04.36+00	published	2026-05-02 09:18:04.375+00	2026-05-02 09:18:04.375+00	f	\N	\N	\N
3	3	Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản	Bac Au signs strategic partnership with Japanese partner	bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban	2026-03-05 02:00:00+00	4	Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.	The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:18:04.518+00	2026-05-02 09:18:04.518+00	published	2026-05-02 09:18:04.527+00	2026-05-02 09:18:04.527+00	f	\N	\N	\N
5	2	Hội thảo giải pháp quản lý năng lượng thông minh 2026	Smart energy management solutions seminar 2026	hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026	2026-03-15 02:00:00+00	3	Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.	Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:34:48.586+00	2026-05-02 09:18:04.443+00	published	2026-05-02 09:34:48.598+00	2026-05-02 09:34:48.598+00	t	\N	\N	Hội thảo giải pháp quản lý năng lượng thông minh 2026
2	2	Hội thảo giải pháp quản lý năng lượng thông minh 2026	Smart energy management solutions seminar 2026	hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026	2026-03-15 02:00:00+00	3	Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.	Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:18:04.444+00	2026-05-02 09:18:04.443+00	published	2026-05-02 09:18:04.451+00	2026-05-02 09:18:04.451+00	f	\N	\N	\N
6	3	Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản	Bac Au signs strategic partnership with Japanese partner	bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban	2026-03-05 02:00:00+00	4	Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.	The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:34:48.638+00	2026-05-02 09:18:04.518+00	published	2026-05-02 09:34:48.652+00	2026-05-02 09:34:48.652+00	t	\N	\N	Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản
\.


--
-- Data for Name: _news_v_version_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._news_v_version_tags ("order", parent_id, value, id) FROM stdin;
1	1	Tin tức	1
1	2	Hội thảo	2
2	2	Sự kiện	3
1	3	Tin tức	4
2	3	Thông cáo	5
1	4	Tin tức	6
1	5	Hội thảo	7
2	5	Sự kiện	8
1	6	Tin tức	9
2	6	Thông cáo	10
\.


--
-- Data for Name: _products_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v (id, parent_id, version_name_vi, version_name_en, version_slug, version_category, version_thumbnail_id, version_description_vi, version_description_en, version_brand, version_featured, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, snapshot, published_locale, version_name_label) FROM stdin;
2	1	Van Công Nghiệp	Industrial Valve	van-cong-nghiep-dieu-khien-tu-dong	industrial-valve	29	\N	\N	ESTEC	t	2026-05-02 14:23:35.639+00	2026-05-02 14:23:35.578+00	published	2026-05-02 14:23:35.648+00	2026-05-02 14:23:35.648+00	t	\N	\N	Van Công Nghiệp
1	1	Van Công Nghiệp	Industrial Valve	van-cong-nghiep-dieu-khien-tu-dong	industrial-valve	29	\N	\N	ESTEC	t	2026-05-02 14:23:35.579+00	2026-05-02 14:23:35.578+00	published	2026-05-02 14:23:35.594+00	2026-05-02 14:23:35.594+00	f	\N	\N	Van Công Nghiệp
4	2	Động Cơ Điện	Electric Motor	dong-co-dien-va-bien-tan	motor	30	\N	\N	ESTEC	t	2026-05-02 14:23:35.866+00	2026-05-02 14:23:35.832+00	published	2026-05-02 14:23:35.876+00	2026-05-02 14:23:35.876+00	t	\N	\N	Động Cơ Điện
3	2	Động Cơ Điện	Electric Motor	dong-co-dien-va-bien-tan	motor	30	\N	\N	ESTEC	t	2026-05-02 14:23:35.832+00	2026-05-02 14:23:35.832+00	published	2026-05-02 14:23:35.841+00	2026-05-02 14:23:35.841+00	f	\N	\N	Động Cơ Điện
6	3	Cảm Biến	Industrial Sensor	cam-bien-cong-nghiep	sensor	31	\N	\N	ESTEC	t	2026-05-02 14:23:36.081+00	2026-05-02 14:23:36.046+00	published	2026-05-02 14:23:36.089+00	2026-05-02 14:23:36.089+00	t	\N	\N	Cảm Biến
5	3	Cảm Biến	Industrial Sensor	cam-bien-cong-nghiep	sensor	31	\N	\N	ESTEC	t	2026-05-02 14:23:36.046+00	2026-05-02 14:23:36.046+00	published	2026-05-02 14:23:36.053+00	2026-05-02 14:23:36.053+00	f	\N	\N	Cảm Biến
8	4	Tủ Điện Điều Khiển	Control Cabinet	tu-dien-dieu-khien	electrical	32	\N	\N	ESTEC	t	2026-05-02 14:23:36.305+00	2026-05-02 14:23:36.266+00	published	2026-05-02 14:23:36.317+00	2026-05-02 14:23:36.317+00	t	\N	\N	Tủ Điện Điều Khiển
7	4	Tủ Điện Điều Khiển	Control Cabinet	tu-dien-dieu-khien	electrical	32	\N	\N	ESTEC	t	2026-05-02 14:23:36.266+00	2026-05-02 14:23:36.266+00	published	2026-05-02 14:23:36.274+00	2026-05-02 14:23:36.274+00	f	\N	\N	Tủ Điện Điều Khiển
10	5	Thiết Bị Đo Lường	Measuring Device	thiet-bi-do-luong-cong-nghiep	measurement	33	\N	\N	ESTEC	t	2026-05-02 14:23:36.432+00	2026-05-02 14:23:36.398+00	published	2026-05-02 14:23:36.44+00	2026-05-02 14:23:36.44+00	t	\N	\N	Thiết Bị Đo Lường
9	5	Thiết Bị Đo Lường	Measuring Device	thiet-bi-do-luong-cong-nghiep	measurement	33	\N	\N	ESTEC	t	2026-05-02 14:23:36.398+00	2026-05-02 14:23:36.398+00	published	2026-05-02 14:23:36.409+00	2026-05-02 14:23:36.409+00	f	\N	\N	Thiết Bị Đo Lường
\.


--
-- Data for Name: _products_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_locales (version_display_category, id, _locale, _parent_id) FROM stdin;
Valve & Actuator	1	vi	1
Valve & Actuator	2	vi	2
Valve & Actuator	3	en	2
Motor & Drive	4	vi	3
Motor & Drive	5	vi	4
Motor & Drive	6	en	4
Sensor & Instrument	7	vi	5
Sensor & Instrument	8	vi	6
Sensor & Instrument	9	en	6
Control Cabinet	10	vi	7
Control Cabinet	11	vi	8
Control Cabinet	12	en	8
Measurement Device	13	vi	9
Measurement Device	14	vi	10
Measurement Device	15	en	10
\.


--
-- Data for Name: _projects_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v (id, parent_id, version_title_vi, version_title_en, version_slug, version_category, version_industry, version_thumbnail_id, version_customer_name_vi, version_customer_name_en, version_customer_address, version_location, version_year, version_summary_vi, version_summary_en, version_intro_vi, version_intro_en, version_solutions_vi, version_solutions_en, version_results_vi, version_results_en, version_featured, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, snapshot, published_locale, version_featured_type, version_featured_badge_color, version_title_label, version_detail_hero_image_id, version_intro_image_id) FROM stdin;
60	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 08:36:57.264+00	2026-05-02 09:29:48.586+00	published	2026-05-03 08:36:57.282+00	2026-05-03 08:36:57.282+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
1	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	\N	5	\N	\N	\N	\N	2026	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:29:48.587+00	2026-05-02 09:29:48.586+00	published	2026-05-02 09:29:48.601+00	2026-05-02 09:29:48.601+00	f	\N	\N	energy	#2b358c	\N	\N	\N
9	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	\N	5	\N	\N	\N	\N	2026	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:03.812+00	2026-05-02 09:29:48.586+00	published	2026-05-02 13:47:03.831+00	2026-05-02 13:47:03.831+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
3	3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	7	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:29:48.766+00	2026-05-02 09:29:48.766+00	published	2026-05-02 09:29:48.773+00	2026-05-02 09:29:48.773+00	f	\N	\N	automation	#2b358c	\N	\N	\N
7	3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	7	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:34:32.641+00	2026-05-02 09:29:48.766+00	published	2026-05-02 09:34:32.659+00	2026-05-02 09:34:32.659+00	f	\N	\N	automation	#2b358c	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	\N	\N
4	4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	8	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:29:48.826+00	2026-05-02 09:29:48.826+00	published	2026-05-02 09:29:48.834+00	2026-05-02 09:29:48.834+00	f	\N	\N	bms	#6366F1	\N	\N	\N
8	4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	8	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:34:32.707+00	2026-05-02 09:29:48.826+00	published	2026-05-02 09:34:32.716+00	2026-05-02 09:34:32.716+00	f	\N	\N	bms	#6366F1	Hệ thống BMS tòa nhà Landmark 81	\N	\N
2	2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	6	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:29:48.678+00	2026-05-02 09:29:48.678+00	published	2026-05-02 09:29:48.692+00	2026-05-02 09:29:48.692+00	f	\N	\N	electrical	#B92C32	\N	\N	\N
6	2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	6	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:34:32.564+00	2026-05-02 09:29:48.678+00	published	2026-05-02 09:34:32.574+00	2026-05-02 09:34:32.574+00	f	\N	\N	electrical	#B92C32	Trạm biến áp 110kV Nhà máy thép Formosa	\N	\N
57	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-02 15:32:00.737+00	2026-05-02 09:29:48.586+00	published	2026-05-02 15:32:00.752+00	2026-05-02 15:32:00.752+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
15	4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	8	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:04.112+00	2026-05-02 09:29:48.826+00	published	2026-05-02 13:47:04.12+00	2026-05-02 13:47:04.12+00	f	\N	\N	bms	#6366F1	Hệ thống BMS tòa nhà Landmark 81	\N	\N
11	2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	6	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:03.916+00	2026-05-02 09:29:48.678+00	published	2026-05-02 13:47:03.925+00	2026-05-02 13:47:03.925+00	f	\N	\N	electrical	#B92C32	Trạm biến áp 110kV Nhà máy thép Formosa	\N	\N
12	2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	6	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:03.955+00	2026-05-02 09:29:48.678+00	published	2026-05-02 13:47:03.968+00	2026-05-02 13:47:03.968+00	f	\N	\N	electrical	#B92C32	Trạm biến áp 110kV Nhà máy thép Formosa	\N	\N
16	4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	8	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:04.141+00	2026-05-02 09:29:48.826+00	published	2026-05-02 13:47:04.151+00	2026-05-02 13:47:04.151+00	f	\N	\N	bms	#6366F1	Hệ thống BMS tòa nhà Landmark 81	\N	\N
13	3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	7	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:04.023+00	2026-05-02 09:29:48.766+00	published	2026-05-02 13:47:04.034+00	2026-05-02 13:47:04.034+00	f	\N	\N	automation	#2b358c	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	\N	\N
14	3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	7	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:04.072+00	2026-05-02 09:29:48.766+00	published	2026-05-02 13:47:04.081+00	2026-05-02 13:47:04.081+00	f	\N	\N	automation	#2b358c	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	\N	\N
20	5	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	Power monitoring center for Samsung Bac Ninh factory	trung-tam-giam-sat-dien-nang-nha-may-samsung-bac-ninh	measurement	\N	10	\N	\N	\N	\N	2026	Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca	Integration of smart meters, alert dashboards and shift-based consumption reports	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.502+00	2026-05-02 13:57:22.468+00	published	2026-05-02 13:57:22.512+00	2026-05-02 13:57:22.512+00	t	\N	\N	energy	#2b358c	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	\N	\N
19	5	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	Power monitoring center for Samsung Bac Ninh factory	trung-tam-giam-sat-dien-nang-nha-may-samsung-bac-ninh	measurement	\N	10	\N	\N	\N	\N	2026	Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca	Integration of smart meters, alert dashboards and shift-based consumption reports	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.469+00	2026-05-02 13:57:22.468+00	published	2026-05-02 13:57:22.476+00	2026-05-02 13:57:22.476+00	f	\N	\N	energy	#2b358c	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	\N	\N
22	6	Giải pháp tối ưu năng lượng cho KCN Long Hậu	Energy optimization solution for Long Hau industrial park	giai-phap-toi-uu-nang-luong-cho-kcn-long-hau	measurement	\N	11	\N	\N	\N	\N	2026	Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực	Deployment of multi-point metering and real-time load profile analytics	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.701+00	2026-05-02 13:57:22.657+00	published	2026-05-02 13:57:22.718+00	2026-05-02 13:57:22.718+00	t	\N	\N	energy	#2b358c	Giải pháp tối ưu năng lượng cho KCN Long Hậu	\N	\N
21	6	Giải pháp tối ưu năng lượng cho KCN Long Hậu	Energy optimization solution for Long Hau industrial park	giai-phap-toi-uu-nang-luong-cho-kcn-long-hau	measurement	\N	11	\N	\N	\N	\N	2026	Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực	Deployment of multi-point metering and real-time load profile analytics	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.658+00	2026-05-02 13:57:22.657+00	published	2026-05-02 13:57:22.669+00	2026-05-02 13:57:22.669+00	f	\N	\N	energy	#2b358c	Giải pháp tối ưu năng lượng cho KCN Long Hậu	\N	\N
24	7	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	EMS upgrade for Mekophar pharmaceutical plant	nang-cap-he-thong-ems-cho-nha-may-duoc-pham-mekophar	measurement	\N	12	\N	\N	\N	\N	2025	Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng	Standardized power data, anomaly alerts and energy KPI reporting	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.828+00	2026-05-02 13:57:22.796+00	published	2026-05-02 13:57:22.836+00	2026-05-02 13:57:22.836+00	t	\N	\N	energy	#2b358c	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	\N	\N
23	7	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	EMS upgrade for Mekophar pharmaceutical plant	nang-cap-he-thong-ems-cho-nha-may-duoc-pham-mekophar	measurement	\N	12	\N	\N	\N	\N	2025	Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng	Standardized power data, anomaly alerts and energy KPI reporting	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.797+00	2026-05-02 13:57:22.796+00	published	2026-05-02 13:57:22.804+00	2026-05-02 13:57:22.804+00	f	\N	\N	energy	#2b358c	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	\N	\N
18	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	\N	9	\N	\N	\N	\N	2026	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.306+00	2026-05-02 09:29:48.586+00	published	2026-05-02 13:57:22.317+00	2026-05-02 13:57:22.317+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
26	8	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	Energy metering system for Cat Lai logistics complex	he-thong-do-luong-nang-luong-khu-phuc-hop-logistics-cat-lai	measurement	\N	13	\N	\N	\N	\N	2025	Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành	Connected meters, stored operating data and visualized energy costs	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.006+00	2026-05-02 13:57:22.977+00	published	2026-05-02 13:57:23.016+00	2026-05-02 13:57:23.016+00	t	\N	\N	energy	#2b358c	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	\N	\N
25	8	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	Energy metering system for Cat Lai logistics complex	he-thong-do-luong-nang-luong-khu-phuc-hop-logistics-cat-lai	measurement	\N	13	\N	\N	\N	\N	2025	Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành	Connected meters, stored operating data and visualized energy costs	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.977+00	2026-05-02 13:57:22.977+00	published	2026-05-02 13:57:22.984+00	2026-05-02 13:57:22.984+00	f	\N	\N	energy	#2b358c	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	\N	\N
28	2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	14	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.123+00	2026-05-02 09:29:48.678+00	published	2026-05-02 13:57:23.13+00	2026-05-02 13:57:23.13+00	t	\N	\N	electrical	#B92C32	Trạm biến áp 110kV Nhà máy thép Formosa	\N	\N
27	2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	14	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.093+00	2026-05-02 09:29:48.678+00	published	2026-05-02 13:57:23.101+00	2026-05-02 13:57:23.101+00	f	\N	\N	electrical	#B92C32	Trạm biến áp 110kV Nhà máy thép Formosa	\N	\N
30	9	Tủ điện trung thế dây chuyền xi măng Hà Tiên	Medium-voltage switchgear for Ha Tien cement line	tu-dien-trung-the-day-chuyen-xi-mang-ha-tien	electrical-automation	\N	15	\N	\N	\N	\N	2026	Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền	Design, installation and commissioning of power distribution for a grinding line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.224+00	2026-05-02 13:57:23.198+00	published	2026-05-02 13:57:23.232+00	2026-05-02 13:57:23.232+00	t	\N	\N	electrical	#B92C32	Tủ điện trung thế dây chuyền xi măng Hà Tiên	\N	\N
29	9	Tủ điện trung thế dây chuyền xi măng Hà Tiên	Medium-voltage switchgear for Ha Tien cement line	tu-dien-trung-the-day-chuyen-xi-mang-ha-tien	electrical-automation	\N	15	\N	\N	\N	\N	2026	Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền	Design, installation and commissioning of power distribution for a grinding line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.199+00	2026-05-02 13:57:23.198+00	published	2026-05-02 13:57:23.204+00	2026-05-02 13:57:23.204+00	f	\N	\N	electrical	#B92C32	Tủ điện trung thế dây chuyền xi măng Hà Tiên	\N	\N
32	10	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	Electrical system upgrade for Tan Tien packaging factory	nang-cap-he-thong-dien-nha-may-bao-bi-tan-tien	electrical-automation	\N	16	\N	\N	\N	\N	2026	Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn	Replaced distribution cabinets, balanced loads and added safety protection systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.397+00	2026-05-02 13:57:23.369+00	published	2026-05-02 13:57:23.406+00	2026-05-02 13:57:23.406+00	t	\N	\N	electrical	#B92C32	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	\N	\N
31	10	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	Electrical system upgrade for Tan Tien packaging factory	nang-cap-he-thong-dien-nha-may-bao-bi-tan-tien	electrical-automation	\N	16	\N	\N	\N	\N	2026	Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn	Replaced distribution cabinets, balanced loads and added safety protection systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.37+00	2026-05-02 13:57:23.369+00	published	2026-05-02 13:57:23.375+00	2026-05-02 13:57:23.375+00	f	\N	\N	electrical	#B92C32	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	\N	\N
34	11	Hệ thống điện động lực cảng container Cái Mép	Power system for Cai Mep container port	he-thong-dien-dong-luc-cang-container-cai-mep	electrical-automation	\N	17	\N	\N	\N	\N	2025	Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi	Installed power supply for lifting equipment and yard lighting systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.503+00	2026-05-02 13:57:23.471+00	published	2026-05-02 13:57:23.51+00	2026-05-02 13:57:23.51+00	t	\N	\N	electrical	#B92C32	Hệ thống điện động lực cảng container Cái Mép	\N	\N
33	11	Hệ thống điện động lực cảng container Cái Mép	Power system for Cai Mep container port	he-thong-dien-dong-luc-cang-container-cai-mep	electrical-automation	\N	17	\N	\N	\N	\N	2025	Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi	Installed power supply for lifting equipment and yard lighting systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.471+00	2026-05-02 13:57:23.471+00	published	2026-05-02 13:57:23.48+00	2026-05-02 13:57:23.48+00	f	\N	\N	electrical	#B92C32	Hệ thống điện động lực cảng container Cái Mép	\N	\N
36	12	Cải tạo trạm điện nhà máy nước Thủ Đức	Substation renovation for Thu Duc water plant	cai-tao-tram-dien-nha-may-nuoc-thu-duc	electrical-automation	\N	18	\N	\N	\N	\N	2025	Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm	Upgraded switching, metering and operational monitoring equipment	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.674+00	2026-05-02 13:57:23.652+00	published	2026-05-02 13:57:23.681+00	2026-05-02 13:57:23.681+00	t	\N	\N	electrical	#B92C32	Cải tạo trạm điện nhà máy nước Thủ Đức	\N	\N
35	12	Cải tạo trạm điện nhà máy nước Thủ Đức	Substation renovation for Thu Duc water plant	cai-tao-tram-dien-nha-may-nuoc-thu-duc	electrical-automation	\N	18	\N	\N	\N	\N	2025	Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm	Upgraded switching, metering and operational monitoring equipment	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.652+00	2026-05-02 13:57:23.652+00	published	2026-05-02 13:57:23.657+00	2026-05-02 13:57:23.657+00	f	\N	\N	electrical	#B92C32	Cải tạo trạm điện nhà máy nước Thủ Đức	\N	\N
38	3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	19	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.872+00	2026-05-02 09:29:48.766+00	published	2026-05-02 13:57:23.88+00	2026-05-02 13:57:23.88+00	t	\N	\N	automation	#2b358c	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	\N	\N
37	3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	19	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.836+00	2026-05-02 09:29:48.766+00	published	2026-05-02 13:57:23.848+00	2026-05-02 13:57:23.848+00	f	\N	\N	automation	#2b358c	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	\N	\N
40	13	Hệ thống SCADA dây chuyền chiết rót Vinamilk	SCADA system for Vinamilk filling line	he-thong-scada-day-chuyen-chiet-rot-vinamilk	electrical-automation	\N	20	\N	\N	\N	\N	2026	Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị	Centralized control, production data acquisition and equipment fault alerts	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.972+00	2026-05-02 13:57:23.946+00	published	2026-05-02 13:57:23.981+00	2026-05-02 13:57:23.981+00	t	\N	\N	automation	#2b358c	Hệ thống SCADA dây chuyền chiết rót Vinamilk	\N	\N
39	13	Hệ thống SCADA dây chuyền chiết rót Vinamilk	SCADA system for Vinamilk filling line	he-thong-scada-day-chuyen-chiet-rot-vinamilk	electrical-automation	\N	20	\N	\N	\N	\N	2026	Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị	Centralized control, production data acquisition and equipment fault alerts	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.946+00	2026-05-02 13:57:23.946+00	published	2026-05-02 13:57:23.954+00	2026-05-02 13:57:23.954+00	f	\N	\N	automation	#2b358c	Hệ thống SCADA dây chuyền chiết rót Vinamilk	\N	\N
42	14	Robot gắp sản phẩm cho nhà máy điện tử VSIP	Product handling robot for VSIP electronics factory	robot-gap-san-pham-cho-nha-may-dien-tu-vsip	electrical-automation	\N	21	\N	\N	\N	\N	2026	Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại	Integrated industrial robots, vision sensors and sorting conveyors	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.089+00	2026-05-02 13:57:24.058+00	published	2026-05-02 13:57:24.097+00	2026-05-02 13:57:24.097+00	t	\N	\N	automation	#2b358c	Robot gắp sản phẩm cho nhà máy điện tử VSIP	\N	\N
41	14	Robot gắp sản phẩm cho nhà máy điện tử VSIP	Product handling robot for VSIP electronics factory	robot-gap-san-pham-cho-nha-may-dien-tu-vsip	electrical-automation	\N	21	\N	\N	\N	\N	2026	Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại	Integrated industrial robots, vision sensors and sorting conveyors	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.058+00	2026-05-02 13:57:24.058+00	published	2026-05-02 13:57:24.066+00	2026-05-02 13:57:24.066+00	f	\N	\N	automation	#2b358c	Robot gắp sản phẩm cho nhà máy điện tử VSIP	\N	\N
44	15	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	Raw material warehouse automation for feed plant	tu-dong-hoa-kho-nguyen-lieu-nha-may-thuc-an-chan-nuoi	electrical-automation	\N	22	\N	\N	\N	\N	2025	Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu	Controlled silos, dosing scales and material movement traceability	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.194+00	2026-05-02 13:57:24.17+00	published	2026-05-02 13:57:24.202+00	2026-05-02 13:57:24.202+00	t	\N	\N	automation	#2b358c	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	\N	\N
43	15	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	Raw material warehouse automation for feed plant	tu-dong-hoa-kho-nguyen-lieu-nha-may-thuc-an-chan-nuoi	electrical-automation	\N	22	\N	\N	\N	\N	2025	Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu	Controlled silos, dosing scales and material movement traceability	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.17+00	2026-05-02 13:57:24.17+00	published	2026-05-02 13:57:24.176+00	2026-05-02 13:57:24.176+00	f	\N	\N	automation	#2b358c	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	\N	\N
46	16	Nâng cấp PLC dây chuyền đóng gói Masan	PLC upgrade for Masan packaging line	nang-cap-plc-day-chuyen-dong-goi-masan	electrical-automation	\N	23	\N	\N	\N	\N	2025	Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền	Migrated control systems, optimized machine cycles and reduced line downtime	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.356+00	2026-05-02 13:57:24.332+00	published	2026-05-02 13:57:24.363+00	2026-05-02 13:57:24.363+00	t	\N	\N	automation	#2b358c	Nâng cấp PLC dây chuyền đóng gói Masan	\N	\N
45	16	Nâng cấp PLC dây chuyền đóng gói Masan	PLC upgrade for Masan packaging line	nang-cap-plc-day-chuyen-dong-goi-masan	electrical-automation	\N	23	\N	\N	\N	\N	2025	Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền	Migrated control systems, optimized machine cycles and reduced line downtime	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.333+00	2026-05-02 13:57:24.332+00	published	2026-05-02 13:57:24.339+00	2026-05-02 13:57:24.339+00	f	\N	\N	automation	#2b358c	Nâng cấp PLC dây chuyền đóng gói Masan	\N	\N
48	4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	24	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.47+00	2026-05-02 09:29:48.826+00	published	2026-05-02 13:57:24.477+00	2026-05-02 13:57:24.477+00	t	\N	\N	bms	#6366F1	Hệ thống BMS tòa nhà Landmark 81	\N	\N
47	4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	24	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.44+00	2026-05-02 09:29:48.826+00	published	2026-05-02 13:57:24.448+00	2026-05-02 13:57:24.448+00	f	\N	\N	bms	#6366F1	Hệ thống BMS tòa nhà Landmark 81	\N	\N
50	17	BMS khu văn phòng Techcombank Tower	BMS for Techcombank Tower office complex	bms-khu-van-phong-techcombank-tower	digitalization	\N	25	\N	\N	\N	\N	2026	Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng	Connected HVAC, lighting, security and energy monitoring on one platform	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.631+00	2026-05-02 13:57:24.606+00	published	2026-05-02 13:57:24.64+00	2026-05-02 13:57:24.64+00	t	\N	\N	bms	#6366F1	BMS khu văn phòng Techcombank Tower	\N	\N
49	17	BMS khu văn phòng Techcombank Tower	BMS for Techcombank Tower office complex	bms-khu-van-phong-techcombank-tower	digitalization	\N	25	\N	\N	\N	\N	2026	Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng	Connected HVAC, lighting, security and energy monitoring on one platform	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.606+00	2026-05-02 13:57:24.606+00	published	2026-05-02 13:57:24.612+00	2026-05-02 13:57:24.612+00	f	\N	\N	bms	#6366F1	BMS khu văn phòng Techcombank Tower	\N	\N
52	18	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	Building management system for Hanh Phuc international hospital	he-thong-quan-ly-toa-nha-benh-vien-quoc-te-hanh-phuc	digitalization	\N	26	\N	\N	\N	\N	2026	Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền	Monitored technical rooms, environmental alerts and base equipment operations	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.773+00	2026-05-02 13:57:24.745+00	published	2026-05-02 13:57:24.782+00	2026-05-02 13:57:24.782+00	t	\N	\N	bms	#6366F1	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	\N	\N
51	18	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	Building management system for Hanh Phuc international hospital	he-thong-quan-ly-toa-nha-benh-vien-quoc-te-hanh-phuc	digitalization	\N	26	\N	\N	\N	\N	2026	Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền	Monitored technical rooms, environmental alerts and base equipment operations	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.745+00	2026-05-02 13:57:24.745+00	published	2026-05-02 13:57:24.752+00	2026-05-02 13:57:24.752+00	f	\N	\N	bms	#6366F1	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	\N	\N
54	19	BMS khách sạn nghỉ dưỡng Phú Quốc	BMS for Phu Quoc resort hotel	bms-khach-san-nghi-duong-phu-quoc	digitalization	\N	27	\N	\N	\N	\N	2025	Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng	Optimized HVAC, public lighting and operating schedules based on room occupancy	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.875+00	2026-05-02 13:57:24.85+00	published	2026-05-02 13:57:24.883+00	2026-05-02 13:57:24.883+00	t	\N	\N	bms	#6366F1	BMS khách sạn nghỉ dưỡng Phú Quốc	\N	\N
53	19	BMS khách sạn nghỉ dưỡng Phú Quốc	BMS for Phu Quoc resort hotel	bms-khach-san-nghi-duong-phu-quoc	digitalization	\N	27	\N	\N	\N	\N	2025	Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng	Optimized HVAC, public lighting and operating schedules based on room occupancy	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.85+00	2026-05-02 13:57:24.85+00	published	2026-05-02 13:57:24.857+00	2026-05-02 13:57:24.857+00	f	\N	\N	bms	#6366F1	BMS khách sạn nghỉ dưỡng Phú Quốc	\N	\N
56	20	Nâng cấp BMS trung tâm thương mại Saigon Centre	BMS upgrade for Saigon Centre commercial complex	nang-cap-bms-trung-tam-thuong-mai-saigon-centre	digitalization	\N	28	\N	\N	\N	\N	2025	Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung	Re-integrated existing equipment and built centralized operations dashboards	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.982+00	2026-05-02 13:57:24.961+00	published	2026-05-02 13:57:24.989+00	2026-05-02 13:57:24.989+00	t	\N	\N	bms	#6366F1	Nâng cấp BMS trung tâm thương mại Saigon Centre	\N	\N
55	20	Nâng cấp BMS trung tâm thương mại Saigon Centre	BMS upgrade for Saigon Centre commercial complex	nang-cap-bms-trung-tam-thuong-mai-saigon-centre	digitalization	\N	28	\N	\N	\N	\N	2025	Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung	Re-integrated existing equipment and built centralized operations dashboards	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.961+00	2026-05-02 13:57:24.961+00	published	2026-05-02 13:57:24.966+00	2026-05-02 13:57:24.966+00	f	\N	\N	bms	#6366F1	Nâng cấp BMS trung tâm thương mại Saigon Centre	\N	\N
62	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 08:50:26.269+00	2026-05-02 09:29:48.586+00	published	2026-05-03 08:50:26.294+00	2026-05-03 08:50:26.294+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
5	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	\N	5	\N	\N	\N	\N	2026	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	\N	\N	\N	\N	\N	\N	t	2026-05-02 09:34:32.48+00	2026-05-02 09:29:48.586+00	published	2026-05-02 09:34:32.507+00	2026-05-02 09:34:32.507+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
17	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	\N	9	\N	\N	\N	\N	2026	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.259+00	2026-05-02 09:29:48.586+00	published	2026-05-02 13:57:22.272+00	2026-05-02 13:57:22.272+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
63	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 08:53:25.645+00	2026-05-02 09:29:48.586+00	published	2026-05-03 08:53:25.683+00	2026-05-03 08:53:25.683+00	t	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
10	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	\N	5	\N	\N	\N	\N	2026	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:47:03.87+00	2026-05-02 09:29:48.586+00	published	2026-05-02 13:47:03.879+00	2026-05-02 13:47:03.879+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
61	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 08:49:02.103+00	2026-05-02 09:29:48.586+00	published	2026-05-03 08:49:02.133+00	2026-05-03 08:49:02.133+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
58	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 00:39:49.945+00	2026-05-02 09:29:48.586+00	published	2026-05-03 00:39:49.974+00	2026-05-03 00:39:49.974+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
59	1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 08:29:55.144+00	2026-05-02 09:29:48.586+00	published	2026-05-03 08:29:55.166+00	2026-05-03 08:29:55.166+00	f	\N	\N	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
\.


--
-- Data for Name: _projects_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v_locales (version_featured_badge_label, id, _locale, _parent_id) FROM stdin;
{"vi":"Năng lượng","en":"Energy"}	1	vi	1
{"vi":"Điện CN","en":"Industrial power"}	2	vi	2
{"vi":"Tự động hóa","en":"Automation"}	3	vi	3
{"vi":"BMS","en":"BMS"}	4	vi	4
{"vi":"Năng lượng","en":"Energy"}	5	vi	5
{"vi":"Điện CN","en":"Industrial power"}	6	vi	6
{"vi":"Tự động hóa","en":"Automation"}	7	vi	7
{"vi":"BMS","en":"BMS"}	8	vi	8
Năng lượng	9	vi	9
Năng lượng	10	vi	10
Energy	11	en	10
Điện CN	12	vi	11
Điện CN	13	vi	12
Industrial power	14	en	12
Tự động hóa	15	vi	13
Tự động hóa	16	vi	14
Automation	17	en	14
BMS	18	vi	15
BMS	19	vi	16
BMS	20	en	16
Năng lượng	21	vi	17
Energy	22	en	17
Năng lượng	23	vi	18
Energy	24	en	18
Năng lượng	25	vi	19
Năng lượng	26	vi	20
Energy	27	en	20
Năng lượng	28	vi	21
Năng lượng	29	vi	22
Energy	30	en	22
Năng lượng	31	vi	23
Năng lượng	32	vi	24
Energy	33	en	24
Năng lượng	34	vi	25
Năng lượng	35	vi	26
Energy	36	en	26
Điện CN	37	vi	27
Industrial power	38	en	27
Điện CN	39	vi	28
Industrial power	40	en	28
Điện CN	41	vi	29
Điện CN	42	vi	30
Industrial power	43	en	30
Điện CN	44	vi	31
Điện CN	45	vi	32
Industrial power	46	en	32
Điện CN	47	vi	33
Điện CN	48	vi	34
Industrial power	49	en	34
Điện CN	50	vi	35
Điện CN	51	vi	36
Industrial power	52	en	36
Tự động hóa	53	vi	37
Automation	54	en	37
Tự động hóa	55	vi	38
Automation	56	en	38
Tự động hóa	57	vi	39
Tự động hóa	58	vi	40
Automation	59	en	40
Tự động hóa	60	vi	41
Tự động hóa	61	vi	42
Automation	62	en	42
Tự động hóa	63	vi	43
Tự động hóa	64	vi	44
Automation	65	en	44
Tự động hóa	66	vi	45
Tự động hóa	67	vi	46
Automation	68	en	46
BMS	69	vi	47
BMS	70	en	47
BMS	71	vi	48
BMS	72	en	48
BMS	73	vi	49
BMS	74	vi	50
BMS	75	en	50
BMS	76	vi	51
BMS	77	vi	52
BMS	78	en	52
BMS	79	vi	53
BMS	80	vi	54
BMS	81	en	54
BMS	82	vi	55
BMS	83	vi	56
BMS	84	en	56
Năng lượng	85	vi	57
Energy	86	en	57
Năng lượng	87	vi	58
Energy	88	en	58
Năng lượng	89	vi	59
Energy	90	en	59
Năng lượng	91	vi	60
Energy	92	en	60
Năng lượng	93	vi	61
Energy	94	en	61
Năng lượng	95	vi	62
Energy	96	en	62
Năng lượng	97	vi	63
Energy	98	en	63
\.


--
-- Data for Name: _projects_v_version_customer_reasons; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v_version_customer_reasons (_order, _parent_id, id, _uuid) FROM stdin;
1	57	1	69f618f0f7da914c9d4e9640
2	57	2	69f618f0f7da914c9d4e9641
3	57	3	69f618f0f7da914c9d4e9642
1	58	4	69f69955944ff49d4af67c6a
2	58	5	69f69955944ff49d4af67c6b
3	58	6	69f69955944ff49d4af67c6c
1	59	7	69f7078343bf97e6a550fe1d
2	59	8	69f7078343bf97e6a550fe1e
3	59	9	69f7078343bf97e6a550fe1f
1	60	10	69f709294de9b3f05b430dcf
2	60	11	69f709294de9b3f05b430dd0
3	60	12	69f709294de9b3f05b430dd1
1	61	13	69f70bfeef99a4f908680426
2	61	14	69f70bfeef99a4f908680427
3	61	15	69f70bfeef99a4f908680428
1	62	16	69f70c52431d72fb04b96121
2	62	17	69f70c52431d72fb04b96122
3	62	18	69f70c52431d72fb04b96123
1	63	19	69f70d05597c80fcdc476062
2	63	20	69f70d05597c80fcdc476063
3	63	21	69f70d05597c80fcdc476064
\.


--
-- Data for Name: _projects_v_version_customer_reasons_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v_version_customer_reasons_locales (text, id, _locale, _parent_id) FROM stdin;
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	1	vi	1
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	2	vi	2
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	3	vi	3
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	4	vi	4
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	5	vi	5
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	6	vi	6
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	7	vi	7
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	8	vi	8
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	9	vi	9
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	10	vi	10
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	11	vi	11
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	12	vi	12
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	13	vi	13
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	14	vi	14
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	15	vi	15
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	16	vi	16
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	17	vi	17
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	18	vi	18
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	19	vi	19
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	20	vi	20
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	21	vi	21
\.


--
-- Data for Name: _projects_v_version_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v_version_images (_order, _parent_id, id, image_id, _uuid) FROM stdin;
\.


--
-- Data for Name: _projects_v_version_result_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v_version_result_items (_order, _parent_id, id, _uuid) FROM stdin;
1	57	1	69f618f0f7da914c9d4e9643
2	57	2	69f618f0f7da914c9d4e9644
3	57	3	69f618f0f7da914c9d4e9645
1	58	4	69f69955944ff49d4af67c6d
2	58	5	69f69955944ff49d4af67c6e
3	58	6	69f69955944ff49d4af67c6f
1	59	7	69f7078343bf97e6a550fe20
2	59	8	69f7078343bf97e6a550fe21
3	59	9	69f7078343bf97e6a550fe22
1	60	10	69f709294de9b3f05b430dd2
2	60	11	69f709294de9b3f05b430dd3
3	60	12	69f709294de9b3f05b430dd4
1	61	13	69f70bfeef99a4f908680429
2	61	14	69f70bfeef99a4f90868042a
3	61	15	69f70bfeef99a4f90868042b
1	62	16	69f70c52431d72fb04b96124
2	62	17	69f70c52431d72fb04b96125
3	62	18	69f70c52431d72fb04b96126
1	63	19	69f70d05597c80fcdc476065
2	63	20	69f70d05597c80fcdc476066
3	63	21	69f70d05597c80fcdc476067
\.


--
-- Data for Name: _projects_v_version_result_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._projects_v_version_result_items_locales (text, id, _locale, _parent_id) FROM stdin;
Hệ thống vận hành ổn định sau khi bàn giao.	1	vi	1
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	2	vi	2
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	3	vi	3
Hệ thống vận hành ổn định sau khi bàn giao.	4	vi	4
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	5	vi	5
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	6	vi	6
Hệ thống vận hành ổn định sau khi bàn giao.	7	vi	7
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	8	vi	8
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	9	vi	9
Hệ thống vận hành ổn định sau khi bàn giao.	10	vi	10
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	11	vi	11
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	12	vi	12
Hệ thống vận hành ổn định sau khi bàn giao.	13	vi	13
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	14	vi	14
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	15	vi	15
Hệ thống vận hành ổn định sau khi bàn giao.	16	vi	16
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	17	vi	17
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	18	vi	18
Hệ thống vận hành ổn định sau khi bàn giao.	19	vi	19
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	20	vi	20
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	21	vi	21
\.


--
-- Data for Name: _services_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._services_v (id, parent_id, version_name_vi, version_name_en, version_slug, version_category, version_icon_id, version_thumbnail_id, version_summary_vi, version_summary_en, version_content_vi, version_content_en, version_order, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, snapshot, published_locale) FROM stdin;
\.


--
-- Data for Name: home_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page (id, updated_at, created_at) FROM stdin;
1	2026-04-24 01:25:14.759+00	2026-04-24 01:25:14.759+00
\.


--
-- Data for Name: home_page_blocks_brand_logos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_brand_logos (_order, _parent_id, _path, id, block_name, source_mode, count) FROM stdin;
8	1	layout	69eae59dcf6a07796609bb18	\N	latest	6
\.


--
-- Data for Name: home_page_blocks_brand_logos_fallback_brands; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_brand_logos_fallback_brands (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_brand_logos_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_brand_logos_locales (title, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_cta_banner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_cta_banner (_order, _parent_id, _path, id, primary_c_t_a_href, secondary_c_t_a_href, block_name, background_color, gradient_from, gradient_middle, gradient_to, accent_color) FROM stdin;
7	1	layout	69eae59dcf6a07796609bb17	/contact	/services	\N	#0F172A	#B92C32	#2b358c	#0F172A	#B92C32
\.


--
-- Data for Name: home_page_blocks_cta_banner_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_cta_banner_locales (title, subtitle, primary_c_t_a_label, secondary_c_t_a_label, id, _locale, _parent_id) FROM stdin;
Bắt đầu Dự án của bạn ngay hôm nay	Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp	Liên hệ Ngay	Xem Dịch vụ	19	vi	69eae59dcf6a07796609bb17
Start Your Project Today	Contact our team of experts for optimal solution consulting for your business	Contact Now	View Services	20	en	69eae59dcf6a07796609bb17
\.


--
-- Data for Name: home_page_blocks_featured_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_featured_projects (_order, _parent_id, _path, id, block_name, background_color, view_all_href, source_mode, count, text_theme, variant) FROM stdin;
4	1	layout	69eae59dcf6a07796609bb14	\N	#0B1221	/du-an-tham-khao	latest	4	dark	grid
\.


--
-- Data for Name: home_page_blocks_featured_projects_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_featured_projects_locales (title, view_all_label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_featured_projects_tabs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_featured_projects_tabs (_order, _parent_id, id, value) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_featured_projects_tabs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_featured_projects_tabs_locales (label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_hero; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_hero (_order, _parent_id, _path, id, background_image_id, primary_c_t_a_href, secondary_c_t_a_href, block_name, background_type, background_video_id, variant, hero_image_id, hero_image_u_r_l) FROM stdin;
1	1	layout	69eae59dcf6a07796609bb11	\N	/services	/contact	Tiêu đề	video	1	corporate	\N	\N
\.


--
-- Data for Name: home_page_blocks_hero_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_hero_locales (title, subtitle, primary_c_t_a_label, secondary_c_t_a_label, id, _locale, _parent_id, badge_text) FROM stdin;
Giải pháp Tự động hóa \\n Công nghiệp Toàn diện 	Đối tác tin cậy trong lĩnh vực tự động hóa, quản lý năng lượng \\n và hệ thống điện công nghiệp cho doanh nghiệp toàn quốc	Khám phá Dịch vụ	Liên hệ Tư vấn	19	vi	69eae59dcf6a07796609bb11	CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU
Comprehensive Industrial\nAutomation Solutions	Your trusted partner in industrial automation, energy management and electrical systems for enterprises nationwide	Explore Services	Contact Us	20	en	69eae59dcf6a07796609bb11	CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU
\.


--
-- Data for Name: home_page_blocks_hero_stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_hero_stats (_order, _parent_id, id, value, suffix, number_color) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_hero_stats_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_hero_stats_locales (label_top, label_bottom, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_hero_trust_partners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_hero_trust_partners (_order, _parent_id, id, name, logo_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_news; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_news (_order, _parent_id, _path, id, count, block_name, view_all_href, source_mode, featured_news_id, display_mode) FROM stdin;
3	1	layout	69eae59dcf6a07796609bb13	3	\N	/tin-tuc	latest	\N	featured
\.


--
-- Data for Name: home_page_blocks_news_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_news_locales (title, view_all_label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_partners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_partners (_order, _parent_id, _path, id, block_name, background_color) FROM stdin;
5	1	layout	69eae59dcf6a07796609bb15	\N	#0B1221
\.


--
-- Data for Name: home_page_blocks_partners_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_partners_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_partners_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_partners_images_locales (alt, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_partners_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_partners_locales (subtitle, id, _locale, _parent_id, title) FROM stdin;
Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa	19	vi	69eae59dcf6a07796609bb15	ĐỐI TÁC
We partner with leading companies in the industrial and automation sectors	20	en	69eae59dcf6a07796609bb15	ĐỐI TÁC
\.


--
-- Data for Name: home_page_blocks_products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_products (_order, _parent_id, _path, id, block_name, source_mode, count) FROM stdin;
6	1	layout	69eae59dcf6a07796609bb16	\N	latest	5
\.


--
-- Data for Name: home_page_blocks_products_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_products_locales (subtitle, id, _locale, _parent_id, title) FROM stdin;
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	19	vi	69eae59dcf6a07796609bb16	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Distributing genuine industrial equipment from world-leading brands	20	en	69eae59dcf6a07796609bb16	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
\.


--
-- Data for Name: home_page_blocks_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_services (_order, _parent_id, _path, id, block_name, variant) FROM stdin;
2	1	layout	69eae59dcf6a07796609bb12	\N	cards
\.


--
-- Data for Name: home_page_blocks_services_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_services_cards (_order, _parent_id, id, image_id, href, image_u_r_l) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_services_cards_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_services_cards_locales (title, description, button_label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: home_page_blocks_services_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_blocks_services_locales (subtitle, id, _locale, _parent_id, title) FROM stdin;
Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng	19	vi	69eae59dcf6a07796609bb12	LĨNH VỰC HOẠT ĐỘNG
Comprehensive services in industrial and civil sectors	20	en	69eae59dcf6a07796609bb12	LĨNH VỰC HOẠT ĐỘNG
\.


--
-- Data for Name: home_page_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_page_rels (id, "order", parent_id, path, projects_id, news_id, products_id, partners_id) FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, caption, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y) FROM stdin;
1	\N	\N	2026-04-24 04:41:30.774+00	2026-04-24 04:41:30.774+00	/api/media/file/bitrate_compressed_video.mp4	\N	bitrate_compressed_video.mp4	video/mp4	2941504	\N	\N	\N	\N
2	Nhà máy trong sương với hệ thống tự động hóa công nghiệp	Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương	2026-05-02 09:18:04.326+00	2026-05-02 09:18:04.324+00	/api/media/file/news-factory-automation-binh-duong.png	\N	news-factory-automation-binh-duong.png	image/png	32642	1200	800	50	50
3	Mái nhà công nghiệp lắp đặt pin mặt trời	Hội thảo giải pháp quản lý năng lượng thông minh 2026	2026-05-02 09:18:04.429+00	2026-05-02 09:18:04.429+00	/api/media/file/news-smart-energy-management.png	\N	news-smart-energy-management.png	image/png	34220	1200	800	50	50
4	Bàn kỹ thuật với dụng cụ và thiết bị tự động hóa	Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản	2026-05-02 09:18:04.501+00	2026-05-02 09:18:04.501+00	/api/media/file/news-japan-strategic-partnership.png	\N	news-japan-strategic-partnership.png	image/png	38773	1200	800	50	50
5	Tòa nhà công nghiệp trong sương với hệ thống quản lý năng lượng	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	2026-05-02 09:29:48.545+00	2026-05-02 09:29:48.544+00	/api/media/file/project-energy-management-vsip.png	\N	project-energy-management-vsip.png	image/png	24000	1200	700	50	50
6	Trạm biến áp công nghiệp vào ban đêm	Trạm biến áp 110kV Nhà máy thép Formosa	2026-05-02 09:29:48.651+00	2026-05-02 09:29:48.651+00	/api/media/file/project-formosa-substation.png	\N	project-formosa-substation.png	image/png	32374	1200	700	50	50
7	Dây chuyền sản xuất tự động hóa trong nhà máy	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	2026-05-02 09:29:48.75+00	2026-05-02 09:29:48.749+00	/api/media/file/project-nestle-automation.png	\N	project-nestle-automation.png	image/png	37060	1200	700	50	50
8	Không gian tòa nhà hiện đại với hệ thống quản lý BMS	Hệ thống BMS tòa nhà Landmark 81	2026-05-02 09:29:48.814+00	2026-05-02 09:29:48.813+00	/api/media/file/project-landmark-bms.png	\N	project-landmark-bms.png	image/png	29632	1200	700	50	50
9	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore thumbnail	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	2026-05-02 13:57:22.19+00	2026-05-02 13:57:22.188+00	/api/media/file/project-energy-1-hero-v2.png	\N	project-energy-1-hero-v2.png	image/png	175876	1200	700	50	50
10	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh thumbnail	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	2026-05-02 13:57:22.451+00	2026-05-02 13:57:22.451+00	/api/media/file/project-energy-2-hero-v2.png	\N	project-energy-2-hero-v2.png	image/png	175317	1200	700	50	50
11	Giải pháp tối ưu năng lượng cho KCN Long Hậu thumbnail	Giải pháp tối ưu năng lượng cho KCN Long Hậu	2026-05-02 13:57:22.641+00	2026-05-02 13:57:22.641+00	/api/media/file/project-energy-3-hero-v2.png	\N	project-energy-3-hero-v2.png	image/png	175511	1200	700	50	50
12	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar thumbnail	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	2026-05-02 13:57:22.783+00	2026-05-02 13:57:22.783+00	/api/media/file/project-energy-4-hero-v2.png	\N	project-energy-4-hero-v2.png	image/png	176237	1200	700	50	50
13	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái thumbnail	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	2026-05-02 13:57:22.966+00	2026-05-02 13:57:22.966+00	/api/media/file/project-energy-5-hero-v2.png	\N	project-energy-5-hero-v2.png	image/png	176013	1200	700	50	50
14	Trạm biến áp 110kV Nhà máy thép Formosa thumbnail	Trạm biến áp 110kV Nhà máy thép Formosa	2026-05-02 13:57:23.072+00	2026-05-02 13:57:23.072+00	/api/media/file/project-electrical-1-hero-v2.png	\N	project-electrical-1-hero-v2.png	image/png	131240	1200	700	50	50
15	Tủ điện trung thế dây chuyền xi măng Hà Tiên thumbnail	Tủ điện trung thế dây chuyền xi măng Hà Tiên	2026-05-02 13:57:23.185+00	2026-05-02 13:57:23.185+00	/api/media/file/project-electrical-2-hero-v2.png	\N	project-electrical-2-hero-v2.png	image/png	130831	1200	700	50	50
16	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến thumbnail	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	2026-05-02 13:57:23.355+00	2026-05-02 13:57:23.355+00	/api/media/file/project-electrical-3-hero-v2.png	\N	project-electrical-3-hero-v2.png	image/png	132518	1200	700	50	50
17	Hệ thống điện động lực cảng container Cái Mép thumbnail	Hệ thống điện động lực cảng container Cái Mép	2026-05-02 13:57:23.459+00	2026-05-02 13:57:23.459+00	/api/media/file/project-electrical-4-hero-v2.png	\N	project-electrical-4-hero-v2.png	image/png	131882	1200	700	50	50
18	Cải tạo trạm điện nhà máy nước Thủ Đức thumbnail	Cải tạo trạm điện nhà máy nước Thủ Đức	2026-05-02 13:57:23.637+00	2026-05-02 13:57:23.637+00	/api/media/file/project-electrical-5-hero-v2.png	\N	project-electrical-5-hero-v2.png	image/png	131302	1200	700	50	50
19	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam thumbnail	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	2026-05-02 13:57:23.815+00	2026-05-02 13:57:23.815+00	/api/media/file/project-automation-1-hero-v2.png	\N	project-automation-1-hero-v2.png	image/png	161373	1200	700	50	50
20	Hệ thống SCADA dây chuyền chiết rót Vinamilk thumbnail	Hệ thống SCADA dây chuyền chiết rót Vinamilk	2026-05-02 13:57:23.936+00	2026-05-02 13:57:23.936+00	/api/media/file/project-automation-2-hero-v2.png	\N	project-automation-2-hero-v2.png	image/png	161622	1200	700	50	50
21	Robot gắp sản phẩm cho nhà máy điện tử VSIP thumbnail	Robot gắp sản phẩm cho nhà máy điện tử VSIP	2026-05-02 13:57:24.045+00	2026-05-02 13:57:24.045+00	/api/media/file/project-automation-3-hero-v2.png	\N	project-automation-3-hero-v2.png	image/png	161689	1200	700	50	50
22	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi thumbnail	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	2026-05-02 13:57:24.159+00	2026-05-02 13:57:24.159+00	/api/media/file/project-automation-4-hero-v2.png	\N	project-automation-4-hero-v2.png	image/png	160921	1200	700	50	50
23	Nâng cấp PLC dây chuyền đóng gói Masan thumbnail	Nâng cấp PLC dây chuyền đóng gói Masan	2026-05-02 13:57:24.32+00	2026-05-02 13:57:24.32+00	/api/media/file/project-automation-5-hero-v2.png	\N	project-automation-5-hero-v2.png	image/png	161998	1200	700	50	50
24	Hệ thống BMS tòa nhà Landmark 81 thumbnail	Hệ thống BMS tòa nhà Landmark 81	2026-05-02 13:57:24.418+00	2026-05-02 13:57:24.418+00	/api/media/file/project-bms-1-hero-v2.png	\N	project-bms-1-hero-v2.png	image/png	140308	1200	700	50	50
25	BMS khu văn phòng Techcombank Tower thumbnail	BMS khu văn phòng Techcombank Tower	2026-05-02 13:57:24.591+00	2026-05-02 13:57:24.591+00	/api/media/file/project-bms-2-hero-v2.png	\N	project-bms-2-hero-v2.png	image/png	141199	1200	700	50	50
26	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc thumbnail	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	2026-05-02 13:57:24.735+00	2026-05-02 13:57:24.735+00	/api/media/file/project-bms-3-hero-v2.png	\N	project-bms-3-hero-v2.png	image/png	140445	1200	700	50	50
27	BMS khách sạn nghỉ dưỡng Phú Quốc thumbnail	BMS khách sạn nghỉ dưỡng Phú Quốc	2026-05-02 13:57:24.839+00	2026-05-02 13:57:24.839+00	/api/media/file/project-bms-4-hero-v2.png	\N	project-bms-4-hero-v2.png	image/png	141542	1200	700	50	50
28	Nâng cấp BMS trung tâm thương mại Saigon Centre thumbnail	Nâng cấp BMS trung tâm thương mại Saigon Centre	2026-05-02 13:57:24.947+00	2026-05-02 13:57:24.947+00	/api/media/file/project-bms-5-hero-v2.png	\N	project-bms-5-hero-v2.png	image/png	141280	1200	700	50	50
29	Van công nghiệp điều khiển tự động	Van công nghiệp điều khiển tự động	2026-05-02 14:23:35.541+00	2026-05-02 14:23:35.538+00	/api/media/file/product-industrial-valve.png	\N	product-industrial-valve.png	image/png	81005	900	1120	50	50
30	Động cơ điện và biến tần công nghiệp	Động cơ điện và biến tần công nghiệp	2026-05-02 14:23:35.814+00	2026-05-02 14:23:35.813+00	/api/media/file/product-motor-drive.png	\N	product-motor-drive.png	image/png	80676	900	1120	50	50
31	Cảm biến công nghiệp và thiết bị đo	Cảm biến công nghiệp và thiết bị đo	2026-05-02 14:23:36.032+00	2026-05-02 14:23:36.032+00	/api/media/file/product-industrial-sensor.png	\N	product-industrial-sensor.png	image/png	78648	900	1120	50	50
32	Tủ điện điều khiển công nghiệp	Tủ điện điều khiển công nghiệp	2026-05-02 14:23:36.251+00	2026-05-02 14:23:36.251+00	/api/media/file/product-control-cabinet.png	\N	product-control-cabinet.png	image/png	78946	900	1120	50	50
33	Thiết bị đo lường công nghiệp	Thiết bị đo lường công nghiệp	2026-05-02 14:23:36.385+00	2026-05-02 14:23:36.384+00	/api/media/file/product-measurement-device.png	\N	product-measurement-device.png	image/png	75604	900	1120	50	50
34	ABB logo	ABB logo	2026-05-02 14:23:36.545+00	2026-05-02 14:23:36.545+00	/api/media/file/partner-abb.png	\N	partner-abb.png	image/png	7742	520	220	50	50
35	Intel logo	Intel logo	2026-05-02 14:23:36.678+00	2026-05-02 14:23:36.678+00	/api/media/file/partner-intel.png	\N	partner-intel.png	image/png	7508	520	220	50	50
36	Mitsubishi logo	Mitsubishi logo	2026-05-02 14:23:36.817+00	2026-05-02 14:23:36.816+00	/api/media/file/partner-mitsubishi.png	\N	partner-mitsubishi.png	image/png	9350	520	220	50	50
37	PSCL logo	PSCL logo	2026-05-02 14:23:36.852+00	2026-05-02 14:23:36.852+00	/api/media/file/partner-pscl.png	\N	partner-pscl.png	image/png	8540	520	220	50	50
38	KEIHIN logo	KEIHIN logo	2026-05-02 14:23:36.888+00	2026-05-02 14:23:36.888+00	/api/media/file/partner-keihin.png	\N	partner-keihin.png	image/png	7615	520	220	50	50
39	Siemens logo	Siemens logo	2026-05-02 14:23:36.935+00	2026-05-02 14:23:36.935+00	/api/media/file/partner-siemens.png	\N	partner-siemens.png	image/png	9753	520	220	50	50
40	\N	\N	2026-05-03 09:03:15.177+00	2026-05-03 09:03:15.177+00	/api/media/file/Screenshot%20at%20Apr%2007%2018-43-15.png	\N	Screenshot at Apr 07 18-43-15.png	image/png	341661	3316	1178	50	50
41	\N	\N	2026-05-04 02:02:50.428+00	2026-05-04 02:02:50.427+00	/api/media/file/LOGO-01.png	\N	LOGO-01.png	image/png	127964	3750	3750	50	50
42	\N	\N	2026-05-04 02:06:51.748+00	2026-05-04 02:06:51.748+00	/api/media/file/LOGO-2.png	\N	LOGO-2.png	image/png	178401	3412	1202	50	50
43	\N	\N	2026-05-04 02:07:43.564+00	2026-05-04 02:07:43.564+00	/api/media/file/LOGO-02.png	\N	LOGO-02.png	image/png	166040	3425	1219	50	50
44	\N	\N	2026-05-04 03:13:45.904+00	2026-05-04 03:13:45.903+00	/api/media/file/bitrate_compressed_video-1.mp4	\N	bitrate_compressed_video-1.mp4	video/mp4	2941504	\N	\N	\N	\N
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.news (id, title_vi, title_en, slug, published_at, thumbnail_id, excerpt_vi, excerpt_en, content_vi, content_en, updated_at, created_at, _status, title_label) FROM stdin;
1	Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương	Bac Au completes factory automation project in Binh Duong	du-an-tu-dong-hoa-nha-may-binh-duong-2026	2026-03-20 02:00:00+00	2	Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.	The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:34:48.508+00	2026-05-02 09:18:04.36+00	published	Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương
3	Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản	Bac Au signs strategic partnership with Japanese partner	bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban	2026-03-05 02:00:00+00	4	Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.	The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:34:48.638+00	2026-05-02 09:18:04.518+00	published	Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản
2	Hội thảo giải pháp quản lý năng lượng thông minh 2026	Smart energy management solutions seminar 2026	hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026	2026-03-15 02:00:00+00	3	Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.	Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	2026-05-02 09:34:48.586+00	2026-05-02 09:18:04.443+00	published	Hội thảo giải pháp quản lý năng lượng thông minh 2026
\.


--
-- Data for Name: news_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.news_tags ("order", parent_id, value, id) FROM stdin;
1	1	Tin tức	6
1	2	Hội thảo	7
2	2	Sự kiện	8
1	3	Tin tức	9
2	3	Thông cáo	10
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages (id, slug, template, updated_at, created_at, seo_image_id) FROM stdin;
3	du-an-tham-khao	builder	2026-05-03 08:53:25.484+00	2026-05-02 15:29:39.269+00	\N
2	gioi-thieu	builder	2026-05-03 09:18:27.524+00	2026-05-02 15:29:39.079+00	\N
1	home	home	2026-05-04 02:18:25.164+00	2026-05-02 02:32:48.104+00	\N
4	home_v2	builder	2026-05-04 03:28:11.961+00	2026-05-04 03:01:31.251+00	\N
5	home-modern-split	builder	2026-05-05 07:25:41.249+00	2026-05-05 07:25:41.244+00	\N
6	home-data-grid	builder	2026-05-05 07:26:45.898+00	2026-05-05 07:26:45.893+00	\N
7	home-modern-rounded	builder	2026-05-05 07:26:46.028+00	2026-05-05 07:26:46.027+00	\N
8	home-ultra-modern	builder	2026-05-05 07:26:46.129+00	2026-05-05 07:26:46.128+00	\N
\.


--
-- Data for Name: pages_blocks_about_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content (_order, _parent_id, _path, id, block_name) FROM stdin;
2	2	layout	69f70d04597c80fcdc476042	\N
\.


--
-- Data for Name: pages_blocks_about_content_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections (_order, _parent_id, id, variant, columns, image_position) FROM stdin;
1	69f70d04597c80fcdc476042	gioi-thieu	intro	3	left
2	69f70d04597c80fcdc476042	su-menh	cards	3	left
3	69f70d04597c80fcdc476042	giai-phap-dien	gallery	3	left
4	69f70d04597c80fcdc476042	so-hoa	gallery	2	left
5	69f70d04597c80fcdc476042	do-luong	gallery	3	left
6	69f70d04597c80fcdc476042	san-pham	itemGrid	4	left
7	69f70d04597c80fcdc476042	dich-vu	itemGrid	3	left
8	69f70d04597c80fcdc476042	nha-xuong	gallery	3	left
9	69f70d04597c80fcdc476042	van-phong	itemGrid	2	left
10	69f70d04597c80fcdc476042	chung-chi	itemGrid	3	left
11	69f70d04597c80fcdc476042	atld	splitMedia	2	left
12	69f70d04597c80fcdc476042	chung-nhan	gallery	3	left
13	69f70d04597c80fcdc476042	tai-lieu	documentList	3	left
\.


--
-- Data for Name: pages_blocks_about_content_sections_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
1	gioi-thieu	69f70d04597c80fcdc47601e	\N	https://images.unsplash.com/photo-1758626038030-96f813504d15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
1	su-menh	69f70f3d2642f0c01bc1a6f1	\N	\N
1	giai-phap-dien	69f70d04597c80fcdc476022	\N	https://images.unsplash.com/photo-1609556273935-f295c9dd95c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
2	giai-phap-dien	69f70d04597c80fcdc476023	\N	https://images.unsplash.com/photo-1571844885558-a9437588b208?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
3	giai-phap-dien	69f70d04597c80fcdc476024	\N	https://images.unsplash.com/photo-1648598919229-fe251dba3310?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
1	so-hoa	69f70d04597c80fcdc476025	\N	https://images.unsplash.com/photo-1751222169753-92b0e1a3f58f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
2	so-hoa	69f70d04597c80fcdc476026	\N	https://images.unsplash.com/photo-1580062329913-969e9f982468?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
1	do-luong	69f70d04597c80fcdc476027	\N	https://images.unsplash.com/photo-1727292485858-588c7652ad69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
2	do-luong	69f70d04597c80fcdc476028	\N	https://images.unsplash.com/photo-1655210913810-33acfa96d1e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
3	do-luong	69f70d04597c80fcdc476029	\N	https://images.unsplash.com/photo-1651340675491-6fb0bfb5c4ea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
1	nha-xuong	69f70d04597c80fcdc476031	\N	https://images.unsplash.com/photo-1745921189400-866618539600?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
2	nha-xuong	69f70d04597c80fcdc476032	\N	https://images.unsplash.com/photo-1741176506261-73218298e4d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
3	nha-xuong	69f70d04597c80fcdc476033	\N	https://images.unsplash.com/photo-1668511237433-3df7d7a2d2ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
1	atld	69f70d04597c80fcdc47603b	\N	https://images.unsplash.com/photo-1672220262141-bf7119d3081d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
1	chung-nhan	69f70d04597c80fcdc47603c	\N	https://images.unsplash.com/photo-1602629978879-e7ed887988d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
2	chung-nhan	69f70d04597c80fcdc47603d	\N	https://images.unsplash.com/photo-1704584592182-ed995ac89ddb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
3	chung-nhan	69f70d04597c80fcdc47603e	\N	https://images.unsplash.com/photo-1624365169806-1517fcb873d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080
\.


--
-- Data for Name: pages_blocks_about_content_sections_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_images_locales (alt, id, _locale, _parent_id, caption) FROM stdin;
Giới thiệu về Bắc Âu	749	vi	69f70d04597c80fcdc47601e	\N
About Bac Au	750	en	69f70d04597c80fcdc47601e	\N
Giải pháp điện và tự động hóa 1	751	vi	69f70d04597c80fcdc476022	\N
Electrical and automation 1	752	en	69f70d04597c80fcdc476022	\N
Giải pháp điện và tự động hóa 2	753	vi	69f70d04597c80fcdc476023	\N
Electrical and automation 2	754	en	69f70d04597c80fcdc476023	\N
Giải pháp điện và tự động hóa 3	755	vi	69f70d04597c80fcdc476024	\N
Electrical and automation 3	756	en	69f70d04597c80fcdc476024	\N
Giải pháp số hóa 1	757	vi	69f70d04597c80fcdc476025	\N
Digitalization 1	758	en	69f70d04597c80fcdc476025	\N
Giải pháp số hóa 2	759	vi	69f70d04597c80fcdc476026	\N
Digitalization 2	760	en	69f70d04597c80fcdc476026	\N
Giải pháp đo lường 1	761	vi	69f70d04597c80fcdc476027	\N
Measurement technology 1	762	en	69f70d04597c80fcdc476027	\N
Giải pháp đo lường 2	763	vi	69f70d04597c80fcdc476028	\N
Measurement technology 2	764	en	69f70d04597c80fcdc476028	\N
Giải pháp đo lường 3	765	vi	69f70d04597c80fcdc476029	\N
Measurement technology 3	766	en	69f70d04597c80fcdc476029	\N
Nhà xưởng 1	767	vi	69f70d04597c80fcdc476031	\N
Nhà xưởng 1	768	en	69f70d04597c80fcdc476031	\N
Nhà xưởng 2	769	vi	69f70d04597c80fcdc476032	\N
Nhà xưởng 2	770	en	69f70d04597c80fcdc476032	\N
Nhà xưởng 3	771	vi	69f70d04597c80fcdc476033	\N
Nhà xưởng 3	772	en	69f70d04597c80fcdc476033	\N
Sức khỏe, an toàn và môi trường	773	vi	69f70d04597c80fcdc47603b	\N
Sức khỏe, an toàn và môi trường	774	en	69f70d04597c80fcdc47603b	\N
Chứng nhận 1	775	vi	69f70d04597c80fcdc47603c	\N
Chứng nhận 1	776	en	69f70d04597c80fcdc47603c	\N
Chứng nhận 2	777	vi	69f70d04597c80fcdc47603d	\N
Chứng nhận 2	778	en	69f70d04597c80fcdc47603d	\N
Chứng nhận 3	779	vi	69f70d04597c80fcdc47603e	\N
Chứng nhận 3	780	en	69f70d04597c80fcdc47603e	\N
\.


--
-- Data for Name: pages_blocks_about_content_sections_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_items (_order, _parent_id, id, icon, image_id, image_u_r_l, href) FROM stdin;
1	su-menh	69f70d04597c80fcdc47601f	\N	\N	\N	\N
2	su-menh	69f70d04597c80fcdc476020	\N	\N	\N	\N
3	su-menh	69f70d04597c80fcdc476021	\N	\N	\N	\N
1	san-pham	69f70d04597c80fcdc47602a	\N	\N	https://images.unsplash.com/photo-1714058322554-c886245e3aa6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
2	san-pham	69f70d04597c80fcdc47602b	\N	\N	https://images.unsplash.com/photo-1665969083957-e5a17f651f68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
3	san-pham	69f70d04597c80fcdc47602c	\N	\N	https://images.unsplash.com/photo-1637684664858-54ac3521fa5f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
4	san-pham	69f70d04597c80fcdc47602d	\N	\N	https://images.unsplash.com/photo-1656315801331-c9122a0e1937?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
1	dich-vu	69f70d04597c80fcdc47602e	\N	\N	https://images.unsplash.com/photo-1748945668245-7fec6b8782cf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
2	dich-vu	69f70d04597c80fcdc47602f	\N	\N	https://images.unsplash.com/photo-1744441571483-12642be89c40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
3	dich-vu	69f70d04597c80fcdc476030	\N	\N	https://images.unsplash.com/photo-1643290976205-c2e467a65e9c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
1	van-phong	69f70d04597c80fcdc476034	\N	\N	https://images.unsplash.com/photo-1653611136862-a457b7646a8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
2	van-phong	69f70d04597c80fcdc476035	\N	\N	https://images.unsplash.com/photo-1758691737083-0e7fdbde0f05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
1	chung-chi	69f70d04597c80fcdc476036	\N	\N	https://images.unsplash.com/photo-1638636241638-aef5120c5153?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
2	chung-chi	69f70d04597c80fcdc476037	\N	\N	https://images.unsplash.com/photo-1564676238537-dcac77e39cf1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
3	chung-chi	69f70d04597c80fcdc476038	\N	\N	https://images.unsplash.com/photo-1768796372063-4da660e034b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080	\N
1	tai-lieu	69f70d04597c80fcdc47603f	\N	\N	\N	\N
2	tai-lieu	69f70d04597c80fcdc476040	\N	\N	\N	\N
3	tai-lieu	69f70d04597c80fcdc476041	\N	\N	\N	\N
\.


--
-- Data for Name: pages_blocks_about_content_sections_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_items_locales (title, subtitle, description, meta, alt, button_label, id, _locale, _parent_id) FROM stdin;
Sứ mệnh	\N	Cung cấp giải pháp công nghệ tiên tiến, đáng tin cậy cho ngành công nghiệp Việt Nam, giúp khách hàng vận hành an toàn, tối ưu và bền vững.	\N	\N	\N	847	vi	69f70d04597c80fcdc47601f
Mission	\N	Provide advanced, reliable technology solutions for Vietnamese industry with a focus on safe and efficient operations.	\N	\N	\N	848	en	69f70d04597c80fcdc47601f
Tầm nhìn	\N	Trở thành đối tác công nghệ hàng đầu trong lĩnh vực tự động hóa và số hóa công nghiệp tại Việt Nam và khu vực.	\N	\N	\N	849	vi	69f70d04597c80fcdc476020
Vision	\N	Become a leading technology partner in automation and industrial digitalization in Vietnam and the region.	\N	\N	\N	850	en	69f70d04597c80fcdc476020
Giá trị cốt lõi	\N	Chất lượng - Sáng tạo - Tận tâm - Hợp tác - Phát triển bền vững là nền tảng cho mọi dự án và dịch vụ của Bắc Âu.	\N	\N	\N	851	vi	69f70d04597c80fcdc476021
Core values	\N	Quality, creativity, dedication, collaboration and sustainable development drive every engagement.	\N	\N	\N	852	en	69f70d04597c80fcdc476021
Van công nghiệp	\N	Thiết bị điều khiển lưu chất cho hệ thống công nghệ và dây chuyền sản xuất.	\N	Van công nghiệp	\N	853	vi	69f70d04597c80fcdc47602a
Industrial valves	\N	Fluid control devices for process systems and industrial lines.	\N	Van công nghiệp	\N	854	en	69f70d04597c80fcdc47602a
Thiết bị điều khiển	\N	PLC, HMI, biến tần và các giải pháp điều khiển hiện đại cho nhà máy.	\N	Thiết bị điều khiển	\N	855	vi	69f70d04597c80fcdc47602b
Control devices	\N	PLCs, HMIs, drives and modern control solutions.	\N	Thiết bị điều khiển	\N	856	en	69f70d04597c80fcdc47602b
Cảm biến & đo lường	\N	Thiết bị đo, cảm biến và bộ truyền tín hiệu cho dây chuyền công nghiệp.	\N	Cảm biến và đo lường	\N	857	vi	69f70d04597c80fcdc47602c
Sensors & instrumentation	\N	Field devices and measurement instruments for plant operations.	\N	Cảm biến và đo lường	\N	858	en	69f70d04597c80fcdc47602c
Tủ điện công nghiệp	\N	Thiết kế, lắp ráp và kiểm thử tủ điện điều khiển theo yêu cầu dự án.	\N	Tủ điện công nghiệp	\N	859	vi	69f70d04597c80fcdc47602d
Industrial panels	\N	Engineered and assembled control panels for project requirements.	\N	Tủ điện công nghiệp	\N	860	en	69f70d04597c80fcdc47602d
Thi công & lắp đặt	\N	Triển khai hệ thống điện, tủ điều khiển và tự động hóa tại hiện trường.	\N	Thi công và lắp đặt	\N	861	vi	69f70d04597c80fcdc47602e
Installation & execution	\N	On-site deployment of power, control and automation systems.	\N	Thi công và lắp đặt	\N	862	en	69f70d04597c80fcdc47602e
Vận hành & bảo trì	\N	Hỗ trợ chạy thử, tối ưu hệ thống và bảo trì định kỳ cho nhà máy.	\N	Vận hành và bảo trì	\N	863	vi	69f70d04597c80fcdc47602f
Operation & maintenance	\N	Commissioning support, optimization and scheduled maintenance.	\N	Vận hành và bảo trì	\N	864	en	69f70d04597c80fcdc47602f
Tư vấn & thiết kế	\N	Thiết kế giải pháp kỹ thuật phù hợp bài toán sản xuất và chuyển đổi số.	\N	Tư vấn và thiết kế	\N	865	vi	69f70d04597c80fcdc476030
Consulting & design	\N	Application engineering aligned to industrial automation and digitalization goals.	\N	Tư vấn và thiết kế	\N	866	en	69f70d04597c80fcdc476030
TP. Hồ Chí Minh	Văn phòng chính	Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh	\N	Văn phòng Hồ Chí Minh	\N	867	vi	69f70d04597c80fcdc476034
Ho Chi Minh City	Head office	E2a-7, D1 Street, Saigon Hi-Tech Park, Thu Duc City, Ho Chi Minh City	\N	Văn phòng Hồ Chí Minh	\N	868	en	69f70d04597c80fcdc476034
Hà Nội	Văn phòng đại diện	Khu vực trung tâm, hỗ trợ dự án và khách hàng khu vực miền Bắc.	\N	Văn phòng Hà Nội	\N	869	vi	69f70d04597c80fcdc476035
Hanoi	Representative office	Regional support point for projects and customers in Northern Vietnam.	\N	Văn phòng Hà Nội	\N	870	en	69f70d04597c80fcdc476035
ISO 9001:2015	\N	Hệ thống quản lý chất lượng trong triển khai dự án và dịch vụ kỹ thuật.	\N	ISO 9001:2015	\N	871	vi	69f70d04597c80fcdc476036
ISO 9001:2015	\N	Quality management system for project delivery and technical services.	\N	ISO 9001:2015	\N	872	en	69f70d04597c80fcdc476036
ISO 14001	\N	Cam kết kiểm soát tác động môi trường trong hoạt động sản xuất và thi công.	\N	ISO 14001	\N	873	vi	69f70d04597c80fcdc476037
ISO 14001	\N	Environmental commitment across production and field execution activities.	\N	ISO 14001	\N	874	en	69f70d04597c80fcdc476037
An toàn & tuân thủ	\N	Quy trình kiểm soát chất lượng, nghiệm thu và vận hành an toàn.	\N	An toàn và tuân thủ	\N	875	vi	69f70d04597c80fcdc476038
Safety & compliance	\N	Quality control, acceptance and safe commissioning practices.	\N	An toàn và tuân thủ	\N	876	en	69f70d04597c80fcdc476038
Company Profile Bắc Âu		Giới thiệu doanh nghiệp, năng lực triển khai và danh mục giải pháp chính.	\N	\N	\N	877	vi	69f70d04597c80fcdc47603f
Bac Au company profile	PDF / 12 MB	Overview of company capabilities, project delivery and core solutions.	\N	\N	\N	878	en	69f70d04597c80fcdc47603f
Catalogue thiết bị công nghiệp	PDF / 24 MB	Tổng hợp các dòng sản phẩm, thương hiệu và thông số kỹ thuật tiêu biểu.	\N	\N	\N	879	vi	69f70d04597c80fcdc476040
Industrial products catalogue	PDF / 24 MB	Selected product lines, brands and technical information.	\N	\N	\N	880	en	69f70d04597c80fcdc476040
Tài liệu dịch vụ kỹ thuật	PDF / 8 MB	Mô tả phạm vi dịch vụ: thiết kế, thi công, chạy thử, bảo trì và đào tạo.	\N	\N	\N	881	vi	69f70d04597c80fcdc476041
Technical services brochure	PDF / 8 MB	Scope of services including design, installation, commissioning and maintenance.	\N	\N	\N	882	en	69f70d04597c80fcdc476041
\.


--
-- Data for Name: pages_blocks_about_content_sections_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_locales (title, body, id, _locale, _parent_id) FROM stdin;
GIỚI THIỆU		632	vi	gioi-thieu
OVERVIEW	\N	633	en	gioi-thieu
SỨ MỆNH - TẦM NHÌN - GIÁ TRỊ	\N	634	vi	su-menh
MISSION - VISION - VALUES	\N	635	en	su-menh
GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA	Bắc Âu cung cấp giải pháp toàn diện về hệ thống điện và tự động hóa công nghiệp, từ thiết kế, thi công đến vận hành và bảo trì.	636	vi	giai-phap-dien
ELECTRICAL - AUTOMATION SOLUTIONS	Bac Au provides complete industrial electrical and automation solutions from design and installation to operation and maintenance.	637	en	giai-phap-dien
GIẢI PHÁP SỐ HÓA	Chuyển đổi số toàn diện cho doanh nghiệp sản xuất với các giải pháp IoT, AI và phân tích dữ liệu công nghiệp.	638	vi	so-hoa
DIGITALIZATION SOLUTIONS	Comprehensive digital transformation for manufacturing with IoT, AI and industrial analytics solutions.	639	en	so-hoa
GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ	Cung cấp thiết bị và giải pháp đo lường chính xác phục vụ nghiên cứu và sản xuất công nghiệp.	640	vi	do-luong
MEASUREMENT TECHNOLOGY	Instrumentation and precision measurement solutions for industrial production and applied research.	641	en	do-luong
SẢN PHẨM CÔNG NGHIỆP	Bắc Âu phân phối các thiết bị và sản phẩm công nghiệp chất lượng cao từ các thương hiệu hàng đầu thế giới, phục vụ đa dạng nhu cầu sản xuất.	642	vi	san-pham
INDUSTRIAL PRODUCTS	Bac Au distributes quality industrial products from leading global brands to support diverse manufacturing needs.	643	en	san-pham
DỊCH VỤ CÔNG NGHIỆP	Bắc Âu cung cấp dịch vụ kỹ thuật toàn diện từ tư vấn thiết kế, lắp đặt, vận hành đến bảo trì và sửa chữa hệ thống công nghiệp.	644	vi	dich-vu
INDUSTRIAL SERVICES	Comprehensive engineering services covering design consulting, installation, commissioning, maintenance and repair.	645	en	dich-vu
TRANG THIẾT BỊ NHÀ XƯỞNG	Hệ thống nhà xưởng và trang thiết bị hiện đại của Bắc Âu đảm bảo năng lực sản xuất, lắp ráp và kiểm tra chất lượng sản phẩm đạt tiêu chuẩn quốc tế.	646	vi	nha-xuong
WORKSHOP EQUIPMENT	Modern workshops and equipment support assembly, production and quality control to international standards.	647	en	nha-xuong
VĂN PHÒNG ĐẠI DIỆN	Bắc Âu có mạng lưới văn phòng đại diện tại các khu vực trọng điểm, sẵn sàng hỗ trợ khách hàng trên toàn quốc.	648	vi	van-phong
REPRESENTATIVE OFFICES	Bac Au maintains representative offices in key regions to support customers nationwide.	649	en	van-phong
CHỨNG CHỈ CHẤT LƯỢNG	Bắc Âu đạt các chứng nhận quốc tế về hệ thống quản lý chất lượng, khẳng định cam kết về tiêu chuẩn sản phẩm và dịch vụ.	650	vi	chung-chi
QUALITY CERTIFICATES	Bac Au maintains international certifications that reinforce our commitment to product and service quality.	651	en	chung-chi
SỨC KHỎE, AN TOÀN & MÔI TRƯỜNG	\N	652	vi	atld
HEALTH, SAFETY & ENVIRONMENT	\N	653	en	atld
CHỨNG NHẬN	Các chứng nhận và giấy phép hoạt động của Bắc Âu trong lĩnh vực tự động hóa và dịch vụ công nghiệp.	654	vi	chung-nhan
CERTIFICATES	Licenses and certificates supporting Bac Au in industrial automation and service delivery.	655	en	chung-nhan
TÀI LIỆU	Tải xuống các tài liệu kỹ thuật, catalogue sản phẩm và thông tin dịch vụ của Bắc Âu.	656	vi	tai-lieu
DOCUMENTS	Download technical documents, product catalogues and service information from Bac Au.	657	en	tai-lieu
\.


--
-- Data for Name: pages_blocks_about_content_sections_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_paragraphs (_order, _parent_id, id) FROM stdin;
1	gioi-thieu	69f70d04597c80fcdc47601c
2	gioi-thieu	69f70d04597c80fcdc47601d
1	atld	69f70d04597c80fcdc476039
2	atld	69f70d04597c80fcdc47603a
\.


--
-- Data for Name: pages_blocks_about_content_sections_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sections_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
Bắc Âu là nhà cung cấp giải pháp hàng đầu trong lĩnh vực Tự Động Hóa và Số hóa cho các ngành công nghiệp tại Việt Nam. Chúng tôi thực hiện trọn gói từ thiết kế kỹ thuật, lập trình phần mềm, tích hợp hệ thống, cung cấp vật tư thiết bị, thi công, lắp đặt, chạy thử vận hành, đào tạo và chuyển giao công nghệ.	190	vi	69f70d04597c80fcdc47601c
Bac Au is a leading solution provider in industrial automation and digitalization in Vietnam. We deliver turnkey scopes from engineering design, software programming and system integration to supply, installation, commissioning, training and technology transfer.	191	en	69f70d04597c80fcdc47601c
Bắc Âu vinh dự được khách hàng tin tưởng qua năng lực thực hiện dự án, sự am hiểu công nghệ, sự đảm bảo chất lượng cùng với khả năng cung cấp giải pháp sáng tạo và dịch vụ chuyên nghiệp.	192	vi	69f70d04597c80fcdc47601d
Customers trust Bac Au for our delivery capability, technology expertise, quality assurance and practical, creative service approach.	193	en	69f70d04597c80fcdc47601d
Bắc Âu cam kết tuân thủ các tiêu chuẩn cao nhất về an toàn lao động, sức khỏe nghề nghiệp và bảo vệ môi trường trong mọi hoạt động sản xuất kinh doanh.	194	vi	69f70d04597c80fcdc476039
Bac Au is committed to the highest standards of occupational safety, worker health and environmental protection across all operations.	195	en	69f70d04597c80fcdc476039
Chính sách HSE của chúng tôi bao gồm: đào tạo an toàn định kỳ cho nhân viên, kiểm tra thiết bị thường xuyên, quản lý chất thải theo quy định, và liên tục cải tiến quy trình để giảm thiểu rủi ro.	196	vi	69f70d04597c80fcdc47603a
Our HSE policy includes periodic safety training, routine equipment inspection, compliant waste management and ongoing process improvement to reduce risk.	197	en	69f70d04597c80fcdc47603a
\.


--
-- Data for Name: pages_blocks_about_content_sidebar_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sidebar_groups (_order, _parent_id, id) FROM stdin;
1	69f70d04597c80fcdc476042	69f70d04597c80fcdc47600c
2	69f70d04597c80fcdc476042	69f70d04597c80fcdc476012
3	69f70d04597c80fcdc476042	69f70d04597c80fcdc476015
4	69f70d04597c80fcdc476042	69f70d04597c80fcdc476018
5	69f70d04597c80fcdc476042	69f70d04597c80fcdc47601b
\.


--
-- Data for Name: pages_blocks_about_content_sidebar_groups_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sidebar_groups_items (_order, _parent_id, id) FROM stdin;
1	69f70d04597c80fcdc47600c	69f70d04597c80fcdc47600a
2	69f70d04597c80fcdc47600c	69f70d04597c80fcdc47600b
1	69f70d04597c80fcdc476012	69f70d04597c80fcdc47600d
2	69f70d04597c80fcdc476012	69f70d04597c80fcdc47600e
3	69f70d04597c80fcdc476012	69f70d04597c80fcdc47600f
4	69f70d04597c80fcdc476012	69f70d04597c80fcdc476010
5	69f70d04597c80fcdc476012	69f70d04597c80fcdc476011
1	69f70d04597c80fcdc476015	69f70d04597c80fcdc476013
2	69f70d04597c80fcdc476015	69f70d04597c80fcdc476014
1	69f70d04597c80fcdc476018	69f70d04597c80fcdc476016
2	69f70d04597c80fcdc476018	69f70d04597c80fcdc476017
1	69f70d04597c80fcdc47601b	69f70d04597c80fcdc476019
2	69f70d04597c80fcdc47601b	69f70d04597c80fcdc47601a
\.


--
-- Data for Name: pages_blocks_about_content_sidebar_groups_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sidebar_groups_items_locales (label, id, _locale, _parent_id, href) FROM stdin;
Giới thiệu	648	vi	69f70d04597c80fcdc47600a	/vi/gioi-thieu#gioi-thieu
Overview	649	en	69f70d04597c80fcdc47600a	/en/about#gioi-thieu
Sứ mệnh - Tầm nhìn - Giá trị	650	vi	69f70d04597c80fcdc47600b	/vi/gioi-thieu#su-menh
Mission - Vision - Values	651	en	69f70d04597c80fcdc47600b	/en/about#su-menh
Giải pháp Điện - Tự động hóa	652	vi	69f70d04597c80fcdc47600d	/vi/gioi-thieu#giai-phap-dien
Electrical & Automation	653	en	69f70d04597c80fcdc47600d	/en/about#giai-phap-dien
Giải pháp Số hóa	654	vi	69f70d04597c80fcdc47600e	/vi/gioi-thieu#so-hoa
Digitalization	655	en	69f70d04597c80fcdc47600e	/en/about#so-hoa
Giải pháp Đo lường Công nghệ	656	vi	69f70d04597c80fcdc47600f	/vi/gioi-thieu#do-luong
Measurement technology	657	en	69f70d04597c80fcdc47600f	/en/about#do-luong
Sản phẩm Công nghiệp	658	vi	69f70d04597c80fcdc476010	/vi/gioi-thieu#san-pham
Industrial products	659	en	69f70d04597c80fcdc476010	/en/about#san-pham
Dịch vụ Công nghiệp	660	vi	69f70d04597c80fcdc476011	/vi/gioi-thieu#dich-vu
Industrial services	661	en	69f70d04597c80fcdc476011	/en/about#dich-vu
Trang thiết bị nhà xưởng	662	vi	69f70d04597c80fcdc476013	/vi/gioi-thieu#nha-xuong
Workshop equipment	663	en	69f70d04597c80fcdc476013	/en/about#nha-xuong
Văn phòng đại diện	664	vi	69f70d04597c80fcdc476014	/vi/gioi-thieu#van-phong
Representative offices	665	en	69f70d04597c80fcdc476014	/en/about#van-phong
Chứng chỉ Chất lượng	666	vi	69f70d04597c80fcdc476016	/vi/gioi-thieu#chung-chi
Quality certificates	667	en	69f70d04597c80fcdc476016	/en/about#chung-chi
Sức khỏe, An toàn & Môi trường	668	vi	69f70d04597c80fcdc476017	/vi/gioi-thieu#atld
Health, Safety & Environment	669	en	69f70d04597c80fcdc476017	/en/about#atld
Chứng nhận	670	vi	69f70d04597c80fcdc476019	/vi/gioi-thieu#chung-nhan
Certificates	671	en	69f70d04597c80fcdc476019	/en/about#chung-nhan
Tài liệu	672	vi	69f70d04597c80fcdc47601a	/vi/gioi-thieu#tai-lieu
Documents	673	en	69f70d04597c80fcdc47601a	/en/about#tai-lieu
\.


--
-- Data for Name: pages_blocks_about_content_sidebar_groups_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_content_sidebar_groups_locales (title, id, _locale, _parent_id, title_href) FROM stdin;
Về BắcÂu	248	vi	69f70d04597c80fcdc47600c	/vi/gioi-thieu
About BacAu	249	en	69f70d04597c80fcdc47600c	/en/about
Lĩnh vực kinh doanh	250	vi	69f70d04597c80fcdc476012	/vi/gioi-thieu/linh-vuc
Business areas	251	en	69f70d04597c80fcdc476012	/en/about/business
Năng lực	252	vi	69f70d04597c80fcdc476015	/vi/gioi-thieu/nang-luc
Capabilities	253	en	69f70d04597c80fcdc476015	/en/about/capabilities
ATLĐ & chất lượng	254	vi	69f70d04597c80fcdc476018	/vi/gioi-thieu/an-toan
HSE & quality	255	en	69f70d04597c80fcdc476018	/en/about/hse
Chứng chỉ & Tài liệu	256	vi	69f70d04597c80fcdc47601b	/vi/gioi-thieu/chung-chi
Certificates & documents	257	en	69f70d04597c80fcdc47601b	/en/about/documents
\.


--
-- Data for Name: pages_blocks_brand_logos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_brand_logos (_order, _parent_id, _path, id, block_name, source_mode, count) FROM stdin;
3	3	layout	69f70d05597c80fcdc476061	\N	latest	6
3	2	layout	69f70d04597c80fcdc476043	\N	latest	6
8	1	layout	69eae59dcf6a07796609bb18	\N	latest	6
8	4	layout	69f80c0bd7e33b0ef3bd17b8	\N	latest	6
8	5	layout	69f99b75b422b5d4d32f9566	\N	latest	6
8	6	layout	69f99bb5db5626d58420dffb	\N	latest	6
8	7	layout	69f99bb6db5626d58420e010	\N	latest	6
6	8	layout	69f99bb6db5626d58420e01f	\N	latest	6
\.


--
-- Data for Name: pages_blocks_brand_logos_fallback_brands; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_brand_logos_fallback_brands (_order, _parent_id, id, name) FROM stdin;
1	69eae59dcf6a07796609bb18	69f8009b5886e77ee3189856	ABB
2	69eae59dcf6a07796609bb18	69f8009b5886e77ee3189857	Intel
3	69eae59dcf6a07796609bb18	69f8009b5886e77ee3189858	Mitsubishi
4	69eae59dcf6a07796609bb18	69f8009b5886e77ee3189859	PSCL
5	69eae59dcf6a07796609bb18	69f8009b5886e77ee318985a	KEIHIN
6	69eae59dcf6a07796609bb18	69f8009b5886e77ee318985b	Siemens
1	69f80c0bd7e33b0ef3bd17b8	69f80c0bd7e33b0ef3bd17b2	ABB
2	69f80c0bd7e33b0ef3bd17b8	69f80c0bd7e33b0ef3bd17b3	Intel
3	69f80c0bd7e33b0ef3bd17b8	69f80c0bd7e33b0ef3bd17b4	Mitsubishi
4	69f80c0bd7e33b0ef3bd17b8	69f80c0bd7e33b0ef3bd17b5	PSCL
5	69f80c0bd7e33b0ef3bd17b8	69f80c0bd7e33b0ef3bd17b6	KEIHIN
6	69f80c0bd7e33b0ef3bd17b8	69f80c0bd7e33b0ef3bd17b7	Siemens
\.


--
-- Data for Name: pages_blocks_brand_logos_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_brand_logos_locales (title, id, _locale, _parent_id) FROM stdin;
ĐỐI TÁC CHIẾN LƯỢC	91	vi	69f70d04597c80fcdc476043
STRATEGIC PARTNERS	92	en	69f70d04597c80fcdc476043
ĐỐI TÁC CHIẾN LƯỢC	99	vi	69eae59dcf6a07796609bb18
ĐỐI TÁC CHIẾN LƯỢC	100	en	69eae59dcf6a07796609bb18
ĐỐI TÁC CHIẾN LƯỢC	103	vi	69f80c0bd7e33b0ef3bd17b8
ĐỐI TÁC CHIẾN LƯỢC	104	vi	69f99b75b422b5d4d32f9566
ĐỐI TÁC CHIẾN LƯỢC	105	vi	69f99bb5db5626d58420dffb
ĐỐI TÁC CHIẾN LƯỢC	106	vi	69f99bb6db5626d58420e010
ĐỐI TÁC CHIẾN LƯỢC	107	vi	69f99bb6db5626d58420e01f
ĐỐI TÁC CHIẾN LƯỢC	56	vi	69f70d05597c80fcdc476061
\.


--
-- Data for Name: pages_blocks_content_intro; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_intro (_order, _parent_id, _path, id, image_position, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_intro_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_intro_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_intro_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_intro_images_locales (alt, caption, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_intro_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_intro_locales (title, body, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_intro_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_intro_paragraphs (_order, _parent_id, id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_intro_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_intro_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_banner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta_banner (_order, _parent_id, _path, id, primary_c_t_a_href, secondary_c_t_a_href, block_name, background_color, gradient_from, gradient_middle, gradient_to, accent_color) FROM stdin;
7	1	layout	69eae59dcf6a07796609bb17	/contact	/services	\N	#0F172A	#B92C32	#2b358c	#0F172A	#B92C32
7	5	layout	69f99b75b422b5d4d32f9565	/lien-he	/dich-vu	\N	#0F172A	#B92C32	#2b358c	#0F172A	#B92C32
6	7	layout	69f99bb6db5626d58420e00e	/lien-he	/dich-vu	\N	#0F172A	#B92C32	#2b358c	#0F172A	#B92C32
8	8	layout	69f99bb6db5626d58420e021	/lien-he	/dich-vu	\N	#0F172A	#B92C32	#2b358c	#0F172A	#B92C32
\.


--
-- Data for Name: pages_blocks_cta_banner_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta_banner_locales (title, subtitle, primary_c_t_a_label, secondary_c_t_a_label, id, _locale, _parent_id) FROM stdin;
Bắt đầu Dự án của bạn ngay hôm nay	Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp	Liên hệ Ngay	Xem Dịch vụ	80	vi	69eae59dcf6a07796609bb17
Start Your Project Today	Contact our team of experts for optimal solution consulting for your business	Contact Now	View Services	81	en	69eae59dcf6a07796609bb17
Bắt đầu Dự án của bạn ngay hôm nay	Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp	Liên hệ Ngay	Xem Dịch vụ	82	vi	69f99b75b422b5d4d32f9565
Bắt đầu Dự án của bạn ngay hôm nay	Liên hệ với đội ngũ chuyên gia để được tư vấn giải pháp tối ưu cho doanh nghiệp	Liên hệ Ngay	Xem Dịch vụ	83	vi	69f99bb6db5626d58420e00e
Sẵn sàng bắt đầu dự án?	Liên hệ với đội ngũ chuyên gia của chúng tôi ngay hôm nay	Liên hệ Ngay	Xem Dịch vụ	84	vi	69f99bb6db5626d58420e021
\.


--
-- Data for Name: pages_blocks_document_list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_document_list (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_document_list_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_document_list_items (_order, _parent_id, id, icon, image_id, image_u_r_l, href) FROM stdin;
\.


--
-- Data for Name: pages_blocks_document_list_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_document_list_items_locales (title, subtitle, description, meta, alt, button_label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_document_list_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_document_list_locales (title, body, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_document_list_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_document_list_paragraphs (_order, _parent_id, id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_document_list_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_document_list_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_feature_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_feature_cards (_order, _parent_id, _path, id, columns, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_feature_cards_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_feature_cards_items (_order, _parent_id, id, icon, image_id, image_u_r_l, href) FROM stdin;
\.


--
-- Data for Name: pages_blocks_feature_cards_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_feature_cards_items_locales (title, subtitle, description, meta, alt, button_label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_feature_cards_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_feature_cards_locales (title, body, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_feature_cards_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_feature_cards_paragraphs (_order, _parent_id, id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_feature_cards_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_feature_cards_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_featured_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_projects (_order, _parent_id, _path, id, block_name, background_color, view_all_href, source_mode, count, text_theme, variant) FROM stdin;
4	1	layout	69eae59dcf6a07796609bb14	\N	#0B1221	/du-an-tham-khao	latest	4	dark	grid
4	4	layout	69f80c0bd7e33b0ef3bd17a7	\N	#FFFFFF	/du-an-tham-khao	latest	4	light	grid
5	5	layout	69f99b75b422b5d4d32f9563	\N	#0B1221	/du-an-tham-khao	latest	4	dark	alternating
5	6	layout	69f99bb5db5626d58420dff4	\N	#0B1221	/du-an-tham-khao	latest	4	dark	grid
5	7	layout	69f99bb6db5626d58420e00d	\N	#0B1221	/du-an-tham-khao	latest	4	dark	grid
5	8	layout	69f99bb6db5626d58420e01e	\N	#0B1221	/du-an-tham-khao	latest	4	dark	list
\.


--
-- Data for Name: pages_blocks_featured_projects_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_projects_locales (title, view_all_label, id, _locale, _parent_id) FROM stdin;
DỰ ÁN TIÊU BIỂU	Xem tất cả →	40	vi	69eae59dcf6a07796609bb14
DỰ ÁN TIÊU BIỂU	Xem tất cả →	41	en	69eae59dcf6a07796609bb14
DỰ ÁN TIÊU BIỂU	Xem tất cả →	44	vi	69f80c0bd7e33b0ef3bd17a7
DỰ ÁN TIÊU BIỂU	Xem tất cả →	45	vi	69f99b75b422b5d4d32f9563
DỰ ÁN TIÊU BIỂU	Xem tất cả →	46	vi	69f99bb5db5626d58420dff4
DỰ ÁN TIÊU BIỂU	Xem tất cả →	47	vi	69f99bb6db5626d58420e00d
DỰ ÁN TIÊU BIỂU	Xem tất cả →	48	vi	69f99bb6db5626d58420e01e
\.


--
-- Data for Name: pages_blocks_featured_projects_tabs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_projects_tabs (_order, _parent_id, id, value) FROM stdin;
1	69eae59dcf6a07796609bb14	69f8009b5886e77ee318984e	energy
2	69eae59dcf6a07796609bb14	69f8009b5886e77ee318984f	electrical
3	69eae59dcf6a07796609bb14	69f8009b5886e77ee3189850	automation
4	69eae59dcf6a07796609bb14	69f8009b5886e77ee3189851	bms
1	69f80c0bd7e33b0ef3bd17a7	69f80c0bd7e33b0ef3bd17a3	energy
2	69f80c0bd7e33b0ef3bd17a7	69f80c0bd7e33b0ef3bd17a4	electrical
3	69f80c0bd7e33b0ef3bd17a7	69f80c0bd7e33b0ef3bd17a5	automation
4	69f80c0bd7e33b0ef3bd17a7	69f80c0bd7e33b0ef3bd17a6	bms
1	69f99bb5db5626d58420dff4	69f99bb5db5626d58420dff0	energy
2	69f99bb5db5626d58420dff4	69f99bb5db5626d58420dff1	electrical
3	69f99bb5db5626d58420dff4	69f99bb5db5626d58420dff2	automation
4	69f99bb5db5626d58420dff4	69f99bb5db5626d58420dff3	bms
1	69f99bb6db5626d58420e00d	69f99bb6db5626d58420e009	energy
2	69f99bb6db5626d58420e00d	69f99bb6db5626d58420e00a	electrical
3	69f99bb6db5626d58420e00d	69f99bb6db5626d58420e00b	automation
4	69f99bb6db5626d58420e00d	69f99bb6db5626d58420e00c	bms
\.


--
-- Data for Name: pages_blocks_featured_projects_tabs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_projects_tabs_locales (label, id, _locale, _parent_id) FROM stdin;
Quản lý năng lượng	81	vi	69f8009b5886e77ee318984e
Điện công nghiệp	82	vi	69f8009b5886e77ee318984f
Tự động hóa	83	vi	69f8009b5886e77ee3189850
Hệ thống BMS	84	vi	69f8009b5886e77ee3189851
Quản lý năng lượng	93	vi	69f80c0bd7e33b0ef3bd17a3
Điện công nghiệp	94	vi	69f80c0bd7e33b0ef3bd17a4
Tự động hóa	95	vi	69f80c0bd7e33b0ef3bd17a5
Hệ thống BMS	96	vi	69f80c0bd7e33b0ef3bd17a6
Quản lý năng lượng	97	vi	69f99bb5db5626d58420dff0
Điện công nghiệp	98	vi	69f99bb5db5626d58420dff1
Tự động hóa	99	vi	69f99bb5db5626d58420dff2
Hệ thống BMS	100	vi	69f99bb5db5626d58420dff3
Quản lý năng lượng	101	vi	69f99bb6db5626d58420e009
Điện công nghiệp	102	vi	69f99bb6db5626d58420e00a
Tự động hóa	103	vi	69f99bb6db5626d58420e00b
Hệ thống BMS	104	vi	69f99bb6db5626d58420e00c
\.


--
-- Data for Name: pages_blocks_hero; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_hero (_order, _parent_id, _path, id, background_type, background_image_id, background_video_id, primary_c_t_a_href, secondary_c_t_a_href, block_name, variant, hero_image_id, hero_image_u_r_l) FROM stdin;
1	1	layout	69eae59dcf6a07796609bb11	video	\N	1	/services	/contact	Tiêu đề	corporate	\N	\N
1	5	layout	69f99b75b422b5d4d32f9558	image	\N	\N	/dich-vu	/du-an-tham-khao	\N	modernSplit	\N	https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1400&fit=crop
1	6	layout	69f99bb5db5626d58420dfe8	image	\N	\N	/dich-vu	/lien-he	\N	dataGrid	\N	\N
1	7	layout	69f99bb6db5626d58420e000	image	\N	\N	/dich-vu	/du-an-tham-khao	\N	modernRounded	\N	\N
1	8	layout	69f99bb6db5626d58420e015	image	\N	\N	/dich-vu	/lien-he	\N	ultraModern	\N	\N
\.


--
-- Data for Name: pages_blocks_hero_banner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_hero_banner (_order, _parent_id, _path, id, background_image_id, background_image_u_r_l, height, overlay_opacity, block_name, background_type, background_video_id, poster_image_id) FROM stdin;
1	4	layout	69f80c0bd7e33b0ef3bd179e	\N	https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1600&fit=crop	700	40	\N	video	44	44
\.


--
-- Data for Name: pages_blocks_hero_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_hero_locales (title, subtitle, primary_c_t_a_label, secondary_c_t_a_label, id, _locale, _parent_id, badge_text) FROM stdin;
Giải pháp Tự động hóa \\n Công nghiệp Toàn diện 	Đối tác tin cậy trong lĩnh vực tự động hóa, quản lý năng lượng \\n và hệ thống điện công nghiệp cho doanh nghiệp toàn quốc	Khám phá Dịch vụ	Liên hệ Tư vấn	80	vi	69eae59dcf6a07796609bb11	CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU
Comprehensive Industrial\nAutomation Solutions	Your trusted partner in industrial automation, energy management and electrical systems for enterprises nationwide	Explore Services	Contact Us	81	en	69eae59dcf6a07796609bb11	CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU
Giải Pháp Tự Động Hóa\nToàn Diện	Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm cho doanh nghiệp trên toàn quốc.	Khám phá dịch vụ	Xem dự án	82	vi	69f99b75b422b5d4d32f9558	GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU
GIẢI PHÁP TỰ ĐỘNG HÓA &\nKỸ THUẬT ĐIỆN CÔNG NGHIỆP	Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.	Khám Phá Giải Pháp	Liên hệ Tư vấn	83	vi	69f99bb5db5626d58420dfe8	CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU
GIẢI PHÁP TỰ ĐỘNG HÓA\nTOÀN DIỆN	Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.	Khám Phá Giải Pháp	Xem dự án	84	vi	69f99bb6db5626d58420e000	GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU
Kiến Tạo Tương Lai\nCông Nghiệp Số	Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.	Khám Phá Giải Pháp	Liên Hệ Tư Vấn	85	vi	69f99bb6db5626d58420e015	GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU
\.


--
-- Data for Name: pages_blocks_hero_stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_hero_stats (_order, _parent_id, id, value, suffix, number_color) FROM stdin;
1	69eae59dcf6a07796609bb11	69f5b9bf7bbcb7e759613fa2	15	+	#B92C32
2	69eae59dcf6a07796609bb11	69f5b9bf7bbcb7e759613fa3	500	+	#FFFFFF
3	69eae59dcf6a07796609bb11	69f5b9bf7bbcb7e759613fa4	200	+	#FFFFFF
4	69eae59dcf6a07796609bb11	69f5b9bf7bbcb7e759613fa5	50	+	#FFFFFF
1	69f99b75b422b5d4d32f9558	69f99b75b422b5d4d32f9554	15	+	#B92C32
2	69f99b75b422b5d4d32f9558	69f99b75b422b5d4d32f9555	500	+	#FFFFFF
3	69f99b75b422b5d4d32f9558	69f99b75b422b5d4d32f9556	50	+	#FFFFFF
4	69f99b75b422b5d4d32f9558	69f99b75b422b5d4d32f9557	100	+	#FFFFFF
1	69f99bb5db5626d58420dfe8	69f99bb5db5626d58420dfe4	15	+	#B92C32
2	69f99bb5db5626d58420dfe8	69f99bb5db5626d58420dfe5	500	+	#FFFFFF
3	69f99bb5db5626d58420dfe8	69f99bb5db5626d58420dfe6	50	+	#FFFFFF
4	69f99bb5db5626d58420dfe8	69f99bb5db5626d58420dfe7	100	+	#FFFFFF
1	69f99bb6db5626d58420e000	69f99bb6db5626d58420dffc	15	+	#B92C32
2	69f99bb6db5626d58420e000	69f99bb6db5626d58420dffd	500	+	#FFFFFF
3	69f99bb6db5626d58420e000	69f99bb6db5626d58420dffe	50	+	#FFFFFF
4	69f99bb6db5626d58420e000	69f99bb6db5626d58420dfff	100	+	#FFFFFF
1	69f99bb6db5626d58420e015	69f99bb6db5626d58420e011	15	+	#B92C32
2	69f99bb6db5626d58420e015	69f99bb6db5626d58420e012	500	+	#FFFFFF
3	69f99bb6db5626d58420e015	69f99bb6db5626d58420e013	50	+	#FFFFFF
4	69f99bb6db5626d58420e015	69f99bb6db5626d58420e014	100	+	#FFFFFF
\.


--
-- Data for Name: pages_blocks_hero_stats_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_hero_stats_locales (label_top, label_bottom, id, _locale, _parent_id) FROM stdin;
NĂM	Kinh Nghiệm	265	vi	69f5b9bf7bbcb7e759613fa2
NĂM	Kinh Nghiệm	266	en	69f5b9bf7bbcb7e759613fa2
DỰ ÁN	Hoàn Thành	267	vi	69f5b9bf7bbcb7e759613fa3
DỰ ÁN	Hoàn Thành	268	en	69f5b9bf7bbcb7e759613fa3
KHÁCH HÀNG	Tin Tưởng	269	vi	69f5b9bf7bbcb7e759613fa4
KHÁCH HÀNG	Tin Tưởng	270	en	69f5b9bf7bbcb7e759613fa4
ĐỐI TÁC	Chiến Lược	271	vi	69f5b9bf7bbcb7e759613fa5
ĐỐI TÁC	Chiến Lược	272	en	69f5b9bf7bbcb7e759613fa5
NĂM	Kinh Nghiệm	273	vi	69f99b75b422b5d4d32f9554
DỰ ÁN	Hoàn Thành	274	vi	69f99b75b422b5d4d32f9555
ĐỐI TÁC	Chiến Lược	275	vi	69f99b75b422b5d4d32f9556
KỸ SƯ	Chuyên Nghiệp	276	vi	69f99b75b422b5d4d32f9557
NĂM	Kinh Nghiệm	277	vi	69f99bb5db5626d58420dfe4
DỰ ÁN	Hoàn Thành	278	vi	69f99bb5db5626d58420dfe5
ĐỐI TÁC	Chiến Lược	279	vi	69f99bb5db5626d58420dfe6
KỸ SƯ	Chuyên Nghiệp	280	vi	69f99bb5db5626d58420dfe7
NĂM	Kinh Nghiệm	281	vi	69f99bb6db5626d58420dffc
DỰ ÁN	Hoàn Thành	282	vi	69f99bb6db5626d58420dffd
ĐỐI TÁC	Chiến Lược	283	vi	69f99bb6db5626d58420dffe
KỸ SƯ	Chuyên Nghiệp	284	vi	69f99bb6db5626d58420dfff
NĂM	Kinh Nghiệm	285	vi	69f99bb6db5626d58420e011
DỰ ÁN	Hoàn Thành	286	vi	69f99bb6db5626d58420e012
ĐỐI TÁC	Chiến Lược	287	vi	69f99bb6db5626d58420e013
KỸ SƯ	Chuyên Nghiệp	288	vi	69f99bb6db5626d58420e014
\.


--
-- Data for Name: pages_blocks_hero_trust_partners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_hero_trust_partners (_order, _parent_id, id, name, logo_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_image_gallery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery (_order, _parent_id, _path, id, columns, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_image_gallery_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
\.


--
-- Data for Name: pages_blocks_image_gallery_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery_images_locales (alt, caption, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_image_gallery_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery_locales (title, body, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_image_gallery_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery_paragraphs (_order, _parent_id, id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_image_gallery_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_info_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_grid (_order, _parent_id, _path, id, columns, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_info_grid_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_grid_items (_order, _parent_id, id, icon, image_id, image_u_r_l, href) FROM stdin;
\.


--
-- Data for Name: pages_blocks_info_grid_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_grid_items_locales (title, subtitle, description, meta, alt, button_label, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_info_grid_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_grid_locales (title, body, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_info_grid_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_grid_paragraphs (_order, _parent_id, id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_info_grid_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_grid_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_text_split; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_text_split (_order, _parent_id, _path, id, image_position, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_text_split_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_text_split_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_text_split_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_text_split_images_locales (alt, caption, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_text_split_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_text_split_locales (title, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_text_split_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_text_split_paragraphs (_order, _parent_id, id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_text_split_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_text_split_paragraphs_locales (text, id, _locale, _parent_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_news; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_news (_order, _parent_id, _path, id, count, block_name, view_all_href, source_mode, featured_news_id, display_mode) FROM stdin;
3	1	layout	69eae59dcf6a07796609bb13	3	\N	/tin-tuc	latest	\N	featured
3	4	layout	69f80c0bd7e33b0ef3bd17a2	3	\N	/tin-tuc	latest	\N	grid
4	5	layout	69f99b75b422b5d4d32f9562	3	\N	/tin-tuc	latest	\N	featured
4	6	layout	69f99bb5db5626d58420dfef	3	\N	/tin-tuc	latest	\N	grid
4	7	layout	69f99bb6db5626d58420e008	3	\N	/tin-tuc	latest	\N	grid
4	8	layout	69f99bb6db5626d58420e01d	3	\N	/tin-tuc	latest	\N	featured
\.


--
-- Data for Name: pages_blocks_news_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_news_locales (title, view_all_label, id, _locale, _parent_id) FROM stdin;
TIN TỨC & SỰ KIỆN	Xem tất cả →	45	vi	69eae59dcf6a07796609bb13
TIN TỨC & SỰ KIỆN	Xem tất cả →	46	en	69eae59dcf6a07796609bb13
TIN TỨC & SỰ KIỆN	Xem tất cả →	49	vi	69f80c0bd7e33b0ef3bd17a2
TIN TỨC & SỰ KIỆN	Xem tất cả →	50	vi	69f99b75b422b5d4d32f9562
TIN TỨC & SỰ KIỆN	Xem tất cả →	51	vi	69f99bb5db5626d58420dfef
TIN TỨC & SỰ KIỆN	Xem tất cả →	52	vi	69f99bb6db5626d58420e008
TIN TỨC & SỰ KIỆN	Xem tất cả →	53	vi	69f99bb6db5626d58420e01d
\.


--
-- Data for Name: pages_blocks_page_hero; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_page_hero (_order, _parent_id, _path, id, background_image_id, background_image_u_r_l, block_name) FROM stdin;
1	3	layout	69f70d05597c80fcdc476053	\N	https://images.unsplash.com/photo-1655936073069-07b2c9dc2db6?w=1600	\N
1	2	layout	69f70d04597c80fcdc476009	\N	https://images.unsplash.com/photo-1737703121444-c568a9d3bc0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1600	\N
\.


--
-- Data for Name: pages_blocks_page_hero_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_page_hero_locales (title, breadcrumb_label, id, _locale, _parent_id) FROM stdin;
CÔNG TY BẮC ÂU	Công ty BắcÂu	68	vi	69f70d04597c80fcdc476009
BAC AU COMPANY	Bac Au company	69	en	69f70d04597c80fcdc476009
DỰ ÁN THAM KHẢO	Dự án Tham khảo	33	vi	69f70d05597c80fcdc476053
\.


--
-- Data for Name: pages_blocks_partners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_partners (_order, _parent_id, _path, id, block_name, background_color) FROM stdin;
5	1	layout	69eae59dcf6a07796609bb15	\N	#0B1221
6	4	layout	69f80c0bd7e33b0ef3bd17b0	\N	#0B1221
6	6	layout	69f99bb5db5626d58420dff9	\N	#0B1221
\.


--
-- Data for Name: pages_blocks_partners_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_partners_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
1	69eae59dcf6a07796609bb15	69f8009b5886e77ee3189852	\N	https://images.unsplash.com/photo-1758599543129-5269a8f29e68?w=600
2	69eae59dcf6a07796609bb15	69f8009b5886e77ee3189853	\N	https://images.unsplash.com/photo-1762028892701-692dc360db08?w=600
3	69eae59dcf6a07796609bb15	69f8009b5886e77ee3189854	\N	https://images.unsplash.com/photo-1632910121591-29e2484c0259?w=600
4	69eae59dcf6a07796609bb15	69f8009b5886e77ee3189855	\N	https://images.unsplash.com/photo-1752412145493-e11fec9ac951?w=600
1	69f80c0bd7e33b0ef3bd17b0	69f80c0bd7e33b0ef3bd17ac	\N	https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&fit=crop
2	69f80c0bd7e33b0ef3bd17b0	69f80c0bd7e33b0ef3bd17ad	\N	https://images.unsplash.com/photo-1556761175-b413da4baf72?w=600&fit=crop
3	69f80c0bd7e33b0ef3bd17b0	69f80c0bd7e33b0ef3bd17ae	\N	https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=600&fit=crop
4	69f80c0bd7e33b0ef3bd17b0	69f80c0bd7e33b0ef3bd17af	\N	https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&fit=crop
1	69f99bb5db5626d58420dff9	69f99bb5db5626d58420dff5	\N	https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&fit=crop
2	69f99bb5db5626d58420dff9	69f99bb5db5626d58420dff6	\N	https://images.unsplash.com/photo-1556761175-b413da4baf72?w=600&fit=crop
3	69f99bb5db5626d58420dff9	69f99bb5db5626d58420dff7	\N	https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=600&fit=crop
4	69f99bb5db5626d58420dff9	69f99bb5db5626d58420dff8	\N	https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&fit=crop
\.


--
-- Data for Name: pages_blocks_partners_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_partners_images_locales (alt, id, _locale, _parent_id) FROM stdin;
Đối tác công nghiệp	61	vi	69f8009b5886e77ee3189852
Dây chuyền đối tác	62	vi	69f8009b5886e77ee3189853
Thiết bị đối tác	63	vi	69f8009b5886e77ee3189854
Nhà máy đối tác	64	vi	69f8009b5886e77ee3189855
Đối tác 1	73	vi	69f80c0bd7e33b0ef3bd17ac
Đối tác 2	74	vi	69f80c0bd7e33b0ef3bd17ad
Đối tác 3	75	vi	69f80c0bd7e33b0ef3bd17ae
Đối tác 4	76	vi	69f80c0bd7e33b0ef3bd17af
Đối tác 1	77	vi	69f99bb5db5626d58420dff5
Đối tác 2	78	vi	69f99bb5db5626d58420dff6
Đối tác 3	79	vi	69f99bb5db5626d58420dff7
Đối tác 4	80	vi	69f99bb5db5626d58420dff8
\.


--
-- Data for Name: pages_blocks_partners_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_partners_locales (subtitle, id, _locale, _parent_id, title) FROM stdin;
Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa	80	vi	69eae59dcf6a07796609bb15	ĐỐI TÁC
We partner with leading companies in the industrial and automation sectors	81	en	69eae59dcf6a07796609bb15	ĐỐI TÁC
Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa	84	vi	69f80c0bd7e33b0ef3bd17b0	ĐỐI TÁC
Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa	85	vi	69f99bb5db5626d58420dff9	ĐỐI TÁC
\.


--
-- Data for Name: pages_blocks_products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_products (_order, _parent_id, _path, id, block_name, source_mode, count) FROM stdin;
6	1	layout	69eae59dcf6a07796609bb16	\N	latest	5
7	4	layout	69f80c0bd7e33b0ef3bd17b1	\N	latest	5
6	5	layout	69f99b75b422b5d4d32f9564	\N	latest	5
7	6	layout	69f99bb5db5626d58420dffa	\N	latest	5
7	7	layout	69f99bb6db5626d58420e00f	\N	latest	5
7	8	layout	69f99bb6db5626d58420e020	\N	latest	5
\.


--
-- Data for Name: pages_blocks_products_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_products_locales (subtitle, id, _locale, _parent_id, title) FROM stdin;
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	80	vi	69eae59dcf6a07796609bb16	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Distributing genuine industrial equipment from world-leading brands	81	en	69eae59dcf6a07796609bb16	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	84	vi	69f80c0bd7e33b0ef3bd17b1	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	85	vi	69f99b75b422b5d4d32f9564	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	86	vi	69f99bb5db5626d58420dffa	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	87	vi	69f99bb6db5626d58420e00f	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới	88	vi	69f99bb6db5626d58420e020	THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
\.


--
-- Data for Name: pages_blocks_projects_listing; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_projects_listing (_order, _parent_id, _path, id, source_mode, "limit", block_name) FROM stdin;
2	3	layout	69f70d05597c80fcdc476060	latest	24	\N
\.


--
-- Data for Name: pages_blocks_projects_listing_industry_filters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_projects_listing_industry_filters (_order, _parent_id, id, value) FROM stdin;
1	69f70d05597c80fcdc476060	69f70d05597c80fcdc476058	oil-gas
2	69f70d05597c80fcdc476060	69f70d05597c80fcdc476059	fertilizer-chemical
3	69f70d05597c80fcdc476060	69f70d05597c80fcdc47605a	power
4	69f70d05597c80fcdc476060	69f70d05597c80fcdc47605b	cement-mining
5	69f70d05597c80fcdc476060	69f70d05597c80fcdc47605c	steel
6	69f70d05597c80fcdc476060	69f70d05597c80fcdc47605d	food-beverage
7	69f70d05597c80fcdc476060	69f70d05597c80fcdc47605e	water
8	69f70d05597c80fcdc476060	69f70d05597c80fcdc47605f	port
\.


--
-- Data for Name: pages_blocks_projects_listing_industry_filters_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_projects_listing_industry_filters_locales (label, id, _locale, _parent_id) FROM stdin;
Dầu khí	121	vi	69f70d05597c80fcdc476058
Phân bón & Hóa chất	122	vi	69f70d05597c80fcdc476059
Điện	123	vi	69f70d05597c80fcdc47605a
Xi măng & Khai khoáng	124	vi	69f70d05597c80fcdc47605b
Thép	125	vi	69f70d05597c80fcdc47605c
Thực phẩm & Đồ uống	126	vi	69f70d05597c80fcdc47605d
Nước & Nước thải	127	vi	69f70d05597c80fcdc47605e
Cảng	128	vi	69f70d05597c80fcdc47605f
\.


--
-- Data for Name: pages_blocks_projects_listing_parent_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_projects_listing_parent_categories (_order, _parent_id, id, value) FROM stdin;
1	69f70d05597c80fcdc476060	69f70d05597c80fcdc476054	electrical-automation
2	69f70d05597c80fcdc476060	69f70d05597c80fcdc476055	digitalization
3	69f70d05597c80fcdc476060	69f70d05597c80fcdc476056	industrial-services
4	69f70d05597c80fcdc476060	69f70d05597c80fcdc476057	measurement
\.


--
-- Data for Name: pages_blocks_projects_listing_parent_categories_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_projects_listing_parent_categories_locales (label, id, _locale, _parent_id) FROM stdin;
GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA	61	vi	69f70d05597c80fcdc476054
GIẢI PHÁP SỐ HÓA	62	vi	69f70d05597c80fcdc476055
DỊCH VỤ CÔNG NGHIỆP	63	vi	69f70d05597c80fcdc476056
GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ	64	vi	69f70d05597c80fcdc476057
\.


--
-- Data for Name: pages_blocks_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services (_order, _parent_id, _path, id, block_name, variant) FROM stdin;
2	1	layout	69eae59dcf6a07796609bb12	\N	cards
5	4	layout	69f80c0bd7e33b0ef3bd17ab	\N	cards
3	5	layout	69f99b75b422b5d4d32f9561	\N	bento
3	6	layout	69f99bb5db5626d58420dfee	\N	cards
3	7	layout	69f99bb6db5626d58420e007	\N	cards
3	8	layout	69f99bb6db5626d58420e01c	\N	alternating
\.


--
-- Data for Name: pages_blocks_services_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services_cards (_order, _parent_id, id, image_id, href, image_u_r_l) FROM stdin;
1	69eae59dcf6a07796609bb12	69f5bb89cf94a5f06a6d60b5	\N	/dich-vu/thi-cong	https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800
2	69eae59dcf6a07796609bb12	69f5bb89cf94a5f06a6d60b6	\N	/dich-vu/cong-nghiep	https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800
3	69eae59dcf6a07796609bb12	69f5bb89cf94a5f06a6d60b7	\N	/dich-vu/dan-dung	https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800
1	69f80c0bd7e33b0ef3bd17ab	69f80c0bd7e33b0ef3bd17a8	\N	/dich-vu/thi-cong	https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=800&fit=crop
2	69f80c0bd7e33b0ef3bd17ab	69f80c0bd7e33b0ef3bd17a9	\N	/dich-vu/cong-nghiep	https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=800&fit=crop
3	69f80c0bd7e33b0ef3bd17ab	69f80c0bd7e33b0ef3bd17aa	\N	/dich-vu/dan-dung	https://images.unsplash.com/photo-1581092160562-40aa08e78837?w=800&fit=crop
1	69f99b75b422b5d4d32f9561	69f99b75b422b5d4d32f955c	\N	/dich-vu/tu-dong-hoa	https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop
2	69f99b75b422b5d4d32f9561	69f99b75b422b5d4d32f955d	\N	/dich-vu/he-thong-dien	https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop
3	69f99b75b422b5d4d32f9561	69f99b75b422b5d4d32f955e	\N	/dich-vu/so-hoa	https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop
4	69f99b75b422b5d4d32f9561	69f99b75b422b5d4d32f955f	\N	/dich-vu/bms	https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&fit=crop
5	69f99b75b422b5d4d32f9561	69f99b75b422b5d4d32f9560	\N	/dich-vu/dan-dung	https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop
1	69f99bb5db5626d58420dfee	69f99bb5db5626d58420dfeb	\N	/dich-vu/tu-dong-hoa	https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop
2	69f99bb5db5626d58420dfee	69f99bb5db5626d58420dfec	\N	/dich-vu/he-thong-dien	https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop
3	69f99bb5db5626d58420dfee	69f99bb5db5626d58420dfed	\N	/dich-vu/so-hoa	https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop
1	69f99bb6db5626d58420e007	69f99bb6db5626d58420e004	\N	/dich-vu/tu-dong-hoa	https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop
2	69f99bb6db5626d58420e007	69f99bb6db5626d58420e005	\N	/dich-vu/he-thong-dien	https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop
3	69f99bb6db5626d58420e007	69f99bb6db5626d58420e006	\N	/dich-vu/so-hoa	https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop
1	69f99bb6db5626d58420e01c	69f99bb6db5626d58420e019	\N	/dich-vu/tu-dong-hoa	https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop
2	69f99bb6db5626d58420e01c	69f99bb6db5626d58420e01a	\N	/dich-vu/he-thong-dien	https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop
3	69f99bb6db5626d58420e01c	69f99bb6db5626d58420e01b	\N	/dich-vu/so-hoa	https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop
\.


--
-- Data for Name: pages_blocks_services_cards_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services_cards_locales (title, description, button_label, id, _locale, _parent_id) FROM stdin;
LĨNH VỰC THI CÔNG 1	Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp	Xem thêm	160	vi	69f5bb89cf94a5f06a6d60b5
LĨNH VỰC THI CÔNG 1	Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp	Xem thêm	161	en	69f5bb89cf94a5f06a6d60b5
DỊCH VỤ CÔNG NGHIỆP	Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp	Xem thêm	162	vi	69f5bb89cf94a5f06a6d60b6
DỊCH VỤ CÔNG NGHIỆP	Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp	Xem thêm	163	en	69f5bb89cf94a5f06a6d60b6
DỊCH VỤ DÂN DỤNG	Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh	Xem thêm	164	vi	69f5bb89cf94a5f06a6d60b7
DỊCH VỤ DÂN DỤNG	Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh	Xem thêm	165	en	69f5bb89cf94a5f06a6d60b7
LĨNH VỰC THI CÔNG	Thi công hệ thống điện, tủ động hóa, HVAC và các công trình công nghiệp.	Xem thêm	172	vi	69f80c0bd7e33b0ef3bd17a8
DỊCH VỤ CÔNG NGHIỆP	Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp.	Xem thêm	173	vi	69f80c0bd7e33b0ef3bd17a9
DỊCH VỤ DÂN DỤNG	Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh.	Xem thêm	174	vi	69f80c0bd7e33b0ef3bd17aa
Tự Động Hóa Công Nghiệp	Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.	Tìm hiểu thêm	175	vi	69f99b75b422b5d4d32f955c
Hệ Thống Điện Công Nghiệp	Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.	Tìm hiểu thêm	176	vi	69f99b75b422b5d4d32f955d
Số Hóa Công Nghiệp	Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.	Tìm hiểu thêm	177	vi	69f99b75b422b5d4d32f955e
Hệ Thống BMS	Giải pháp quản lý tòa nhà thông minh (BMS): tích hợp điều hòa, chiếu sáng, an ninh và năng lượng trên một nền tảng.	Tìm hiểu thêm	178	vi	69f99b75b422b5d4d32f955f
Điện Tử Dân Dụng	Cung cấp, lắp đặt và bảo trì hệ thống điện dân dụng, điều hòa không khí và các thiết bị tiêu dùng.	Tìm hiểu thêm	179	vi	69f99b75b422b5d4d32f9560
Tự Động Hóa Công Nghiệp	Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.	Tìm hiểu thêm	180	vi	69f99bb5db5626d58420dfeb
Hệ Thống Điện Công Nghiệp	Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.	Tìm hiểu thêm	181	vi	69f99bb5db5626d58420dfec
Số Hóa Công Nghiệp	Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.	Tìm hiểu thêm	182	vi	69f99bb5db5626d58420dfed
Tự Động Hóa Công Nghiệp	Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.	Tìm hiểu thêm	183	vi	69f99bb6db5626d58420e004
Hệ Thống Điện Công Nghiệp	Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.	Tìm hiểu thêm	184	vi	69f99bb6db5626d58420e005
Số Hóa Công Nghiệp	Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.	Tìm hiểu thêm	185	vi	69f99bb6db5626d58420e006
Tự Động Hóa Công Nghiệp	Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.	Tìm hiểu thêm	186	vi	69f99bb6db5626d58420e019
Hệ Thống Điện Công Nghiệp	Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.	Tìm hiểu thêm	187	vi	69f99bb6db5626d58420e01a
Số Hóa Công Nghiệp	Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.	Tìm hiểu thêm	188	vi	69f99bb6db5626d58420e01b
\.


--
-- Data for Name: pages_blocks_services_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services_locales (subtitle, id, _locale, _parent_id, title) FROM stdin;
Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng	80	vi	69eae59dcf6a07796609bb12	LĨNH VỰC HOẠT ĐỘNG
Comprehensive services in industrial and civil sectors	81	en	69eae59dcf6a07796609bb12	LĨNH VỰC HOẠT ĐỘNG
Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng	84	vi	69f80c0bd7e33b0ef3bd17ab	LĨNH VỰC HOẠT ĐỘNG
Chúng tôi cung cấp các giải pháp toàn diện cho doanh nghiệp	85	vi	69f99b75b422b5d4d32f9561	LĨNH VỰC HOẠT ĐỘNG
Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp	86	vi	69f99bb5db5626d58420dfee	LĨNH VỰC HOẠT ĐỘNG
Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng	87	vi	69f99bb6db5626d58420e007	LĨNH VỰC HOẠT ĐỘNG
Cung cấp các giải pháp công nghiệp toàn diện	88	vi	69f99bb6db5626d58420e01c	LĨNH VỰC HOẠT ĐỘNG
\.


--
-- Data for Name: pages_blocks_welcome_intro; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_welcome_intro (_order, _parent_id, _path, id, cta_href, block_name, auto_play, auto_play_interval) FROM stdin;
2	4	layout	69f80c0bd7e33b0ef3bd17a1	/gioi-thieu	\N	t	4
2	5	layout	69f99b75b422b5d4d32f955b	/gioi-thieu	\N	t	4
2	6	layout	69f99bb5db5626d58420dfea	/gioi-thieu	\N	t	4
2	7	layout	69f99bb6db5626d58420e003	/gioi-thieu	\N	t	4
2	8	layout	69f99bb6db5626d58420e018	/gioi-thieu	\N	t	4
\.


--
-- Data for Name: pages_blocks_welcome_intro_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_welcome_intro_images (_order, _parent_id, id, image_id, image_u_r_l) FROM stdin;
1	69f80c0bd7e33b0ef3bd17a1	69f80c0bd7e33b0ef3bd179f	\N	https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop
2	69f80c0bd7e33b0ef3bd17a1	69f80c0bd7e33b0ef3bd17a0	\N	https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop
1	69f99b75b422b5d4d32f955b	69f99b75b422b5d4d32f9559	\N	https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop
2	69f99b75b422b5d4d32f955b	69f99b75b422b5d4d32f955a	\N	https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop
1	69f99bb5db5626d58420dfea	69f99bb5db5626d58420dfe9	\N	https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop
1	69f99bb6db5626d58420e003	69f99bb6db5626d58420e001	\N	https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop
2	69f99bb6db5626d58420e003	69f99bb6db5626d58420e002	\N	https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop
1	69f99bb6db5626d58420e018	69f99bb6db5626d58420e016	\N	https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop
2	69f99bb6db5626d58420e018	69f99bb6db5626d58420e017	\N	https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop
\.


--
-- Data for Name: pages_blocks_welcome_intro_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_welcome_intro_images_locales (alt, id, _locale, _parent_id) FROM stdin;
Hệ thống tự động hóa công nghiệp	5	vi	69f80c0bd7e33b0ef3bd179f
Kỹ thuật điện công nghiệp	6	vi	69f80c0bd7e33b0ef3bd17a0
Hệ thống tự động hóa	7	vi	69f99b75b422b5d4d32f9559
Kỹ thuật điện công nghiệp	8	vi	69f99b75b422b5d4d32f955a
Hệ thống tự động hóa	9	vi	69f99bb5db5626d58420dfe9
Hệ thống tự động hóa	10	vi	69f99bb6db5626d58420e001
Kỹ thuật điện công nghiệp	11	vi	69f99bb6db5626d58420e002
Hệ thống tự động hóa	12	vi	69f99bb6db5626d58420e016
Kỹ thuật điện công nghiệp	13	vi	69f99bb6db5626d58420e017
\.


--
-- Data for Name: pages_blocks_welcome_intro_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_welcome_intro_locales (eyebrow, body, cta_label, id, _locale, _parent_id) FROM stdin;
CHÀO MỪNG	Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện trong lĩnh vực tự động hóa, quản lý năng lượng và hệ thống điện công nghiệp cho các doanh nghiệp trên toàn quốc.	Xem thêm	3	vi	69f80c0bd7e33b0ef3bd17a1
VỀ CHÚNG TÔI	ESTEC là đơn vị hàng đầu trong lĩnh vực tự động hóa công nghiệp tại Việt Nam. Với hơn 15 năm kinh nghiệm, chúng tôi cung cấp các giải pháp điện kỹ thuật, tự động hóa và số hóa, giúp khách hàng tối ưu hóa quy trình và nâng cao năng suất.	Tìm hiểu thêm →	4	vi	69f99b75b422b5d4d32f955b
VỀ CHÚNG TÔI	Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện cho doanh nghiệp.	Xem thêm →	5	vi	69f99bb5db5626d58420dfea
GIỚI THIỆU CÔNG TY	Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Chúng tôi cung cấp giải pháp toàn diện từ thiết kế, thi công đến vận hành cho các doanh nghiệp.	Xem thêm →	6	vi	69f99bb6db5626d58420e003
VỀ CHÚNG TÔI	Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện giúp doanh nghiệp vận hành tối ưu và bền vững.	Xem thêm →	7	vi	69f99bb6db5626d58420e018
\.


--
-- Data for Name: pages_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_locales (id, _locale, _parent_id, title, seo_title, seo_description) FROM stdin;
178	vi	2	Giới thiệu công ty	\N	\N
179	en	2	Company profile	\N	\N
186	vi	1	Trang chủ	\N	\N
187	en	1	Home	\N	\N
190	vi	4	Trang Chủ V2	\N	\N
191	vi	5	Trang Chủ V2 — Modern Split	\N	\N
192	vi	6	Trang Chủ V3 — Data Grid	\N	\N
193	vi	7	Trang Chủ V4 — Modern Rounded	\N	\N
142	vi	3	Dự án tham khảo	\N	\N
143	en	3	Reference projects	\N	\N
194	vi	8	Trang Chủ V5 — Ultra Modern	\N	\N
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_rels (id, "order", parent_id, path, projects_id, news_id, products_id, partners_id) FROM stdin;
\.


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.partners (id, name, logo_id, website, "order", updated_at, created_at) FROM stdin;
1	ABB	34	https://global.abb	1	2026-05-02 14:23:36.558+00	2026-05-02 14:23:36.558+00
2	Intel	35	https://www.intel.com	2	2026-05-02 14:23:36.688+00	2026-05-02 14:23:36.688+00
3	Mitsubishi	36	https://www.mitsubishielectric.com	3	2026-05-02 14:23:36.828+00	2026-05-02 14:23:36.828+00
4	PSCL	37	https://www.pscl.com	4	2026-05-02 14:23:36.862+00	2026-05-02 14:23:36.862+00
5	KEIHIN	38	https://www.hitachiastemo.com	5	2026-05-02 14:23:36.915+00	2026-05-02 14:23:36.914+00
6	Siemens	39	https://www.siemens.com	6	2026-05-02 14:23:36.945+00	2026-05-02 14:23:36.945+00
\.


--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_kv (id, key, data) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, users_id, media_id, projects_id, news_id, products_id, partners_id, services_id, pages_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	dev	-1	2026-05-08 01:48:45.711+00	2026-04-23 05:43:54.558+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
1	collection-products	{}	2026-04-23 15:19:19.766+00	2026-04-23 15:19:19.765+00
2	collection-users	{}	2026-04-23 15:37:40.478+00	2026-04-23 15:37:40.477+00
9	locale	"vi"	2026-05-03 08:44:50.377+00	2026-04-24 01:30:02.768+00
5	collection-services	{"limit": 10}	2026-04-23 15:38:45.926+00	2026-04-23 15:37:50.099+00
3	collection-news	{"limit": 10}	2026-05-02 09:14:27.682+00	2026-04-23 15:37:44.778+00
4	collection-projects	{"limit": 10, "editViewType": "default"}	2026-05-02 13:55:24.32+00	2026-04-23 15:37:48.04+00
14	global-site-settings	{"fields": {"header.navItems": {"collapsed": ["69f7fc7cd07cfd70569bdd40", "69f7fc7cd07cfd70569bdd41", "69f7fc7cd07cfd70569bdd46", "69f7fc7cd07cfd70569bdd47", "69f7fc7cd07cfd70569bdd48", "69f7fc7cd07cfd70569bdd49"]}, "header.navItems.0.children": {"collapsed": []}}, "editViewType": "default"}	2026-05-04 02:07:09.345+00	2026-05-02 15:01:54.253+00
8	global-home-page	{"fields": {"layout": {"collapsed": ["69eae59dcf6a07796609bb11", "69eae59dcf6a07796609bb12", "69eae59dcf6a07796609bb13", "69eae59dcf6a07796609bb14", "69eae59dcf6a07796609bb15", "69eae59dcf6a07796609bb16", "69eae59dcf6a07796609bb17", "69eae59dcf6a07796609bb18"]}, "layout.0.trustPartners": {"collapsed": []}}, "editViewType": "default"}	2026-04-27 00:23:51.755+00	2026-04-24 01:16:32.309+00
11	collection-pages-3	{"fields": {"layout": {"collapsed": ["69eae59dcf6a07796609bb11", "69eae59dcf6a07796609bb13", "69eae59dcf6a07796609bb14", "69eae59dcf6a07796609bb15", "69eae59dcf6a07796609bb16", "69eae59dcf6a07796609bb17", "69eae59dcf6a07796609bb18"]}}}	2026-05-02 08:22:22.881+00	2026-05-02 02:37:28.743+00
7	collection-media	{"editViewType": "default"}	2026-04-24 01:29:27.993+00	2026-04-23 15:39:47.952+00
13	collection-pages-1	{"fields": {"layout": {"collapsed": ["69eae59dcf6a07796609bb11", "69eae59dcf6a07796609bb12", "69eae59dcf6a07796609bb13", "69eae59dcf6a07796609bb14", "69eae59dcf6a07796609bb15", "69eae59dcf6a07796609bb16", "69eae59dcf6a07796609bb17", "69eae59dcf6a07796609bb18"]}, "layout.0.stats": {"collapsed": ["69f5b98085c7e6e640bb1f58", "69f5b98085c7e6e640bb1f59", "69f5b98085c7e6e640bb1f5a", "69f5b98085c7e6e640bb1f5b"]}, "layout.1.cards": {"collapsed": ["69f5bb89cf94a5f06a6d60b5", "69f5bb89cf94a5f06a6d60b6", "69f5bb89cf94a5f06a6d60b7"]}, "layout.4.images": {"collapsed": ["69f609e8a61ac580d406243a", "69f609e8a61ac580d406243b", "69f609e8a61ac580d406243c", "69f609e8a61ac580d406243d"]}, "layout.7.fallbackBrands": {"collapsed": ["69f609e8a61ac580d406243e", "69f609e8a61ac580d406243f", "69f609e8a61ac580d4062440", "69f609e8a61ac580d4062441"]}}}	2026-05-04 03:01:16.404+00	2026-05-02 08:33:32.322+00
17	collection-pages-4	{"fields": {"layout": {"collapsed": ["69f80c0bd7e33b0ef3bd179e", "69f80c0bd7e33b0ef3bd17a1", "69f80c0bd7e33b0ef3bd17a2", "69f80c0bd7e33b0ef3bd17ab", "69f80c0bd7e33b0ef3bd17b0", "69f80c0bd7e33b0ef3bd17b1", "69f80c0bd7e33b0ef3bd17b8"]}}}	2026-05-04 03:28:01.117+00	2026-05-04 03:09:08.158+00
6	nav	{"open": true, "groups": {"Collections": {"open": true}, "Cấu hình Website": {"open": true}, "Cấu hình chung (globals)": {"open": true}}}	2026-05-05 07:54:24.461+00	2026-04-23 15:37:52.118+00
12	collection-partners	{"limit": 10}	2026-05-02 15:08:58.814+00	2026-05-02 03:00:35.32+00
16	collection-block-library	{}	2026-05-02 23:26:55.105+00	2026-05-02 23:26:55.104+00
10	collection-pages	{"limit": 25, "editViewType": "default"}	2026-05-02 23:52:27.174+00	2026-04-24 11:25:45.191+00
18	collection-pages-8	{"fields": {"layout": {"collapsed": ["69f99bb6db5626d58420e015", "69f99bb6db5626d58420e018", "69f99bb6db5626d58420e01c", "69f99bb6db5626d58420e01d", "69f99bb6db5626d58420e01e", "69f99bb6db5626d58420e01f", "69f99bb6db5626d58420e020", "69f99bb6db5626d58420e021"]}}}	2026-05-05 07:45:59.489+00	2026-05-05 07:45:59.489+00
15	collection-pages-2	{"fields": {"layout": {"collapsed": ["69f70d04597c80fcdc476009", "69f70d04597c80fcdc476043"]}, "layout.1.sections": {"collapsed": ["gioi-thieu", "su-menh", "giai-phap-dien", "so-hoa", "do-luong", "san-pham", "dich-vu", "nha-xuong", "chung-chi", "atld", "chung-nhan"]}, "layout.1.sidebarGroups": {"collapsed": ["69f70d04597c80fcdc47600c", "69f70d04597c80fcdc476012", "69f70d04597c80fcdc476015", "69f70d04597c80fcdc476018", "69f70d04597c80fcdc47601b"]}, "layout.1.sections.1.cards": {"collapsed": []}, "layout.1.sections.1.items": {"collapsed": ["69f70d04597c80fcdc47601f", "69f70d04597c80fcdc476020", "69f70d04597c80fcdc476021"]}, "layout.1.sections.0.images": {"collapsed": ["69f70d04597c80fcdc47601e"]}, "layout.1.sections.1.images": {"collapsed": ["69f70f3d2642f0c01bc1a6f1"]}}}	2026-05-03 09:18:07.88+00	2026-05-02 15:33:38.157+00
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
1	\N	1	user	1
2	\N	2	user	1
183	\N	9	user	1
7	\N	5	user	1
128	\N	3	user	1
133	\N	4	user	1
247	\N	14	user	1
76	\N	8	user	1
85	\N	11	user	1
29	\N	7	user	1
255	\N	13	user	1
259	\N	17	user	1
260	\N	18	user	1
262	\N	6	user	1
152	\N	12	user	1
153	\N	12	user	1
161	\N	16	user	1
162	\N	10	user	1
235	\N	15	user	1
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products (id, name_vi, name_en, slug, category, thumbnail_id, description_vi, description_en, brand, featured, updated_at, created_at, _status, name_label) FROM stdin;
1	Van Công Nghiệp	Industrial Valve	van-cong-nghiep-dieu-khien-tu-dong	industrial-valve	29	\N	\N	ESTEC	t	2026-05-02 14:23:35.639+00	2026-05-02 14:23:35.578+00	published	Van Công Nghiệp
2	Động Cơ Điện	Electric Motor	dong-co-dien-va-bien-tan	motor	30	\N	\N	ESTEC	t	2026-05-02 14:23:35.866+00	2026-05-02 14:23:35.832+00	published	Động Cơ Điện
3	Cảm Biến	Industrial Sensor	cam-bien-cong-nghiep	sensor	31	\N	\N	ESTEC	t	2026-05-02 14:23:36.081+00	2026-05-02 14:23:36.046+00	published	Cảm Biến
4	Tủ Điện Điều Khiển	Control Cabinet	tu-dien-dieu-khien	electrical	32	\N	\N	ESTEC	t	2026-05-02 14:23:36.305+00	2026-05-02 14:23:36.266+00	published	Tủ Điện Điều Khiển
5	Thiết Bị Đo Lường	Measuring Device	thiet-bi-do-luong-cong-nghiep	measurement	33	\N	\N	ESTEC	t	2026-05-02 14:23:36.432+00	2026-05-02 14:23:36.398+00	published	Thiết Bị Đo Lường
\.


--
-- Data for Name: products_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_locales (display_category, id, _locale, _parent_id) FROM stdin;
Valve & Actuator	2	vi	1
Valve & Actuator	3	en	1
Motor & Drive	5	vi	2
Motor & Drive	6	en	2
Sensor & Instrument	8	vi	3
Sensor & Instrument	9	en	3
Control Cabinet	11	vi	4
Control Cabinet	12	en	4
Measurement Device	14	vi	5
Measurement Device	15	en	5
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects (id, title_vi, title_en, slug, category, industry, thumbnail_id, customer_name_vi, customer_name_en, customer_address, location, year, summary_vi, summary_en, intro_vi, intro_en, solutions_vi, solutions_en, results_vi, results_en, featured, updated_at, created_at, _status, featured_type, featured_badge_color, title_label, detail_hero_image_id, intro_image_id) FROM stdin;
5	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	Power monitoring center for Samsung Bac Ninh factory	trung-tam-giam-sat-dien-nang-nha-may-samsung-bac-ninh	measurement	\N	10	\N	\N	\N	\N	2026	Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca	Integration of smart meters, alert dashboards and shift-based consumption reports	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.502+00	2026-05-02 13:57:22.468+00	published	energy	#2b358c	Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh	\N	\N
6	Giải pháp tối ưu năng lượng cho KCN Long Hậu	Energy optimization solution for Long Hau industrial park	giai-phap-toi-uu-nang-luong-cho-kcn-long-hau	measurement	\N	11	\N	\N	\N	\N	2026	Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực	Deployment of multi-point metering and real-time load profile analytics	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.701+00	2026-05-02 13:57:22.657+00	published	energy	#2b358c	Giải pháp tối ưu năng lượng cho KCN Long Hậu	\N	\N
7	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	EMS upgrade for Mekophar pharmaceutical plant	nang-cap-he-thong-ems-cho-nha-may-duoc-pham-mekophar	measurement	\N	12	\N	\N	\N	\N	2025	Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng	Standardized power data, anomaly alerts and energy KPI reporting	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:22.828+00	2026-05-02 13:57:22.796+00	published	energy	#2b358c	Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar	\N	\N
8	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	Energy metering system for Cat Lai logistics complex	he-thong-do-luong-nang-luong-khu-phuc-hop-logistics-cat-lai	measurement	\N	13	\N	\N	\N	\N	2025	Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành	Connected meters, stored operating data and visualized energy costs	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.006+00	2026-05-02 13:57:22.977+00	published	energy	#2b358c	Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái	\N	\N
2	Trạm biến áp 110kV Nhà máy thép Formosa	110kV substation for Formosa steel factory	tram-bien-ap-110kv-nha-may-thep-formosa	electrical-automation	\N	14	\N	\N	\N	\N	2026	Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế	Supply and installation of medium and low voltage electrical systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.123+00	2026-05-02 09:29:48.678+00	published	electrical	#B92C32	Trạm biến áp 110kV Nhà máy thép Formosa	\N	\N
9	Tủ điện trung thế dây chuyền xi măng Hà Tiên	Medium-voltage switchgear for Ha Tien cement line	tu-dien-trung-the-day-chuyen-xi-mang-ha-tien	electrical-automation	\N	15	\N	\N	\N	\N	2026	Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền	Design, installation and commissioning of power distribution for a grinding line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.224+00	2026-05-02 13:57:23.198+00	published	electrical	#B92C32	Tủ điện trung thế dây chuyền xi măng Hà Tiên	\N	\N
10	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	Electrical system upgrade for Tan Tien packaging factory	nang-cap-he-thong-dien-nha-may-bao-bi-tan-tien	electrical-automation	\N	16	\N	\N	\N	\N	2026	Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn	Replaced distribution cabinets, balanced loads and added safety protection systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.397+00	2026-05-02 13:57:23.369+00	published	electrical	#B92C32	Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến	\N	\N
11	Hệ thống điện động lực cảng container Cái Mép	Power system for Cai Mep container port	he-thong-dien-dong-luc-cang-container-cai-mep	electrical-automation	\N	17	\N	\N	\N	\N	2025	Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi	Installed power supply for lifting equipment and yard lighting systems	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.503+00	2026-05-02 13:57:23.471+00	published	electrical	#B92C32	Hệ thống điện động lực cảng container Cái Mép	\N	\N
12	Cải tạo trạm điện nhà máy nước Thủ Đức	Substation renovation for Thu Duc water plant	cai-tao-tram-dien-nha-may-nuoc-thu-duc	electrical-automation	\N	18	\N	\N	\N	\N	2025	Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm	Upgraded switching, metering and operational monitoring equipment	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.674+00	2026-05-02 13:57:23.652+00	published	electrical	#B92C32	Cải tạo trạm điện nhà máy nước Thủ Đức	\N	\N
3	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	Nestle Vietnam production line automation	tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam	electrical-automation	\N	19	\N	\N	\N	\N	2026	Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói	PLC programming and SCADA integration for a packaging line	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.872+00	2026-05-02 09:29:48.766+00	published	automation	#2b358c	Tự động hóa dây chuyền sản xuất Nestlé Việt Nam	\N	\N
13	Hệ thống SCADA dây chuyền chiết rót Vinamilk	SCADA system for Vinamilk filling line	he-thong-scada-day-chuyen-chiet-rot-vinamilk	electrical-automation	\N	20	\N	\N	\N	\N	2026	Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị	Centralized control, production data acquisition and equipment fault alerts	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:23.972+00	2026-05-02 13:57:23.946+00	published	automation	#2b358c	Hệ thống SCADA dây chuyền chiết rót Vinamilk	\N	\N
14	Robot gắp sản phẩm cho nhà máy điện tử VSIP	Product handling robot for VSIP electronics factory	robot-gap-san-pham-cho-nha-may-dien-tu-vsip	electrical-automation	\N	21	\N	\N	\N	\N	2026	Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại	Integrated industrial robots, vision sensors and sorting conveyors	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.089+00	2026-05-02 13:57:24.058+00	published	automation	#2b358c	Robot gắp sản phẩm cho nhà máy điện tử VSIP	\N	\N
15	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	Raw material warehouse automation for feed plant	tu-dong-hoa-kho-nguyen-lieu-nha-may-thuc-an-chan-nuoi	electrical-automation	\N	22	\N	\N	\N	\N	2025	Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu	Controlled silos, dosing scales and material movement traceability	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.194+00	2026-05-02 13:57:24.17+00	published	automation	#2b358c	Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi	\N	\N
16	Nâng cấp PLC dây chuyền đóng gói Masan	PLC upgrade for Masan packaging line	nang-cap-plc-day-chuyen-dong-goi-masan	electrical-automation	\N	23	\N	\N	\N	\N	2025	Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền	Migrated control systems, optimized machine cycles and reduced line downtime	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.356+00	2026-05-02 13:57:24.332+00	published	automation	#2b358c	Nâng cấp PLC dây chuyền đóng gói Masan	\N	\N
4	Hệ thống BMS tòa nhà Landmark 81	Landmark 81 building management system	he-thong-bms-toa-nha-landmark-81	digitalization	\N	24	\N	\N	\N	\N	2026	Triển khai hệ thống quản lý tòa nhà thông minh tích hợp	Deployment of an integrated intelligent building management system	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.47+00	2026-05-02 09:29:48.826+00	published	bms	#6366F1	Hệ thống BMS tòa nhà Landmark 81	\N	\N
17	BMS khu văn phòng Techcombank Tower	BMS for Techcombank Tower office complex	bms-khu-van-phong-techcombank-tower	digitalization	\N	25	\N	\N	\N	\N	2026	Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng	Connected HVAC, lighting, security and energy monitoring on one platform	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.631+00	2026-05-02 13:57:24.606+00	published	bms	#6366F1	BMS khu văn phòng Techcombank Tower	\N	\N
18	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	Building management system for Hanh Phuc international hospital	he-thong-quan-ly-toa-nha-benh-vien-quoc-te-hanh-phuc	digitalization	\N	26	\N	\N	\N	\N	2026	Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền	Monitored technical rooms, environmental alerts and base equipment operations	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.773+00	2026-05-02 13:57:24.745+00	published	bms	#6366F1	Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc	\N	\N
19	BMS khách sạn nghỉ dưỡng Phú Quốc	BMS for Phu Quoc resort hotel	bms-khach-san-nghi-duong-phu-quoc	digitalization	\N	27	\N	\N	\N	\N	2025	Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng	Optimized HVAC, public lighting and operating schedules based on room occupancy	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.875+00	2026-05-02 13:57:24.85+00	published	bms	#6366F1	BMS khách sạn nghỉ dưỡng Phú Quốc	\N	\N
20	Nâng cấp BMS trung tâm thương mại Saigon Centre	BMS upgrade for Saigon Centre commercial complex	nang-cap-bms-trung-tam-thuong-mai-saigon-centre	digitalization	\N	28	\N	\N	\N	\N	2025	Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung	Re-integrated existing equipment and built centralized operations dashboards	\N	\N	\N	\N	\N	\N	t	2026-05-02 13:57:24.982+00	2026-05-02 13:57:24.961+00	published	bms	#6366F1	Nâng cấp BMS trung tâm thương mại Saigon Centre	\N	\N
1	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	Vietnam - Singapore industrial park energy management system	he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore	measurement	cement-mining	9	CÔNG TY XI MĂNG VICEM BÚT SƠN	VICEM But Son Cement Company	Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam	Hà Nam	2020	Thiết kế và thi công hệ thống giám sát năng lượng toàn diện	Design and deployment of a comprehensive energy monitoring system	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}	\N	\N	t	2026-05-03 08:53:25.645+00	2026-05-02 09:29:48.586+00	published	energy	#2b358c	Hệ thống quản lý năng lượng KCN Việt Nam - Singapore	\N	\N
\.


--
-- Data for Name: projects_customer_reasons; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_customer_reasons (_order, _parent_id, id) FROM stdin;
1	1	69f70d05597c80fcdc476062
2	1	69f70d05597c80fcdc476063
3	1	69f70d05597c80fcdc476064
\.


--
-- Data for Name: projects_customer_reasons_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_customer_reasons_locales (text, id, _locale, _parent_id) FROM stdin;
Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.	19	vi	69f70d05597c80fcdc476062
Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.	20	vi	69f70d05597c80fcdc476063
Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.	21	vi	69f70d05597c80fcdc476064
\.


--
-- Data for Name: projects_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_images (_order, _parent_id, id, image_id) FROM stdin;
\.


--
-- Data for Name: projects_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_locales (featured_badge_label, id, _locale, _parent_id) FROM stdin;
Năng lượng	26	vi	5
Energy	27	en	5
Năng lượng	29	vi	6
Energy	30	en	6
Năng lượng	32	vi	7
Energy	33	en	7
Năng lượng	35	vi	8
Energy	36	en	8
Điện CN	39	vi	2
Industrial power	40	en	2
Điện CN	42	vi	9
Industrial power	43	en	9
Điện CN	45	vi	10
Industrial power	46	en	10
Điện CN	48	vi	11
Industrial power	49	en	11
Điện CN	51	vi	12
Industrial power	52	en	12
Tự động hóa	55	vi	3
Automation	56	en	3
Tự động hóa	58	vi	13
Automation	59	en	13
Tự động hóa	61	vi	14
Automation	62	en	14
Tự động hóa	64	vi	15
Automation	65	en	15
Tự động hóa	67	vi	16
Automation	68	en	16
BMS	71	vi	4
BMS	72	en	4
BMS	74	vi	17
BMS	75	en	17
BMS	77	vi	18
BMS	78	en	18
BMS	80	vi	19
BMS	81	en	19
BMS	83	vi	20
BMS	84	en	20
Năng lượng	97	vi	1
Energy	98	en	1
\.


--
-- Data for Name: projects_result_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_result_items (_order, _parent_id, id) FROM stdin;
1	1	69f70d05597c80fcdc476065
2	1	69f70d05597c80fcdc476066
3	1	69f70d05597c80fcdc476067
\.


--
-- Data for Name: projects_result_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_result_items_locales (text, id, _locale, _parent_id) FROM stdin;
Hệ thống vận hành ổn định sau khi bàn giao.	19	vi	69f70d05597c80fcdc476065
Giảm thời gian xử lý sự cố và tăng khả năng giám sát.	20	vi	69f70d05597c80fcdc476066
Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.	21	vi	69f70d05597c80fcdc476067
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.services (id, name_vi, name_en, slug, category, icon_id, thumbnail_id, summary_vi, summary_en, content_vi, content_en, "order", updated_at, created_at, _status) FROM stdin;
\.


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings (id, header_phone, header_email, footer_background_color, footer_accent_color, updated_at, created_at, header_logo_image_id, footer_logo_image_id) FROM stdin;
1	(028) 3636 9936	info@bacau.com.vn	#0F172A	#B92C32	2026-05-04 02:07:44.613+00	2026-05-04 01:57:35.053+00	42	43
\.


--
-- Data for Name: site_settings_footer_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_footer_columns (_order, _parent_id, id) FROM stdin;
1	1	69f7fc7cd07cfd70569bdd4f
2	1	69f7fc7cd07cfd70569bdd53
3	1	69f7fc7cd07cfd70569bdd58
\.


--
-- Data for Name: site_settings_footer_columns_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_footer_columns_links (_order, _parent_id, id, href) FROM stdin;
1	69f7fc7cd07cfd70569bdd4f	69f7fc7cd07cfd70569bdd4a	/
2	69f7fc7cd07cfd70569bdd4f	69f7fc7cd07cfd70569bdd4b	/gioi-thieu
3	69f7fc7cd07cfd70569bdd4f	69f7fc7cd07cfd70569bdd4c	/dich-vu
4	69f7fc7cd07cfd70569bdd4f	69f7fc7cd07cfd70569bdd4d	/du-an-tham-khao
5	69f7fc7cd07cfd70569bdd4f	69f7fc7cd07cfd70569bdd4e	/lien-he
1	69f7fc7cd07cfd70569bdd53	69f7fc7cd07cfd70569bdd50	
2	69f7fc7cd07cfd70569bdd53	69f7fc7cd07cfd70569bdd51	tel:02836369936
3	69f7fc7cd07cfd70569bdd53	69f7fc7cd07cfd70569bdd52	mailto:info@bacau.com.vn
1	69f7fc7cd07cfd70569bdd58	69f7fc7cd07cfd70569bdd54	/giai-phap/dien-tu-dong-hoa
2	69f7fc7cd07cfd70569bdd58	69f7fc7cd07cfd70569bdd55	/giai-phap/dien-tu-dong-hoa
3	69f7fc7cd07cfd70569bdd58	69f7fc7cd07cfd70569bdd56	/giai-phap/dich-vu
4	69f7fc7cd07cfd70569bdd58	69f7fc7cd07cfd70569bdd57	/giai-phap/do-luong
\.


--
-- Data for Name: site_settings_footer_columns_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_footer_columns_links_locales (label, id, _locale, _parent_id) FROM stdin;
Trang Chủ	37	vi	69f7fc7cd07cfd70569bdd4a
Giới Thiệu	38	vi	69f7fc7cd07cfd70569bdd4b
Dịch Vụ	39	vi	69f7fc7cd07cfd70569bdd4c
Dự Án	40	vi	69f7fc7cd07cfd70569bdd4d
Liên Hệ	41	vi	69f7fc7cd07cfd70569bdd4e
Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh	42	vi	69f7fc7cd07cfd70569bdd50
Tel: (028) 3636 9936	43	vi	69f7fc7cd07cfd70569bdd51
Email: info@bacau.com.vn	44	vi	69f7fc7cd07cfd70569bdd52
Tự Động Hóa	45	vi	69f7fc7cd07cfd70569bdd54
Điện Công Nghiệp	46	vi	69f7fc7cd07cfd70569bdd55
Bảo Trì & Sửa Chữa	47	vi	69f7fc7cd07cfd70569bdd56
Thiết Bị Đo Lường	48	vi	69f7fc7cd07cfd70569bdd57
\.


--
-- Data for Name: site_settings_footer_columns_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_footer_columns_locales (title, id, _locale, _parent_id) FROM stdin;
LIÊN KẾT	10	vi	69f7fc7cd07cfd70569bdd4f
LIÊN HỆ	11	vi	69f7fc7cd07cfd70569bdd53
DỊCH VỤ	12	vi	69f7fc7cd07cfd70569bdd58
\.


--
-- Data for Name: site_settings_header_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_header_nav_items (_order, _parent_id, id, href) FROM stdin;
1	1	69f7fc7cd07cfd70569bdd40	/gioi-thieu
2	1	69f7fc7cd07cfd70569bdd41	/du-an-tham-khao
3	1	69f7fc7cd07cfd70569bdd46	/giai-phap
4	1	69f7fc7cd07cfd70569bdd47	/san-pham
5	1	69f7fc7cd07cfd70569bdd48	/tin-tuc
6	1	69f7fc7cd07cfd70569bdd49	/tuyen-dung
\.


--
-- Data for Name: site_settings_header_nav_items_children; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_header_nav_items_children (_order, _parent_id, id, href) FROM stdin;
1	69f7fc7cd07cfd70569bdd46	69f7fc7cd07cfd70569bdd42	/giai-phap/dien-tu-dong-hoa
2	69f7fc7cd07cfd70569bdd46	69f7fc7cd07cfd70569bdd43	/giai-phap/so-hoa
3	69f7fc7cd07cfd70569bdd46	69f7fc7cd07cfd70569bdd44	/giai-phap/do-luong
4	69f7fc7cd07cfd70569bdd46	69f7fc7cd07cfd70569bdd45	/giai-phap/dich-vu
\.


--
-- Data for Name: site_settings_header_nav_items_children_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_header_nav_items_children_locales (label, id, _locale, _parent_id) FROM stdin;
Giải pháp Điện & Tự động hóa	13	vi	69f7fc7cd07cfd70569bdd42
Giải pháp Số hóa	14	vi	69f7fc7cd07cfd70569bdd43
Giải pháp Đo lường	15	vi	69f7fc7cd07cfd70569bdd44
Dịch vụ Công nghiệp	16	vi	69f7fc7cd07cfd70569bdd45
\.


--
-- Data for Name: site_settings_header_nav_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_header_nav_items_locales (label, id, _locale, _parent_id) FROM stdin;
Công ty Bắc Âu	19	vi	69f7fc7cd07cfd70569bdd40
Dự án	20	vi	69f7fc7cd07cfd70569bdd41
Giải pháp	21	vi	69f7fc7cd07cfd70569bdd46
Sản phẩm	22	vi	69f7fc7cd07cfd70569bdd47
Tin tức	23	vi	69f7fc7cd07cfd70569bdd48
Tuyển dụng	24	vi	69f7fc7cd07cfd70569bdd49
\.


--
-- Data for Name: site_settings_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_locales (header_logo_text, footer_logo_text, footer_description, footer_copyright, footer_credit, id, _locale, _parent_id, header_logo_alt, footer_logo_alt) FROM stdin;
BắcÂu	BắcÂu	Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.	© 2024 BắcÂu. All rights reserved.	Designed by BắcÂu Technology	4	vi	1	\N	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, role, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
1	Nam	admin	2026-04-27 00:23:32.856+00	2026-04-23 15:05:04.299+00	namth3979@gmail.com	\N	\N	2ba26df51d5fe2bebea1dc8189949fca7b26bb57a39d78d2ddcd2a3b31e919bd	6f16788d5e3df2bd9df833184128f7d295e1e0373cf5ccc7e8487a3b72786b5f24cc67917dd6a98164a56268d0f8f99c8e6376ef3860086daed188aa5d4dcbcd91af8e3b4a9f79713cb371adb66ab82fda18201f2e9bf6d097ebfaf319fd57c9a9895809d18f540d59462d48e2e83a0731c1dfb2491f946e9d354519b70397a0a739f2f0fd72dfcc316157364c27816ccd9412187e1d27ae35e48868efdc7db2f8cc71a12b9efe3693de03dda9f95e4a9d3d4a5384df2f4e7f905bd052a19e4bdc7bd0e8bcabfa5c59c30cd6fd7306fd73772658b62ce7761f4c38ed49973425b0f7f2a242e8a130f4b63e12c4d51d9432df42294ede53a7ca7a83f6f3a68282c1475ec7e4d9bd6352a11fc6517b36dd425a669f006e4f0e8bce72ea272834caa24efeb1fe4169cd91ba0bc2f0733cfe2962ea634cf81c6e6ecf781868aa6e5cf178e217a4fa4c8dcd64dfdc3cef2732b0bafcbd5daa26ddff2b4e5ee41aaf1a03b0f68f57af0e8298db247b7f53a039ef84b3b1a270b9ca1eb9ebafcc2b34478ac80892bcf5f34179341e33461a244bf9dc92505b7ed839237ac99771d57b8e707016d5c724a72fce6fa77d49318c171c5a088b4b23af46864deba64640f95fda43b314640f2b51a110261dcb2c227d266ff5a8067ea9676eb5e1c49a5ee07819271c40765961484ba51b11e4e4a9e54ce80e3138a2b3efe5f2a5d436ef8c78	0	\N
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	1	4008cd5b-e9a5-49c1-b8ec-2c3086f639d9	2026-05-05 10:30:24.823+00	2026-05-05 12:30:24.823+00
\.


--
-- Name: _news_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._news_v_id_seq', 6, true);


--
-- Name: _news_v_version_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._news_v_version_tags_id_seq', 10, true);


--
-- Name: _products_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_id_seq', 10, true);


--
-- Name: _products_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_locales_id_seq', 15, true);


--
-- Name: _projects_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_id_seq', 63, true);


--
-- Name: _projects_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_locales_id_seq', 98, true);


--
-- Name: _projects_v_version_customer_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_customer_reasons_id_seq', 21, true);


--
-- Name: _projects_v_version_customer_reasons_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_customer_reasons_locales_id_seq', 21, true);


--
-- Name: _projects_v_version_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_images_id_seq', 1, false);


--
-- Name: _projects_v_version_result_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_result_items_id_seq', 21, true);


--
-- Name: _projects_v_version_result_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_result_items_locales_id_seq', 21, true);


--
-- Name: _services_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._services_v_id_seq', 1, false);


--
-- Name: home_page_blocks_brand_logos_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_brand_logos_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_cta_banner_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_cta_banner_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_featured_projects_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_featured_projects_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_featured_projects_tabs_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_hero_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_hero_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_hero_stats_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_hero_stats_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_news_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_news_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_partners_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_partners_images_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_partners_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_partners_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_products_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_products_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_services_cards_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_services_cards_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_services_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_services_locales_id_seq', 20, true);


--
-- Name: home_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_id_seq', 1, true);


--
-- Name: home_page_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_rels_id_seq', 1, false);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 44, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.news_id_seq', 3, true);


--
-- Name: news_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.news_tags_id_seq', 10, true);


--
-- Name: pages_blocks_about_content_sections_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_images_locales_id_seq', 780, true);


--
-- Name: pages_blocks_about_content_sections_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_items_locales_id_seq', 882, true);


--
-- Name: pages_blocks_about_content_sections_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_locales_id_seq', 657, true);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_paragraphs_locales_id_seq', 197, true);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sidebar_groups_items_locales_id_seq', 673, true);


--
-- Name: pages_blocks_about_content_sidebar_groups_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sidebar_groups_locales_id_seq', 257, true);


--
-- Name: pages_blocks_brand_logos_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_brand_logos_locales_id_seq', 107, true);


--
-- Name: pages_blocks_content_intro_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_intro_images_locales_id_seq', 1, false);


--
-- Name: pages_blocks_content_intro_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_intro_locales_id_seq', 1, false);


--
-- Name: pages_blocks_content_intro_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_intro_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_cta_banner_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_cta_banner_locales_id_seq', 84, true);


--
-- Name: pages_blocks_document_list_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_document_list_items_locales_id_seq', 1, false);


--
-- Name: pages_blocks_document_list_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_document_list_locales_id_seq', 1, false);


--
-- Name: pages_blocks_document_list_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_document_list_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_feature_cards_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_feature_cards_items_locales_id_seq', 1, false);


--
-- Name: pages_blocks_feature_cards_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_feature_cards_locales_id_seq', 1, false);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_feature_cards_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_featured_projects_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_featured_projects_locales_id_seq', 48, true);


--
-- Name: pages_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_featured_projects_tabs_locales_id_seq', 104, true);


--
-- Name: pages_blocks_hero_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_hero_locales_id_seq', 85, true);


--
-- Name: pages_blocks_hero_stats_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_hero_stats_locales_id_seq', 288, true);


--
-- Name: pages_blocks_image_gallery_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_image_gallery_images_locales_id_seq', 1, false);


--
-- Name: pages_blocks_image_gallery_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_image_gallery_locales_id_seq', 1, false);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_image_gallery_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_info_grid_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_info_grid_items_locales_id_seq', 1, false);


--
-- Name: pages_blocks_info_grid_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_info_grid_locales_id_seq', 1, false);


--
-- Name: pages_blocks_info_grid_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_info_grid_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_media_text_split_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_media_text_split_images_locales_id_seq', 1, false);


--
-- Name: pages_blocks_media_text_split_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_media_text_split_locales_id_seq', 1, false);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_media_text_split_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_news_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_news_locales_id_seq', 53, true);


--
-- Name: pages_blocks_page_hero_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_page_hero_locales_id_seq', 69, true);


--
-- Name: pages_blocks_partners_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_partners_images_locales_id_seq', 80, true);


--
-- Name: pages_blocks_partners_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_partners_locales_id_seq', 85, true);


--
-- Name: pages_blocks_products_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_products_locales_id_seq', 88, true);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_projects_listing_industry_filters_locales_id_seq', 128, true);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_projects_listing_parent_categories_locales_id_seq', 64, true);


--
-- Name: pages_blocks_services_cards_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_services_cards_locales_id_seq', 188, true);


--
-- Name: pages_blocks_services_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_services_locales_id_seq', 88, true);


--
-- Name: pages_blocks_welcome_intro_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_welcome_intro_images_locales_id_seq', 13, true);


--
-- Name: pages_blocks_welcome_intro_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_welcome_intro_locales_id_seq', 7, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 8, true);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_locales_id_seq', 194, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 1, false);


--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.partners_id_seq', 6, true);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 55, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 92, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 18, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 262, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq', 5, true);


--
-- Name: products_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_locales_id_seq', 15, true);


--
-- Name: projects_customer_reasons_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_customer_reasons_locales_id_seq', 21, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_id_seq', 20, true);


--
-- Name: projects_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_locales_id_seq', 98, true);


--
-- Name: projects_result_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_result_items_locales_id_seq', 21, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: site_settings_footer_columns_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_footer_columns_links_locales_id_seq', 48, true);


--
-- Name: site_settings_footer_columns_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_footer_columns_locales_id_seq', 12, true);


--
-- Name: site_settings_header_nav_items_children_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_header_nav_items_children_locales_id_seq', 16, true);


--
-- Name: site_settings_header_nav_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_header_nav_items_locales_id_seq', 24, true);


--
-- Name: site_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_id_seq', 1, true);


--
-- Name: site_settings_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_locales_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: _news_v _news_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v
    ADD CONSTRAINT _news_v_pkey PRIMARY KEY (id);


--
-- Name: _news_v_version_tags _news_v_version_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v_version_tags
    ADD CONSTRAINT _news_v_version_tags_pkey PRIMARY KEY (id);


--
-- Name: _products_v_locales _products_v_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_locales
    ADD CONSTRAINT _products_v_locales_pkey PRIMARY KEY (id);


--
-- Name: _products_v _products_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v
    ADD CONSTRAINT _products_v_pkey PRIMARY KEY (id);


--
-- Name: _projects_v_locales _projects_v_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_locales
    ADD CONSTRAINT _projects_v_locales_pkey PRIMARY KEY (id);


--
-- Name: _projects_v _projects_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v
    ADD CONSTRAINT _projects_v_pkey PRIMARY KEY (id);


--
-- Name: _projects_v_version_customer_reasons_locales _projects_v_version_customer_reasons_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_customer_reasons_locales
    ADD CONSTRAINT _projects_v_version_customer_reasons_locales_pkey PRIMARY KEY (id);


--
-- Name: _projects_v_version_customer_reasons _projects_v_version_customer_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_customer_reasons
    ADD CONSTRAINT _projects_v_version_customer_reasons_pkey PRIMARY KEY (id);


--
-- Name: _projects_v_version_images _projects_v_version_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_images
    ADD CONSTRAINT _projects_v_version_images_pkey PRIMARY KEY (id);


--
-- Name: _projects_v_version_result_items_locales _projects_v_version_result_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_result_items_locales
    ADD CONSTRAINT _projects_v_version_result_items_locales_pkey PRIMARY KEY (id);


--
-- Name: _projects_v_version_result_items _projects_v_version_result_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_result_items
    ADD CONSTRAINT _projects_v_version_result_items_pkey PRIMARY KEY (id);


--
-- Name: _services_v _services_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._services_v
    ADD CONSTRAINT _services_v_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_brand_logos_fallback_brands home_page_blocks_brand_logos_fallback_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos_fallback_brands
    ADD CONSTRAINT home_page_blocks_brand_logos_fallback_brands_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_brand_logos_locales home_page_blocks_brand_logos_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos_locales
    ADD CONSTRAINT home_page_blocks_brand_logos_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_brand_logos home_page_blocks_brand_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos
    ADD CONSTRAINT home_page_blocks_brand_logos_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_cta_banner_locales home_page_blocks_cta_banner_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_cta_banner_locales
    ADD CONSTRAINT home_page_blocks_cta_banner_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_cta_banner home_page_blocks_cta_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_cta_banner
    ADD CONSTRAINT home_page_blocks_cta_banner_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_featured_projects_locales home_page_blocks_featured_projects_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_locales
    ADD CONSTRAINT home_page_blocks_featured_projects_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_featured_projects home_page_blocks_featured_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects
    ADD CONSTRAINT home_page_blocks_featured_projects_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_featured_projects_tabs_locales home_page_blocks_featured_projects_tabs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_tabs_locales
    ADD CONSTRAINT home_page_blocks_featured_projects_tabs_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_featured_projects_tabs home_page_blocks_featured_projects_tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_tabs
    ADD CONSTRAINT home_page_blocks_featured_projects_tabs_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_hero_locales home_page_blocks_hero_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_locales
    ADD CONSTRAINT home_page_blocks_hero_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_hero home_page_blocks_hero_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero
    ADD CONSTRAINT home_page_blocks_hero_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_hero_stats_locales home_page_blocks_hero_stats_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_stats_locales
    ADD CONSTRAINT home_page_blocks_hero_stats_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_hero_stats home_page_blocks_hero_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_stats
    ADD CONSTRAINT home_page_blocks_hero_stats_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_hero_trust_partners home_page_blocks_hero_trust_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_trust_partners
    ADD CONSTRAINT home_page_blocks_hero_trust_partners_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_news_locales home_page_blocks_news_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_news_locales
    ADD CONSTRAINT home_page_blocks_news_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_news home_page_blocks_news_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_news
    ADD CONSTRAINT home_page_blocks_news_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_partners_images_locales home_page_blocks_partners_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_images_locales
    ADD CONSTRAINT home_page_blocks_partners_images_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_partners_images home_page_blocks_partners_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_images
    ADD CONSTRAINT home_page_blocks_partners_images_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_partners_locales home_page_blocks_partners_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_locales
    ADD CONSTRAINT home_page_blocks_partners_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_partners home_page_blocks_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners
    ADD CONSTRAINT home_page_blocks_partners_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_products_locales home_page_blocks_products_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_products_locales
    ADD CONSTRAINT home_page_blocks_products_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_products home_page_blocks_products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_products
    ADD CONSTRAINT home_page_blocks_products_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_services_cards_locales home_page_blocks_services_cards_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_cards_locales
    ADD CONSTRAINT home_page_blocks_services_cards_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_services_cards home_page_blocks_services_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_cards
    ADD CONSTRAINT home_page_blocks_services_cards_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_services_locales home_page_blocks_services_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_locales
    ADD CONSTRAINT home_page_blocks_services_locales_pkey PRIMARY KEY (id);


--
-- Name: home_page_blocks_services home_page_blocks_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services
    ADD CONSTRAINT home_page_blocks_services_pkey PRIMARY KEY (id);


--
-- Name: home_page home_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page
    ADD CONSTRAINT home_page_pkey PRIMARY KEY (id);


--
-- Name: home_page_rels home_page_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels
    ADD CONSTRAINT home_page_rels_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: news_tags news_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT news_tags_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content pages_blocks_about_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content
    ADD CONSTRAINT pages_blocks_about_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_images_locales pages_blocks_about_content_sections_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_images_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_images_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_images pages_blocks_about_content_sections_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_images
    ADD CONSTRAINT pages_blocks_about_content_sections_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_items_locales pages_blocks_about_content_sections_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_items_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_items_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_items pages_blocks_about_content_sections_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_items
    ADD CONSTRAINT pages_blocks_about_content_sections_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_locales pages_blocks_about_content_sections_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales pages_blocks_about_content_sections_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_paragraphs_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections_paragraphs pages_blocks_about_content_sections_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_paragraphs
    ADD CONSTRAINT pages_blocks_about_content_sections_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sections pages_blocks_about_content_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections
    ADD CONSTRAINT pages_blocks_about_content_sections_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales pages_blocks_about_content_sidebar_groups_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_items_locales
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_items_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sidebar_groups_items pages_blocks_about_content_sidebar_groups_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_items
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sidebar_groups_locales pages_blocks_about_content_sidebar_groups_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_locales
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_content_sidebar_groups pages_blocks_about_content_sidebar_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_brand_logos_fallback_brands pages_blocks_brand_logos_fallback_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos_fallback_brands
    ADD CONSTRAINT pages_blocks_brand_logos_fallback_brands_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_brand_logos_locales pages_blocks_brand_logos_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos_locales
    ADD CONSTRAINT pages_blocks_brand_logos_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_brand_logos pages_blocks_brand_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos
    ADD CONSTRAINT pages_blocks_brand_logos_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_intro_images_locales pages_blocks_content_intro_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_images_locales
    ADD CONSTRAINT pages_blocks_content_intro_images_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_intro_images pages_blocks_content_intro_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_images
    ADD CONSTRAINT pages_blocks_content_intro_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_intro_locales pages_blocks_content_intro_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_locales
    ADD CONSTRAINT pages_blocks_content_intro_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_intro_paragraphs_locales pages_blocks_content_intro_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_paragraphs_locales
    ADD CONSTRAINT pages_blocks_content_intro_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_intro_paragraphs pages_blocks_content_intro_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_paragraphs
    ADD CONSTRAINT pages_blocks_content_intro_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_intro pages_blocks_content_intro_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro
    ADD CONSTRAINT pages_blocks_content_intro_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_banner_locales pages_blocks_cta_banner_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_banner_locales
    ADD CONSTRAINT pages_blocks_cta_banner_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_banner pages_blocks_cta_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_banner
    ADD CONSTRAINT pages_blocks_cta_banner_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_document_list_items_locales pages_blocks_document_list_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_items_locales
    ADD CONSTRAINT pages_blocks_document_list_items_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_document_list_items pages_blocks_document_list_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_items
    ADD CONSTRAINT pages_blocks_document_list_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_document_list_locales pages_blocks_document_list_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_locales
    ADD CONSTRAINT pages_blocks_document_list_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_document_list_paragraphs_locales pages_blocks_document_list_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_paragraphs_locales
    ADD CONSTRAINT pages_blocks_document_list_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_document_list_paragraphs pages_blocks_document_list_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_paragraphs
    ADD CONSTRAINT pages_blocks_document_list_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_document_list pages_blocks_document_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list
    ADD CONSTRAINT pages_blocks_document_list_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_feature_cards_items_locales pages_blocks_feature_cards_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_items_locales
    ADD CONSTRAINT pages_blocks_feature_cards_items_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_feature_cards_items pages_blocks_feature_cards_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_items
    ADD CONSTRAINT pages_blocks_feature_cards_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_feature_cards_locales pages_blocks_feature_cards_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_locales
    ADD CONSTRAINT pages_blocks_feature_cards_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales pages_blocks_feature_cards_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_paragraphs_locales
    ADD CONSTRAINT pages_blocks_feature_cards_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_feature_cards_paragraphs pages_blocks_feature_cards_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_paragraphs
    ADD CONSTRAINT pages_blocks_feature_cards_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_feature_cards pages_blocks_feature_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards
    ADD CONSTRAINT pages_blocks_feature_cards_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_featured_projects_locales pages_blocks_featured_projects_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_locales
    ADD CONSTRAINT pages_blocks_featured_projects_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_featured_projects pages_blocks_featured_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects
    ADD CONSTRAINT pages_blocks_featured_projects_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_featured_projects_tabs_locales pages_blocks_featured_projects_tabs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_tabs_locales
    ADD CONSTRAINT pages_blocks_featured_projects_tabs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_featured_projects_tabs pages_blocks_featured_projects_tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_tabs
    ADD CONSTRAINT pages_blocks_featured_projects_tabs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_hero_banner pages_blocks_hero_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_banner
    ADD CONSTRAINT pages_blocks_hero_banner_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_hero_locales pages_blocks_hero_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_locales
    ADD CONSTRAINT pages_blocks_hero_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_hero pages_blocks_hero_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero
    ADD CONSTRAINT pages_blocks_hero_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_hero_stats_locales pages_blocks_hero_stats_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_stats_locales
    ADD CONSTRAINT pages_blocks_hero_stats_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_hero_stats pages_blocks_hero_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_stats
    ADD CONSTRAINT pages_blocks_hero_stats_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_hero_trust_partners pages_blocks_hero_trust_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_trust_partners
    ADD CONSTRAINT pages_blocks_hero_trust_partners_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery_images_locales pages_blocks_image_gallery_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_images_locales
    ADD CONSTRAINT pages_blocks_image_gallery_images_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery_images pages_blocks_image_gallery_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_images
    ADD CONSTRAINT pages_blocks_image_gallery_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery_locales pages_blocks_image_gallery_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_locales
    ADD CONSTRAINT pages_blocks_image_gallery_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales pages_blocks_image_gallery_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_paragraphs_locales
    ADD CONSTRAINT pages_blocks_image_gallery_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery_paragraphs pages_blocks_image_gallery_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_paragraphs
    ADD CONSTRAINT pages_blocks_image_gallery_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery pages_blocks_image_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery
    ADD CONSTRAINT pages_blocks_image_gallery_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_grid_items_locales pages_blocks_info_grid_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_items_locales
    ADD CONSTRAINT pages_blocks_info_grid_items_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_grid_items pages_blocks_info_grid_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_items
    ADD CONSTRAINT pages_blocks_info_grid_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_grid_locales pages_blocks_info_grid_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_locales
    ADD CONSTRAINT pages_blocks_info_grid_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_grid_paragraphs_locales pages_blocks_info_grid_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_paragraphs_locales
    ADD CONSTRAINT pages_blocks_info_grid_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_grid_paragraphs pages_blocks_info_grid_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_paragraphs
    ADD CONSTRAINT pages_blocks_info_grid_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_grid pages_blocks_info_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid
    ADD CONSTRAINT pages_blocks_info_grid_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_text_split_images_locales pages_blocks_media_text_split_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_images_locales
    ADD CONSTRAINT pages_blocks_media_text_split_images_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_text_split_images pages_blocks_media_text_split_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_images
    ADD CONSTRAINT pages_blocks_media_text_split_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_text_split_locales pages_blocks_media_text_split_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_locales
    ADD CONSTRAINT pages_blocks_media_text_split_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales pages_blocks_media_text_split_paragraphs_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_paragraphs_locales
    ADD CONSTRAINT pages_blocks_media_text_split_paragraphs_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_text_split_paragraphs pages_blocks_media_text_split_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_paragraphs
    ADD CONSTRAINT pages_blocks_media_text_split_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_text_split pages_blocks_media_text_split_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split
    ADD CONSTRAINT pages_blocks_media_text_split_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_news_locales pages_blocks_news_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_news_locales
    ADD CONSTRAINT pages_blocks_news_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_news pages_blocks_news_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_news
    ADD CONSTRAINT pages_blocks_news_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_page_hero_locales pages_blocks_page_hero_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_page_hero_locales
    ADD CONSTRAINT pages_blocks_page_hero_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_page_hero pages_blocks_page_hero_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_page_hero
    ADD CONSTRAINT pages_blocks_page_hero_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_partners_images_locales pages_blocks_partners_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_images_locales
    ADD CONSTRAINT pages_blocks_partners_images_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_partners_images pages_blocks_partners_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_images
    ADD CONSTRAINT pages_blocks_partners_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_partners_locales pages_blocks_partners_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_locales
    ADD CONSTRAINT pages_blocks_partners_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_partners pages_blocks_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners
    ADD CONSTRAINT pages_blocks_partners_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_products_locales pages_blocks_products_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_products_locales
    ADD CONSTRAINT pages_blocks_products_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_products pages_blocks_products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_products
    ADD CONSTRAINT pages_blocks_products_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales pages_blocks_projects_listing_industry_filters_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_industry_filters_locales
    ADD CONSTRAINT pages_blocks_projects_listing_industry_filters_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_projects_listing_industry_filters pages_blocks_projects_listing_industry_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_industry_filters
    ADD CONSTRAINT pages_blocks_projects_listing_industry_filters_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales pages_blocks_projects_listing_parent_categories_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_parent_categories_locales
    ADD CONSTRAINT pages_blocks_projects_listing_parent_categories_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_projects_listing_parent_categories pages_blocks_projects_listing_parent_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_parent_categories
    ADD CONSTRAINT pages_blocks_projects_listing_parent_categories_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_projects_listing pages_blocks_projects_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing
    ADD CONSTRAINT pages_blocks_projects_listing_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services_cards_locales pages_blocks_services_cards_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_cards_locales
    ADD CONSTRAINT pages_blocks_services_cards_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services_cards pages_blocks_services_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_cards
    ADD CONSTRAINT pages_blocks_services_cards_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services_locales pages_blocks_services_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_locales
    ADD CONSTRAINT pages_blocks_services_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services pages_blocks_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_welcome_intro_images_locales pages_blocks_welcome_intro_images_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_images_locales
    ADD CONSTRAINT pages_blocks_welcome_intro_images_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_welcome_intro_images pages_blocks_welcome_intro_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_images
    ADD CONSTRAINT pages_blocks_welcome_intro_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_welcome_intro_locales pages_blocks_welcome_intro_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_locales
    ADD CONSTRAINT pages_blocks_welcome_intro_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_welcome_intro pages_blocks_welcome_intro_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro
    ADD CONSTRAINT pages_blocks_welcome_intro_pkey PRIMARY KEY (id);


--
-- Name: pages_locales pages_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales
    ADD CONSTRAINT pages_locales_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- Name: payload_kv payload_kv_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv
    ADD CONSTRAINT payload_kv_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: products_locales products_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_locales
    ADD CONSTRAINT products_locales_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: projects_customer_reasons_locales projects_customer_reasons_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_customer_reasons_locales
    ADD CONSTRAINT projects_customer_reasons_locales_pkey PRIMARY KEY (id);


--
-- Name: projects_customer_reasons projects_customer_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_customer_reasons
    ADD CONSTRAINT projects_customer_reasons_pkey PRIMARY KEY (id);


--
-- Name: projects_images projects_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_images
    ADD CONSTRAINT projects_images_pkey PRIMARY KEY (id);


--
-- Name: projects_locales projects_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_locales
    ADD CONSTRAINT projects_locales_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: projects_result_items_locales projects_result_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_result_items_locales
    ADD CONSTRAINT projects_result_items_locales_pkey PRIMARY KEY (id);


--
-- Name: projects_result_items projects_result_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_result_items
    ADD CONSTRAINT projects_result_items_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: site_settings_footer_columns_links_locales site_settings_footer_columns_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_links_locales
    ADD CONSTRAINT site_settings_footer_columns_links_locales_pkey PRIMARY KEY (id);


--
-- Name: site_settings_footer_columns_links site_settings_footer_columns_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_links
    ADD CONSTRAINT site_settings_footer_columns_links_pkey PRIMARY KEY (id);


--
-- Name: site_settings_footer_columns_locales site_settings_footer_columns_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_locales
    ADD CONSTRAINT site_settings_footer_columns_locales_pkey PRIMARY KEY (id);


--
-- Name: site_settings_footer_columns site_settings_footer_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns
    ADD CONSTRAINT site_settings_footer_columns_pkey PRIMARY KEY (id);


--
-- Name: site_settings_header_nav_items_children_locales site_settings_header_nav_items_children_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_children_locales
    ADD CONSTRAINT site_settings_header_nav_items_children_locales_pkey PRIMARY KEY (id);


--
-- Name: site_settings_header_nav_items_children site_settings_header_nav_items_children_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_children
    ADD CONSTRAINT site_settings_header_nav_items_children_pkey PRIMARY KEY (id);


--
-- Name: site_settings_header_nav_items_locales site_settings_header_nav_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_locales
    ADD CONSTRAINT site_settings_header_nav_items_locales_pkey PRIMARY KEY (id);


--
-- Name: site_settings_header_nav_items site_settings_header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items
    ADD CONSTRAINT site_settings_header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: site_settings_locales site_settings_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_locales
    ADD CONSTRAINT site_settings_locales_pkey PRIMARY KEY (id);


--
-- Name: site_settings site_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: _news_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_created_at_idx ON public._news_v USING btree (created_at);


--
-- Name: _news_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_latest_idx ON public._news_v USING btree (latest);


--
-- Name: _news_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_parent_idx ON public._news_v USING btree (parent_id);


--
-- Name: _news_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_published_locale_idx ON public._news_v USING btree (published_locale);


--
-- Name: _news_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_snapshot_idx ON public._news_v USING btree (snapshot);


--
-- Name: _news_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_updated_at_idx ON public._news_v USING btree (updated_at);


--
-- Name: _news_v_version_tags_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_tags_order_idx ON public._news_v_version_tags USING btree ("order");


--
-- Name: _news_v_version_tags_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_tags_parent_idx ON public._news_v_version_tags USING btree (parent_id);


--
-- Name: _news_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_version__status_idx ON public._news_v USING btree (version__status);


--
-- Name: _news_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_version_created_at_idx ON public._news_v USING btree (version_created_at);


--
-- Name: _news_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_version_slug_idx ON public._news_v USING btree (version_slug);


--
-- Name: _news_v_version_version_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_version_thumbnail_idx ON public._news_v USING btree (version_thumbnail_id);


--
-- Name: _news_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _news_v_version_version_updated_at_idx ON public._news_v USING btree (version_updated_at);


--
-- Name: _products_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_created_at_idx ON public._products_v USING btree (created_at);


--
-- Name: _products_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_latest_idx ON public._products_v USING btree (latest);


--
-- Name: _products_v_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _products_v_locales_locale_parent_id_unique ON public._products_v_locales USING btree (_locale, _parent_id);


--
-- Name: _products_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_parent_idx ON public._products_v USING btree (parent_id);


--
-- Name: _products_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_published_locale_idx ON public._products_v USING btree (published_locale);


--
-- Name: _products_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_snapshot_idx ON public._products_v USING btree (snapshot);


--
-- Name: _products_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_updated_at_idx ON public._products_v USING btree (updated_at);


--
-- Name: _products_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version__status_idx ON public._products_v USING btree (version__status);


--
-- Name: _products_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_created_at_idx ON public._products_v USING btree (version_created_at);


--
-- Name: _products_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_slug_idx ON public._products_v USING btree (version_slug);


--
-- Name: _products_v_version_version_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_thumbnail_idx ON public._products_v USING btree (version_thumbnail_id);


--
-- Name: _products_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_updated_at_idx ON public._products_v USING btree (version_updated_at);


--
-- Name: _projects_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_created_at_idx ON public._projects_v USING btree (created_at);


--
-- Name: _projects_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_latest_idx ON public._projects_v USING btree (latest);


--
-- Name: _projects_v_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _projects_v_locales_locale_parent_id_unique ON public._projects_v_locales USING btree (_locale, _parent_id);


--
-- Name: _projects_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_parent_idx ON public._projects_v USING btree (parent_id);


--
-- Name: _projects_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_published_locale_idx ON public._projects_v USING btree (published_locale);


--
-- Name: _projects_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_snapshot_idx ON public._projects_v USING btree (snapshot);


--
-- Name: _projects_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_updated_at_idx ON public._projects_v USING btree (updated_at);


--
-- Name: _projects_v_version_customer_reasons_locales_locale_parent_i; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _projects_v_version_customer_reasons_locales_locale_parent_i ON public._projects_v_version_customer_reasons_locales USING btree (_locale, _parent_id);


--
-- Name: _projects_v_version_customer_reasons_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_customer_reasons_order_idx ON public._projects_v_version_customer_reasons USING btree (_order);


--
-- Name: _projects_v_version_customer_reasons_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_customer_reasons_parent_id_idx ON public._projects_v_version_customer_reasons USING btree (_parent_id);


--
-- Name: _projects_v_version_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_images_image_idx ON public._projects_v_version_images USING btree (image_id);


--
-- Name: _projects_v_version_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_images_order_idx ON public._projects_v_version_images USING btree (_order);


--
-- Name: _projects_v_version_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_images_parent_id_idx ON public._projects_v_version_images USING btree (_parent_id);


--
-- Name: _projects_v_version_result_items_locales_locale_parent_id_un; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _projects_v_version_result_items_locales_locale_parent_id_un ON public._projects_v_version_result_items_locales USING btree (_locale, _parent_id);


--
-- Name: _projects_v_version_result_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_result_items_order_idx ON public._projects_v_version_result_items USING btree (_order);


--
-- Name: _projects_v_version_result_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_result_items_parent_id_idx ON public._projects_v_version_result_items USING btree (_parent_id);


--
-- Name: _projects_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version__status_idx ON public._projects_v USING btree (version__status);


--
-- Name: _projects_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version_created_at_idx ON public._projects_v USING btree (version_created_at);


--
-- Name: _projects_v_version_version_detail_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version_detail_hero_image_idx ON public._projects_v USING btree (version_detail_hero_image_id);


--
-- Name: _projects_v_version_version_intro_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version_intro_image_idx ON public._projects_v USING btree (version_intro_image_id);


--
-- Name: _projects_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version_slug_idx ON public._projects_v USING btree (version_slug);


--
-- Name: _projects_v_version_version_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version_thumbnail_idx ON public._projects_v USING btree (version_thumbnail_id);


--
-- Name: _projects_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _projects_v_version_version_updated_at_idx ON public._projects_v USING btree (version_updated_at);


--
-- Name: _services_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_created_at_idx ON public._services_v USING btree (created_at);


--
-- Name: _services_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_latest_idx ON public._services_v USING btree (latest);


--
-- Name: _services_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_parent_idx ON public._services_v USING btree (parent_id);


--
-- Name: _services_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_published_locale_idx ON public._services_v USING btree (published_locale);


--
-- Name: _services_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_snapshot_idx ON public._services_v USING btree (snapshot);


--
-- Name: _services_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_updated_at_idx ON public._services_v USING btree (updated_at);


--
-- Name: _services_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_version_version__status_idx ON public._services_v USING btree (version__status);


--
-- Name: _services_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_version_version_created_at_idx ON public._services_v USING btree (version_created_at);


--
-- Name: _services_v_version_version_icon_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_version_version_icon_idx ON public._services_v USING btree (version_icon_id);


--
-- Name: _services_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_version_version_slug_idx ON public._services_v USING btree (version_slug);


--
-- Name: _services_v_version_version_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_version_version_thumbnail_idx ON public._services_v USING btree (version_thumbnail_id);


--
-- Name: _services_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _services_v_version_version_updated_at_idx ON public._services_v USING btree (version_updated_at);


--
-- Name: home_page_blocks_brand_logos_fallback_brands_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_brand_logos_fallback_brands_order_idx ON public.home_page_blocks_brand_logos_fallback_brands USING btree (_order);


--
-- Name: home_page_blocks_brand_logos_fallback_brands_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_brand_logos_fallback_brands_parent_id_idx ON public.home_page_blocks_brand_logos_fallback_brands USING btree (_parent_id);


--
-- Name: home_page_blocks_brand_logos_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_brand_logos_locales_locale_parent_id_unique ON public.home_page_blocks_brand_logos_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_brand_logos_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_brand_logos_order_idx ON public.home_page_blocks_brand_logos USING btree (_order);


--
-- Name: home_page_blocks_brand_logos_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_brand_logos_parent_id_idx ON public.home_page_blocks_brand_logos USING btree (_parent_id);


--
-- Name: home_page_blocks_brand_logos_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_brand_logos_path_idx ON public.home_page_blocks_brand_logos USING btree (_path);


--
-- Name: home_page_blocks_cta_banner_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_cta_banner_locales_locale_parent_id_unique ON public.home_page_blocks_cta_banner_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_cta_banner_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_cta_banner_order_idx ON public.home_page_blocks_cta_banner USING btree (_order);


--
-- Name: home_page_blocks_cta_banner_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_cta_banner_parent_id_idx ON public.home_page_blocks_cta_banner USING btree (_parent_id);


--
-- Name: home_page_blocks_cta_banner_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_cta_banner_path_idx ON public.home_page_blocks_cta_banner USING btree (_path);


--
-- Name: home_page_blocks_featured_projects_locales_locale_parent_id_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_featured_projects_locales_locale_parent_id_ ON public.home_page_blocks_featured_projects_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_featured_projects_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_featured_projects_order_idx ON public.home_page_blocks_featured_projects USING btree (_order);


--
-- Name: home_page_blocks_featured_projects_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_featured_projects_parent_id_idx ON public.home_page_blocks_featured_projects USING btree (_parent_id);


--
-- Name: home_page_blocks_featured_projects_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_featured_projects_path_idx ON public.home_page_blocks_featured_projects USING btree (_path);


--
-- Name: home_page_blocks_featured_projects_tabs_locales_locale_paren; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_featured_projects_tabs_locales_locale_paren ON public.home_page_blocks_featured_projects_tabs_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_featured_projects_tabs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_featured_projects_tabs_order_idx ON public.home_page_blocks_featured_projects_tabs USING btree (_order);


--
-- Name: home_page_blocks_featured_projects_tabs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_featured_projects_tabs_parent_id_idx ON public.home_page_blocks_featured_projects_tabs USING btree (_parent_id);


--
-- Name: home_page_blocks_hero_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_background_image_idx ON public.home_page_blocks_hero USING btree (background_image_id);


--
-- Name: home_page_blocks_hero_background_video_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_background_video_idx ON public.home_page_blocks_hero USING btree (background_video_id);


--
-- Name: home_page_blocks_hero_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_hero_image_idx ON public.home_page_blocks_hero USING btree (hero_image_id);


--
-- Name: home_page_blocks_hero_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_hero_locales_locale_parent_id_unique ON public.home_page_blocks_hero_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_hero_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_order_idx ON public.home_page_blocks_hero USING btree (_order);


--
-- Name: home_page_blocks_hero_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_parent_id_idx ON public.home_page_blocks_hero USING btree (_parent_id);


--
-- Name: home_page_blocks_hero_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_path_idx ON public.home_page_blocks_hero USING btree (_path);


--
-- Name: home_page_blocks_hero_stats_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_hero_stats_locales_locale_parent_id_unique ON public.home_page_blocks_hero_stats_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_hero_stats_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_stats_order_idx ON public.home_page_blocks_hero_stats USING btree (_order);


--
-- Name: home_page_blocks_hero_stats_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_stats_parent_id_idx ON public.home_page_blocks_hero_stats USING btree (_parent_id);


--
-- Name: home_page_blocks_hero_trust_partners_logo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_trust_partners_logo_idx ON public.home_page_blocks_hero_trust_partners USING btree (logo_id);


--
-- Name: home_page_blocks_hero_trust_partners_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_trust_partners_order_idx ON public.home_page_blocks_hero_trust_partners USING btree (_order);


--
-- Name: home_page_blocks_hero_trust_partners_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_hero_trust_partners_parent_id_idx ON public.home_page_blocks_hero_trust_partners USING btree (_parent_id);


--
-- Name: home_page_blocks_news_featured_news_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_news_featured_news_idx ON public.home_page_blocks_news USING btree (featured_news_id);


--
-- Name: home_page_blocks_news_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_news_locales_locale_parent_id_unique ON public.home_page_blocks_news_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_news_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_news_order_idx ON public.home_page_blocks_news USING btree (_order);


--
-- Name: home_page_blocks_news_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_news_parent_id_idx ON public.home_page_blocks_news USING btree (_parent_id);


--
-- Name: home_page_blocks_news_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_news_path_idx ON public.home_page_blocks_news USING btree (_path);


--
-- Name: home_page_blocks_partners_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_partners_images_image_idx ON public.home_page_blocks_partners_images USING btree (image_id);


--
-- Name: home_page_blocks_partners_images_locales_locale_parent_id_un; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_partners_images_locales_locale_parent_id_un ON public.home_page_blocks_partners_images_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_partners_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_partners_images_order_idx ON public.home_page_blocks_partners_images USING btree (_order);


--
-- Name: home_page_blocks_partners_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_partners_images_parent_id_idx ON public.home_page_blocks_partners_images USING btree (_parent_id);


--
-- Name: home_page_blocks_partners_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_partners_locales_locale_parent_id_unique ON public.home_page_blocks_partners_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_partners_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_partners_order_idx ON public.home_page_blocks_partners USING btree (_order);


--
-- Name: home_page_blocks_partners_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_partners_parent_id_idx ON public.home_page_blocks_partners USING btree (_parent_id);


--
-- Name: home_page_blocks_partners_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_partners_path_idx ON public.home_page_blocks_partners USING btree (_path);


--
-- Name: home_page_blocks_products_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_products_locales_locale_parent_id_unique ON public.home_page_blocks_products_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_products_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_products_order_idx ON public.home_page_blocks_products USING btree (_order);


--
-- Name: home_page_blocks_products_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_products_parent_id_idx ON public.home_page_blocks_products USING btree (_parent_id);


--
-- Name: home_page_blocks_products_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_products_path_idx ON public.home_page_blocks_products USING btree (_path);


--
-- Name: home_page_blocks_services_cards_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_services_cards_image_idx ON public.home_page_blocks_services_cards USING btree (image_id);


--
-- Name: home_page_blocks_services_cards_locales_locale_parent_id_uni; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_services_cards_locales_locale_parent_id_uni ON public.home_page_blocks_services_cards_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_services_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_services_cards_order_idx ON public.home_page_blocks_services_cards USING btree (_order);


--
-- Name: home_page_blocks_services_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_services_cards_parent_id_idx ON public.home_page_blocks_services_cards USING btree (_parent_id);


--
-- Name: home_page_blocks_services_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX home_page_blocks_services_locales_locale_parent_id_unique ON public.home_page_blocks_services_locales USING btree (_locale, _parent_id);


--
-- Name: home_page_blocks_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_services_order_idx ON public.home_page_blocks_services USING btree (_order);


--
-- Name: home_page_blocks_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_services_parent_id_idx ON public.home_page_blocks_services USING btree (_parent_id);


--
-- Name: home_page_blocks_services_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_blocks_services_path_idx ON public.home_page_blocks_services USING btree (_path);


--
-- Name: home_page_rels_news_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_news_id_idx ON public.home_page_rels USING btree (news_id);


--
-- Name: home_page_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_order_idx ON public.home_page_rels USING btree ("order");


--
-- Name: home_page_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_parent_idx ON public.home_page_rels USING btree (parent_id);


--
-- Name: home_page_rels_partners_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_partners_id_idx ON public.home_page_rels USING btree (partners_id);


--
-- Name: home_page_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_path_idx ON public.home_page_rels USING btree (path);


--
-- Name: home_page_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_products_id_idx ON public.home_page_rels USING btree (products_id);


--
-- Name: home_page_rels_projects_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_page_rels_projects_id_idx ON public.home_page_rels USING btree (projects_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: news__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX news__status_idx ON public.news USING btree (_status);


--
-- Name: news_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX news_created_at_idx ON public.news USING btree (created_at);


--
-- Name: news_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX news_slug_idx ON public.news USING btree (slug);


--
-- Name: news_tags_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX news_tags_order_idx ON public.news_tags USING btree ("order");


--
-- Name: news_tags_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX news_tags_parent_idx ON public.news_tags USING btree (parent_id);


--
-- Name: news_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX news_thumbnail_idx ON public.news USING btree (thumbnail_id);


--
-- Name: news_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX news_updated_at_idx ON public.news USING btree (updated_at);


--
-- Name: pages_blocks_about_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_order_idx ON public.pages_blocks_about_content USING btree (_order);


--
-- Name: pages_blocks_about_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_parent_id_idx ON public.pages_blocks_about_content USING btree (_parent_id);


--
-- Name: pages_blocks_about_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_path_idx ON public.pages_blocks_about_content USING btree (_path);


--
-- Name: pages_blocks_about_content_sections_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_images_image_idx ON public.pages_blocks_about_content_sections_images USING btree (image_id);


--
-- Name: pages_blocks_about_content_sections_images_locales_locale_pa; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_about_content_sections_images_locales_locale_pa ON public.pages_blocks_about_content_sections_images_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_about_content_sections_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_images_order_idx ON public.pages_blocks_about_content_sections_images USING btree (_order);


--
-- Name: pages_blocks_about_content_sections_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_images_parent_id_idx ON public.pages_blocks_about_content_sections_images USING btree (_parent_id);


--
-- Name: pages_blocks_about_content_sections_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_items_image_idx ON public.pages_blocks_about_content_sections_items USING btree (image_id);


--
-- Name: pages_blocks_about_content_sections_items_locales_locale_par; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_about_content_sections_items_locales_locale_par ON public.pages_blocks_about_content_sections_items_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_about_content_sections_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_items_order_idx ON public.pages_blocks_about_content_sections_items USING btree (_order);


--
-- Name: pages_blocks_about_content_sections_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_items_parent_id_idx ON public.pages_blocks_about_content_sections_items USING btree (_parent_id);


--
-- Name: pages_blocks_about_content_sections_locales_locale_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_about_content_sections_locales_locale_parent_id ON public.pages_blocks_about_content_sections_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_about_content_sections_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_order_idx ON public.pages_blocks_about_content_sections USING btree (_order);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales_local; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_about_content_sections_paragraphs_locales_local ON public.pages_blocks_about_content_sections_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_about_content_sections_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_paragraphs_order_idx ON public.pages_blocks_about_content_sections_paragraphs USING btree (_order);


--
-- Name: pages_blocks_about_content_sections_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_paragraphs_parent_id_idx ON public.pages_blocks_about_content_sections_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_about_content_sections_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sections_parent_id_idx ON public.pages_blocks_about_content_sections USING btree (_parent_id);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales_loca; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_about_content_sidebar_groups_items_locales_loca ON public.pages_blocks_about_content_sidebar_groups_items_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sidebar_groups_items_order_idx ON public.pages_blocks_about_content_sidebar_groups_items USING btree (_order);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sidebar_groups_items_parent_id_idx ON public.pages_blocks_about_content_sidebar_groups_items USING btree (_parent_id);


--
-- Name: pages_blocks_about_content_sidebar_groups_locales_locale_par; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_about_content_sidebar_groups_locales_locale_par ON public.pages_blocks_about_content_sidebar_groups_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_about_content_sidebar_groups_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sidebar_groups_order_idx ON public.pages_blocks_about_content_sidebar_groups USING btree (_order);


--
-- Name: pages_blocks_about_content_sidebar_groups_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_content_sidebar_groups_parent_id_idx ON public.pages_blocks_about_content_sidebar_groups USING btree (_parent_id);


--
-- Name: pages_blocks_brand_logos_fallback_brands_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_brand_logos_fallback_brands_order_idx ON public.pages_blocks_brand_logos_fallback_brands USING btree (_order);


--
-- Name: pages_blocks_brand_logos_fallback_brands_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_brand_logos_fallback_brands_parent_id_idx ON public.pages_blocks_brand_logos_fallback_brands USING btree (_parent_id);


--
-- Name: pages_blocks_brand_logos_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_brand_logos_locales_locale_parent_id_unique ON public.pages_blocks_brand_logos_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_brand_logos_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_brand_logos_order_idx ON public.pages_blocks_brand_logos USING btree (_order);


--
-- Name: pages_blocks_brand_logos_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_brand_logos_parent_id_idx ON public.pages_blocks_brand_logos USING btree (_parent_id);


--
-- Name: pages_blocks_brand_logos_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_brand_logos_path_idx ON public.pages_blocks_brand_logos USING btree (_path);


--
-- Name: pages_blocks_content_intro_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_images_image_idx ON public.pages_blocks_content_intro_images USING btree (image_id);


--
-- Name: pages_blocks_content_intro_images_locales_locale_parent_id_u; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_content_intro_images_locales_locale_parent_id_u ON public.pages_blocks_content_intro_images_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_content_intro_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_images_order_idx ON public.pages_blocks_content_intro_images USING btree (_order);


--
-- Name: pages_blocks_content_intro_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_images_parent_id_idx ON public.pages_blocks_content_intro_images USING btree (_parent_id);


--
-- Name: pages_blocks_content_intro_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_content_intro_locales_locale_parent_id_unique ON public.pages_blocks_content_intro_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_content_intro_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_order_idx ON public.pages_blocks_content_intro USING btree (_order);


--
-- Name: pages_blocks_content_intro_paragraphs_locales_locale_parent_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_content_intro_paragraphs_locales_locale_parent_ ON public.pages_blocks_content_intro_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_content_intro_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_paragraphs_order_idx ON public.pages_blocks_content_intro_paragraphs USING btree (_order);


--
-- Name: pages_blocks_content_intro_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_paragraphs_parent_id_idx ON public.pages_blocks_content_intro_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_content_intro_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_parent_id_idx ON public.pages_blocks_content_intro USING btree (_parent_id);


--
-- Name: pages_blocks_content_intro_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_intro_path_idx ON public.pages_blocks_content_intro USING btree (_path);


--
-- Name: pages_blocks_cta_banner_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_cta_banner_locales_locale_parent_id_unique ON public.pages_blocks_cta_banner_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_cta_banner_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_banner_order_idx ON public.pages_blocks_cta_banner USING btree (_order);


--
-- Name: pages_blocks_cta_banner_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_banner_parent_id_idx ON public.pages_blocks_cta_banner USING btree (_parent_id);


--
-- Name: pages_blocks_cta_banner_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_banner_path_idx ON public.pages_blocks_cta_banner USING btree (_path);


--
-- Name: pages_blocks_document_list_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_items_image_idx ON public.pages_blocks_document_list_items USING btree (image_id);


--
-- Name: pages_blocks_document_list_items_locales_locale_parent_id_un; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_document_list_items_locales_locale_parent_id_un ON public.pages_blocks_document_list_items_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_document_list_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_items_order_idx ON public.pages_blocks_document_list_items USING btree (_order);


--
-- Name: pages_blocks_document_list_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_items_parent_id_idx ON public.pages_blocks_document_list_items USING btree (_parent_id);


--
-- Name: pages_blocks_document_list_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_document_list_locales_locale_parent_id_unique ON public.pages_blocks_document_list_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_document_list_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_order_idx ON public.pages_blocks_document_list USING btree (_order);


--
-- Name: pages_blocks_document_list_paragraphs_locales_locale_parent_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_document_list_paragraphs_locales_locale_parent_ ON public.pages_blocks_document_list_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_document_list_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_paragraphs_order_idx ON public.pages_blocks_document_list_paragraphs USING btree (_order);


--
-- Name: pages_blocks_document_list_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_paragraphs_parent_id_idx ON public.pages_blocks_document_list_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_document_list_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_parent_id_idx ON public.pages_blocks_document_list USING btree (_parent_id);


--
-- Name: pages_blocks_document_list_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_document_list_path_idx ON public.pages_blocks_document_list USING btree (_path);


--
-- Name: pages_blocks_feature_cards_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_items_image_idx ON public.pages_blocks_feature_cards_items USING btree (image_id);


--
-- Name: pages_blocks_feature_cards_items_locales_locale_parent_id_un; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_feature_cards_items_locales_locale_parent_id_un ON public.pages_blocks_feature_cards_items_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_feature_cards_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_items_order_idx ON public.pages_blocks_feature_cards_items USING btree (_order);


--
-- Name: pages_blocks_feature_cards_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_items_parent_id_idx ON public.pages_blocks_feature_cards_items USING btree (_parent_id);


--
-- Name: pages_blocks_feature_cards_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_feature_cards_locales_locale_parent_id_unique ON public.pages_blocks_feature_cards_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_feature_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_order_idx ON public.pages_blocks_feature_cards USING btree (_order);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales_locale_parent_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_feature_cards_paragraphs_locales_locale_parent_ ON public.pages_blocks_feature_cards_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_feature_cards_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_paragraphs_order_idx ON public.pages_blocks_feature_cards_paragraphs USING btree (_order);


--
-- Name: pages_blocks_feature_cards_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_paragraphs_parent_id_idx ON public.pages_blocks_feature_cards_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_feature_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_parent_id_idx ON public.pages_blocks_feature_cards USING btree (_parent_id);


--
-- Name: pages_blocks_feature_cards_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_feature_cards_path_idx ON public.pages_blocks_feature_cards USING btree (_path);


--
-- Name: pages_blocks_featured_projects_locales_locale_parent_id_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_featured_projects_locales_locale_parent_id_uniq ON public.pages_blocks_featured_projects_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_featured_projects_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_projects_order_idx ON public.pages_blocks_featured_projects USING btree (_order);


--
-- Name: pages_blocks_featured_projects_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_projects_parent_id_idx ON public.pages_blocks_featured_projects USING btree (_parent_id);


--
-- Name: pages_blocks_featured_projects_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_projects_path_idx ON public.pages_blocks_featured_projects USING btree (_path);


--
-- Name: pages_blocks_featured_projects_tabs_locales_locale_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_featured_projects_tabs_locales_locale_parent_id ON public.pages_blocks_featured_projects_tabs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_featured_projects_tabs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_projects_tabs_order_idx ON public.pages_blocks_featured_projects_tabs USING btree (_order);


--
-- Name: pages_blocks_featured_projects_tabs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_projects_tabs_parent_id_idx ON public.pages_blocks_featured_projects_tabs USING btree (_parent_id);


--
-- Name: pages_blocks_hero_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_background_image_idx ON public.pages_blocks_hero USING btree (background_image_id);


--
-- Name: pages_blocks_hero_background_video_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_background_video_idx ON public.pages_blocks_hero USING btree (background_video_id);


--
-- Name: pages_blocks_hero_banner_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_banner_background_image_idx ON public.pages_blocks_hero_banner USING btree (background_image_id);


--
-- Name: pages_blocks_hero_banner_background_video_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_banner_background_video_idx ON public.pages_blocks_hero_banner USING btree (background_video_id);


--
-- Name: pages_blocks_hero_banner_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_banner_order_idx ON public.pages_blocks_hero_banner USING btree (_order);


--
-- Name: pages_blocks_hero_banner_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_banner_parent_id_idx ON public.pages_blocks_hero_banner USING btree (_parent_id);


--
-- Name: pages_blocks_hero_banner_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_banner_path_idx ON public.pages_blocks_hero_banner USING btree (_path);


--
-- Name: pages_blocks_hero_banner_poster_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_banner_poster_image_idx ON public.pages_blocks_hero_banner USING btree (poster_image_id);


--
-- Name: pages_blocks_hero_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_hero_image_idx ON public.pages_blocks_hero USING btree (hero_image_id);


--
-- Name: pages_blocks_hero_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_hero_locales_locale_parent_id_unique ON public.pages_blocks_hero_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_hero_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_order_idx ON public.pages_blocks_hero USING btree (_order);


--
-- Name: pages_blocks_hero_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_parent_id_idx ON public.pages_blocks_hero USING btree (_parent_id);


--
-- Name: pages_blocks_hero_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_path_idx ON public.pages_blocks_hero USING btree (_path);


--
-- Name: pages_blocks_hero_stats_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_hero_stats_locales_locale_parent_id_unique ON public.pages_blocks_hero_stats_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_hero_stats_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_stats_order_idx ON public.pages_blocks_hero_stats USING btree (_order);


--
-- Name: pages_blocks_hero_stats_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_stats_parent_id_idx ON public.pages_blocks_hero_stats USING btree (_parent_id);


--
-- Name: pages_blocks_hero_trust_partners_logo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_trust_partners_logo_idx ON public.pages_blocks_hero_trust_partners USING btree (logo_id);


--
-- Name: pages_blocks_hero_trust_partners_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_trust_partners_order_idx ON public.pages_blocks_hero_trust_partners USING btree (_order);


--
-- Name: pages_blocks_hero_trust_partners_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_hero_trust_partners_parent_id_idx ON public.pages_blocks_hero_trust_partners USING btree (_parent_id);


--
-- Name: pages_blocks_image_gallery_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_images_image_idx ON public.pages_blocks_image_gallery_images USING btree (image_id);


--
-- Name: pages_blocks_image_gallery_images_locales_locale_parent_id_u; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_image_gallery_images_locales_locale_parent_id_u ON public.pages_blocks_image_gallery_images_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_image_gallery_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_images_order_idx ON public.pages_blocks_image_gallery_images USING btree (_order);


--
-- Name: pages_blocks_image_gallery_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_images_parent_id_idx ON public.pages_blocks_image_gallery_images USING btree (_parent_id);


--
-- Name: pages_blocks_image_gallery_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_image_gallery_locales_locale_parent_id_unique ON public.pages_blocks_image_gallery_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_image_gallery_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_order_idx ON public.pages_blocks_image_gallery USING btree (_order);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales_locale_parent_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_image_gallery_paragraphs_locales_locale_parent_ ON public.pages_blocks_image_gallery_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_image_gallery_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_paragraphs_order_idx ON public.pages_blocks_image_gallery_paragraphs USING btree (_order);


--
-- Name: pages_blocks_image_gallery_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_paragraphs_parent_id_idx ON public.pages_blocks_image_gallery_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_image_gallery_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_parent_id_idx ON public.pages_blocks_image_gallery USING btree (_parent_id);


--
-- Name: pages_blocks_image_gallery_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_path_idx ON public.pages_blocks_image_gallery USING btree (_path);


--
-- Name: pages_blocks_info_grid_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_items_image_idx ON public.pages_blocks_info_grid_items USING btree (image_id);


--
-- Name: pages_blocks_info_grid_items_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_info_grid_items_locales_locale_parent_id_unique ON public.pages_blocks_info_grid_items_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_info_grid_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_items_order_idx ON public.pages_blocks_info_grid_items USING btree (_order);


--
-- Name: pages_blocks_info_grid_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_items_parent_id_idx ON public.pages_blocks_info_grid_items USING btree (_parent_id);


--
-- Name: pages_blocks_info_grid_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_info_grid_locales_locale_parent_id_unique ON public.pages_blocks_info_grid_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_info_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_order_idx ON public.pages_blocks_info_grid USING btree (_order);


--
-- Name: pages_blocks_info_grid_paragraphs_locales_locale_parent_id_u; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_info_grid_paragraphs_locales_locale_parent_id_u ON public.pages_blocks_info_grid_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_info_grid_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_paragraphs_order_idx ON public.pages_blocks_info_grid_paragraphs USING btree (_order);


--
-- Name: pages_blocks_info_grid_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_paragraphs_parent_id_idx ON public.pages_blocks_info_grid_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_info_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_parent_id_idx ON public.pages_blocks_info_grid USING btree (_parent_id);


--
-- Name: pages_blocks_info_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_grid_path_idx ON public.pages_blocks_info_grid USING btree (_path);


--
-- Name: pages_blocks_media_text_split_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_images_image_idx ON public.pages_blocks_media_text_split_images USING btree (image_id);


--
-- Name: pages_blocks_media_text_split_images_locales_locale_parent_i; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_media_text_split_images_locales_locale_parent_i ON public.pages_blocks_media_text_split_images_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_media_text_split_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_images_order_idx ON public.pages_blocks_media_text_split_images USING btree (_order);


--
-- Name: pages_blocks_media_text_split_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_images_parent_id_idx ON public.pages_blocks_media_text_split_images USING btree (_parent_id);


--
-- Name: pages_blocks_media_text_split_locales_locale_parent_id_uniqu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_media_text_split_locales_locale_parent_id_uniqu ON public.pages_blocks_media_text_split_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_media_text_split_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_order_idx ON public.pages_blocks_media_text_split USING btree (_order);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales_locale_pare; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_media_text_split_paragraphs_locales_locale_pare ON public.pages_blocks_media_text_split_paragraphs_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_media_text_split_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_paragraphs_order_idx ON public.pages_blocks_media_text_split_paragraphs USING btree (_order);


--
-- Name: pages_blocks_media_text_split_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_paragraphs_parent_id_idx ON public.pages_blocks_media_text_split_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_media_text_split_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_parent_id_idx ON public.pages_blocks_media_text_split USING btree (_parent_id);


--
-- Name: pages_blocks_media_text_split_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_text_split_path_idx ON public.pages_blocks_media_text_split USING btree (_path);


--
-- Name: pages_blocks_news_featured_news_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_news_featured_news_idx ON public.pages_blocks_news USING btree (featured_news_id);


--
-- Name: pages_blocks_news_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_news_locales_locale_parent_id_unique ON public.pages_blocks_news_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_news_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_news_order_idx ON public.pages_blocks_news USING btree (_order);


--
-- Name: pages_blocks_news_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_news_parent_id_idx ON public.pages_blocks_news USING btree (_parent_id);


--
-- Name: pages_blocks_news_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_news_path_idx ON public.pages_blocks_news USING btree (_path);


--
-- Name: pages_blocks_page_hero_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_page_hero_background_image_idx ON public.pages_blocks_page_hero USING btree (background_image_id);


--
-- Name: pages_blocks_page_hero_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_page_hero_locales_locale_parent_id_unique ON public.pages_blocks_page_hero_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_page_hero_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_page_hero_order_idx ON public.pages_blocks_page_hero USING btree (_order);


--
-- Name: pages_blocks_page_hero_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_page_hero_parent_id_idx ON public.pages_blocks_page_hero USING btree (_parent_id);


--
-- Name: pages_blocks_page_hero_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_page_hero_path_idx ON public.pages_blocks_page_hero USING btree (_path);


--
-- Name: pages_blocks_partners_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_partners_images_image_idx ON public.pages_blocks_partners_images USING btree (image_id);


--
-- Name: pages_blocks_partners_images_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_partners_images_locales_locale_parent_id_unique ON public.pages_blocks_partners_images_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_partners_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_partners_images_order_idx ON public.pages_blocks_partners_images USING btree (_order);


--
-- Name: pages_blocks_partners_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_partners_images_parent_id_idx ON public.pages_blocks_partners_images USING btree (_parent_id);


--
-- Name: pages_blocks_partners_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_partners_locales_locale_parent_id_unique ON public.pages_blocks_partners_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_partners_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_partners_order_idx ON public.pages_blocks_partners USING btree (_order);


--
-- Name: pages_blocks_partners_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_partners_parent_id_idx ON public.pages_blocks_partners USING btree (_parent_id);


--
-- Name: pages_blocks_partners_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_partners_path_idx ON public.pages_blocks_partners USING btree (_path);


--
-- Name: pages_blocks_products_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_products_locales_locale_parent_id_unique ON public.pages_blocks_products_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_products_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_products_order_idx ON public.pages_blocks_products USING btree (_order);


--
-- Name: pages_blocks_products_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_products_parent_id_idx ON public.pages_blocks_products USING btree (_parent_id);


--
-- Name: pages_blocks_products_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_products_path_idx ON public.pages_blocks_products USING btree (_path);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales_local; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_projects_listing_industry_filters_locales_local ON public.pages_blocks_projects_listing_industry_filters_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_projects_listing_industry_filters_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_industry_filters_order_idx ON public.pages_blocks_projects_listing_industry_filters USING btree (_order);


--
-- Name: pages_blocks_projects_listing_industry_filters_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_industry_filters_parent_id_idx ON public.pages_blocks_projects_listing_industry_filters USING btree (_parent_id);


--
-- Name: pages_blocks_projects_listing_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_order_idx ON public.pages_blocks_projects_listing USING btree (_order);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales_loca; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_projects_listing_parent_categories_locales_loca ON public.pages_blocks_projects_listing_parent_categories_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_projects_listing_parent_categories_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_parent_categories_order_idx ON public.pages_blocks_projects_listing_parent_categories USING btree (_order);


--
-- Name: pages_blocks_projects_listing_parent_categories_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_parent_categories_parent_id_idx ON public.pages_blocks_projects_listing_parent_categories USING btree (_parent_id);


--
-- Name: pages_blocks_projects_listing_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_parent_id_idx ON public.pages_blocks_projects_listing USING btree (_parent_id);


--
-- Name: pages_blocks_projects_listing_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_projects_listing_path_idx ON public.pages_blocks_projects_listing USING btree (_path);


--
-- Name: pages_blocks_services_cards_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_cards_image_idx ON public.pages_blocks_services_cards USING btree (image_id);


--
-- Name: pages_blocks_services_cards_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_services_cards_locales_locale_parent_id_unique ON public.pages_blocks_services_cards_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_services_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_cards_order_idx ON public.pages_blocks_services_cards USING btree (_order);


--
-- Name: pages_blocks_services_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_cards_parent_id_idx ON public.pages_blocks_services_cards USING btree (_parent_id);


--
-- Name: pages_blocks_services_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_services_locales_locale_parent_id_unique ON public.pages_blocks_services_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_order_idx ON public.pages_blocks_services USING btree (_order);


--
-- Name: pages_blocks_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_parent_id_idx ON public.pages_blocks_services USING btree (_parent_id);


--
-- Name: pages_blocks_services_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_path_idx ON public.pages_blocks_services USING btree (_path);


--
-- Name: pages_blocks_welcome_intro_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_welcome_intro_images_image_idx ON public.pages_blocks_welcome_intro_images USING btree (image_id);


--
-- Name: pages_blocks_welcome_intro_images_locales_locale_parent_id_u; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_welcome_intro_images_locales_locale_parent_id_u ON public.pages_blocks_welcome_intro_images_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_welcome_intro_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_welcome_intro_images_order_idx ON public.pages_blocks_welcome_intro_images USING btree (_order);


--
-- Name: pages_blocks_welcome_intro_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_welcome_intro_images_parent_id_idx ON public.pages_blocks_welcome_intro_images USING btree (_parent_id);


--
-- Name: pages_blocks_welcome_intro_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_welcome_intro_locales_locale_parent_id_unique ON public.pages_blocks_welcome_intro_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_welcome_intro_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_welcome_intro_order_idx ON public.pages_blocks_welcome_intro USING btree (_order);


--
-- Name: pages_blocks_welcome_intro_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_welcome_intro_parent_id_idx ON public.pages_blocks_welcome_intro USING btree (_parent_id);


--
-- Name: pages_blocks_welcome_intro_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_welcome_intro_path_idx ON public.pages_blocks_welcome_intro USING btree (_path);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_locales_locale_parent_id_unique ON public.pages_locales USING btree (_locale, _parent_id);


--
-- Name: pages_rels_news_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_news_id_idx ON public.pages_rels USING btree (news_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_partners_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_partners_id_idx ON public.pages_rels USING btree (partners_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_products_id_idx ON public.pages_rels USING btree (products_id);


--
-- Name: pages_rels_projects_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_projects_id_idx ON public.pages_rels USING btree (projects_id);


--
-- Name: pages_seo_seo_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_seo_seo_image_idx ON public.pages USING btree (seo_image_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: partners_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX partners_created_at_idx ON public.partners USING btree (created_at);


--
-- Name: partners_logo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX partners_logo_idx ON public.partners USING btree (logo_id);


--
-- Name: partners_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX partners_updated_at_idx ON public.partners USING btree (updated_at);


--
-- Name: payload_kv_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payload_kv_key_idx ON public.payload_kv USING btree (key);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_news_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_news_id_idx ON public.payload_locked_documents_rels USING btree (news_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_partners_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_partners_id_idx ON public.payload_locked_documents_rels USING btree (partners_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_products_id_idx ON public.payload_locked_documents_rels USING btree (products_id);


--
-- Name: payload_locked_documents_rels_projects_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_projects_id_idx ON public.payload_locked_documents_rels USING btree (projects_id);


--
-- Name: payload_locked_documents_rels_services_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_services_id_idx ON public.payload_locked_documents_rels USING btree (services_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: products__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products__status_idx ON public.products USING btree (_status);


--
-- Name: products_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_created_at_idx ON public.products USING btree (created_at);


--
-- Name: products_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX products_locales_locale_parent_id_unique ON public.products_locales USING btree (_locale, _parent_id);


--
-- Name: products_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX products_slug_idx ON public.products USING btree (slug);


--
-- Name: products_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_thumbnail_idx ON public.products USING btree (thumbnail_id);


--
-- Name: products_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_updated_at_idx ON public.products USING btree (updated_at);


--
-- Name: projects__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects__status_idx ON public.projects USING btree (_status);


--
-- Name: projects_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_created_at_idx ON public.projects USING btree (created_at);


--
-- Name: projects_customer_reasons_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX projects_customer_reasons_locales_locale_parent_id_unique ON public.projects_customer_reasons_locales USING btree (_locale, _parent_id);


--
-- Name: projects_customer_reasons_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_customer_reasons_order_idx ON public.projects_customer_reasons USING btree (_order);


--
-- Name: projects_customer_reasons_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_customer_reasons_parent_id_idx ON public.projects_customer_reasons USING btree (_parent_id);


--
-- Name: projects_detail_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_detail_hero_image_idx ON public.projects USING btree (detail_hero_image_id);


--
-- Name: projects_images_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_images_image_idx ON public.projects_images USING btree (image_id);


--
-- Name: projects_images_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_images_order_idx ON public.projects_images USING btree (_order);


--
-- Name: projects_images_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_images_parent_id_idx ON public.projects_images USING btree (_parent_id);


--
-- Name: projects_intro_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_intro_image_idx ON public.projects USING btree (intro_image_id);


--
-- Name: projects_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX projects_locales_locale_parent_id_unique ON public.projects_locales USING btree (_locale, _parent_id);


--
-- Name: projects_result_items_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX projects_result_items_locales_locale_parent_id_unique ON public.projects_result_items_locales USING btree (_locale, _parent_id);


--
-- Name: projects_result_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_result_items_order_idx ON public.projects_result_items USING btree (_order);


--
-- Name: projects_result_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_result_items_parent_id_idx ON public.projects_result_items USING btree (_parent_id);


--
-- Name: projects_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX projects_slug_idx ON public.projects USING btree (slug);


--
-- Name: projects_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_thumbnail_idx ON public.projects USING btree (thumbnail_id);


--
-- Name: projects_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_updated_at_idx ON public.projects USING btree (updated_at);


--
-- Name: services__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services__status_idx ON public.services USING btree (_status);


--
-- Name: services_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services_created_at_idx ON public.services USING btree (created_at);


--
-- Name: services_icon_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services_icon_idx ON public.services USING btree (icon_id);


--
-- Name: services_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX services_slug_idx ON public.services USING btree (slug);


--
-- Name: services_thumbnail_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services_thumbnail_idx ON public.services USING btree (thumbnail_id);


--
-- Name: services_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services_updated_at_idx ON public.services USING btree (updated_at);


--
-- Name: site_settings_footer_columns_links_locales_locale_parent_id_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX site_settings_footer_columns_links_locales_locale_parent_id_ ON public.site_settings_footer_columns_links_locales USING btree (_locale, _parent_id);


--
-- Name: site_settings_footer_columns_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_footer_columns_links_order_idx ON public.site_settings_footer_columns_links USING btree (_order);


--
-- Name: site_settings_footer_columns_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_footer_columns_links_parent_id_idx ON public.site_settings_footer_columns_links USING btree (_parent_id);


--
-- Name: site_settings_footer_columns_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX site_settings_footer_columns_locales_locale_parent_id_unique ON public.site_settings_footer_columns_locales USING btree (_locale, _parent_id);


--
-- Name: site_settings_footer_columns_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_footer_columns_order_idx ON public.site_settings_footer_columns USING btree (_order);


--
-- Name: site_settings_footer_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_footer_columns_parent_id_idx ON public.site_settings_footer_columns USING btree (_parent_id);


--
-- Name: site_settings_footer_footer_logo_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_footer_footer_logo_image_idx ON public.site_settings USING btree (footer_logo_image_id);


--
-- Name: site_settings_header_header_logo_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_header_header_logo_image_idx ON public.site_settings USING btree (header_logo_image_id);


--
-- Name: site_settings_header_nav_items_children_locales_locale_paren; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX site_settings_header_nav_items_children_locales_locale_paren ON public.site_settings_header_nav_items_children_locales USING btree (_locale, _parent_id);


--
-- Name: site_settings_header_nav_items_children_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_header_nav_items_children_order_idx ON public.site_settings_header_nav_items_children USING btree (_order);


--
-- Name: site_settings_header_nav_items_children_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_header_nav_items_children_parent_id_idx ON public.site_settings_header_nav_items_children USING btree (_parent_id);


--
-- Name: site_settings_header_nav_items_locales_locale_parent_id_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX site_settings_header_nav_items_locales_locale_parent_id_uniq ON public.site_settings_header_nav_items_locales USING btree (_locale, _parent_id);


--
-- Name: site_settings_header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_header_nav_items_order_idx ON public.site_settings_header_nav_items USING btree (_order);


--
-- Name: site_settings_header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_header_nav_items_parent_id_idx ON public.site_settings_header_nav_items USING btree (_parent_id);


--
-- Name: site_settings_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX site_settings_locales_locale_parent_id_unique ON public.site_settings_locales USING btree (_locale, _parent_id);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _news_v _news_v_parent_id_news_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v
    ADD CONSTRAINT _news_v_parent_id_news_id_fk FOREIGN KEY (parent_id) REFERENCES public.news(id) ON DELETE SET NULL;


--
-- Name: _news_v_version_tags _news_v_version_tags_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v_version_tags
    ADD CONSTRAINT _news_v_version_tags_parent_fk FOREIGN KEY (parent_id) REFERENCES public._news_v(id) ON DELETE CASCADE;


--
-- Name: _news_v _news_v_version_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._news_v
    ADD CONSTRAINT _news_v_version_thumbnail_id_media_id_fk FOREIGN KEY (version_thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _products_v_locales _products_v_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_locales
    ADD CONSTRAINT _products_v_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v _products_v_parent_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v
    ADD CONSTRAINT _products_v_parent_id_products_id_fk FOREIGN KEY (parent_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: _products_v _products_v_version_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v
    ADD CONSTRAINT _products_v_version_thumbnail_id_media_id_fk FOREIGN KEY (version_thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _projects_v_locales _projects_v_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_locales
    ADD CONSTRAINT _projects_v_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._projects_v(id) ON DELETE CASCADE;


--
-- Name: _projects_v _projects_v_parent_id_projects_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v
    ADD CONSTRAINT _projects_v_parent_id_projects_id_fk FOREIGN KEY (parent_id) REFERENCES public.projects(id) ON DELETE SET NULL;


--
-- Name: _projects_v_version_customer_reasons_locales _projects_v_version_customer_reasons_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_customer_reasons_locales
    ADD CONSTRAINT _projects_v_version_customer_reasons_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._projects_v_version_customer_reasons(id) ON DELETE CASCADE;


--
-- Name: _projects_v_version_customer_reasons _projects_v_version_customer_reasons_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_customer_reasons
    ADD CONSTRAINT _projects_v_version_customer_reasons_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._projects_v(id) ON DELETE CASCADE;


--
-- Name: _projects_v _projects_v_version_detail_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v
    ADD CONSTRAINT _projects_v_version_detail_hero_image_id_media_id_fk FOREIGN KEY (version_detail_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _projects_v_version_images _projects_v_version_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_images
    ADD CONSTRAINT _projects_v_version_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _projects_v_version_images _projects_v_version_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_images
    ADD CONSTRAINT _projects_v_version_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._projects_v(id) ON DELETE CASCADE;


--
-- Name: _projects_v _projects_v_version_intro_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v
    ADD CONSTRAINT _projects_v_version_intro_image_id_media_id_fk FOREIGN KEY (version_intro_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _projects_v_version_result_items_locales _projects_v_version_result_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_result_items_locales
    ADD CONSTRAINT _projects_v_version_result_items_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._projects_v_version_result_items(id) ON DELETE CASCADE;


--
-- Name: _projects_v_version_result_items _projects_v_version_result_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v_version_result_items
    ADD CONSTRAINT _projects_v_version_result_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._projects_v(id) ON DELETE CASCADE;


--
-- Name: _projects_v _projects_v_version_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._projects_v
    ADD CONSTRAINT _projects_v_version_thumbnail_id_media_id_fk FOREIGN KEY (version_thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _services_v _services_v_parent_id_services_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._services_v
    ADD CONSTRAINT _services_v_parent_id_services_id_fk FOREIGN KEY (parent_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: _services_v _services_v_version_icon_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._services_v
    ADD CONSTRAINT _services_v_version_icon_id_media_id_fk FOREIGN KEY (version_icon_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _services_v _services_v_version_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._services_v
    ADD CONSTRAINT _services_v_version_thumbnail_id_media_id_fk FOREIGN KEY (version_thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_brand_logos_fallback_brands home_page_blocks_brand_logos_fallback_brands_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos_fallback_brands
    ADD CONSTRAINT home_page_blocks_brand_logos_fallback_brands_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_brand_logos(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_brand_logos_locales home_page_blocks_brand_logos_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos_locales
    ADD CONSTRAINT home_page_blocks_brand_logos_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_brand_logos(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_brand_logos home_page_blocks_brand_logos_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_brand_logos
    ADD CONSTRAINT home_page_blocks_brand_logos_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_cta_banner_locales home_page_blocks_cta_banner_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_cta_banner_locales
    ADD CONSTRAINT home_page_blocks_cta_banner_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_cta_banner(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_cta_banner home_page_blocks_cta_banner_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_cta_banner
    ADD CONSTRAINT home_page_blocks_cta_banner_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_featured_projects_locales home_page_blocks_featured_projects_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_locales
    ADD CONSTRAINT home_page_blocks_featured_projects_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_featured_projects(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_featured_projects home_page_blocks_featured_projects_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects
    ADD CONSTRAINT home_page_blocks_featured_projects_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_featured_projects_tabs_locales home_page_blocks_featured_projects_tabs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_tabs_locales
    ADD CONSTRAINT home_page_blocks_featured_projects_tabs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_featured_projects_tabs(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_featured_projects_tabs home_page_blocks_featured_projects_tabs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_featured_projects_tabs
    ADD CONSTRAINT home_page_blocks_featured_projects_tabs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_featured_projects(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_hero home_page_blocks_hero_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero
    ADD CONSTRAINT home_page_blocks_hero_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_hero home_page_blocks_hero_background_video_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero
    ADD CONSTRAINT home_page_blocks_hero_background_video_id_media_id_fk FOREIGN KEY (background_video_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_hero home_page_blocks_hero_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero
    ADD CONSTRAINT home_page_blocks_hero_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_hero_locales home_page_blocks_hero_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_locales
    ADD CONSTRAINT home_page_blocks_hero_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_hero(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_hero home_page_blocks_hero_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero
    ADD CONSTRAINT home_page_blocks_hero_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_hero_stats_locales home_page_blocks_hero_stats_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_stats_locales
    ADD CONSTRAINT home_page_blocks_hero_stats_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_hero_stats(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_hero_stats home_page_blocks_hero_stats_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_stats
    ADD CONSTRAINT home_page_blocks_hero_stats_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_hero(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_hero_trust_partners home_page_blocks_hero_trust_partners_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_trust_partners
    ADD CONSTRAINT home_page_blocks_hero_trust_partners_logo_id_media_id_fk FOREIGN KEY (logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_hero_trust_partners home_page_blocks_hero_trust_partners_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_hero_trust_partners
    ADD CONSTRAINT home_page_blocks_hero_trust_partners_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_hero(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_news home_page_blocks_news_featured_news_id_news_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_news
    ADD CONSTRAINT home_page_blocks_news_featured_news_id_news_id_fk FOREIGN KEY (featured_news_id) REFERENCES public.news(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_news_locales home_page_blocks_news_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_news_locales
    ADD CONSTRAINT home_page_blocks_news_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_news(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_news home_page_blocks_news_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_news
    ADD CONSTRAINT home_page_blocks_news_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_partners_images home_page_blocks_partners_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_images
    ADD CONSTRAINT home_page_blocks_partners_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_partners_images_locales home_page_blocks_partners_images_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_images_locales
    ADD CONSTRAINT home_page_blocks_partners_images_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_partners_images(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_partners_images home_page_blocks_partners_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_images
    ADD CONSTRAINT home_page_blocks_partners_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_partners(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_partners_locales home_page_blocks_partners_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners_locales
    ADD CONSTRAINT home_page_blocks_partners_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_partners(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_partners home_page_blocks_partners_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_partners
    ADD CONSTRAINT home_page_blocks_partners_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_products_locales home_page_blocks_products_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_products_locales
    ADD CONSTRAINT home_page_blocks_products_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_products(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_products home_page_blocks_products_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_products
    ADD CONSTRAINT home_page_blocks_products_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_services_cards home_page_blocks_services_cards_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_cards
    ADD CONSTRAINT home_page_blocks_services_cards_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_page_blocks_services_cards_locales home_page_blocks_services_cards_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_cards_locales
    ADD CONSTRAINT home_page_blocks_services_cards_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_services_cards(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_services_cards home_page_blocks_services_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_cards
    ADD CONSTRAINT home_page_blocks_services_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_services(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_services_locales home_page_blocks_services_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services_locales
    ADD CONSTRAINT home_page_blocks_services_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page_blocks_services(id) ON DELETE CASCADE;


--
-- Name: home_page_blocks_services home_page_blocks_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_blocks_services
    ADD CONSTRAINT home_page_blocks_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_rels home_page_rels_news_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels
    ADD CONSTRAINT home_page_rels_news_fk FOREIGN KEY (news_id) REFERENCES public.news(id) ON DELETE CASCADE;


--
-- Name: home_page_rels home_page_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels
    ADD CONSTRAINT home_page_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.home_page(id) ON DELETE CASCADE;


--
-- Name: home_page_rels home_page_rels_partners_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels
    ADD CONSTRAINT home_page_rels_partners_fk FOREIGN KEY (partners_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: home_page_rels home_page_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels
    ADD CONSTRAINT home_page_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: home_page_rels home_page_rels_projects_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_page_rels
    ADD CONSTRAINT home_page_rels_projects_fk FOREIGN KEY (projects_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: news_tags news_tags_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT news_tags_parent_fk FOREIGN KEY (parent_id) REFERENCES public.news(id) ON DELETE CASCADE;


--
-- Name: news news_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_thumbnail_id_media_id_fk FOREIGN KEY (thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_content pages_blocks_about_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content
    ADD CONSTRAINT pages_blocks_about_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_images pages_blocks_about_content_sections_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_images
    ADD CONSTRAINT pages_blocks_about_content_sections_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_content_sections_images_locales pages_blocks_about_content_sections_images_locales_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_images_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_images_locales_parent_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections_images(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_images pages_blocks_about_content_sections_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_images
    ADD CONSTRAINT pages_blocks_about_content_sections_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_items pages_blocks_about_content_sections_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_items
    ADD CONSTRAINT pages_blocks_about_content_sections_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_content_sections_items_locales pages_blocks_about_content_sections_items_locales_parent__fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_items_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_items_locales_parent__fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections_items(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_items pages_blocks_about_content_sections_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_items
    ADD CONSTRAINT pages_blocks_about_content_sections_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_locales pages_blocks_about_content_sections_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales pages_blocks_about_content_sections_paragraphs_locales_pa_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_paragraphs_locales
    ADD CONSTRAINT pages_blocks_about_content_sections_paragraphs_locales_pa_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections_paragraphs pages_blocks_about_content_sections_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections_paragraphs
    ADD CONSTRAINT pages_blocks_about_content_sections_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sections(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sections pages_blocks_about_content_sections_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sections
    ADD CONSTRAINT pages_blocks_about_content_sections_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales pages_blocks_about_content_sidebar_groups_items_locales_p_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_items_locales
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_items_locales_p_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sidebar_groups_items(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sidebar_groups_items pages_blocks_about_content_sidebar_groups_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_items
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sidebar_groups(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sidebar_groups_locales pages_blocks_about_content_sidebar_groups_locales_parent__fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups_locales
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_locales_parent__fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content_sidebar_groups(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_content_sidebar_groups pages_blocks_about_content_sidebar_groups_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_content_sidebar_groups
    ADD CONSTRAINT pages_blocks_about_content_sidebar_groups_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_brand_logos_fallback_brands pages_blocks_brand_logos_fallback_brands_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos_fallback_brands
    ADD CONSTRAINT pages_blocks_brand_logos_fallback_brands_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_brand_logos(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_brand_logos_locales pages_blocks_brand_logos_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos_locales
    ADD CONSTRAINT pages_blocks_brand_logos_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_brand_logos(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_brand_logos pages_blocks_brand_logos_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_brand_logos
    ADD CONSTRAINT pages_blocks_brand_logos_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_intro_images pages_blocks_content_intro_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_images
    ADD CONSTRAINT pages_blocks_content_intro_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_content_intro_images_locales pages_blocks_content_intro_images_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_images_locales
    ADD CONSTRAINT pages_blocks_content_intro_images_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content_intro_images(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_intro_images pages_blocks_content_intro_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_images
    ADD CONSTRAINT pages_blocks_content_intro_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content_intro(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_intro_locales pages_blocks_content_intro_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_locales
    ADD CONSTRAINT pages_blocks_content_intro_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content_intro(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_intro_paragraphs_locales pages_blocks_content_intro_paragraphs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_paragraphs_locales
    ADD CONSTRAINT pages_blocks_content_intro_paragraphs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content_intro_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_intro_paragraphs pages_blocks_content_intro_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro_paragraphs
    ADD CONSTRAINT pages_blocks_content_intro_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content_intro(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_intro pages_blocks_content_intro_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_intro
    ADD CONSTRAINT pages_blocks_content_intro_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_banner_locales pages_blocks_cta_banner_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_banner_locales
    ADD CONSTRAINT pages_blocks_cta_banner_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta_banner(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_banner pages_blocks_cta_banner_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_banner
    ADD CONSTRAINT pages_blocks_cta_banner_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_document_list_items pages_blocks_document_list_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_items
    ADD CONSTRAINT pages_blocks_document_list_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_document_list_items_locales pages_blocks_document_list_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_items_locales
    ADD CONSTRAINT pages_blocks_document_list_items_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_document_list_items(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_document_list_items pages_blocks_document_list_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_items
    ADD CONSTRAINT pages_blocks_document_list_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_document_list(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_document_list_locales pages_blocks_document_list_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_locales
    ADD CONSTRAINT pages_blocks_document_list_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_document_list(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_document_list_paragraphs_locales pages_blocks_document_list_paragraphs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_paragraphs_locales
    ADD CONSTRAINT pages_blocks_document_list_paragraphs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_document_list_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_document_list_paragraphs pages_blocks_document_list_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list_paragraphs
    ADD CONSTRAINT pages_blocks_document_list_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_document_list(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_document_list pages_blocks_document_list_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_document_list
    ADD CONSTRAINT pages_blocks_document_list_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_feature_cards_items pages_blocks_feature_cards_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_items
    ADD CONSTRAINT pages_blocks_feature_cards_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_feature_cards_items_locales pages_blocks_feature_cards_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_items_locales
    ADD CONSTRAINT pages_blocks_feature_cards_items_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_feature_cards_items(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_feature_cards_items pages_blocks_feature_cards_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_items
    ADD CONSTRAINT pages_blocks_feature_cards_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_feature_cards(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_feature_cards_locales pages_blocks_feature_cards_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_locales
    ADD CONSTRAINT pages_blocks_feature_cards_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_feature_cards(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_feature_cards_paragraphs_locales pages_blocks_feature_cards_paragraphs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_paragraphs_locales
    ADD CONSTRAINT pages_blocks_feature_cards_paragraphs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_feature_cards_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_feature_cards_paragraphs pages_blocks_feature_cards_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards_paragraphs
    ADD CONSTRAINT pages_blocks_feature_cards_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_feature_cards(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_feature_cards pages_blocks_feature_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_feature_cards
    ADD CONSTRAINT pages_blocks_feature_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_featured_projects_locales pages_blocks_featured_projects_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_locales
    ADD CONSTRAINT pages_blocks_featured_projects_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_featured_projects(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_featured_projects pages_blocks_featured_projects_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects
    ADD CONSTRAINT pages_blocks_featured_projects_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_featured_projects_tabs_locales pages_blocks_featured_projects_tabs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_tabs_locales
    ADD CONSTRAINT pages_blocks_featured_projects_tabs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_featured_projects_tabs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_featured_projects_tabs pages_blocks_featured_projects_tabs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_projects_tabs
    ADD CONSTRAINT pages_blocks_featured_projects_tabs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_featured_projects(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_hero pages_blocks_hero_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero
    ADD CONSTRAINT pages_blocks_hero_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero pages_blocks_hero_background_video_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero
    ADD CONSTRAINT pages_blocks_hero_background_video_id_media_id_fk FOREIGN KEY (background_video_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero_banner pages_blocks_hero_banner_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_banner
    ADD CONSTRAINT pages_blocks_hero_banner_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero_banner pages_blocks_hero_banner_background_video_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_banner
    ADD CONSTRAINT pages_blocks_hero_banner_background_video_id_media_id_fk FOREIGN KEY (background_video_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero_banner pages_blocks_hero_banner_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_banner
    ADD CONSTRAINT pages_blocks_hero_banner_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_hero_banner pages_blocks_hero_banner_poster_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_banner
    ADD CONSTRAINT pages_blocks_hero_banner_poster_image_id_media_id_fk FOREIGN KEY (poster_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero pages_blocks_hero_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero
    ADD CONSTRAINT pages_blocks_hero_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero_locales pages_blocks_hero_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_locales
    ADD CONSTRAINT pages_blocks_hero_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_hero(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_hero pages_blocks_hero_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero
    ADD CONSTRAINT pages_blocks_hero_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_hero_stats_locales pages_blocks_hero_stats_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_stats_locales
    ADD CONSTRAINT pages_blocks_hero_stats_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_hero_stats(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_hero_stats pages_blocks_hero_stats_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_stats
    ADD CONSTRAINT pages_blocks_hero_stats_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_hero(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_hero_trust_partners pages_blocks_hero_trust_partners_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_trust_partners
    ADD CONSTRAINT pages_blocks_hero_trust_partners_logo_id_media_id_fk FOREIGN KEY (logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_hero_trust_partners pages_blocks_hero_trust_partners_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_hero_trust_partners
    ADD CONSTRAINT pages_blocks_hero_trust_partners_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_hero(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery_images pages_blocks_image_gallery_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_images
    ADD CONSTRAINT pages_blocks_image_gallery_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_image_gallery_images_locales pages_blocks_image_gallery_images_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_images_locales
    ADD CONSTRAINT pages_blocks_image_gallery_images_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_image_gallery_images(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery_images pages_blocks_image_gallery_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_images
    ADD CONSTRAINT pages_blocks_image_gallery_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_image_gallery(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery_locales pages_blocks_image_gallery_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_locales
    ADD CONSTRAINT pages_blocks_image_gallery_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_image_gallery(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery_paragraphs_locales pages_blocks_image_gallery_paragraphs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_paragraphs_locales
    ADD CONSTRAINT pages_blocks_image_gallery_paragraphs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_image_gallery_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery_paragraphs pages_blocks_image_gallery_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_paragraphs
    ADD CONSTRAINT pages_blocks_image_gallery_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_image_gallery(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery pages_blocks_image_gallery_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery
    ADD CONSTRAINT pages_blocks_image_gallery_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_grid_items pages_blocks_info_grid_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_items
    ADD CONSTRAINT pages_blocks_info_grid_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_info_grid_items_locales pages_blocks_info_grid_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_items_locales
    ADD CONSTRAINT pages_blocks_info_grid_items_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_info_grid_items(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_grid_items pages_blocks_info_grid_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_items
    ADD CONSTRAINT pages_blocks_info_grid_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_info_grid(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_grid_locales pages_blocks_info_grid_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_locales
    ADD CONSTRAINT pages_blocks_info_grid_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_info_grid(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_grid_paragraphs_locales pages_blocks_info_grid_paragraphs_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_paragraphs_locales
    ADD CONSTRAINT pages_blocks_info_grid_paragraphs_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_info_grid_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_grid_paragraphs pages_blocks_info_grid_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid_paragraphs
    ADD CONSTRAINT pages_blocks_info_grid_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_info_grid(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_grid pages_blocks_info_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_grid
    ADD CONSTRAINT pages_blocks_info_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_text_split_images pages_blocks_media_text_split_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_images
    ADD CONSTRAINT pages_blocks_media_text_split_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_text_split_images_locales pages_blocks_media_text_split_images_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_images_locales
    ADD CONSTRAINT pages_blocks_media_text_split_images_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_media_text_split_images(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_text_split_images pages_blocks_media_text_split_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_images
    ADD CONSTRAINT pages_blocks_media_text_split_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_media_text_split(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_text_split_locales pages_blocks_media_text_split_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_locales
    ADD CONSTRAINT pages_blocks_media_text_split_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_media_text_split(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_text_split_paragraphs_locales pages_blocks_media_text_split_paragraphs_locales_parent_i_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_paragraphs_locales
    ADD CONSTRAINT pages_blocks_media_text_split_paragraphs_locales_parent_i_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_media_text_split_paragraphs(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_text_split_paragraphs pages_blocks_media_text_split_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split_paragraphs
    ADD CONSTRAINT pages_blocks_media_text_split_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_media_text_split(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_text_split pages_blocks_media_text_split_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_text_split
    ADD CONSTRAINT pages_blocks_media_text_split_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_news pages_blocks_news_featured_news_id_news_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_news
    ADD CONSTRAINT pages_blocks_news_featured_news_id_news_id_fk FOREIGN KEY (featured_news_id) REFERENCES public.news(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_news_locales pages_blocks_news_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_news_locales
    ADD CONSTRAINT pages_blocks_news_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_news(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_news pages_blocks_news_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_news
    ADD CONSTRAINT pages_blocks_news_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_page_hero pages_blocks_page_hero_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_page_hero
    ADD CONSTRAINT pages_blocks_page_hero_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_page_hero_locales pages_blocks_page_hero_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_page_hero_locales
    ADD CONSTRAINT pages_blocks_page_hero_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_page_hero(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_page_hero pages_blocks_page_hero_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_page_hero
    ADD CONSTRAINT pages_blocks_page_hero_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_partners_images pages_blocks_partners_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_images
    ADD CONSTRAINT pages_blocks_partners_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_partners_images_locales pages_blocks_partners_images_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_images_locales
    ADD CONSTRAINT pages_blocks_partners_images_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_partners_images(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_partners_images pages_blocks_partners_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_images
    ADD CONSTRAINT pages_blocks_partners_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_partners(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_partners_locales pages_blocks_partners_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners_locales
    ADD CONSTRAINT pages_blocks_partners_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_partners(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_partners pages_blocks_partners_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_partners
    ADD CONSTRAINT pages_blocks_partners_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_products_locales pages_blocks_products_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_products_locales
    ADD CONSTRAINT pages_blocks_products_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_products(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_products pages_blocks_products_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_products
    ADD CONSTRAINT pages_blocks_products_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_projects_listing_industry_filters_locales pages_blocks_projects_listing_industry_filters_locales_pa_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_industry_filters_locales
    ADD CONSTRAINT pages_blocks_projects_listing_industry_filters_locales_pa_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_projects_listing_industry_filters(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_projects_listing_industry_filters pages_blocks_projects_listing_industry_filters_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_industry_filters
    ADD CONSTRAINT pages_blocks_projects_listing_industry_filters_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_projects_listing(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_projects_listing_parent_categories_locales pages_blocks_projects_listing_parent_categories_locales_p_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_parent_categories_locales
    ADD CONSTRAINT pages_blocks_projects_listing_parent_categories_locales_p_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_projects_listing_parent_categories(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_projects_listing_parent_categories pages_blocks_projects_listing_parent_categories_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing_parent_categories
    ADD CONSTRAINT pages_blocks_projects_listing_parent_categories_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_projects_listing(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_projects_listing pages_blocks_projects_listing_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_projects_listing
    ADD CONSTRAINT pages_blocks_projects_listing_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services_cards pages_blocks_services_cards_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_cards
    ADD CONSTRAINT pages_blocks_services_cards_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_services_cards_locales pages_blocks_services_cards_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_cards_locales
    ADD CONSTRAINT pages_blocks_services_cards_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_services_cards(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services_cards pages_blocks_services_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_cards
    ADD CONSTRAINT pages_blocks_services_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_services(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services_locales pages_blocks_services_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_locales
    ADD CONSTRAINT pages_blocks_services_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_services(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services pages_blocks_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_welcome_intro_images pages_blocks_welcome_intro_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_images
    ADD CONSTRAINT pages_blocks_welcome_intro_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_welcome_intro_images_locales pages_blocks_welcome_intro_images_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_images_locales
    ADD CONSTRAINT pages_blocks_welcome_intro_images_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_welcome_intro_images(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_welcome_intro_images pages_blocks_welcome_intro_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_images
    ADD CONSTRAINT pages_blocks_welcome_intro_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_welcome_intro(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_welcome_intro_locales pages_blocks_welcome_intro_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro_locales
    ADD CONSTRAINT pages_blocks_welcome_intro_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_welcome_intro(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_welcome_intro pages_blocks_welcome_intro_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_welcome_intro
    ADD CONSTRAINT pages_blocks_welcome_intro_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_locales pages_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales
    ADD CONSTRAINT pages_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_news_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_news_fk FOREIGN KEY (news_id) REFERENCES public.news(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_partners_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_partners_fk FOREIGN KEY (partners_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_projects_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_projects_fk FOREIGN KEY (projects_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: pages pages_seo_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_seo_image_id_media_id_fk FOREIGN KEY (seo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: partners partners_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_logo_id_media_id_fk FOREIGN KEY (logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_news_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_news_fk FOREIGN KEY (news_id) REFERENCES public.news(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_partners_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_partners_fk FOREIGN KEY (partners_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_projects_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_projects_fk FOREIGN KEY (projects_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_services_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_services_fk FOREIGN KEY (services_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: products_locales products_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_locales
    ADD CONSTRAINT products_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products products_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_thumbnail_id_media_id_fk FOREIGN KEY (thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: projects_customer_reasons_locales projects_customer_reasons_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_customer_reasons_locales
    ADD CONSTRAINT projects_customer_reasons_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.projects_customer_reasons(id) ON DELETE CASCADE;


--
-- Name: projects_customer_reasons projects_customer_reasons_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_customer_reasons
    ADD CONSTRAINT projects_customer_reasons_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects projects_detail_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_detail_hero_image_id_media_id_fk FOREIGN KEY (detail_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: projects_images projects_images_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_images
    ADD CONSTRAINT projects_images_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: projects_images projects_images_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_images
    ADD CONSTRAINT projects_images_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects projects_intro_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_intro_image_id_media_id_fk FOREIGN KEY (intro_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: projects_locales projects_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_locales
    ADD CONSTRAINT projects_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects_result_items_locales projects_result_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_result_items_locales
    ADD CONSTRAINT projects_result_items_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.projects_result_items(id) ON DELETE CASCADE;


--
-- Name: projects_result_items projects_result_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_result_items
    ADD CONSTRAINT projects_result_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects projects_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_thumbnail_id_media_id_fk FOREIGN KEY (thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: services services_icon_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_icon_id_media_id_fk FOREIGN KEY (icon_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: services services_thumbnail_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_thumbnail_id_media_id_fk FOREIGN KEY (thumbnail_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: site_settings_footer_columns_links_locales site_settings_footer_columns_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_links_locales
    ADD CONSTRAINT site_settings_footer_columns_links_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings_footer_columns_links(id) ON DELETE CASCADE;


--
-- Name: site_settings_footer_columns_links site_settings_footer_columns_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_links
    ADD CONSTRAINT site_settings_footer_columns_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings_footer_columns(id) ON DELETE CASCADE;


--
-- Name: site_settings_footer_columns_locales site_settings_footer_columns_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns_locales
    ADD CONSTRAINT site_settings_footer_columns_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings_footer_columns(id) ON DELETE CASCADE;


--
-- Name: site_settings_footer_columns site_settings_footer_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_footer_columns
    ADD CONSTRAINT site_settings_footer_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings(id) ON DELETE CASCADE;


--
-- Name: site_settings site_settings_footer_logo_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_footer_logo_image_id_media_id_fk FOREIGN KEY (footer_logo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: site_settings site_settings_header_logo_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_header_logo_image_id_media_id_fk FOREIGN KEY (header_logo_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: site_settings_header_nav_items_children_locales site_settings_header_nav_items_children_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_children_locales
    ADD CONSTRAINT site_settings_header_nav_items_children_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings_header_nav_items_children(id) ON DELETE CASCADE;


--
-- Name: site_settings_header_nav_items_children site_settings_header_nav_items_children_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_children
    ADD CONSTRAINT site_settings_header_nav_items_children_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings_header_nav_items(id) ON DELETE CASCADE;


--
-- Name: site_settings_header_nav_items_locales site_settings_header_nav_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items_locales
    ADD CONSTRAINT site_settings_header_nav_items_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings_header_nav_items(id) ON DELETE CASCADE;


--
-- Name: site_settings_header_nav_items site_settings_header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_header_nav_items
    ADD CONSTRAINT site_settings_header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings(id) ON DELETE CASCADE;


--
-- Name: site_settings_locales site_settings_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_locales
    ADD CONSTRAINT site_settings_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings(id) ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

