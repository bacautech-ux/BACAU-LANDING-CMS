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

