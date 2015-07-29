-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 29 Juillet 2015 à 17:14
-- Version du serveur: 5.5.41
-- Version de PHP: 5.4.41-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `wp_ergo`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_album`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_album_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(64) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_image`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_image_comment`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_image_rate`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_image_tag`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_option`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `mosaic` varchar(255) NOT NULL,
  `resizable_mosaic` tinyint(1) NOT NULL,
  `mosaic_total_width` int(4) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(8) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(16) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(16) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(16) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(16) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `watermark_type` varchar(8) NOT NULL,
  `watermark_position` varchar(16) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(16) NOT NULL,
  `watermark_color` varchar(8) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(4) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL,
  `enable_ML_import` tinyint(1) NOT NULL,
  `showthumbs_name` tinyint(1) NOT NULL,
  `show_album_name` tinyint(1) NOT NULL,
  `show_image_counts` tinyint(1) NOT NULL,
  `upload_img_width` int(4) NOT NULL,
  `upload_img_height` int(4) NOT NULL,
  `play_icon` tinyint(1) NOT NULL,
  `show_masonry_thumb_description` tinyint(1) NOT NULL,
  `slideshow_title_full_width` tinyint(1) NOT NULL,
  `popup_info_full_width` tinyint(1) NOT NULL,
  `show_sort_images` tinyint(1) NOT NULL,
  `autoupdate_interval` int(4) NOT NULL,
  `instagram_client_id` varchar(40) NOT NULL,
  `description_tb` tinyint(1) NOT NULL,
  `enable_seo` tinyint(1) NOT NULL,
  `autohide_lightbox_navigation` tinyint(1) NOT NULL,
  `autohide_slideshow_navigation` tinyint(1) NOT NULL,
  `read_metadata` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_bwg_option`
--

INSERT INTO `wp_bwg_option` (`id`, `images_directory`, `masonry`, `mosaic`, `resizable_mosaic`, `mosaic_total_width`, `image_column_number`, `images_per_page`, `thumb_width`, `thumb_height`, `upload_thumb_width`, `upload_thumb_height`, `image_enable_page`, `image_title_show_hover`, `album_column_number`, `albums_per_page`, `album_title_show_hover`, `album_thumb_width`, `album_thumb_height`, `album_enable_page`, `extended_album_height`, `extended_album_description_enable`, `image_browser_width`, `image_browser_title_enable`, `image_browser_description_enable`, `blog_style_width`, `blog_style_title_enable`, `blog_style_images_per_page`, `blog_style_enable_page`, `slideshow_type`, `slideshow_interval`, `slideshow_width`, `slideshow_height`, `slideshow_enable_autoplay`, `slideshow_enable_shuffle`, `slideshow_enable_ctrl`, `slideshow_enable_filmstrip`, `slideshow_filmstrip_height`, `slideshow_enable_title`, `slideshow_title_position`, `slideshow_enable_description`, `slideshow_description_position`, `slideshow_enable_music`, `slideshow_audio_url`, `popup_width`, `popup_height`, `popup_type`, `popup_interval`, `popup_enable_filmstrip`, `popup_filmstrip_height`, `popup_enable_ctrl_btn`, `popup_enable_fullscreen`, `popup_enable_info`, `popup_info_always_show`, `popup_enable_rate`, `popup_enable_comment`, `popup_enable_email`, `popup_enable_captcha`, `popup_enable_download`, `popup_enable_fullsize_image`, `popup_enable_facebook`, `popup_enable_twitter`, `popup_enable_google`, `watermark_type`, `watermark_position`, `watermark_width`, `watermark_height`, `watermark_url`, `watermark_text`, `watermark_link`, `watermark_font_size`, `watermark_font`, `watermark_color`, `watermark_opacity`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `image_right_click`, `popup_fullscreen`, `gallery_role`, `album_role`, `image_role`, `popup_autoplay`, `album_view_type`, `popup_enable_pinterest`, `popup_enable_tumblr`, `show_search_box`, `search_box_width`, `preload_images`, `preload_images_count`, `thumb_click_action`, `thumb_link_target`, `comment_moderation`, `popup_hit_counter`, `enable_ML_import`, `showthumbs_name`, `show_album_name`, `show_image_counts`, `upload_img_width`, `upload_img_height`, `play_icon`, `show_masonry_thumb_description`, `slideshow_title_full_width`, `popup_info_full_width`, `show_sort_images`, `autoupdate_interval`, `instagram_client_id`, `description_tb`, `enable_seo`, `autohide_lightbox_navigation`, `autohide_slideshow_navigation`, `read_metadata`) VALUES
(1, 'wp-content/uploads', 'vertical', 'vertical', 0, 100, 5, 30, 180, 90, 300, 300, 1, 'none', 5, 30, 'hover', 120, 90, 1, 150, 1, 800, 1, 1, 800, 1, 5, 1, 'fade', 5, 800, 500, 0, 0, 1, 1, 90, 0, 'top-right', 0, 'bottom-right', 0, '', 800, 500, 'fade', 5, 1, 70, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 'none', 'bottom-left', 90, 90, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 'http://web-dorado.com', 20, 'arial', 'FFFFFF', 30, 'none', 'middle-center', 15, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 20, 'arial', 'FFFFFF', 30, 0, 0, 0, 0, 0, 0, 'thumbnail', 0, 0, 0, 180, 0, 10, 'open_lightbox', 1, 0, 0, 0, 0, 0, 0, 1200, 1200, 1, 0, 0, 0, 0, 30, '0', 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_shortcode`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_bwg_theme`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `thumb_margin` int(4) NOT NULL,
  `thumb_padding` int(4) NOT NULL,
  `thumb_border_radius` varchar(32) NOT NULL,
  `thumb_border_width` int(4) NOT NULL,
  `thumb_border_style` varchar(16) NOT NULL,
  `thumb_border_color` varchar(8) NOT NULL,
  `thumb_bg_color` varchar(8) NOT NULL,
  `thumbs_bg_color` varchar(8) NOT NULL,
  `thumb_bg_transparent` int(4) NOT NULL,
  `thumb_box_shadow` varchar(32) NOT NULL,
  `thumb_transparent` int(4) NOT NULL,
  `thumb_align` varchar(8) NOT NULL,
  `thumb_hover_effect` varchar(128) NOT NULL,
  `thumb_hover_effect_value` varchar(128) NOT NULL,
  `thumb_transition` tinyint(1) NOT NULL,
  `thumb_title_font_color` varchar(8) NOT NULL,
  `thumb_title_font_style` varchar(16) NOT NULL,
  `thumb_title_pos` varchar(8) NOT NULL,
  `thumb_title_font_size` int(4) NOT NULL,
  `thumb_title_font_weight` varchar(8) NOT NULL,
  `thumb_title_margin` varchar(32) NOT NULL,
  `thumb_title_shadow` varchar(32) NOT NULL,
  `page_nav_position` varchar(8) NOT NULL,
  `page_nav_align` varchar(8) NOT NULL,
  `page_nav_number` tinyint(1) NOT NULL,
  `page_nav_font_size` int(4) NOT NULL,
  `page_nav_font_style` varchar(32) NOT NULL,
  `page_nav_font_color` varchar(8) NOT NULL,
  `page_nav_font_weight` varchar(8) NOT NULL,
  `page_nav_border_width` int(4) NOT NULL,
  `page_nav_border_style` varchar(16) NOT NULL,
  `page_nav_border_color` varchar(8) NOT NULL,
  `page_nav_border_radius` varchar(32) NOT NULL,
  `page_nav_margin` varchar(32) NOT NULL,
  `page_nav_padding` varchar(32) NOT NULL,
  `page_nav_button_bg_color` varchar(8) NOT NULL,
  `page_nav_button_bg_transparent` int(4) NOT NULL,
  `page_nav_box_shadow` varchar(32) NOT NULL,
  `page_nav_button_transition` tinyint(1) NOT NULL,
  `page_nav_button_text` tinyint(1) NOT NULL,
  `lightbox_overlay_bg_color` varchar(8) NOT NULL,
  `lightbox_overlay_bg_transparent` int(4) NOT NULL,
  `lightbox_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_pos` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_align` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_height` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_top` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_left` int(4) NOT NULL,
  `lightbox_ctrl_btn_transparent` int(4) NOT NULL,
  `lightbox_ctrl_btn_color` varchar(8) NOT NULL,
  `lightbox_toggle_btn_height` int(4) NOT NULL,
  `lightbox_toggle_btn_width` int(4) NOT NULL,
  `lightbox_ctrl_cont_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_cont_transparent` int(4) NOT NULL,
  `lightbox_ctrl_cont_border_radius` int(4) NOT NULL,
  `lightbox_close_btn_transparent` int(4) NOT NULL,
  `lightbox_close_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_close_btn_border_width` int(4) NOT NULL,
  `lightbox_close_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_close_btn_border_style` varchar(16) NOT NULL,
  `lightbox_close_btn_border_color` varchar(8) NOT NULL,
  `lightbox_close_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_close_btn_color` varchar(8) NOT NULL,
  `lightbox_close_btn_size` int(4) NOT NULL,
  `lightbox_close_btn_width` int(4) NOT NULL,
  `lightbox_close_btn_height` int(4) NOT NULL,
  `lightbox_close_btn_top` varchar(8) NOT NULL,
  `lightbox_close_btn_right` varchar(8) NOT NULL,
  `lightbox_close_btn_full_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_transparent` int(4) NOT NULL,
  `lightbox_rl_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_width` int(4) NOT NULL,
  `lightbox_rl_btn_border_style` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_height` int(4) NOT NULL,
  `lightbox_rl_btn_width` int(4) NOT NULL,
  `lightbox_rl_btn_size` int(4) NOT NULL,
  `lightbox_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `lightbox_comment_pos` varchar(8) NOT NULL,
  `lightbox_comment_width` int(4) NOT NULL,
  `lightbox_comment_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_font_color` varchar(8) NOT NULL,
  `lightbox_comment_font_style` varchar(16) NOT NULL,
  `lightbox_comment_font_size` int(4) NOT NULL,
  `lightbox_comment_button_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_width` int(4) NOT NULL,
  `lightbox_comment_button_border_style` varchar(16) NOT NULL,
  `lightbox_comment_button_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_button_padding` varchar(32) NOT NULL,
  `lightbox_comment_input_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_width` int(4) NOT NULL,
  `lightbox_comment_input_border_style` varchar(16) NOT NULL,
  `lightbox_comment_input_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_input_padding` varchar(32) NOT NULL,
  `lightbox_comment_separator_width` int(4) NOT NULL,
  `lightbox_comment_separator_style` varchar(16) NOT NULL,
  `lightbox_comment_separator_color` varchar(8) NOT NULL,
  `lightbox_comment_author_font_size` int(4) NOT NULL,
  `lightbox_comment_date_font_size` int(4) NOT NULL,
  `lightbox_comment_body_font_size` int(4) NOT NULL,
  `lightbox_comment_share_button_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_pos` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_btn_size` int(4) NOT NULL,
  `lightbox_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_border_style` varchar(16) NOT NULL,
  `lightbox_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_style` varchar(16) NOT NULL,
  `album_compact_back_font_color` varchar(8) NOT NULL,
  `album_compact_back_font_style` varchar(16) NOT NULL,
  `album_compact_back_font_size` int(4) NOT NULL,
  `album_compact_back_font_weight` varchar(8) NOT NULL,
  `album_compact_back_padding` varchar(32) NOT NULL,
  `album_compact_title_font_color` varchar(8) NOT NULL,
  `album_compact_title_font_style` varchar(16) NOT NULL,
  `album_compact_thumb_title_pos` varchar(8) NOT NULL,
  `album_compact_title_font_size` int(4) NOT NULL,
  `album_compact_title_font_weight` varchar(8) NOT NULL,
  `album_compact_title_margin` varchar(32) NOT NULL,
  `album_compact_title_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_margin` int(4) NOT NULL,
  `album_compact_thumb_padding` int(4) NOT NULL,
  `album_compact_thumb_border_radius` varchar(32) NOT NULL,
  `album_compact_thumb_border_width` int(4) NOT NULL,
  `album_compact_thumb_border_style` varchar(8) NOT NULL,
  `album_compact_thumb_border_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_color` varchar(8) NOT NULL,
  `album_compact_thumbs_bg_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_transparent` int(4) NOT NULL,
  `album_compact_thumb_box_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_transparent` int(4) NOT NULL,
  `album_compact_thumb_align` varchar(8) NOT NULL,
  `album_compact_thumb_hover_effect` varchar(64) NOT NULL,
  `album_compact_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_compact_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_thumb_margin` int(4) NOT NULL,
  `album_extended_thumb_padding` int(4) NOT NULL,
  `album_extended_thumb_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_border_width` int(4) NOT NULL,
  `album_extended_thumb_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_color` varchar(8) NOT NULL,
  `album_extended_thumbs_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_transparent` int(4) NOT NULL,
  `album_extended_thumb_box_shadow` varchar(32) NOT NULL,
  `album_extended_thumb_transparent` int(4) NOT NULL,
  `album_extended_thumb_align` varchar(8) NOT NULL,
  `album_extended_thumb_hover_effect` varchar(64) NOT NULL,
  `album_extended_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_extended_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_back_font_color` varchar(8) NOT NULL,
  `album_extended_back_font_style` varchar(16) NOT NULL,
  `album_extended_back_font_size` int(4) NOT NULL,
  `album_extended_back_font_weight` varchar(8) NOT NULL,
  `album_extended_back_padding` varchar(32) NOT NULL,
  `album_extended_div_bg_color` varchar(8) NOT NULL,
  `album_extended_div_bg_transparent` int(4) NOT NULL,
  `album_extended_div_border_radius` varchar(32) NOT NULL,
  `album_extended_div_margin` varchar(32) NOT NULL,
  `album_extended_div_padding` int(4) NOT NULL,
  `album_extended_div_separator_width` int(4) NOT NULL,
  `album_extended_div_separator_style` varchar(8) NOT NULL,
  `album_extended_div_separator_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_div_border_width` int(4) NOT NULL,
  `album_extended_thumb_div_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_padding` varchar(32) NOT NULL,
  `album_extended_text_div_bg_color` varchar(8) NOT NULL,
  `album_extended_text_div_border_radius` varchar(32) NOT NULL,
  `album_extended_text_div_border_width` int(4) NOT NULL,
  `album_extended_text_div_border_style` varchar(8) NOT NULL,
  `album_extended_text_div_border_color` varchar(8) NOT NULL,
  `album_extended_text_div_padding` varchar(32) NOT NULL,
  `album_extended_title_span_border_width` int(4) NOT NULL,
  `album_extended_title_span_border_style` varchar(8) NOT NULL,
  `album_extended_title_span_border_color` varchar(8) NOT NULL,
  `album_extended_title_font_color` varchar(8) NOT NULL,
  `album_extended_title_font_style` varchar(16) NOT NULL,
  `album_extended_title_font_size` int(4) NOT NULL,
  `album_extended_title_font_weight` varchar(8) NOT NULL,
  `album_extended_title_margin_bottom` int(4) NOT NULL,
  `album_extended_title_padding` varchar(32) NOT NULL,
  `album_extended_desc_span_border_width` int(4) NOT NULL,
  `album_extended_desc_span_border_style` varchar(8) NOT NULL,
  `album_extended_desc_span_border_color` varchar(8) NOT NULL,
  `album_extended_desc_font_color` varchar(8) NOT NULL,
  `album_extended_desc_font_style` varchar(16) NOT NULL,
  `album_extended_desc_font_size` int(4) NOT NULL,
  `album_extended_desc_font_weight` varchar(8) NOT NULL,
  `album_extended_desc_padding` varchar(32) NOT NULL,
  `album_extended_desc_more_color` varchar(8) NOT NULL,
  `album_extended_desc_more_size` int(4) NOT NULL,
  `masonry_thumb_padding` int(4) NOT NULL,
  `masonry_thumb_border_radius` varchar(32) NOT NULL,
  `masonry_thumb_border_width` int(4) NOT NULL,
  `masonry_thumb_border_style` varchar(8) NOT NULL,
  `masonry_thumb_border_color` varchar(8) NOT NULL,
  `masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `masonry_thumb_bg_transparent` int(4) NOT NULL,
  `masonry_thumb_transparent` int(4) NOT NULL,
  `masonry_thumb_align` varchar(8) NOT NULL,
  `masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `masonry_thumb_transition` tinyint(1) NOT NULL,
  `mosaic_thumb_padding` int(4) NOT NULL,
  `mosaic_thumb_border_radius` varchar(32) NOT NULL,
  `mosaic_thumb_border_width` int(4) NOT NULL,
  `mosaic_thumb_border_style` varchar(8) NOT NULL,
  `mosaic_thumb_border_color` varchar(8) NOT NULL,
  `mosaic_thumbs_bg_color` varchar(8) NOT NULL,
  `mosaic_thumb_bg_transparent` int(4) NOT NULL,
  `mosaic_thumb_transparent` int(4) NOT NULL,
  `mosaic_thumb_align` varchar(8) NOT NULL,
  `mosaic_thumb_hover_effect` varchar(64) NOT NULL,
  `mosaic_thumb_hover_effect_value` varchar(64) NOT NULL,
  `mosaic_thumb_title_font_color` varchar(8) NOT NULL,
  `mosaic_thumb_title_font_style` varchar(16) NOT NULL,
  `mosaic_thumb_title_font_size` int(4) NOT NULL,
  `mosaic_thumb_title_font_weight` varchar(8) NOT NULL,
  `mosaic_thumb_title_margin` varchar(32) NOT NULL,
  `mosaic_thumb_title_shadow` varchar(32) NOT NULL,
  `slideshow_cont_bg_color` varchar(8) NOT NULL,
  `slideshow_close_btn_transparent` int(4) NOT NULL,
  `slideshow_rl_btn_bg_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_radius` varchar(32) NOT NULL,
  `slideshow_rl_btn_border_width` int(4) NOT NULL,
  `slideshow_rl_btn_border_style` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_box_shadow` varchar(32) NOT NULL,
  `slideshow_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_height` int(4) NOT NULL,
  `slideshow_rl_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_width` int(4) NOT NULL,
  `slideshow_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_pos` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_border_style` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `slideshow_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_size` int(4) NOT NULL,
  `slideshow_title_font_size` int(4) NOT NULL,
  `slideshow_title_font` varchar(16) NOT NULL,
  `slideshow_title_color` varchar(8) NOT NULL,
  `slideshow_title_opacity` int(4) NOT NULL,
  `slideshow_title_border_radius` varchar(32) NOT NULL,
  `slideshow_title_background_color` varchar(8) NOT NULL,
  `slideshow_title_padding` varchar(32) NOT NULL,
  `slideshow_description_font_size` int(4) NOT NULL,
  `slideshow_description_font` varchar(16) NOT NULL,
  `slideshow_description_color` varchar(8) NOT NULL,
  `slideshow_description_opacity` int(4) NOT NULL,
  `slideshow_description_border_radius` varchar(32) NOT NULL,
  `slideshow_description_background_color` varchar(8) NOT NULL,
  `slideshow_description_padding` varchar(32) NOT NULL,
  `slideshow_dots_width` int(4) NOT NULL,
  `slideshow_dots_height` int(4) NOT NULL,
  `slideshow_dots_border_radius` varchar(32) NOT NULL,
  `slideshow_dots_background_color` varchar(8) NOT NULL,
  `slideshow_dots_margin` int(4) NOT NULL,
  `slideshow_dots_active_background_color` varchar(8) NOT NULL,
  `slideshow_dots_active_border_width` int(4) NOT NULL,
  `slideshow_dots_active_border_color` varchar(8) NOT NULL,
  `slideshow_play_pause_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_style` varchar(16) NOT NULL,
  `blog_style_margin` varchar(32) NOT NULL,
  `blog_style_padding` varchar(32) NOT NULL,
  `blog_style_border_radius` varchar(32) NOT NULL,
  `blog_style_border_width` int(4) NOT NULL,
  `blog_style_border_style` varchar(16) NOT NULL,
  `blog_style_border_color` varchar(8) NOT NULL,
  `blog_style_bg_color` varchar(8) NOT NULL,
  `blog_style_box_shadow` varchar(32) NOT NULL,
  `blog_style_transparent` int(4) NOT NULL,
  `blog_style_align` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_margin` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_radius` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_width` int(4) NOT NULL,
  `blog_style_share_buttons_border_style` varchar(16) NOT NULL,
  `blog_style_share_buttons_border_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_align` varchar(8) NOT NULL,
  `blog_style_img_font_size` int(4) NOT NULL,
  `blog_style_img_font_family` varchar(16) NOT NULL,
  `blog_style_img_font_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_transparent` int(4) NOT NULL,
  `blog_style_share_buttons_font_size` int(4) NOT NULL,
  `image_browser_margin` varchar(32) NOT NULL,
  `image_browser_padding` varchar(32) NOT NULL,
  `image_browser_border_radius` varchar(32) NOT NULL,
  `image_browser_border_width` int(4) NOT NULL,
  `image_browser_border_style` varchar(16) NOT NULL,
  `image_browser_border_color` varchar(8) NOT NULL,
  `image_browser_bg_color` varchar(8) NOT NULL,
  `image_browser_box_shadow` varchar(32) NOT NULL,
  `image_browser_transparent` int(4) NOT NULL,
  `image_browser_align` varchar(8) NOT NULL,
  `image_browser_image_description_margin` varchar(32) NOT NULL,
  `image_browser_image_description_padding` varchar(32) NOT NULL,
  `image_browser_image_description_border_radius` varchar(32) NOT NULL,
  `image_browser_image_description_border_width` int(4) NOT NULL,
  `image_browser_image_description_border_style` varchar(16) NOT NULL,
  `image_browser_image_description_border_color` varchar(8) NOT NULL,
  `image_browser_image_description_bg_color` varchar(8) NOT NULL,
  `image_browser_image_description_align` varchar(8) NOT NULL,
  `image_browser_img_font_size` int(4) NOT NULL,
  `image_browser_img_font_family` varchar(16) NOT NULL,
  `image_browser_img_font_color` varchar(8) NOT NULL,
  `image_browser_full_padding` varchar(32) NOT NULL,
  `image_browser_full_border_radius` varchar(32) NOT NULL,
  `image_browser_full_border_width` int(4) NOT NULL,
  `image_browser_full_border_style` varchar(16) NOT NULL,
  `image_browser_full_border_color` varchar(8) NOT NULL,
  `image_browser_full_bg_color` varchar(8) NOT NULL,
  `image_browser_full_transparent` int(4) NOT NULL,
  `lightbox_info_pos` varchar(8) NOT NULL,
  `lightbox_info_align` varchar(8) NOT NULL,
  `lightbox_info_bg_color` varchar(8) NOT NULL,
  `lightbox_info_bg_transparent` int(4) NOT NULL,
  `lightbox_info_border_width` int(4) NOT NULL,
  `lightbox_info_border_style` varchar(16) NOT NULL,
  `lightbox_info_border_color` varchar(8) NOT NULL,
  `lightbox_info_border_radius` varchar(32) NOT NULL,
  `lightbox_info_padding` varchar(32) NOT NULL,
  `lightbox_info_margin` varchar(32) NOT NULL,
  `lightbox_title_color` varchar(8) NOT NULL,
  `lightbox_title_font_style` varchar(16) NOT NULL,
  `lightbox_title_font_weight` varchar(8) NOT NULL,
  `lightbox_title_font_size` int(4) NOT NULL,
  `lightbox_description_color` varchar(8) NOT NULL,
  `lightbox_description_font_style` varchar(16) NOT NULL,
  `lightbox_description_font_weight` varchar(8) NOT NULL,
  `lightbox_description_font_size` int(4) NOT NULL,
  `lightbox_rate_pos` varchar(8) NOT NULL,
  `lightbox_rate_align` varchar(8) NOT NULL,
  `lightbox_rate_icon` varchar(16) NOT NULL,
  `lightbox_rate_color` varchar(8) NOT NULL,
  `lightbox_rate_size` int(4) NOT NULL,
  `lightbox_rate_stars_count` int(4) NOT NULL,
  `lightbox_rate_padding` varchar(32) NOT NULL,
  `lightbox_rate_hover_color` varchar(8) NOT NULL,
  `lightbox_hit_pos` varchar(8) NOT NULL,
  `lightbox_hit_align` varchar(8) NOT NULL,
  `lightbox_hit_bg_color` varchar(8) NOT NULL,
  `lightbox_hit_bg_transparent` int(4) NOT NULL,
  `lightbox_hit_border_width` int(4) NOT NULL,
  `lightbox_hit_border_style` varchar(16) NOT NULL,
  `lightbox_hit_border_color` varchar(8) NOT NULL,
  `lightbox_hit_border_radius` varchar(32) NOT NULL,
  `lightbox_hit_padding` varchar(32) NOT NULL,
  `lightbox_hit_margin` varchar(32) NOT NULL,
  `lightbox_hit_color` varchar(8) NOT NULL,
  `lightbox_hit_font_style` varchar(16) NOT NULL,
  `lightbox_hit_font_weight` varchar(8) NOT NULL,
  `lightbox_hit_font_size` int(4) NOT NULL,
  `masonry_description_font_size` int(4) NOT NULL,
  `masonry_description_color` varchar(8) NOT NULL,
  `masonry_description_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_color` varchar(8) NOT NULL,
  `album_masonry_back_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_size` int(4) NOT NULL,
  `album_masonry_back_font_weight` varchar(8) NOT NULL,
  `album_masonry_back_padding` varchar(32) NOT NULL,
  `album_masonry_title_font_color` varchar(8) NOT NULL,
  `album_masonry_title_font_style` varchar(16) NOT NULL,
  `album_masonry_thumb_title_pos` varchar(8) NOT NULL,
  `album_masonry_title_font_size` int(4) NOT NULL,
  `album_masonry_title_font_weight` varchar(8) NOT NULL,
  `album_masonry_title_margin` varchar(32) NOT NULL,
  `album_masonry_title_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_margin` int(4) NOT NULL,
  `album_masonry_thumb_padding` int(4) NOT NULL,
  `album_masonry_thumb_border_radius` varchar(32) NOT NULL,
  `album_masonry_thumb_border_width` int(4) NOT NULL,
  `album_masonry_thumb_border_style` varchar(8) NOT NULL,
  `album_masonry_thumb_border_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_transparent` int(4) NOT NULL,
  `album_masonry_thumb_box_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_transparent` int(4) NOT NULL,
  `album_masonry_thumb_align` varchar(8) NOT NULL,
  `album_masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `album_masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_masonry_thumb_transition` tinyint(1) NOT NULL,
  `default_theme` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `thumb_margin`, `thumb_padding`, `thumb_border_radius`, `thumb_border_width`, `thumb_border_style`, `thumb_border_color`, `thumb_bg_color`, `thumbs_bg_color`, `thumb_bg_transparent`, `thumb_box_shadow`, `thumb_transparent`, `thumb_align`, `thumb_hover_effect`, `thumb_hover_effect_value`, `thumb_transition`, `thumb_title_font_color`, `thumb_title_font_style`, `thumb_title_pos`, `thumb_title_font_size`, `thumb_title_font_weight`, `thumb_title_margin`, `thumb_title_shadow`, `page_nav_position`, `page_nav_align`, `page_nav_number`, `page_nav_font_size`, `page_nav_font_style`, `page_nav_font_color`, `page_nav_font_weight`, `page_nav_border_width`, `page_nav_border_style`, `page_nav_border_color`, `page_nav_border_radius`, `page_nav_margin`, `page_nav_padding`, `page_nav_button_bg_color`, `page_nav_button_bg_transparent`, `page_nav_box_shadow`, `page_nav_button_transition`, `page_nav_button_text`, `lightbox_overlay_bg_color`, `lightbox_overlay_bg_transparent`, `lightbox_bg_color`, `lightbox_ctrl_btn_pos`, `lightbox_ctrl_btn_align`, `lightbox_ctrl_btn_height`, `lightbox_ctrl_btn_margin_top`, `lightbox_ctrl_btn_margin_left`, `lightbox_ctrl_btn_transparent`, `lightbox_ctrl_btn_color`, `lightbox_toggle_btn_height`, `lightbox_toggle_btn_width`, `lightbox_ctrl_cont_bg_color`, `lightbox_ctrl_cont_transparent`, `lightbox_ctrl_cont_border_radius`, `lightbox_close_btn_transparent`, `lightbox_close_btn_bg_color`, `lightbox_close_btn_border_width`, `lightbox_close_btn_border_radius`, `lightbox_close_btn_border_style`, `lightbox_close_btn_border_color`, `lightbox_close_btn_box_shadow`, `lightbox_close_btn_color`, `lightbox_close_btn_size`, `lightbox_close_btn_width`, `lightbox_close_btn_height`, `lightbox_close_btn_top`, `lightbox_close_btn_right`, `lightbox_close_btn_full_color`, `lightbox_rl_btn_bg_color`, `lightbox_rl_btn_transparent`, `lightbox_rl_btn_border_radius`, `lightbox_rl_btn_border_width`, `lightbox_rl_btn_border_style`, `lightbox_rl_btn_border_color`, `lightbox_rl_btn_box_shadow`, `lightbox_rl_btn_color`, `lightbox_rl_btn_height`, `lightbox_rl_btn_width`, `lightbox_rl_btn_size`, `lightbox_close_rl_btn_hover_color`, `lightbox_comment_pos`, `lightbox_comment_width`, `lightbox_comment_bg_color`, `lightbox_comment_font_color`, `lightbox_comment_font_style`, `lightbox_comment_font_size`, `lightbox_comment_button_bg_color`, `lightbox_comment_button_border_color`, `lightbox_comment_button_border_width`, `lightbox_comment_button_border_style`, `lightbox_comment_button_border_radius`, `lightbox_comment_button_padding`, `lightbox_comment_input_bg_color`, `lightbox_comment_input_border_color`, `lightbox_comment_input_border_width`, `lightbox_comment_input_border_style`, `lightbox_comment_input_border_radius`, `lightbox_comment_input_padding`, `lightbox_comment_separator_width`, `lightbox_comment_separator_style`, `lightbox_comment_separator_color`, `lightbox_comment_author_font_size`, `lightbox_comment_date_font_size`, `lightbox_comment_body_font_size`, `lightbox_comment_share_button_color`, `lightbox_filmstrip_pos`, `lightbox_filmstrip_rl_bg_color`, `lightbox_filmstrip_rl_btn_size`, `lightbox_filmstrip_rl_btn_color`, `lightbox_filmstrip_thumb_margin`, `lightbox_filmstrip_thumb_border_width`, `lightbox_filmstrip_thumb_border_style`, `lightbox_filmstrip_thumb_border_color`, `lightbox_filmstrip_thumb_border_radius`, `lightbox_filmstrip_thumb_deactive_transparent`, `lightbox_filmstrip_thumb_active_border_width`, `lightbox_filmstrip_thumb_active_border_color`, `lightbox_rl_btn_style`, `album_compact_back_font_color`, `album_compact_back_font_style`, `album_compact_back_font_size`, `album_compact_back_font_weight`, `album_compact_back_padding`, `album_compact_title_font_color`, `album_compact_title_font_style`, `album_compact_thumb_title_pos`, `album_compact_title_font_size`, `album_compact_title_font_weight`, `album_compact_title_margin`, `album_compact_title_shadow`, `album_compact_thumb_margin`, `album_compact_thumb_padding`, `album_compact_thumb_border_radius`, `album_compact_thumb_border_width`, `album_compact_thumb_border_style`, `album_compact_thumb_border_color`, `album_compact_thumb_bg_color`, `album_compact_thumbs_bg_color`, `album_compact_thumb_bg_transparent`, `album_compact_thumb_box_shadow`, `album_compact_thumb_transparent`, `album_compact_thumb_align`, `album_compact_thumb_hover_effect`, `album_compact_thumb_hover_effect_value`, `album_compact_thumb_transition`, `album_extended_thumb_margin`, `album_extended_thumb_padding`, `album_extended_thumb_border_radius`, `album_extended_thumb_border_width`, `album_extended_thumb_border_style`, `album_extended_thumb_border_color`, `album_extended_thumb_bg_color`, `album_extended_thumbs_bg_color`, `album_extended_thumb_bg_transparent`, `album_extended_thumb_box_shadow`, `album_extended_thumb_transparent`, `album_extended_thumb_align`, `album_extended_thumb_hover_effect`, `album_extended_thumb_hover_effect_value`, `album_extended_thumb_transition`, `album_extended_back_font_color`, `album_extended_back_font_style`, `album_extended_back_font_size`, `album_extended_back_font_weight`, `album_extended_back_padding`, `album_extended_div_bg_color`, `album_extended_div_bg_transparent`, `album_extended_div_border_radius`, `album_extended_div_margin`, `album_extended_div_padding`, `album_extended_div_separator_width`, `album_extended_div_separator_style`, `album_extended_div_separator_color`, `album_extended_thumb_div_bg_color`, `album_extended_thumb_div_border_radius`, `album_extended_thumb_div_border_width`, `album_extended_thumb_div_border_style`, `album_extended_thumb_div_border_color`, `album_extended_thumb_div_padding`, `album_extended_text_div_bg_color`, `album_extended_text_div_border_radius`, `album_extended_text_div_border_width`, `album_extended_text_div_border_style`, `album_extended_text_div_border_color`, `album_extended_text_div_padding`, `album_extended_title_span_border_width`, `album_extended_title_span_border_style`, `album_extended_title_span_border_color`, `album_extended_title_font_color`, `album_extended_title_font_style`, `album_extended_title_font_size`, `album_extended_title_font_weight`, `album_extended_title_margin_bottom`, `album_extended_title_padding`, `album_extended_desc_span_border_width`, `album_extended_desc_span_border_style`, `album_extended_desc_span_border_color`, `album_extended_desc_font_color`, `album_extended_desc_font_style`, `album_extended_desc_font_size`, `album_extended_desc_font_weight`, `album_extended_desc_padding`, `album_extended_desc_more_color`, `album_extended_desc_more_size`, `masonry_thumb_padding`, `masonry_thumb_border_radius`, `masonry_thumb_border_width`, `masonry_thumb_border_style`, `masonry_thumb_border_color`, `masonry_thumbs_bg_color`, `masonry_thumb_bg_transparent`, `masonry_thumb_transparent`, `masonry_thumb_align`, `masonry_thumb_hover_effect`, `masonry_thumb_hover_effect_value`, `masonry_thumb_transition`, `mosaic_thumb_padding`, `mosaic_thumb_border_radius`, `mosaic_thumb_border_width`, `mosaic_thumb_border_style`, `mosaic_thumb_border_color`, `mosaic_thumbs_bg_color`, `mosaic_thumb_bg_transparent`, `mosaic_thumb_transparent`, `mosaic_thumb_align`, `mosaic_thumb_hover_effect`, `mosaic_thumb_hover_effect_value`, `mosaic_thumb_title_font_color`, `mosaic_thumb_title_font_style`, `mosaic_thumb_title_font_size`, `mosaic_thumb_title_font_weight`, `mosaic_thumb_title_margin`, `mosaic_thumb_title_shadow`, `slideshow_cont_bg_color`, `slideshow_close_btn_transparent`, `slideshow_rl_btn_bg_color`, `slideshow_rl_btn_border_radius`, `slideshow_rl_btn_border_width`, `slideshow_rl_btn_border_style`, `slideshow_rl_btn_border_color`, `slideshow_rl_btn_box_shadow`, `slideshow_rl_btn_color`, `slideshow_rl_btn_height`, `slideshow_rl_btn_size`, `slideshow_rl_btn_width`, `slideshow_close_rl_btn_hover_color`, `slideshow_filmstrip_pos`, `slideshow_filmstrip_thumb_border_width`, `slideshow_filmstrip_thumb_border_style`, `slideshow_filmstrip_thumb_border_color`, `slideshow_filmstrip_thumb_border_radius`, `slideshow_filmstrip_thumb_margin`, `slideshow_filmstrip_thumb_active_border_width`, `slideshow_filmstrip_thumb_active_border_color`, `slideshow_filmstrip_thumb_deactive_transparent`, `slideshow_filmstrip_rl_bg_color`, `slideshow_filmstrip_rl_btn_color`, `slideshow_filmstrip_rl_btn_size`, `slideshow_title_font_size`, `slideshow_title_font`, `slideshow_title_color`, `slideshow_title_opacity`, `slideshow_title_border_radius`, `slideshow_title_background_color`, `slideshow_title_padding`, `slideshow_description_font_size`, `slideshow_description_font`, `slideshow_description_color`, `slideshow_description_opacity`, `slideshow_description_border_radius`, `slideshow_description_background_color`, `slideshow_description_padding`, `slideshow_dots_width`, `slideshow_dots_height`, `slideshow_dots_border_radius`, `slideshow_dots_background_color`, `slideshow_dots_margin`, `slideshow_dots_active_background_color`, `slideshow_dots_active_border_width`, `slideshow_dots_active_border_color`, `slideshow_play_pause_btn_size`, `slideshow_rl_btn_style`, `blog_style_margin`, `blog_style_padding`, `blog_style_border_radius`, `blog_style_border_width`, `blog_style_border_style`, `blog_style_border_color`, `blog_style_bg_color`, `blog_style_box_shadow`, `blog_style_transparent`, `blog_style_align`, `blog_style_share_buttons_bg_color`, `blog_style_share_buttons_margin`, `blog_style_share_buttons_border_radius`, `blog_style_share_buttons_border_width`, `blog_style_share_buttons_border_style`, `blog_style_share_buttons_border_color`, `blog_style_share_buttons_align`, `blog_style_img_font_size`, `blog_style_img_font_family`, `blog_style_img_font_color`, `blog_style_share_buttons_color`, `blog_style_share_buttons_bg_transparent`, `blog_style_share_buttons_font_size`, `image_browser_margin`, `image_browser_padding`, `image_browser_border_radius`, `image_browser_border_width`, `image_browser_border_style`, `image_browser_border_color`, `image_browser_bg_color`, `image_browser_box_shadow`, `image_browser_transparent`, `image_browser_align`, `image_browser_image_description_margin`, `image_browser_image_description_padding`, `image_browser_image_description_border_radius`, `image_browser_image_description_border_width`, `image_browser_image_description_border_style`, `image_browser_image_description_border_color`, `image_browser_image_description_bg_color`, `image_browser_image_description_align`, `image_browser_img_font_size`, `image_browser_img_font_family`, `image_browser_img_font_color`, `image_browser_full_padding`, `image_browser_full_border_radius`, `image_browser_full_border_width`, `image_browser_full_border_style`, `image_browser_full_border_color`, `image_browser_full_bg_color`, `image_browser_full_transparent`, `lightbox_info_pos`, `lightbox_info_align`, `lightbox_info_bg_color`, `lightbox_info_bg_transparent`, `lightbox_info_border_width`, `lightbox_info_border_style`, `lightbox_info_border_color`, `lightbox_info_border_radius`, `lightbox_info_padding`, `lightbox_info_margin`, `lightbox_title_color`, `lightbox_title_font_style`, `lightbox_title_font_weight`, `lightbox_title_font_size`, `lightbox_description_color`, `lightbox_description_font_style`, `lightbox_description_font_weight`, `lightbox_description_font_size`, `lightbox_rate_pos`, `lightbox_rate_align`, `lightbox_rate_icon`, `lightbox_rate_color`, `lightbox_rate_size`, `lightbox_rate_stars_count`, `lightbox_rate_padding`, `lightbox_rate_hover_color`, `lightbox_hit_pos`, `lightbox_hit_align`, `lightbox_hit_bg_color`, `lightbox_hit_bg_transparent`, `lightbox_hit_border_width`, `lightbox_hit_border_style`, `lightbox_hit_border_color`, `lightbox_hit_border_radius`, `lightbox_hit_padding`, `lightbox_hit_margin`, `lightbox_hit_color`, `lightbox_hit_font_style`, `lightbox_hit_font_weight`, `lightbox_hit_font_size`, `masonry_description_font_size`, `masonry_description_color`, `masonry_description_font_style`, `album_masonry_back_font_color`, `album_masonry_back_font_style`, `album_masonry_back_font_size`, `album_masonry_back_font_weight`, `album_masonry_back_padding`, `album_masonry_title_font_color`, `album_masonry_title_font_style`, `album_masonry_thumb_title_pos`, `album_masonry_title_font_size`, `album_masonry_title_font_weight`, `album_masonry_title_margin`, `album_masonry_title_shadow`, `album_masonry_thumb_margin`, `album_masonry_thumb_padding`, `album_masonry_thumb_border_radius`, `album_masonry_thumb_border_width`, `album_masonry_thumb_border_style`, `album_masonry_thumb_border_color`, `album_masonry_thumb_bg_color`, `album_masonry_thumbs_bg_color`, `album_masonry_thumb_bg_transparent`, `album_masonry_thumb_box_shadow`, `album_masonry_thumb_transparent`, `album_masonry_thumb_align`, `album_masonry_thumb_hover_effect`, `album_masonry_thumb_hover_effect_value`, `album_masonry_thumb_transition`, `default_theme`) VALUES
