import * as migration_20260502_025525_refactor_pages_layout_blocks from './20260502_025525_refactor_pages_layout_blocks';
import * as migration_20260502_084017_hero_stats_fields from './20260502_084017_hero_stats_fields';
import * as migration_20260502_085156_services_cards_fields from './20260502_085156_services_cards_fields';
import * as migration_20260502_085733_services_card_image_url from './20260502_085733_services_card_image_url';
import * as migration_20260502_090259_news_block_config_fields from './20260502_090259_news_block_config_fields';
import * as migration_20260502_092728_featured_projects_block_config from './20260502_092728_featured_projects_block_config';
import * as migration_20260502_093352_relationship_title_labels from './20260502_093352_relationship_title_labels';
import * as migration_20260502_141617_cms_config_partners_products_cta_brands from './20260502_141617_cms_config_partners_products_cta_brands';
import * as migration_20260502_142730_cms_config_site_settings from './20260502_142730_cms_config_site_settings';
import * as migration_20260502_152841_cms_core_pages_about_projects from './20260502_152841_cms_core_pages_about_projects';
import * as migration_20260503_003916_about_content_layout_variants from './20260503_003916_about_content_layout_variants';
import * as migration_20260503_083913_localized_about_sidebar_links from './20260503_083913_localized_about_sidebar_links';

export const migrations = [
  {
    up: migration_20260502_025525_refactor_pages_layout_blocks.up,
    down: migration_20260502_025525_refactor_pages_layout_blocks.down,
    name: '20260502_025525_refactor_pages_layout_blocks',
  },
  {
    up: migration_20260502_084017_hero_stats_fields.up,
    down: migration_20260502_084017_hero_stats_fields.down,
    name: '20260502_084017_hero_stats_fields',
  },
  {
    up: migration_20260502_085156_services_cards_fields.up,
    down: migration_20260502_085156_services_cards_fields.down,
    name: '20260502_085156_services_cards_fields',
  },
  {
    up: migration_20260502_085733_services_card_image_url.up,
    down: migration_20260502_085733_services_card_image_url.down,
    name: '20260502_085733_services_card_image_url',
  },
  {
    up: migration_20260502_090259_news_block_config_fields.up,
    down: migration_20260502_090259_news_block_config_fields.down,
    name: '20260502_090259_news_block_config_fields',
  },
  {
    up: migration_20260502_092728_featured_projects_block_config.up,
    down: migration_20260502_092728_featured_projects_block_config.down,
    name: '20260502_092728_featured_projects_block_config',
  },
  {
    up: migration_20260502_093352_relationship_title_labels.up,
    down: migration_20260502_093352_relationship_title_labels.down,
    name: '20260502_093352_relationship_title_labels',
  },
  {
    up: migration_20260502_141617_cms_config_partners_products_cta_brands.up,
    down: migration_20260502_141617_cms_config_partners_products_cta_brands.down,
    name: '20260502_141617_cms_config_partners_products_cta_brands',
  },
  {
    up: migration_20260502_142730_cms_config_site_settings.up,
    down: migration_20260502_142730_cms_config_site_settings.down,
    name: '20260502_142730_cms_config_site_settings',
  },
  {
    up: migration_20260502_152841_cms_core_pages_about_projects.up,
    down: migration_20260502_152841_cms_core_pages_about_projects.down,
    name: '20260502_152841_cms_core_pages_about_projects',
  },
  {
    up: migration_20260503_003916_about_content_layout_variants.up,
    down: migration_20260503_003916_about_content_layout_variants.down,
    name: '20260503_003916_about_content_layout_variants',
  },
  {
    up: migration_20260503_083913_localized_about_sidebar_links.up,
    down: migration_20260503_083913_localized_about_sidebar_links.down,
    name: '20260503_083913_localized_about_sidebar_links'
  },
];
