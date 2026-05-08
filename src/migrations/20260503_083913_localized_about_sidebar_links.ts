import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_content_intro_image_position" AS ENUM('left', 'right');
  CREATE TYPE "public"."enum_pages_blocks_feature_cards_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_image_gallery_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_info_grid_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_media_text_split_image_position" AS ENUM('left', 'right');
  CREATE TABLE "pages_blocks_content_intro_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_content_intro_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_content_intro_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_content_intro_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_content_intro" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_position" "enum_pages_blocks_content_intro_image_position" DEFAULT 'left',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_content_intro_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_feature_cards_items_locales" (
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"columns" "enum_pages_blocks_feature_cards_columns" DEFAULT '3',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_feature_cards_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_image_gallery_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"columns" "enum_pages_blocks_image_gallery_columns" DEFAULT '3',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_image_gallery_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_info_grid_items_locales" (
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"columns" "enum_pages_blocks_info_grid_columns" DEFAULT '3',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_info_grid_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_media_text_split_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_position" "enum_pages_blocks_media_text_split_image_position" DEFAULT 'left',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_media_text_split_locales" (
  	"title" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_document_list_items_locales" (
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_document_list_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items_locales" ADD COLUMN "href" varchar NOT NULL;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_locales" ADD COLUMN "title_href" varchar;
  ALTER TABLE "pages_blocks_content_intro_paragraphs" ADD CONSTRAINT "pages_blocks_content_intro_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_paragraphs_locales" ADD CONSTRAINT "pages_blocks_content_intro_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_images" ADD CONSTRAINT "pages_blocks_content_intro_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_images" ADD CONSTRAINT "pages_blocks_content_intro_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_images_locales" ADD CONSTRAINT "pages_blocks_content_intro_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro" ADD CONSTRAINT "pages_blocks_content_intro_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_locales" ADD CONSTRAINT "pages_blocks_content_intro_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_paragraphs" ADD CONSTRAINT "pages_blocks_feature_cards_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_paragraphs_locales" ADD CONSTRAINT "pages_blocks_feature_cards_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_items" ADD CONSTRAINT "pages_blocks_feature_cards_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_items" ADD CONSTRAINT "pages_blocks_feature_cards_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_items_locales" ADD CONSTRAINT "pages_blocks_feature_cards_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards" ADD CONSTRAINT "pages_blocks_feature_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_locales" ADD CONSTRAINT "pages_blocks_feature_cards_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_paragraphs" ADD CONSTRAINT "pages_blocks_image_gallery_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_paragraphs_locales" ADD CONSTRAINT "pages_blocks_image_gallery_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_images" ADD CONSTRAINT "pages_blocks_image_gallery_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_images" ADD CONSTRAINT "pages_blocks_image_gallery_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_images_locales" ADD CONSTRAINT "pages_blocks_image_gallery_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery" ADD CONSTRAINT "pages_blocks_image_gallery_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_locales" ADD CONSTRAINT "pages_blocks_image_gallery_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_paragraphs" ADD CONSTRAINT "pages_blocks_info_grid_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_paragraphs_locales" ADD CONSTRAINT "pages_blocks_info_grid_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_items" ADD CONSTRAINT "pages_blocks_info_grid_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_items" ADD CONSTRAINT "pages_blocks_info_grid_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_items_locales" ADD CONSTRAINT "pages_blocks_info_grid_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid" ADD CONSTRAINT "pages_blocks_info_grid_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_locales" ADD CONSTRAINT "pages_blocks_info_grid_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_paragraphs" ADD CONSTRAINT "pages_blocks_media_text_split_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_paragraphs_locales" ADD CONSTRAINT "pages_blocks_media_text_split_paragraphs_locales_parent_i_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_images" ADD CONSTRAINT "pages_blocks_media_text_split_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_images" ADD CONSTRAINT "pages_blocks_media_text_split_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_images_locales" ADD CONSTRAINT "pages_blocks_media_text_split_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split" ADD CONSTRAINT "pages_blocks_media_text_split_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_locales" ADD CONSTRAINT "pages_blocks_media_text_split_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_paragraphs" ADD CONSTRAINT "pages_blocks_document_list_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_paragraphs_locales" ADD CONSTRAINT "pages_blocks_document_list_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_items" ADD CONSTRAINT "pages_blocks_document_list_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_items" ADD CONSTRAINT "pages_blocks_document_list_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_items_locales" ADD CONSTRAINT "pages_blocks_document_list_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list" ADD CONSTRAINT "pages_blocks_document_list_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_locales" ADD CONSTRAINT "pages_blocks_document_list_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_content_intro_paragraphs_order_idx" ON "pages_blocks_content_intro_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_content_intro_paragraphs_parent_id_idx" ON "pages_blocks_content_intro_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_content_intro_paragraphs_locales_locale_parent_" ON "pages_blocks_content_intro_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_content_intro_images_order_idx" ON "pages_blocks_content_intro_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_content_intro_images_parent_id_idx" ON "pages_blocks_content_intro_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_content_intro_images_image_idx" ON "pages_blocks_content_intro_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_content_intro_images_locales_locale_parent_id_u" ON "pages_blocks_content_intro_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_content_intro_order_idx" ON "pages_blocks_content_intro" USING btree ("_order");
  CREATE INDEX "pages_blocks_content_intro_parent_id_idx" ON "pages_blocks_content_intro" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_content_intro_path_idx" ON "pages_blocks_content_intro" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_content_intro_locales_locale_parent_id_unique" ON "pages_blocks_content_intro_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_paragraphs_order_idx" ON "pages_blocks_feature_cards_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_feature_cards_paragraphs_parent_id_idx" ON "pages_blocks_feature_cards_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_feature_cards_paragraphs_locales_locale_parent_" ON "pages_blocks_feature_cards_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_items_order_idx" ON "pages_blocks_feature_cards_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_feature_cards_items_parent_id_idx" ON "pages_blocks_feature_cards_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_items_image_idx" ON "pages_blocks_feature_cards_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_feature_cards_items_locales_locale_parent_id_un" ON "pages_blocks_feature_cards_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_order_idx" ON "pages_blocks_feature_cards" USING btree ("_order");
  CREATE INDEX "pages_blocks_feature_cards_parent_id_idx" ON "pages_blocks_feature_cards" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_path_idx" ON "pages_blocks_feature_cards" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_feature_cards_locales_locale_parent_id_unique" ON "pages_blocks_feature_cards_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_paragraphs_order_idx" ON "pages_blocks_image_gallery_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_paragraphs_parent_id_idx" ON "pages_blocks_image_gallery_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_image_gallery_paragraphs_locales_locale_parent_" ON "pages_blocks_image_gallery_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_images_order_idx" ON "pages_blocks_image_gallery_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_images_parent_id_idx" ON "pages_blocks_image_gallery_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_images_image_idx" ON "pages_blocks_image_gallery_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_image_gallery_images_locales_locale_parent_id_u" ON "pages_blocks_image_gallery_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_order_idx" ON "pages_blocks_image_gallery" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_parent_id_idx" ON "pages_blocks_image_gallery" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_path_idx" ON "pages_blocks_image_gallery" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_image_gallery_locales_locale_parent_id_unique" ON "pages_blocks_image_gallery_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_info_grid_paragraphs_order_idx" ON "pages_blocks_info_grid_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_info_grid_paragraphs_parent_id_idx" ON "pages_blocks_info_grid_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_info_grid_paragraphs_locales_locale_parent_id_u" ON "pages_blocks_info_grid_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_info_grid_items_order_idx" ON "pages_blocks_info_grid_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_info_grid_items_parent_id_idx" ON "pages_blocks_info_grid_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_info_grid_items_image_idx" ON "pages_blocks_info_grid_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_info_grid_items_locales_locale_parent_id_unique" ON "pages_blocks_info_grid_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_info_grid_order_idx" ON "pages_blocks_info_grid" USING btree ("_order");
  CREATE INDEX "pages_blocks_info_grid_parent_id_idx" ON "pages_blocks_info_grid" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_info_grid_path_idx" ON "pages_blocks_info_grid" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_info_grid_locales_locale_parent_id_unique" ON "pages_blocks_info_grid_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_paragraphs_order_idx" ON "pages_blocks_media_text_split_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_media_text_split_paragraphs_parent_id_idx" ON "pages_blocks_media_text_split_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_media_text_split_paragraphs_locales_locale_pare" ON "pages_blocks_media_text_split_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_images_order_idx" ON "pages_blocks_media_text_split_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_media_text_split_images_parent_id_idx" ON "pages_blocks_media_text_split_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_images_image_idx" ON "pages_blocks_media_text_split_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_media_text_split_images_locales_locale_parent_i" ON "pages_blocks_media_text_split_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_order_idx" ON "pages_blocks_media_text_split" USING btree ("_order");
  CREATE INDEX "pages_blocks_media_text_split_parent_id_idx" ON "pages_blocks_media_text_split" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_path_idx" ON "pages_blocks_media_text_split" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_media_text_split_locales_locale_parent_id_uniqu" ON "pages_blocks_media_text_split_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_document_list_paragraphs_order_idx" ON "pages_blocks_document_list_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_document_list_paragraphs_parent_id_idx" ON "pages_blocks_document_list_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_document_list_paragraphs_locales_locale_parent_" ON "pages_blocks_document_list_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_document_list_items_order_idx" ON "pages_blocks_document_list_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_document_list_items_parent_id_idx" ON "pages_blocks_document_list_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_document_list_items_image_idx" ON "pages_blocks_document_list_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_document_list_items_locales_locale_parent_id_un" ON "pages_blocks_document_list_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_document_list_order_idx" ON "pages_blocks_document_list" USING btree ("_order");
  CREATE INDEX "pages_blocks_document_list_parent_id_idx" ON "pages_blocks_document_list" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_document_list_path_idx" ON "pages_blocks_document_list" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_document_list_locales_locale_parent_id_unique" ON "pages_blocks_document_list_locales" USING btree ("_locale","_parent_id");
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items" DROP COLUMN "href";
  ALTER TABLE "pages_blocks_about_content_sidebar_groups" DROP COLUMN "title_href";`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "pages_blocks_content_intro_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_content_intro_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_content_intro_images" CASCADE;
  DROP TABLE "pages_blocks_content_intro_images_locales" CASCADE;
  DROP TABLE "pages_blocks_content_intro" CASCADE;
  DROP TABLE "pages_blocks_content_intro_locales" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_items" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_items_locales" CASCADE;
  DROP TABLE "pages_blocks_feature_cards" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_locales" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_images" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_images_locales" CASCADE;
  DROP TABLE "pages_blocks_image_gallery" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_locales" CASCADE;
  DROP TABLE "pages_blocks_info_grid_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_info_grid_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_info_grid_items" CASCADE;
  DROP TABLE "pages_blocks_info_grid_items_locales" CASCADE;
  DROP TABLE "pages_blocks_info_grid" CASCADE;
  DROP TABLE "pages_blocks_info_grid_locales" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_images" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_images_locales" CASCADE;
  DROP TABLE "pages_blocks_media_text_split" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_locales" CASCADE;
  DROP TABLE "pages_blocks_document_list_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_document_list_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_document_list_items" CASCADE;
  DROP TABLE "pages_blocks_document_list_items_locales" CASCADE;
  DROP TABLE "pages_blocks_document_list" CASCADE;
  DROP TABLE "pages_blocks_document_list_locales" CASCADE;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items" ADD COLUMN "href" varchar NOT NULL;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups" ADD COLUMN "title_href" varchar;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items_locales" DROP COLUMN "href";
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_locales" DROP COLUMN "title_href";
  DROP TYPE "public"."enum_pages_blocks_content_intro_image_position";
  DROP TYPE "public"."enum_pages_blocks_feature_cards_columns";
  DROP TYPE "public"."enum_pages_blocks_image_gallery_columns";
  DROP TYPE "public"."enum_pages_blocks_info_grid_columns";
  DROP TYPE "public"."enum_pages_blocks_media_text_split_image_position";`)
}