(1, 'Theme 1', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'solid', 'E3E3E3', '0', '0', '3px 6px', 'FFFFFF', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 100, 'FFFFFF', 14, 100, '000000', 65, 4, 100, '000000', 2, '16px', 'none', 'FFFFFF', '0', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'CCCCCC', 'left', 400, '000000', 'CCCCCC', 'segoe ui', 12, '616161', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '2px', 1, 'solid', '383838', 14, 10, 12, 'CCCCCC', 'top', '3B3B3B', 20, 'FFFFFF', '0 1px', 1, 'solid', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, 2, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '', 100, 'left', 'scale', '1.1', 0, '000000', 'segoe ui', 20, 'bold', '0', 'FFFFFF', 0, '0 0 0 0', '0 0 5px 0', 10, 1, 'solid', 'E0E0E0', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'F2D22E', 12, 4, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 0, 100, 'center', 'scale', '1.1', 0, 4, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 0, 100, 'center', 'scale', '1.1', 'CCCCCC', 'segoe ui', 16, 'bold', '2px', '0px 0px 0px #888888', '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '0px 0px 0px #000000', 'FFFFFF', 40, 20, 40, 'CCCCCC', 'top', 1, 'solid', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '3B3B3B', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '0 0 0 0', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 12, 12, '5px', 'F2D22E', 3, 'FFFFFF', 1, '000000', 60, 'fa-chevron', '2px', '0', '0', 1, 'solid', 'F5F5F5', 'FFFFFF', '', 80, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'B3AFAF', 0, 20, '2px auto', '4px', '0', 1, 'none', 'F5F5F5', 'EBEBEB', '', 80, 'center', '0px 5px 0px 5px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'EBEBEB', 'center', 15, 'segoe ui', '000000', '4px', '0', 2, 'none', 'F7F7F7', 'F5F5F5', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 12, 'CCCCCC', 'segoe ui', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, 1),
(2, 'Theme 2', 4, 4, '0', 5, 'none', 'FFFFFF', 'E8E8E8', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'rotate', '2deg', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'none', 'E3E3E3', '0', '0', '3px 6px', 'FCFCFC', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 80, 'FFFFFF', 14, 100, '000000', 80, 4, 95, '000000', 0, '16px', 'none', 'FFFFFF', '', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 2, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'FFFFFF', 'left', 400, '000000', 'CCCCCC', 'arial', 12, '333333', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '3px', 1, 'solid', '2B2B2B', 14, 10, 12, 'FFFFFF', 'top', '2B2B2B', 20, 'FFFFFF', '0 1px', 1, 'none', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, 2, 4, '0', 4, 'none', 'E8E8E8', 'E8E8E8', 'FFFFFF', 100, '', 100, 'left', 'rotate', '2deg', 0, '000000', 'segoe ui', 16, 'bold', '0', 'FFFFFF', 0, '0', '0 0 5px 0', 10, 1, 'none', 'CCCCCC', 'FFFFFF', '0', 0, 'none', 'CCCCCC', '0', 'FFFFFF', '0', 1, 'none', 'CCCCCC', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'FFC933', 12, 4, '2px', 1, 'none', 'CCCCCC', 'FFFFFF', 0, 80, 'center', 'rotate', '2deg', 0, 4, '2px', 1, 'none', 'CCCCCC', 'FFFFFF', 0, 80, 'center', 'rotate', '2deg', 'CCCCCC', 'segoe ui', 16, 'bold', '2px', '0px 0px 0px #888888', '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 20, 40, 'DBDBDB', 'bottom', 1, 'none', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '303030', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '5px 10px 5px 10px', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 10, 10, '10px', '292929', 1, '292929', 2, 'FFC933', 60, 'fa-chevron', '2px', '4px', '0', 1, 'none', 'CCCCCC', 'E8E8E8', '', 70, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'A1A1A1', 0, 20, '2px auto', '4px', '2px', 1, 'none', 'E8E8E8', 'E8E8E8', '', 80, 'center', '24px 0px 0px 0px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'E8E8E8', 'center', 14, 'segoe ui', '000000', '4px', '0', 1, 'solid', 'EDEDED', 'FFFFFF', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 12, 'CCCCCC', 'segoe ui', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_gmedia`
--

CREATE TABLE IF NOT EXISTS `wp_gmedia` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` longtext NOT NULL,
  `title` text NOT NULL,
  `gmuid` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mime_type` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`ID`),
  KEY `gmuid` (`gmuid`),
  KEY `type_status_date` (`mime_type`,`status`,`date`,`ID`),
  KEY `author` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `wp_gmedia`
--

INSERT INTO `wp_gmedia` (`ID`, `author`, `date`, `description`, `title`, `gmuid`, `link`, `modified`, `mime_type`, `status`) VALUES
(1, 1, '2015-04-23 06:34:30', '', '10805723 709582992482095 8524497683346250746 N', '10805723_709582992482095_8524497683346250746_n.jpg', '', '2015-04-23 06:34:30', 'image/jpeg', 'public'),
(2, 1, '2015-04-23 06:34:42', '', '10407187 709582995815428 6235228078029459820 N', '10407187_709582995815428_6235228078029459820_n.jpg', '', '2015-04-23 06:34:42', 'image/jpeg', 'public'),
(3, 1, '2015-04-23 06:34:56', '', '10429463 709583005815427 3241453053973747588 N', '10429463_709583005815427_3241453053973747588_n.jpg', '', '2015-04-23 06:34:56', 'image/jpeg', 'public'),
(4, 1, '2015-04-23 06:35:13', '', '10429476 709583009148760 8537212084633691171 N', '10429476_709583009148760_8537212084633691171_n.jpg', '', '2015-04-23 06:35:13', 'image/jpeg', 'public'),
(5, 1, '2015-04-23 06:35:32', '', '10563195 709582979148763 184647613983369828 N', '10563195_709582979148763_184647613983369828_n.jpg', '', '2015-04-23 06:35:32', 'image/jpeg', 'public'),
(6, 1, '2015-04-23 06:36:25', '', '1187835677 Concert2 1280x1024 13', '1187835677_Concert2_1280x1024_13.jpg', '', '2015-04-23 06:43:43', 'image/jpeg', 'public'),
(7, 1, '2015-04-23 06:36:36', '', '2015-04-10 171121', '2015-04-10_171121.jpg', '', '2015-04-23 06:36:36', 'image/jpeg', 'public'),
(8, 1, '2015-04-23 06:36:47', '', '150319-194515', '150319-194515.jpg', '', '2015-04-23 06:36:47', 'image/jpeg', 'public'),
(9, 1, '2015-04-23 06:41:53', '', 'Hom Arme', 'hom_arme.mp3', '', '2015-04-23 06:41:53', 'audio/mpeg', 'public'),
(10, 1, '2015-04-23 06:45:06', '', 'Banc Bat', 'banc_bat.mp3', '', '2015-04-23 06:45:06', 'audio/mpeg', 'public'),
(11, 1, '2015-04-23 06:46:39', '', 'Canbuy', 'canbuy.mp3', '', '2015-04-23 06:46:39', 'audio/mpeg', 'public');

-- --------------------------------------------------------

--
-- Structure de la table `wp_gmedia_meta`
--

CREATE TABLE IF NOT EXISTS `wp_gmedia_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmedia_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `gmedia_id` (`gmedia_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `wp_gmedia_meta`
--

INSERT INTO `wp_gmedia_meta` (`meta_id`, `gmedia_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:8:"original";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:5:"thumb";a:2:{s:5:"width";i:200;s:6:"height";i:300;}s:4:"file";s:56:"image/10805723_709582992482095_8524497683346250746_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2, 2, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:8:"original";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:5:"thumb";a:2:{s:5:"width";i:200;s:6:"height";i:300;}s:4:"file";s:56:"image/10407187_709582995815428_6235228078029459820_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(3, 3, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:8:"original";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:5:"thumb";a:2:{s:5:"width";i:200;s:6:"height";i:300;}s:4:"file";s:56:"image/10429463_709583005815427_3241453053973747588_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(4, 4, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:8:"original";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:5:"thumb";a:2:{s:5:"width";i:200;s:6:"height";i:300;}s:4:"file";s:56:"image/10429476_709583009148760_8537212084633691171_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(5, 5, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:8:"original";a:2:{s:5:"width";i:640;s:6:"height";i:960;}s:5:"thumb";a:2:{s:5:"width";i:200;s:6:"height";i:300;}s:4:"file";s:55:"image/10563195_709582979148763_184647613983369828_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(6, 6, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:1280;s:6:"height";i:1024;}s:8:"original";a:2:{s:5:"width";i:1280;s:6:"height";i:1024;}s:5:"thumb";a:2:{s:5:"width";i:300;s:6:"height";i:240;}s:4:"file";s:42:"image/1187835677_Concert2_1280x1024_13.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(7, 7, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:650;s:6:"height";i:179;}s:8:"original";a:2:{s:5:"width";i:650;s:6:"height";i:179;}s:5:"thumb";a:2:{s:5:"width";i:300;s:6:"height";i:83;}s:4:"file";s:27:"image/2015-04-10_171121.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(8, 8, '_metadata', 'a:5:{s:3:"web";a:2:{s:5:"width";i:640;s:6:"height";i:480;}s:8:"original";a:2:{s:5:"width";i:640;s:6:"height";i:480;}s:5:"thumb";a:2:{s:5:"width";i:300;s:6:"height";i:225;}s:4:"file";s:23:"image/150319-194515.jpg";s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:8:"keywords";a:0:{}s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(9, 9, '_metadata', 'a:17:{s:10:"dataformat";s:3:"mp3";s:8:"channels";i:2;s:11:"sample_rate";i:22050;s:7:"bitrate";i:64000;s:11:"channelmode";s:12:"joint stereo";s:12:"bitrate_mode";s:3:"cbr";s:8:"lossless";b:0;s:15:"encoder_options";s:5:"CBR64";s:17:"compression_ratio";d:0.090702947845804988;s:10:"fileformat";s:3:"mp3";s:8:"filesize";i:254017;s:9:"mime_type";s:10:"audio/mpeg";s:6:"length";i:32;s:16:"length_formatted";s:4:"0:32";s:4:"text";s:1:"M";s:5:"genre";s:5:"Blues";s:4:"year";s:4:"2004";}'),
(10, 10, '_metadata', 'a:17:{s:10:"dataformat";s:3:"mp3";s:8:"channels";i:2;s:11:"sample_rate";i:22050;s:7:"bitrate";i:64000;s:11:"channelmode";s:12:"joint stereo";s:12:"bitrate_mode";s:3:"cbr";s:8:"lossless";b:0;s:15:"encoder_options";s:5:"CBR64";s:17:"compression_ratio";d:0.090702947845804988;s:10:"fileformat";s:3:"mp3";s:8:"filesize";i:850017;s:9:"mime_type";s:10:"audio/mpeg";s:6:"length";i:107;s:16:"length_formatted";s:4:"1:46";s:4:"text";s:1:"M";s:5:"genre";s:5:"Blues";s:4:"year";s:4:"2004";}'),
(11, 11, '_metadata', 'a:17:{s:10:"dataformat";s:3:"mp3";s:8:"channels";i:2;s:11:"sample_rate";i:22050;s:7:"bitrate";i:64000;s:11:"channelmode";s:12:"joint stereo";s:12:"bitrate_mode";s:3:"cbr";s:8:"lossless";b:0;s:15:"encoder_options";s:5:"CBR64";s:17:"compression_ratio";d:0.090702947845804988;s:10:"fileformat";s:3:"mp3";s:8:"filesize";i:639992;s:9:"mime_type";s:10:"audio/mpeg";s:6:"length";i:80;s:16:"length_formatted";s:4:"1:20";s:4:"text";s:1:"M";s:5:"genre";s:5:"Blues";s:4:"year";s:4:"2004";}'),
(12, 11, 'rating', 'a:2:{s:5:"value";d:3.75;s:5:"votes";i:2;}'),
(13, 10, 'rating', 'a:2:{s:5:"value";d:2.5;s:5:"votes";i:1;}'),
(14, 9, 'rating', 'a:2:{s:5:"value";d:3;s:5:"votes";i:1;}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_gmedia_term`
--

CREATE TABLE IF NOT EXISTS `wp_gmedia_term` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `global` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`term_id`),
  KEY `taxonomy` (`taxonomy`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_gmedia_term`
--

INSERT INTO `wp_gmedia_term` (`term_id`, `name`, `taxonomy`, `description`, `global`, `count`, `status`) VALUES
(1, 'Variation', 'gmedia_album', '', 1, 8, 'public'),
(2, 'Gallerie 1', 'gmedia_gallery', '', 1, 0, 'public'),
(3, 'Musiques', 'gmedia_album', 'L''album contenant les extraits musicaux', 1, 3, 'public'),
(4, 'Nos musiques', 'gmedia_gallery', 'Nos musiques', 1, 0, 'public');

-- --------------------------------------------------------

--
-- Structure de la table `wp_gmedia_term_meta`
--

CREATE TABLE IF NOT EXISTS `wp_gmedia_term_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmedia_term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `gmedia_term_id` (`gmedia_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `wp_gmedia_term_meta`
--

INSERT INTO `wp_gmedia_term_meta` (`meta_id`, `gmedia_term_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'orderby', 'ID'),
(2, 1, 'order', 'DESC'),
(3, 2, 'edited', '2015-04-23 06:54:56'),
(4, 2, 'module', 'phantom'),
(5, 2, 'query', 'a:1:{s:12:"gmedia_album";a:1:{i:0;s:1:"1";}}'),
(6, 2, 'settings', 'a:1:{s:7:"phantom";a:28:{s:9:"maxheight";s:1:"0";s:9:"thumbCols";s:1:"0";s:9:"thumbRows";s:1:"0";s:16:"thumbsNavigation";s:6:"scroll";s:7:"bgColor";s:6:"ffffff";s:7:"bgAlpha";s:1:"0";s:10:"thumbWidth";s:3:"160";s:11:"thumbHeight";s:3:"120";s:13:"thumbsSpacing";s:2:"10";s:21:"thumbsVerticalPadding";s:1:"5";s:23:"thumbsHorizontalPadding";s:1:"3";s:11:"thumbsAlign";s:4:"left";s:10:"thumbAlpha";s:2:"85";s:15:"thumbAlphaHover";s:3:"100";s:15:"thumbBorderSize";s:1:"1";s:16:"thumbBorderColor";s:6:"cccccc";s:12:"thumbPadding";s:1:"5";s:10:"thumbsInfo";s:5:"label";s:14:"tooltipBgColor";s:6:"ffffff";s:18:"tooltipStrokeColor";s:6:"000000";s:16:"tooltipTextColor";s:6:"000000";s:17:"captionTitleColor";s:6:"ffffff";s:16:"captionTextColor";s:6:"ffffff";s:16:"lightboxPosition";s:8:"document";s:19:"lightboxWindowColor";s:6:"000000";s:19:"lightboxWindowAlpha";s:2:"80";s:18:"socialShareEnabled";s:1:"1";s:9:"customCSS";s:0:"";}}'),
(7, 3, 'orderby', 'ID'),
(8, 3, 'order', 'DESC'),
(9, 4, 'edited', '2015-04-23 07:03:49'),
(10, 4, 'module', 'jq-mplayer'),
(11, 4, 'query', 'a:1:{s:12:"gmedia_album";a:1:{i:0;s:1:"3";}}'),
(12, 4, 'settings', 'a:1:{s:10:"jq-mplayer";a:7:{s:8:"maxwidth";s:1:"0";s:6:"rating";s:1:"1";s:8:"autoplay";s:1:"0";s:10:"buttonText";s:8:"Download";s:12:"tracksToShow";s:1:"5";s:8:"moreText";s:12:"View More...";s:9:"customCSS";s:0:"";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_gmedia_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_gmedia_term_relationships` (
  `gmedia_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `gmedia_term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  `gmedia_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gmedia_id`,`gmedia_term_id`),
  KEY `gmedia_term_id` (`gmedia_term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_gmedia_term_relationships`
--

INSERT INTO `wp_gmedia_term_relationships` (`gmedia_id`, `gmedia_term_id`, `term_order`, `gmedia_order`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 1, 0, 0),
(8, 1, 0, 0),
(9, 3, 0, 0),
(10, 3, 0, 0),
(11, 3, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_my_calendar`
--

CREATE TABLE IF NOT EXISTS `wp_my_calendar` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_begin` date NOT NULL,
  `event_end` date NOT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_desc` text NOT NULL,
  `event_short` text NOT NULL,
  `event_open` int(3) DEFAULT '2',
  `event_registration` text NOT NULL,
  `event_tickets` varchar(255) NOT NULL,
  `event_time` time DEFAULT NULL,
  `event_endtime` time DEFAULT NULL,
  `event_recur` char(2) DEFAULT NULL,
  `event_repeats` int(3) DEFAULT NULL,
  `event_status` int(1) NOT NULL DEFAULT '1',
  `event_author` bigint(20) unsigned DEFAULT NULL,
  `event_host` bigint(20) unsigned DEFAULT NULL,
  `event_category` bigint(20) unsigned NOT NULL DEFAULT '1',
  `event_link` text,
  `event_post` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event_link_expires` tinyint(1) NOT NULL,
  `event_location` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event_label` varchar(60) NOT NULL,
  `event_street` varchar(60) NOT NULL,
  `event_street2` varchar(60) NOT NULL,
  `event_city` varchar(60) NOT NULL,
  `event_state` varchar(60) NOT NULL,
  `event_postcode` varchar(10) NOT NULL,
  `event_region` varchar(255) NOT NULL,
  `event_country` varchar(60) NOT NULL,
  `event_url` text,
  `event_longitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `event_latitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `event_zoom` int(2) NOT NULL DEFAULT '14',
  `event_phone` varchar(32) NOT NULL,
  `event_phone2` varchar(32) NOT NULL,
  `event_access` text,
  `event_group` int(1) NOT NULL DEFAULT '0',
  `event_group_id` int(11) NOT NULL DEFAULT '0',
  `event_span` int(1) NOT NULL DEFAULT '0',
  `event_approved` int(1) NOT NULL DEFAULT '1',
  `event_flagged` int(1) NOT NULL DEFAULT '0',
  `event_hide_end` int(1) NOT NULL DEFAULT '0',
  `event_holiday` int(1) NOT NULL DEFAULT '0',
  `event_fifth_week` int(1) NOT NULL DEFAULT '0',
  `event_image` text,
  `event_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`),
  KEY `event_recur` (`event_recur`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_my_calendar`
--

INSERT INTO `wp_my_calendar` (`event_id`, `event_begin`, `event_end`, `event_title`, `event_desc`, `event_short`, `event_open`, `event_registration`, `event_tickets`, `event_time`, `event_endtime`, `event_recur`, `event_repeats`, `event_status`, `event_author`, `event_host`, `event_category`, `event_link`, `event_post`, `event_link_expires`, `event_location`, `event_label`, `event_street`, `event_street2`, `event_city`, `event_state`, `event_postcode`, `event_region`, `event_country`, `event_url`, `event_longitude`, `event_latitude`, `event_zoom`, `event_phone`, `event_phone2`, `event_access`, `event_group`, `event_group_id`, `event_span`, `event_approved`, `event_flagged`, `event_hide_end`, `event_holiday`, `event_fifth_week`, `event_image`, `event_added`) VALUES
(1, '2015-04-24', '2015-04-24', 'Zbra', 'Faire en sorte que le Zbra contamine le monde !', '', 2, '', '', '22:30:00', '23:45:00', 'S1', 0, 1, 1, 1, 1, '', 70, 0, 0, '', '', '', '', '', '', '', '', '', 0.000000, 0.000000, 0, '', '', '', 0, 0, 0, 1, 0, 0, 0, 1, '', '2015-04-13 19:25:39');

-- --------------------------------------------------------

--
-- Structure de la table `wp_my_calendar_categories`
--

CREATE TABLE IF NOT EXISTS `wp_my_calendar_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_color` varchar(7) NOT NULL,
  `category_icon` varchar(128) NOT NULL,
  `category_private` int(1) NOT NULL DEFAULT '0',
  `category_term` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_my_calendar_categories`
--

INSERT INTO `wp_my_calendar_categories` (`category_id`, `category_name`, `category_color`, `category_icon`, `category_private`, `category_term`) VALUES
(1, 'General', '#ffffcc', 'event.png', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_my_calendar_events`
--

CREATE TABLE IF NOT EXISTS `wp_my_calendar_events` (
  `occur_id` int(11) NOT NULL AUTO_INCREMENT,
  `occur_event_id` int(11) NOT NULL,
  `occur_begin` datetime NOT NULL,
  `occur_end` datetime NOT NULL,
  `occur_group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occur_id`),
  KEY `occur_event_id` (`occur_event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_my_calendar_events`
--

INSERT INTO `wp_my_calendar_events` (`occur_id`, `occur_event_id`, `occur_begin`, `occur_end`, `occur_group_id`) VALUES
(1, 1, '2015-04-24 22:30:00', '2015-04-24 23:45:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_my_calendar_locations`
--

CREATE TABLE IF NOT EXISTS `wp_my_calendar_locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_label` varchar(60) NOT NULL,
  `location_street` varchar(60) NOT NULL,
  `location_street2` varchar(60) NOT NULL,
  `location_city` varchar(60) NOT NULL,
  `location_state` varchar(60) NOT NULL,
  `location_postcode` varchar(10) NOT NULL,
  `location_region` varchar(255) NOT NULL,
  `location_url` text,
  `location_country` varchar(60) NOT NULL,
  `location_longitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `location_latitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `location_zoom` int(2) NOT NULL DEFAULT '14',
  `location_phone` varchar(32) NOT NULL,
  `location_phone2` varchar(32) NOT NULL,
  `location_access` text,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=513 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress', 'yes'),
(2, 'home', 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'projet.ergo.enssat@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:27:"grand-media/grand-media.php";i:1;s:27:"my-calendar/my-calendar.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:107:"/var/www/Projects/VariationXXI/Site/wordpress/wp-content/themes/blackoot-lite/page-templates/full-width.php";i:1;s:86:"/var/www/Projects/VariationXXI/Site/wordpress/wp-content/themes/blackoot-lite/page.php";i:2;s:87:"/var/www/Projects/VariationXXI/Site/wordpress/wp-content/themes/blackoot-lite/style.css";i:3;s:94:"/var/www/Projects/VariationXXI/Site/wordpress/wp-content/themes/blackoot-lite/editor-style.css";i:4;s:0:"";}', 'no'),
(41, 'template', 'blackoot-lite', 'yes'),
(42, 'stylesheet', 'blackoot-lite', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30135', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '32', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:127:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:25:"read_private_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:25:"read_private_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:29:"read_private_tribe_organizers";b:1;s:13:"mc_add_events";b:1;s:17:"mc_approve_events";b:1;s:16:"mc_manage_events";b:1;s:12:"mc_edit_cats";b:1;s:14:"mc_edit_styles";b:1;s:17:"mc_edit_behaviors";b:1;s:17:"mc_edit_templates";b:1;s:16:"mc_edit_settings";b:1;s:17:"mc_edit_locations";b:1;s:12:"mc_view_help";b:1;s:14:"gmedia_library";b:1;s:24:"gmedia_show_others_media";b:1;s:17:"gmedia_edit_media";b:1;s:24:"gmedia_edit_others_media";b:1;s:19:"gmedia_delete_media";b:1;s:26:"gmedia_delete_others_media";b:1;s:13:"gmedia_upload";b:1;s:13:"gmedia_import";b:1;s:12:"gmedia_terms";b:1;s:19:"gmedia_album_manage";b:1;s:20:"gmedia_filter_manage";b:1;s:17:"gmedia_tag_manage";b:1;s:19:"gmedia_terms_delete";b:1;s:21:"gmedia_gallery_manage";b:1;s:20:"gmedia_module_manage";b:1;s:15:"gmedia_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:73:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:25:"read_private_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:25:"read_private_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:29:"read_private_tribe_organizers";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:34:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:20:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:16:"edit_tribe_event";b:1;s:16:"read_tribe_event";b:1;s:18:"delete_tribe_event";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:16:"edit_tribe_venue";b:1;s:16:"read_tribe_venue";b:1;s:18:"delete_tribe_venue";b:1;s:19:"delete_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:20:"edit_tribe_organizer";b:1;s:20:"read_tribe_organizer";b:1;s:22:"delete_tribe_organizer";b:1;s:23:"delete_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:5:{s:4:"read";b:1;s:7:"level_0";b:1;s:16:"read_tribe_event";b:1;s:20:"read_tribe_organizer";b:1;s:16:"read_tribe_venue";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:7:"sidebar";a:0:{}s:14:"footer-sidebar";N;s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1433920200;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1433941618;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1433942043;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1433942224;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_transient_random_seed', '87e1ac8716f1af8e101dfc50cfb87245', 'yes'),
(125, '_transient_twentyfifteen_categories', '1', 'yes'),
(130, 'WPLANG', 'fr_FR', 'yes'),
(133, 'recently_activated', 'a:1:{s:31:"photo-gallery/photo-gallery.php";i:1429769702;}', 'yes'),
(195, 'dismissed_update_core', 'a:1:{s:11:"4.1.1|fr_FR";b:1;}', 'yes'),
(210, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428670262;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(211, 'current_theme', 'Blackoot Lite', 'yes'),
(212, 'theme_mods_blackoot-lite', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:6;s:11:"footer-menu";i:0;}s:12:"header_image";s:13:"remove-header";s:16:"background_image";s:121:"http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/themes/blackoot-lite/img/zwartevilt.png";}', 'yes'),
(213, 'theme_switched', '', 'yes'),
(214, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(232, 'tribe_events_calendar_options', 'a:7:{s:27:"recurring_events_are_hidden";s:6:"hidden";s:19:"tribeEventsTemplate";s:0:"";s:21:"tribeEventsBeforeHTML";s:0:"";s:20:"tribeEventsAfterHTML";s:0:"";s:21:"previous_ecp_versions";a:1:{i:0;s:1:"0";}s:18:"latest_ecp_version";s:5:"3.9.1";s:19:"last-update-message";s:5:"3.9.1";}', 'yes'),
(233, 'tribe_events_db_version', '3.0.0', 'yes'),
(235, 'tribe_events_suite_versions', 'a:1:{s:19:"TribeEventsCalendar";s:5:"3.9.1";}', 'yes'),
(238, 'category_children', 'a:0:{}', 'yes'),
(265, 'mc_version', '2.3.29', 'yes'),
(266, 'mc_location_access', 'a:12:{i:1;s:26:"Entrée accessible à tous";i:2;s:23:"Stationnement réservé";i:3;s:29:"Toilettes accessibles à tous";i:4;s:22:"Siège adapté à tous";i:5;s:45:"Transport pour personne à mobilité réduite";i:6;s:29:"Accessible en chaise roulante";i:7;s:27:"Prêt de fauteuils roulants";i:8;s:29:"Siège bariatrique disponible";i:9;s:50:"Accès en ascenseur à toutes les zones publiques ";i:10;s:23:"Signalitique en braille";i:11;s:36:"Politique pour un milieu sans parfum";i:12;s:6:"Autres";}', 'yes'),
(267, 'mc_event_access', 'a:12:{i:1;s:17:"Audio description";i:2;s:20:"Présentation en LSF";i:3;s:32:"Présentation en LSF avec parole";i:4;s:31:"Malentendants et malvoyants LSF";i:5;s:28:"Sous-titrage en temps réel ";i:6;s:22:"Sous-titrage incrusté";i:7;s:25:"Appareils d''aide auditive";i:8;s:14:"Visite tactile";i:9;s:20:"Programme en braille";i:10;s:29:"Programme en gros caractères";i:11;s:26:"Respectueux des sensations";i:12;s:6:"Autres";}', 'yes'),
(268, 'mc_display_author', 'false', 'yes'),
(269, 'mc_use_styles', '', 'yes'),
(270, 'mc_show_months', '1', 'yes'),
(271, 'mc_show_map', 'true', 'yes'),
(272, 'mc_show_address', 'false', 'yes'),
(273, 'mc_calendar_javascript', '0', 'yes'),
(274, 'mc_list_javascript', '0', 'yes'),
(275, 'mc_mini_javascript', '0', 'yes'),
(276, 'mc_ajax_javascript', '0', 'yes'),
(277, 'mc_notime_text', 'N/A', 'yes'),
(278, 'mc_hide_icons', 'false', 'yes'),
(279, 'mc_event_link_expires', 'no', 'yes'),
(280, 'mc_apply_color', 'background', 'yes'),
(281, 'mc_inverse_color', 'true', 'yes'),
(282, 'mc_input_options', 'a:11:{s:11:"event_short";s:3:"off";s:10:"event_desc";s:2:"on";s:14:"event_category";s:2:"on";s:11:"event_image";s:2:"on";s:10:"event_link";s:2:"on";s:12:"event_recurs";s:2:"on";s:10:"event_open";s:3:"off";s:14:"event_location";s:3:"off";s:23:"event_location_dropdown";s:2:"on";s:14:"event_specials";s:2:"on";s:12:"event_access";s:2:"on";}', 'yes'),
(283, 'mc_input_options_administrators', 'false', 'yes'),
(284, 'mc_multisite', '0', 'yes'),
(285, 'mc_event_mail', 'false', 'yes'),
(286, 'mc_desc', 'true', 'yes'),
(287, 'mc_process_shortcodes', 'false', 'yes'),
(288, 'mc_short', 'false', 'yes'),
(289, 'mc_event_approve', 'false', 'yes'),
(290, 'mc_event_approve_perms', 'manage_options', 'yes'),
(291, 'mc_no_fifth_week', 'true', 'yes'),
(292, 'mc_week_format', 'M j, ''y', 'yes'),
(293, 'mc_location_type', 'event_state', 'yes'),
(294, 'mc_user_settings_enabled', '', 'yes'),
(295, 'mc_user_location_type', 'state', 'yes'),
(296, 'mc_date_format', 'F j, Y', 'yes'),
(297, 'mc_templates', 'a:8:{s:5:"title";s:7:"{title}";s:4:"link";s:7:"{title}";s:4:"grid";s:389:"<span class=\\"event-time dtstart value-title\\" title=\\"{dtstart}\\">{time}<span class=\\"time-separator\\"> - </span>{endtime before=\\"<span class=\\''end-time dtend\\'' title=\\''{dtend}\\''>\\" after=\\"</span>\\"}</span>\r\n\r\n<div class=\\"sub-details\\">\r\n{hcard}\r\n{details before=\\"<p class=\\''mc_details\\''>\\" after=\\"</p>\\"}\r\n<p><a href=\\"{linking}\\" class=\\"event-link external\\">{title}</a></p></div>";s:4:"list";s:401:"<span class=\\"event-time dtstart value-title\\" title=\\"{dtstart}\\">{time}<span class=\\"time-separator\\"> - </span>{endtime before=\\"<span class=\\''end-time dtend value-title\\'' title=\\''{dtend}\\''>\\" after=\\"</span>\\"}</span>\r\n\r\n<div class=\\"sub-details\\">\r\n{hcard}\r\n{details before=\\"<p class=\\''mc_details\\''>\\" after=\\"</p>\\"}\r\n<p><a href=\\"{linking}\\" class=\\"event-link external\\">{title}</a></p></div>";s:4:"mini";s:402:"<span class=\\"event-time dtstart value-title\\" title=\\"{dtstart}\\">{time}<span class=\\"time-separator\\"> - </span>{endtime before=\\"<span class=\\''end-time dtend value-title\\'' title=\\''{dtend}\\''>\\" after=\\"</span>\\"}</span>\r\n\r\n<div class=\\"sub-details\\">\r\n{excerpt before=\\"<div class=\\''excerpt\\''>\\" after=\\"</div>\\"}\r\n{hcard}\r\n<p><a href=\\"{linking}\\" class=\\"event-link external\\">{title}</a></p></div>";s:3:"rss";s:926:"\n<item>\r\n    <title>{rss_title}: {date}, {time}</title>\r\n    <link>{link}</link>\r\n	<pubDate>{rssdate}</pubDate>\r\n	<dc:creator>{author}</dc:creator>  	\r\n    <description><![CDATA[{rss_description}]]></description>\r\n	<content:encoded><![CDATA[<div class=\\''vevent\\''>\r\n    <h1 class=\\''summary\\''>{rss_title}</h1>\r\n    <div class=\\''description\\''>{rss_description}</div>\r\n    <p class=\\''dtstart\\'' title=\\''{ical_start}\\''>Begins: {time} on {date}</p>\r\n    <p class=\\''dtend\\'' title=\\''{ical_end}\\''>Ends: {endtime} on {enddate}</p>	\r\n	<p>Recurrence: {recurs}</p>\r\n	<p>Repetition: {repeats} times</p>\r\n    <div class=\\''location\\''>{rss_hcard}</div>\r\n	{link_title}\r\n    </div>]]></content:encoded>\r\n	<dc:format xmlns:dc=\\''http://purl.org/dc/elements/1.1/\\''>text/html</dc:format>\r\n	<dc:source xmlns:dc=\\''http://purl.org/dc/elements/1.1/\\''>http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress</dc:source>\r\n	{guid}\r\n  </item>\n";s:7:"details";s:420:"<span class=\\"event-time dtstart value-title\\" title=\\"{dtstart}\\">{time}<span class=\\"time-separator\\"> - </span><span class=\\"end-time dtend value-title\\" title=\\"{dtend}\\">{endtime}</span></span>\r\n\r\n<div class=\\"sub-details\\">\r\n{hcard}\r\n<div class=\\"mc-description\\">{image}{description}</div>\r\n<p>{ical_html} &bull; {gcal_link}</p>\r\n{map}\r\n<p><a href=\\"{linking}\\" class=\\"event-link external\\">{title}</a></p></div>";s:5:"label";s:60:"More<span class=\\"screen-reader-text\\"> about {title}</span>";}', 'yes'),
(298, 'mc_skip_holidays', 'false', 'yes'),
(299, 'mc_css_file', 'inherit.css', 'yes'),
(300, 'mc_time_format', 'g:i a', 'yes'),
(301, 'mc_widget_defaults', 'a:2:{s:8:"upcoming";a:7:{s:4:"type";s:5:"event";s:6:"before";i:3;s:5:"after";i:3;s:8:"template";N;s:8:"category";s:0:"";s:4:"text";s:0:"";s:5:"title";s:15:"Upcoming Events";}s:5:"today";a:4:{s:8:"template";N;s:8:"category";s:0:"";s:5:"title";s:14:"Today''s Events";s:4:"text";s:0:"";}}', 'yes'),
(302, 'mc_show_weekends', 'true', 'yes'),
(303, 'mc_convert', 'true', 'yes'),
(304, 'mc_show_event_vcal', 'false', 'yes'),
(305, 'mc_week_caption', 'The week''s events', 'yes'),
(306, 'mc_multisite_show', '0', 'yes'),
(307, 'mc_event_link', 'true', 'yes'),
(308, 'mc_topnav', 'toggle,timeframe,jump,nav', 'yes'),
(309, 'mc_bottomnav', 'key,category,feeds', 'yes'),
(310, 'mc_update_notice', '1', 'yes'),
(311, 'mc_uri', 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=67', 'yes'),
(312, 'mc_uri_id', '67', 'yes'),
(313, 'mc_show_css', '', 'yes'),
(358, 'wd_bwg_version', '1.2.21', 'no'),
(359, 'wd_bwg_theme_version', '1.0.0', 'no'),
(361, 'GmediaHashID_salt', 'wZ9JImvX1KgI', 'yes'),
(362, 'gmediaOptions', 'a:26:{s:11:"installDate";i:1429769815;s:10:"site_email";s:0:"";s:13:"site_category";s:0:"";s:7:"site_ID";s:0:"";s:10:"mobile_app";i:0;s:18:"uninstall_dropdata";s:3:"all";s:14:"in_tag_orderby";s:2:"ID";s:12:"in_tag_order";s:4:"DESC";s:19:"in_category_orderby";s:2:"ID";s:17:"in_category_order";s:4:"DESC";s:14:"isolation_mode";s:1:"0";s:13:"shortcode_raw";s:1:"0";s:8:"endpoint";s:6:"gmedia";s:18:"gmediacloud_module";s:0:"";s:21:"gmediacloud_footer_js";s:0:"";s:22:"gmediacloud_footer_css";s:0:"";s:25:"gmedia_post_types_support";s:0:"";s:6:"folder";a:8:{s:5:"image";s:5:"image";s:11:"image_thumb";s:11:"image/thumb";s:14:"image_original";s:14:"image/original";s:5:"audio";s:5:"audio";s:5:"video";s:5:"video";s:4:"text";s:4:"text";s:11:"application";s:11:"application";s:6:"module";s:6:"module";}s:5:"thumb";a:4:{s:5:"width";i:300;s:6:"height";i:300;s:7:"quality";i:80;s:4:"crop";i:0;}s:5:"image";a:4:{s:5:"width";i:2200;s:6:"height";i:2200;s:7:"quality";i:85;s:4:"crop";i:0;}s:11:"modules_xml";s:73:"https://dl.dropboxusercontent.com/u/6295502/gmedia_modules/modules_v1.xml";s:12:"license_name";s:0:"";s:11:"license_key";s:0:"";s:12:"license_key2";s:0:"";s:10:"taxonomies";a:6:{s:15:"gmedia_category";a:27:{s:8:"abstract";s:8:"Abstract";s:7:"animals";s:7:"Animals";s:15:"black-and-white";s:15:"Black and White";s:11:"celebrities";s:11:"Celebrities";s:21:"city-and-architecture";s:19:"City & Architecture";s:10:"commercial";s:10:"Commercial";s:7:"concert";s:7:"Concert";s:6:"family";s:6:"Family";s:7:"fashion";s:7:"Fashion";s:4:"film";s:4:"Film";s:8:"fine-art";s:8:"Fine Art";s:4:"food";s:4:"Food";s:10:"journalism";s:10:"Journalism";s:10:"landscapes";s:10:"Landscapes";s:5:"macro";s:5:"Macro";s:6:"nature";s:6:"Nature";s:4:"nude";s:4:"Nude";s:6:"people";s:6:"People";s:15:"performing-arts";s:15:"Performing Arts";s:5:"sport";s:5:"Sport";s:10:"still-life";s:10:"Still Life";s:6:"street";s:6:"Street";s:14:"transportation";s:14:"Transportation";s:6:"travel";s:6:"Travel";s:10:"underwater";s:10:"Underwater";s:17:"urban-exploration";s:17:"Urban Exploration";s:7:"wedding";s:7:"Wedding";}s:10:"gmedia_tag";a:0:{}s:12:"gmedia_album";a:0:{}s:13:"gmedia_filter";a:0:{}s:14:"gmedia_gallery";a:0:{}s:13:"gmedia_module";a:0:{}}s:17:"gm_screen_options";a:18:{s:20:"per_page_sort_gmedia";i:60;s:15:"per_page_gmedia";i:30;s:14:"orderby_gmedia";s:2:"ID";s:16:"sortorder_gmedia";s:4:"DESC";s:21:"per_page_gmedia_terms";i:30;s:20:"orderby_gmedia_terms";s:4:"name";s:22:"sortorder_gmedia_terms";s:4:"DESC";s:25:"per_page_gmedia_galleries";i:30;s:24:"orderby_gmedia_galleries";s:4:"name";s:26:"sortorder_gmedia_galleries";s:4:"DESC";s:16:"per_page_wpmedia";i:30;s:15:"orderby_wpmedia";s:2:"ID";s:17:"sortorder_wpmedia";s:4:"DESC";s:16:"uploader_runtime";s:4:"auto";s:17:"uploader_chunking";s:4:"true";s:19:"uploader_chunk_size";i:8;s:25:"uploader_urlstream_upload";s:5:"false";s:22:"library_edit_quicktags";s:5:"false";}}', 'yes'),
(363, 'gmediaDbVersion', '0.9.6', 'yes'),
(364, 'gmediaVersion', '1.6.01', 'yes'),
(372, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:28:"projet.ergo.enssat@gmail.com";s:7:"version";s:5:"4.2.2";s:9:"timestamp";i:1432410239;}', 'yes'),
(412, 'rewrite_rules', 'a:88:{s:27:"gmedia/(g|s|a|t|k)/(.+?)/?$";s:42:"index.php?gmedia=$matches[2]&t=$matches[1]";s:13:"gmedia-app/?$";s:22:"index.php?gmedia-app=1";s:97:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:92:"category/(.+?)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:94:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:89:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:95:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:90:"type/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:108:"mc-event-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:56:"index.php?mc-event-category=$matches[1]&feed=$matches[2]";s:103:"mc-event-category/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:56:"index.php?mc-event-category=$matches[1]&feed=$matches[2]";s:46:"mc-event-category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?mc-event-category=$matches[1]&paged=$matches[2]";s:28:"mc-event-category/([^/]+)/?$";s:39:"index.php?mc-event-category=$matches[1]";s:37:"mc-events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"mc-events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:117:"mc-events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:112:"mc-events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"mc-events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"mc-events/([^/]+)/trackback/?$";s:36:"index.php?mc-events=$matches[1]&tb=1";s:38:"mc-events/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?mc-events=$matches[1]&paged=$matches[2]";s:45:"mc-events/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?mc-events=$matches[1]&cpage=$matches[2]";s:30:"mc-events/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?mc-events=$matches[1]&page=$matches[2]";s:26:"mc-events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"mc-events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:106:"mc-events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:101:"mc-events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"mc-events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:82:"feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:27:"index.php?&feed=$matches[1]";s:77:"(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=32&cpage=$matches[1]";s:91:"comments/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:86:"comments/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:94:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:89:"search/(.+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:97:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:92:"author/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:119:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:114:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:106:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:101:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:93:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:88:"([0-9]{4})/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:107:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:102:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:90:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:85:"(.?.+?)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:107:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:102:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:90:"([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:85:"([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:96:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:91:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|my-calendar-rss|my-calendar-ics|my-calendar-print)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(417, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1430973090', 'no'),
(420, '_transient_timeout_feed_1835d2eaaf967b5cddcf4dbccdcaeab9', '1430973092', 'no'),
(490, 'db_upgraded', '1', 'yes'),
(494, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1433898969;s:15:"version_checked";s:5:"4.1.5";s:12:"translations";a:0:{}}', 'yes'),
(505, '_site_transient_timeout_theme_roots', '1433900772', 'yes'),
(506, '_site_transient_theme_roots', 'a:4:{s:13:"blackoot-lite";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(510, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1433898982;s:7:"checked";a:4:{s:13:"blackoot-lite";s:5:"1.0.6";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.2.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.4.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.5.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(511, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1433898983;s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.2.zip";}s:27:"grand-media/grand-media.php";O:8:"stdClass":6:{s:2:"id";s:5:"40062";s:4:"slug";s:11:"grand-media";s:6:"plugin";s:27:"grand-media/grand-media.php";s:11:"new_version";s:5:"1.6.6";s:3:"url";s:42:"https://wordpress.org/plugins/grand-media/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/grand-media.zip";}s:27:"my-calendar/my-calendar.php";O:8:"stdClass":6:{s:2:"id";s:5:"14010";s:4:"slug";s:11:"my-calendar";s:6:"plugin";s:27:"my-calendar/my-calendar.php";s:11:"new_version";s:6:"2.3.32";s:3:"url";s:42:"https://wordpress.org/plugins/my-calendar/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/my-calendar.2.3.32.zip";}s:31:"photo-gallery/photo-gallery.php";O:8:"stdClass":6:{s:2:"id";s:5:"47473";s:4:"slug";s:13:"photo-gallery";s:6:"plugin";s:31:"photo-gallery/photo-gallery.php";s:11:"new_version";s:6:"1.2.34";s:3:"url";s:44:"https://wordpress.org/plugins/photo-gallery/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/photo-gallery.1.2.34.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(512, '_transient_doing_cron', '1434233057.4064989089965820312500', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'default'),
(4, 4, '_edit_lock', '1429861084:1'),
(5, 12, '_edit_last', '1'),
(6, 12, '_wp_page_template', 'default'),
(7, 12, '_edit_lock', '1429861080:1'),
(40, 20, '_edit_last', '1'),
(41, 20, '_wp_page_template', 'default'),
(42, 20, '_edit_lock', '1429861094:1'),
(46, 24, '_edit_last', '1'),
(47, 24, '_wp_page_template', 'default'),
(48, 24, '_edit_lock', '1429861085:1'),
(49, 26, '_edit_last', '1'),
(50, 26, '_wp_page_template', 'page-templates/full-width.php'),
(51, 26, '_edit_lock', '1429861111:1'),
(52, 28, '_edit_last', '1'),
(53, 28, '_wp_page_template', 'page-templates/full-width.php'),
(54, 28, '_edit_lock', '1429860824:1'),
(55, 30, '_edit_last', '1'),
(56, 30, '_wp_page_template', 'default'),
(57, 30, '_edit_lock', '1429861189:1'),
(58, 32, '_edit_last', '1'),
(59, 32, '_wp_page_template', 'page-templates/full-width.php'),
(60, 32, '_edit_lock', '1429860717:1'),
(61, 34, '_edit_last', '1'),
(62, 34, '_wp_page_template', 'default'),
(63, 34, '_edit_lock', '1429861084:1'),
(64, 36, '_edit_last', '1'),
(65, 36, '_wp_page_template', 'default'),
(66, 36, '_edit_lock', '1429861113:1'),
(69, 39, '_menu_item_type', 'post_type'),
(70, 39, '_menu_item_menu_item_parent', '0'),
(71, 39, '_menu_item_object_id', '32'),
(72, 39, '_menu_item_object', 'page'),
(73, 39, '_menu_item_target', ''),
(74, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 39, '_menu_item_xfn', ''),
(76, 39, '_menu_item_url', ''),
(98, 42, '_menu_item_type', 'post_type'),
(99, 42, '_menu_item_menu_item_parent', '0'),
(100, 42, '_menu_item_object_id', '36'),
(101, 42, '_menu_item_object', 'page'),
(102, 42, '_menu_item_target', ''),
(103, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 42, '_menu_item_xfn', ''),
(105, 42, '_menu_item_url', ''),
(107, 43, '_menu_item_type', 'post_type'),
(108, 43, '_menu_item_menu_item_parent', '42'),
(109, 43, '_menu_item_object_id', '30'),
(110, 43, '_menu_item_object', 'page'),
(111, 43, '_menu_item_target', ''),
(112, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 43, '_menu_item_xfn', ''),
(114, 43, '_menu_item_url', ''),
(116, 44, '_menu_item_type', 'post_type'),
(117, 44, '_menu_item_menu_item_parent', '42'),
(118, 44, '_menu_item_object_id', '28'),
(119, 44, '_menu_item_object', 'page'),
(120, 44, '_menu_item_target', ''),
(121, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 44, '_menu_item_xfn', ''),
(123, 44, '_menu_item_url', ''),
(125, 45, '_menu_item_type', 'post_type'),
(126, 45, '_menu_item_menu_item_parent', '42'),
(127, 45, '_menu_item_object_id', '26'),
(128, 45, '_menu_item_object', 'page'),
(129, 45, '_menu_item_target', ''),
(130, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 45, '_menu_item_xfn', ''),
(132, 45, '_menu_item_url', ''),
(134, 46, '_menu_item_type', 'post_type'),
(135, 46, '_menu_item_menu_item_parent', '0'),
(136, 46, '_menu_item_object_id', '34'),
(137, 46, '_menu_item_object', 'page'),
(138, 46, '_menu_item_target', ''),
(139, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 46, '_menu_item_xfn', ''),
(141, 46, '_menu_item_url', ''),
(143, 47, '_menu_item_type', 'post_type'),
(144, 47, '_menu_item_menu_item_parent', '46'),
(145, 47, '_menu_item_object_id', '24'),
(146, 47, '_menu_item_object', 'page'),
(147, 47, '_menu_item_target', ''),
(148, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 47, '_menu_item_xfn', ''),
(150, 47, '_menu_item_url', ''),
(152, 48, '_menu_item_type', 'post_type'),
(153, 48, '_menu_item_menu_item_parent', '46'),
(154, 48, '_menu_item_object_id', '20'),
(155, 48, '_menu_item_object', 'page'),
(156, 48, '_menu_item_target', ''),
(157, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 48, '_menu_item_xfn', ''),
(159, 48, '_menu_item_url', ''),
(161, 52, '_wp_attached_file', '2015/04/Variation_XXI_2014-r4.jpg'),
(162, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2449;s:6:"height";i:1628;s:4:"file";s:33:"2015/04/Variation_XXI_2014-r4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Variation_XXI_2014-r4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Variation_XXI_2014-r4-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"Variation_XXI_2014-r4-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"Variation_XXI_2014-r4-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(163, 57, '_wp_attached_file', '2015/04/2015-04-10_171121.jpg'),
(164, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:179;s:4:"file";s:29:"2015/04/2015-04-10_171121.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"2015-04-10_171121-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"2015-04-10_171121-300x83.jpg";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(165, 57, '_wp_attachment_custom_header_last_used_blackoot-lite', '1428676906'),
(166, 57, '_wp_attachment_is_custom_header', 'blackoot-lite'),
(167, 57, '_wp_attachment_is_custom_background', 'blackoot-lite'),
(168, 58, '_edit_last', '1'),
(169, 58, '_edit_lock', '1429862363:1'),
(170, 59, '_wp_attached_file', '2015/04/1187835677_Concert2_1280x1024_13.jpg'),
(171, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1024;s:4:"file";s:44:"2015/04/1187835677_Concert2_1280x1024_13.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"1187835677_Concert2_1280x1024_13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"1187835677_Concert2_1280x1024_13-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"1187835677_Concert2_1280x1024_13-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"1187835677_Concert2_1280x1024_13-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(176, 70, '_mc_event_shortcode', '[my_calendar_event event=''1'' template=''details'' list='''']'),
(177, 70, '_mc_event_access', 'a:1:{s:5:"notes";s:0:"";}'),
(178, 70, '_mc_event_id', '1'),
(179, 70, '_mc_event_desc', 'Faire en sorte que le Zbra contamine le monde !'),
(180, 70, '_mc_event_image', ''),
(181, 70, '_mc_event_data', 'a:42:{s:11:"event_begin";s:10:"2015-04-24";s:9:"event_end";s:10:"2015-04-24";s:11:"event_title";s:4:"Zbra";s:10:"event_desc";s:47:"Faire en sorte que le Zbra contamine le monde !";s:11:"event_short";s:0:"";s:10:"event_time";s:8:"22:30:00";s:13:"event_endtime";s:8:"23:45:00";s:10:"event_link";s:0:"";s:11:"event_label";s:0:"";s:12:"event_street";s:0:"";s:13:"event_street2";s:0:"";s:10:"event_city";s:0:"";s:11:"event_state";s:0:"";s:14:"event_postcode";s:0:"";s:12:"event_region";s:0:"";s:13:"event_country";s:0:"";s:9:"event_url";s:0:"";s:11:"event_recur";s:2:"S1";s:11:"event_image";s:0:"";s:11:"event_phone";s:0:"";s:12:"event_phone2";s:0:"";s:12:"event_access";s:0:"";s:13:"event_tickets";s:0:"";s:18:"event_registration";s:0:"";s:13:"event_repeats";i:0;s:12:"event_author";s:1:"1";s:14:"event_category";s:1:"1";s:18:"event_link_expires";s:1:"0";s:10:"event_zoom";s:0:"";s:10:"event_open";s:1:"2";s:11:"event_group";i:0;s:14:"event_approved";s:1:"1";s:10:"event_host";s:1:"1";s:13:"event_flagged";i:0;s:16:"event_fifth_week";i:1;s:13:"event_holiday";i:0;s:14:"event_group_id";i:0;s:10:"event_span";i:0;s:14:"event_hide_end";i:0;s:15:"event_longitude";s:0:"";s:14:"event_latitude";s:0:"";s:9:"shortcode";s:56:"[my_calendar_event event=''1'' template=''details'' list='''']";}'),
(182, 77, '_edit_last', '1'),
(183, 77, '_edit_lock', '1429862365:1'),
(187, 83, '_wp_attached_file', '2015/04/cropped-1187835677_Concert2_1280x1024_13.jpg'),
(188, 83, '_wp_attachment_context', 'custom-header'),
(189, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:363;s:4:"file";s:52:"2015/04/cropped-1187835677_Concert2_1280x1024_13.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"cropped-1187835677_Concert2_1280x1024_13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"cropped-1187835677_Concert2_1280x1024_13-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:52:"cropped-1187835677_Concert2_1280x1024_13-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(190, 83, '_wp_attachment_custom_header_last_used_blackoot-lite', '1429778558'),
(191, 83, '_wp_attachment_is_custom_header', 'blackoot-lite'),
(201, 67, '_edit_lock', '1429860859:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2015-04-10 13:09:55', '2015-04-10 13:09:55', '', 'Prochains concerts', '', 'publish', 'closed', 'closed', '', 'a-venir', '', '', '2015-04-24 07:35:27', '2015-04-24 07:35:27', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-04-10 13:07:23', '2015-04-10 13:07:23', '', 'A venir', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-04-10 13:07:23', '2015-04-10 13:07:23', '', 4, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=5', 0, 'revision', '', 0),
(12, 1, '2015-04-10 13:14:13', '2015-04-10 13:14:13', '', 'Articles', '', 'publish', 'closed', 'closed', '', 'articles', '', '', '2015-04-24 07:34:40', '2015-04-24 07:34:40', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-04-10 13:14:13', '2015-04-10 13:14:13', '', 'Articles', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 13:14:13', '2015-04-10 13:14:13', '', 12, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=13', 0, 'revision', '', 0),
(20, 1, '2015-04-10 13:27:39', '2015-04-10 13:27:39', '<div class="cartouche">\r\n<h1 class="titre-texte" style="text-align: left;">Chanter avec l’ensemble vocal VARIATION XXI</h1>\r\n</div>\r\n<div class="texte" style="text-align: left;">Les choristes de Variation XXI proposent à des chanteuses et chanteurs de les rejoindre, notamment dans les pupitres de soprano et de ténor.\r\nIl n’est pas indispensable de savoir déchiffrer couramment une partition pour s’intégrer au travail du chœur. La formation vocale et musicale s’acquiert par imprégnation au fil du travail du chœur. Par contre, une expérience du chant choral, une connaissance de sa propre voix, savoir se repérer dans une partition sont nécessaires.\r\nLes répétitions ont lieu chaque lundi de 20h30 à 22h30, à la salle polyvalente de Lanmérin.\r\nDes week-ends de répétition complètent ce travail, à raison d’environ un par mois.</div>', 'Présentation', '', 'publish', 'closed', 'closed', '', 'presentation', '', '', '2015-04-24 07:35:50', '2015-04-24 07:35:50', '', 34, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-04-10 13:27:39', '2015-04-10 13:27:39', '', 'Présentation', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-10 13:27:39', '2015-04-10 13:27:39', '', 20, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=21', 0, 'revision', '', 0),
(24, 1, '2015-04-10 13:31:19', '2015-04-10 13:31:19', '', 'Biographies', '', 'publish', 'closed', 'closed', '', 'biographies', '', '', '2015-04-24 07:35:35', '2015-04-24 07:35:35', '', 34, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2015-04-10 13:31:20', '2015-04-10 13:31:20', '', 'Biographies', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2015-04-10 13:31:20', '2015-04-10 13:31:20', '', 24, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-04-10 13:32:59', '2015-04-10 13:32:59', '<p style="text-align: left;"><strong>Jean Sébastien BACH</strong></p>\r\n<p style="text-align: left;">Les principales pièces du programme, en cours de finalisation, seront organisées comme suit :</p>\r\n<p style="text-align: left;">Le motet Lobet den Herrn - une première cantate. Puis une partie orchestrale (probablement une suite de Bach) - et la deuxième cantate. L’orchestre sera principalement composé de membres du Conservatoire National Supérieur de Musique et de Danse de Paris.</p>\r\n<p style="text-align: left;">Le continuo sera tenu par Claudette BRETON-AUFFRET</p>\r\n<p style="text-align: left;"><strong>L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN</strong></p>\r\n&nbsp;\r\n\r\n[my_calendar]', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2015-04-24 07:36:11', '2015-04-24 07:36:11', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2015-04-10 13:32:59', '2015-04-10 13:32:59', '', 'Agenda', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-10 13:32:59', '2015-04-10 13:32:59', '', 26, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2015-04-10 13:35:18', '2015-04-10 13:35:18', '[gmedia id=2]', 'Gallerie', '', 'publish', 'closed', 'closed', '', 'gallerie', '', '', '2015-04-23 07:01:47', '2015-04-23 07:01:47', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2015-04-10 13:35:18', '2015-04-10 13:35:18', '', 'Gallerie', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2015-04-10 13:35:18', '2015-04-10 13:35:18', '', 28, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-04-10 13:36:36', '2015-04-10 13:36:36', '<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=77"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="Concert number one" width="300" height="240" />\r\nNotre Super concert number one !</a>', 'Musique', '', 'publish', 'closed', 'closed', '', 'musique', '', '', '2015-04-23 07:14:43', '2015-04-23 07:14:43', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-04-10 13:36:36', '2015-04-10 13:36:36', '', 'Musique', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-04-10 13:36:36', '2015-04-10 13:36:36', '', 30, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2015-04-10 13:44:00', '2015-04-10 13:44:00', '<p style="text-align: left;">L’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.</p>\r\n<p style="text-align: left;"><strong><strong><a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>Après la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.</p>\r\n<p style="text-align: left;">Le programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").</p>\r\n<p style="text-align: left;">L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)</p>\r\n<a title="Présentation" href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=20">En savoir plus ...</a>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\r\n\r\n&nbsp;\r\n<p style="text-align: left;">Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj</p>\r\n<p style="text-align: left;">Vous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a></p>', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2015-04-24 07:28:00', '2015-04-24 07:28:00', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2015-04-10 13:44:00', '2015-04-10 13:44:00', '', 'Accueil', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-04-10 13:44:00', '2015-04-10 13:44:00', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2015-04-10 13:58:27', '2015-04-10 13:58:27', '', 'L''association', '', 'publish', 'closed', 'closed', '', 'lassociation', '', '', '2015-04-24 07:34:47', '2015-04-24 07:34:47', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-04-10 13:58:27', '2015-04-10 13:58:27', '', 'L''association', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-04-10 13:58:27', '2015-04-10 13:58:27', '', 34, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-04-10 14:03:31', '2015-04-10 14:03:31', '', 'Les concerts', '', 'publish', 'closed', 'closed', '', 'les-concerts', '', '', '2015-04-24 07:35:55', '2015-04-24 07:35:55', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=36', 0, 'page', '', 0),
(38, 1, '2015-04-10 14:03:31', '2015-04-10 14:03:31', '', 'Les concerts', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-04-10 14:03:31', '2015-04-10 14:03:31', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-04-10 14:08:25', '2015-04-10 14:08:25', ' ', '', '', 'publish', 'open', 'closed', '', '39', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=39', 1, 'nav_menu_item', '', 0),
(42, 1, '2015-04-10 14:14:57', '2015-04-10 14:14:57', ' ', '', '', 'publish', 'open', 'closed', '', '42', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2015-04-10 14:14:58', '2015-04-10 14:14:58', ' ', '', '', 'publish', 'open', 'closed', '', '43', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=43', 5, 'nav_menu_item', '', 0),
(44, 1, '2015-04-10 14:14:58', '2015-04-10 14:14:58', ' ', '', '', 'publish', 'open', 'closed', '', '44', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2015-04-10 14:14:57', '2015-04-10 14:14:57', ' ', '', '', 'publish', 'open', 'closed', '', '45', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 36, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2015-04-10 14:14:58', '2015-04-10 14:14:58', '', 'L''association', '', 'publish', 'open', 'closed', '', 'lassociation', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=46', 6, 'nav_menu_item', '', 0),
(47, 1, '2015-04-10 14:14:59', '2015-04-10 14:14:59', '', 'Les Choristes', '', 'publish', 'open', 'closed', '', '47', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 34, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=47', 8, 'nav_menu_item', '', 0),
(48, 1, '2015-04-10 14:14:59', '2015-04-10 14:14:59', ' ', '', '', 'publish', 'open', 'closed', '', '48', '', '', '2015-04-24 07:07:24', '2015-04-24 07:07:24', '', 34, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=48', 7, 'nav_menu_item', '', 0),
(49, 1, '2015-04-10 14:17:01', '2015-04-10 14:17:01', '', 'Prochains concerts', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-04-10 14:17:01', '2015-04-10 14:17:01', '', 4, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=49', 0, 'revision', '', 0),
(51, 1, '2015-04-24 07:27:52', '2015-04-24 07:27:52', '<p style="text-align: left;">L’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.</p>\n<p style="text-align: left;"><strong><strong><a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>Après la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.</p>\n<p style="text-align: left;">Le programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").</p>\n<p style="text-align: left;">L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)</p>\n<a title="Présentation" href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=20">En savoir plus ...</a>\n\n&nbsp;\n\n<hr />\n\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\n\n&nbsp;\n<p style="text-align: right;">Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj</p>\n<p style="text-align: right;">Vous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a></p>', 'Accueil', '', 'inherit', 'open', 'open', '', '32-autosave-v1', '', '', '2015-04-24 07:27:52', '2015-04-24 07:27:52', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-04-10 14:21:34', '2015-04-10 14:21:34', '', 'Variation_XXI_2014-r4', '', 'inherit', 'open', 'open', '', 'variation_xxi_2014-r4', '', '', '2015-04-10 14:21:34', '2015-04-10 14:21:34', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2015-04-10 14:24:07', '2015-04-10 14:24:07', '<img class="  wp-image-52 aligncenter" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="427" height="283" />\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;', 'Accueil', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-04-10 14:24:07', '2015-04-10 14:24:07', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=53', 0, 'revision', '', 0),
(55, 1, '2015-04-10 14:30:23', '2015-04-10 14:30:23', '&nbsp;\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.\r\n\r\n<strong><strong> <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-10 14:30:23', '2015-04-10 14:30:23', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=55', 0, 'revision', '', 0),
(57, 1, '2015-04-10 14:40:43', '2015-04-10 14:40:43', '', '2015-04-10_171121', '', 'inherit', 'closed', 'closed', '', '2015-04-10_171121', '', '', '2015-04-10 14:40:43', '2015-04-10 14:40:43', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/2015-04-10_171121.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2015-04-10 15:09:51', '2015-04-10 15:09:51', '<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Concert du 20/04/2015', '', 'publish', 'closed', 'closed', '', 'concert-du-20042015', '', '', '2015-04-10 15:09:51', '2015-04-10 15:09:51', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=58', 0, 'post', '', 0),
(59, 1, '2015-04-10 15:05:50', '2015-04-10 15:05:50', '', 'Concert number one', '', 'inherit', 'closed', 'closed', '', '1187835677_concert2_1280x1024_13', '', '', '2015-04-23 07:10:58', '2015-04-23 07:10:58', '', 58, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2015-04-13 19:07:28', '2015-04-13 19:07:28', '<strong>Jean Sébastien BACH</strong>\n\nLes principales pièces du programme, en cours de finalisation, seront organisées comme suit :\n\nLe motet Lobet den Herrn - une première cantate. Puis une partie orchestrale (probablement une suite de Bach) - et la deuxième cantate. L’orchestre sera principalement composé de membres du Conservatoire National Supérieur de Musique et de Danse de Paris.\n\nLe continuo sera tenu par Claudette BRETON-AUFFRET\n\n<strong>L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN</strong>\n\n&nbsp;\n\n[my_calendar]', 'Agenda', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2015-04-13 19:07:28', '2015-04-13 19:07:28', '', 26, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-04-10 15:06:45', '2015-04-10 15:06:45', '<strong>Jean Sébastien BACH</strong>\r\n\r\nLes principales pièces du programme, en cours de finalisation, seront organisées comme suit :\r\n\r\nLe motet Lobet den Herrn - une première cantate. Puis une partie orchestrale (probablement une suite de Bach) - et la deuxième cantate. L’orchestre sera principalement composé de membres du Conservatoire National Supérieur de Musique et de Danse de Paris.\r\n\r\nLe continuo sera tenu par Claudette BRETON-AUFFRET\r\n\r\n<strong>L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN</strong>', 'Agenda', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-04-10 15:06:45', '2015-04-10 15:06:45', '', 26, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2015-04-10 15:09:51', '2015-04-10 15:09:51', '<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Concert du 20/04/2015', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2015-04-10 15:09:51', '2015-04-10 15:09:51', '', 58, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=62', 0, 'revision', '', 0),
(64, 1, '2015-04-10 15:15:47', '2015-04-10 15:15:47', '&nbsp;\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.\r\n\r\n<strong><strong> <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-10 15:15:47', '2015-04-10 15:15:47', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=64', 0, 'revision', '', 0),
(65, 1, '2015-04-10 15:17:20', '2015-04-10 15:17:20', '&nbsp;\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.\r\n\r\n<strong><strong> <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;\r\n\r\n<hr>\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-10 15:17:20', '2015-04-10 15:17:20', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2015-04-10 15:18:56', '2015-04-10 15:18:56', '&nbsp;\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.\r\n\r\n<strong><strong> <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nNotre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-10 15:18:56', '2015-04-10 15:18:56', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2015-04-13 19:03:18', '2015-04-13 19:03:18', '[my_calendar]', 'My Calendar', '', 'publish', 'closed', 'closed', '', 'my-calendar', '', '', '2015-04-13 19:03:18', '2015-04-13 19:03:18', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=67', 0, 'page', '', 0),
(68, 1, '2015-04-13 19:03:18', '2015-04-13 19:03:18', '[my_calendar]', 'My Calendar', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-04-13 19:03:18', '2015-04-13 19:03:18', '', 67, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2015-04-13 19:07:35', '2015-04-13 19:07:35', '<strong>Jean Sébastien BACH</strong>\r\n\r\nLes principales pièces du programme, en cours de finalisation, seront organisées comme suit :\r\n\r\nLe motet Lobet den Herrn - une première cantate. Puis une partie orchestrale (probablement une suite de Bach) - et la deuxième cantate. L’orchestre sera principalement composé de membres du Conservatoire National Supérieur de Musique et de Danse de Paris.\r\n\r\nLe continuo sera tenu par Claudette BRETON-AUFFRET\r\n\r\n<strong>L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN</strong>\r\n\r\n&nbsp;\r\n\r\n[my_calendar]', 'Agenda', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-04-13 19:07:35', '2015-04-13 19:07:35', '', 26, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-04-13 19:25:39', '2015-04-13 19:25:39', 'Faire en sorte que le Zbra contamine le monde !', 'Zbra', '', 'publish', 'closed', 'closed', '', 'zbra', '', '', '2015-04-13 19:25:39', '2015-04-13 19:25:39', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?mc-events=zbra', 0, 'mc-events', '', 0),
(71, 1, '2015-04-23 06:04:38', '2015-04-23 06:04:38', '&nbsp;\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.<strong><strong> <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\n<strong><strong> </strong></strong>\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nNotre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-23 06:04:38', '2015-04-23 06:04:38', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2015-04-23 06:06:29', '2015-04-23 06:06:29', '&nbsp;\r\n\r\nL’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.<strong><strong> <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>\r\n\r\nAprès la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nNotre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-23 06:06:29', '2015-04-23 06:06:29', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2015-04-23 06:23:14', '2015-04-23 06:23:14', '<div class="cartouche">\r\n<h1 class="titre-texte">Chanter avec l’ensemble vocal VARIATION XXI</h1>\r\n</div>\r\n<div class="texte">Les choristes de Variation XXI proposent à des chanteuses et chanteurs de les rejoindre, notamment dans les pupitres de soprano et de ténor.\r\nIl n’est pas indispensable de savoir déchiffrer couramment une partition pour s’intégrer au travail du chœur. La formation vocale et musicale s’acquiert par imprégnation au fil du travail du chœur. Par contre, une expérience du chant choral, une connaissance de sa propre voix, savoir se repérer dans une partition sont nécessaires.\r\nLes répétitions ont lieu chaque lundi de 20h30 à 22h30, à la salle polyvalente de Lanmérin.\r\nDes week-ends de répétition complètent ce travail, à raison d’environ un par mois.</div>', 'Présentation', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2015-04-23 06:23:14', '2015-04-23 06:23:14', '', 20, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2015-04-23 06:25:08', '2015-04-23 06:25:08', 'L’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.\r\n\r\n<strong><strong><a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>Après la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.\r\n\r\nLe programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").\r\n\r\nL’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)\r\n\r\n<a title="Présentation" href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=20">En savoir plus ...</a>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\r\n\r\n&nbsp;\r\n\r\nNotre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj\r\n\r\nVous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-23 06:25:08', '2015-04-23 06:25:08', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=74', 0, 'revision', '', 0),
(75, 1, '2015-04-23 06:52:00', '2015-04-23 06:52:00', '[gmedia id=2]', 'Gallerie', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-04-23 06:52:00', '2015-04-23 06:52:00', '', 28, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=75', 0, 'revision', '', 0),
(77, 1, '2015-04-23 07:10:23', '2015-04-23 07:10:23', 'Notre super concert number one était super cool.\r\n\r\nOn a même eu justin bieber en guest, ca déchirait grave.\r\nVous pouvez même retrouver nos musiques néo-métal-gothique-classique juste en dessous.\r\n\r\nNos mewsik: [gmedia id=4]<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-admin/post-new.php#"> </a>', 'Concert number one', '', 'publish', 'closed', 'closed', '', 'concert-number-one', '', '', '2015-04-23 07:20:41', '2015-04-23 07:20:41', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2015-04-23 07:13:19', '2015-04-23 07:13:19', '<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=77"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="Concert number one" width="300" height="240" />\nNotre Super concert number one !</a>', 'Musique', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2015-04-23 07:13:19', '2015-04-23 07:13:19', '', 30, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2015-04-23 07:07:33', '2015-04-23 07:07:33', 'Voici nos musiques :\r\n\r\n[gmedia id=4]', 'Musique', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-04-23 07:07:33', '2015-04-23 07:07:33', '', 30, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2015-04-23 07:10:23', '2015-04-23 07:10:23', 'Nos mewsik: [gmedia id=4]<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-admin/post-new.php#"> </a>', 'Concert number one', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2015-04-23 07:10:23', '2015-04-23 07:10:23', '', 77, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2015-04-23 07:14:43', '2015-04-23 07:14:43', '<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=77"><img class="alignnone size-medium wp-image-59" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="Concert number one" width="300" height="240" />\r\nNotre Super concert number one !</a>', 'Musique', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-04-23 07:14:43', '2015-04-23 07:14:43', '', 30, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2015-04-23 07:20:41', '2015-04-23 07:20:41', 'Notre super concert number one était super cool.\r\n\r\nOn a même eu justin bieber en guest, ca déchirait grave.\r\nVous pouvez même retrouver nos musiques néo-métal-gothique-classique juste en dessous.\r\n\r\nNos mewsik: [gmedia id=4]<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-admin/post-new.php#"> </a>', 'Concert number one', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2015-04-23 07:20:41', '2015-04-23 07:20:41', '', 77, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2015-04-23 08:42:20', '2015-04-23 08:42:20', 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/cropped-1187835677_Concert2_1280x1024_13.jpg', 'cropped-1187835677_Concert2_1280x1024_13.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-1187835677_concert2_1280x1024_13-jpg', '', '', '2015-04-23 08:42:20', '2015-04-23 08:42:20', '', 0, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/cropped-1187835677_Concert2_1280x1024_13.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2015-04-24 07:28:00', '2015-04-24 07:28:00', '<p style="text-align: left;">L’Ensemble Vocal " Variation XXI " de Lannion est composé de 35 choristes confirmés sous la direction de Jean-Jacques L’ANTHOËN, assisté de Camille OUDOT.</p>\r\n<p style="text-align: left;"><strong><strong><a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4.jpg"><img class="  wp-image-52 alignright" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/Variation_XXI_2014-r4-300x199.jpg" alt="Variation_XXI_2014-r4" width="421" height="279" /></a></strong></strong>Après la saison Mozart de 2013, (en compagnie du chœur Arezzo, voir onglet 2013), et la saison dernière consacrée aux Romantiques Allemands et plus particulièrement à Brahms et Schumann, Variation XXI propose cette année un programme J.S. Bach.</p>\r\n<p style="text-align: left;">Le programme, en cours de finalisation, comportera notamment les cantates 4 et 131, et le motet Lobet den Herrn... (voir la rubrique "Les concerts").</p>\r\n<p style="text-align: left;">L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN, - professionnel diplômé en chant lyrique, direction de chœur et direction d’orchestre, - en fin d’études au Conservatoire National Supérieur de Musique et de Danse de Paris (CNSMDP)</p>\r\n<a title="Présentation" href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=20">En savoir plus ...</a>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n<a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13.jpg"><img class=" size-medium wp-image-59 alignleft" src="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/wp-content/uploads/2015/04/1187835677_Concert2_1280x1024_13-300x240.jpg" alt="1187835677_Concert2_1280x1024_13" width="300" height="240" /></a>\r\n\r\n&nbsp;\r\n<p style="text-align: left;">Notre prochain concert se déroulera le 20/04/2015 a l''église saint germaine blabakizjazdjodhuazhioazdozaihdiazjdouhvôizj</p>\r\n<p style="text-align: left;">Vous pouvez retrouver le concert dans notre agenda, ainsi que nos autres dates : <a href="http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/?page_id=26">Agenda</a></p>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-04-24 07:28:00', '2015-04-24 07:28:00', '', 32, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/32-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-04-24 07:35:50', '2015-04-24 07:35:50', '<div class="cartouche">\r\n<h1 class="titre-texte" style="text-align: left;">Chanter avec l’ensemble vocal VARIATION XXI</h1>\r\n</div>\r\n<div class="texte" style="text-align: left;">Les choristes de Variation XXI proposent à des chanteuses et chanteurs de les rejoindre, notamment dans les pupitres de soprano et de ténor.\r\nIl n’est pas indispensable de savoir déchiffrer couramment une partition pour s’intégrer au travail du chœur. La formation vocale et musicale s’acquiert par imprégnation au fil du travail du chœur. Par contre, une expérience du chant choral, une connaissance de sa propre voix, savoir se repérer dans une partition sont nécessaires.\r\nLes répétitions ont lieu chaque lundi de 20h30 à 22h30, à la salle polyvalente de Lanmérin.\r\nDes week-ends de répétition complètent ce travail, à raison d’environ un par mois.</div>', 'Présentation', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2015-04-24 07:35:50', '2015-04-24 07:35:50', '', 20, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/20-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2015-04-24 07:36:11', '2015-04-24 07:36:11', '<p style="text-align: left;"><strong>Jean Sébastien BACH</strong></p>\r\n<p style="text-align: left;">Les principales pièces du programme, en cours de finalisation, seront organisées comme suit :</p>\r\n<p style="text-align: left;">Le motet Lobet den Herrn - une première cantate. Puis une partie orchestrale (probablement une suite de Bach) - et la deuxième cantate. L’orchestre sera principalement composé de membres du Conservatoire National Supérieur de Musique et de Danse de Paris.</p>\r\n<p style="text-align: left;">Le continuo sera tenu par Claudette BRETON-AUFFRET</p>\r\n<p style="text-align: left;"><strong>L’ensemble sera placé sous la direction de Jean-Jacques L’ANTHOËN</strong></p>\r\n&nbsp;\r\n\r\n[my_calendar]', 'Agenda', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-04-24 07:36:11', '2015-04-24 07:36:11', '', 26, 'http://raspi-treb.suroot.com:8080/Projects/VariationXXI/Site/wordpress/26-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(6, 'menu', 'menu', 0),
(7, 'Concert', 'concert', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(39, 6, 0),
(42, 6, 0),
(43, 6, 0),
(44, 6, 0),
(45, 6, 0),
(46, 6, 0),
(47, 6, 0),
(48, 6, 0),
(58, 1, 0),
(77, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 8),
(7, 7, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '54'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '6'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&wplink=0'),
(20, 1, 'wp_user-settings-time', '1429860490'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'manageedit-pagecolumnshidden', 'a:2:{i:0;s:6:"author";i:1;s:0:"";}'),
(24, 1, 'edit_page_per_page', '20'),
(25, 1, 'session_tokens', 'a:1:{s:64:"a7de2e6d6c4e5514becd7bb41796d214f8ff4b33f64a8b3aac08888eceb315d8";a:4:{s:10:"expiration";i:1431102662;s:2:"ip";s:14:"148.60.226.121";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430929862;}}'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BdOtsQbF.6FhDx1.ib9nnuqA6yHpqn.', 'admin', 'projet.ergo.enssat@gmail.com', '', '2015-04-02 13:13:49', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
