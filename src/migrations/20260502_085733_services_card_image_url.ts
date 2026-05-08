import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_services_cards" ADD COLUMN "image_u_r_l" varchar;
  ALTER TABLE "home_page_blocks_services_cards" ADD COLUMN "image_u_r_l" varchar;`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_services_cards" DROP COLUMN "image_u_r_l";
  ALTER TABLE "home_page_blocks_services_cards" DROP COLUMN "image_u_r_l";`)
}
