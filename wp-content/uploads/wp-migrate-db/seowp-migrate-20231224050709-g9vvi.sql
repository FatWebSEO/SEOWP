# WordPress MySQL database migration
#
# Generated: Sunday 24. December 2023 05:07 UTC
# Hostname: localhost
# Database: `local`
# URL: //seowp.local
# Path: C:\\Users\\kyle\\Local Sites\\seowp\\app\\public
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_seopress_significant_keywords, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, page, post, seopress_404, wp_global_styles, wp_navigation
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-12-23 06:31:15', '2023-12-23 06:31:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://en.gravatar.com/">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://seowp.local', 'yes'),
(2, 'home', 'http://seowp.local', 'yes'),
(3, 'blogname', 'SEOWP', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dev-email@wpengine.local', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"^sitemaps.xml$";s:28:"index.php?seopress_sitemap=1";s:18:"^sitemaps_xsl.xsl$";s:32:"index.php?seopress_sitemap_xsl=1";s:24:"^sitemaps_video_xsl.xsl$";s:38:"index.php?seopress_sitemap_video_xsl=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:61:"index.php?seopress_cpt=$matches[1]&seopress_paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyfour', 'yes'),
(41, 'stylesheet', 'twentytwentyfour', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1718865075', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:93:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:25:"seopress_manage_dashboard";b:1;s:28:"seopress_manage_titles_metas";b:1;s:32:"seopress_manage_xml_html_sitemap";b:1;s:31:"seopress_manage_social_networks";b:1;s:25:"seopress_manage_analytics";b:1;s:24:"seopress_manage_advanced";b:1;s:21:"seopress_manage_tools";b:1;s:32:"seopress_manage_instant_indexing";b:1;s:19:"seopress_manage_pro";b:1;s:23:"seopress_manage_schemas";b:1;s:19:"seopress_manage_bot";b:1;s:23:"seopress_manage_license";b:1;s:16:"edit_redirection";b:1;s:17:"edit_redirections";b:1;s:24:"edit_others_redirections";b:1;s:20:"publish_redirections";b:1;s:16:"read_redirection";b:1;s:25:"read_private_redirections";b:1;s:18:"delete_redirection";b:1;s:19:"delete_redirections";b:1;s:26:"delete_others_redirections";b:1;s:29:"delete_published_redirections";b:1;s:11:"edit_schema";b:1;s:12:"edit_schemas";b:1;s:19:"edit_others_schemas";b:1;s:15:"publish_schemas";b:1;s:11:"read_schema";b:1;s:20:"read_private_schemas";b:1;s:13:"delete_schema";b:1;s:14:"delete_schemas";b:1;s:21:"delete_others_schemas";b:1;s:24:"delete_published_schemas";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
(106, 'cron', 'a:13:{i:1703395877;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1703397563;a:2:{s:30:"seopress_google_analytics_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:30:"seopress_matomo_analytics_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1703399476;a:2:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1703399477;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1703399492;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1703399493;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1703401105;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"b4b17768ecd6a3369b716a0ce3abb8f6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:9;}}}}i:1703480284;a:1:{s:31:"seopress_xml_sitemaps_ping_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1703480363;a:2:{s:26:"seopress_404_cron_cleaning";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:33:"seopress_page_speed_insights_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1703480513;a:1:{s:26:"seopress_insights_gsc_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1703918039;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1703998913;a:1:{s:30:"seopress_404_email_alerts_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(147, 'can_compress_scripts', '1', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'wp_migrate_addon_schema', '1', 'yes'),
(176, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1703394429;}', 'no'),
(183, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(216, 'seopress_activated', 'yes', 'yes'),
(217, 'seopress_toggle', 'a:15:{s:13:"toggle-titles";s:1:"1";s:18:"toggle-xml-sitemap";s:1:"1";s:13:"toggle-social";s:1:"1";s:23:"toggle-google-analytics";s:1:"1";s:23:"toggle-instant-indexing";s:1:"1";s:15:"toggle-advanced";s:1:"1";s:18:"toggle-dublin-core";s:1:"1";s:21:"toggle-local-business";s:1:"1";s:20:"toggle-rich-snippets";s:1:"1";s:18:"toggle-breadcrumbs";s:1:"1";s:13:"toggle-robots";s:1:"1";s:10:"toggle-404";s:1:"1";s:10:"toggle-bot";s:1:"1";s:18:"toggle-inspect-url";s:1:"1";s:9:"toggle-ai";s:1:"1";}', 'yes'),
(218, 'seopress_titles_option_name', 'a:13:{s:31:"seopress_titles_home_site_title";s:13:"%%sitetitle%%";s:30:"seopress_titles_home_site_desc";s:11:"%%tagline%%";s:19:"seopress_titles_sep";s:1:"-";s:29:"seopress_titles_single_titles";a:2:{s:4:"post";a:2:{s:5:"title";s:36:"%%post_title%% %%sep%% %%sitetitle%%";s:11:"description";s:16:"%%post_excerpt%%";}s:4:"page";a:2:{s:5:"title";s:36:"%%post_title%% %%sep%% %%sitetitle%%";s:11:"description";s:16:"%%post_excerpt%%";}}s:30:"seopress_titles_archive_titles";a:2:{s:4:"post";a:1:{s:5:"title";s:59:"%%cpt_plural%% %%current_pagination%% %%sep%% %%sitetitle%%";}s:4:"page";a:1:{s:5:"title";s:59:"%%cpt_plural%% %%current_pagination%% %%sep%% %%sitetitle%%";}}s:37:"seopress_titles_archives_author_title";s:37:"%%post_author%% %%sep%% %%sitetitle%%";s:39:"seopress_titles_archives_author_noindex";s:1:"1";s:35:"seopress_titles_archives_date_title";s:38:"%%archive_date%% %%sep%% %%sitetitle%%";s:37:"seopress_titles_archives_date_noindex";s:1:"1";s:37:"seopress_titles_archives_search_title";s:41:"%%search_keywords%% %%sep%% %%sitetitle%%";s:34:"seopress_titles_archives_404_title";s:42:"404 - Page not found %%sep%% %%sitetitle%%";s:25:"seopress_titles_paged_rel";s:1:"1";s:35:"seopress_titles_attachments_noindex";s:1:"1";}', 'yes'),
(219, 'seopress_xml_sitemap_option_name', 'a:4:{s:35:"seopress_xml_sitemap_general_enable";s:1:"1";s:31:"seopress_xml_sitemap_img_enable";s:1:"1";s:36:"seopress_xml_sitemap_post_types_list";a:2:{s:4:"post";a:1:{s:7:"include";s:1:"1";}s:4:"page";a:1:{s:7:"include";s:1:"1";}}s:36:"seopress_xml_sitemap_taxonomies_list";a:2:{s:8:"category";a:1:{s:7:"include";s:1:"1";}s:8:"post_tag";a:1:{s:7:"include";s:1:"1";}}}', 'yes'),
(220, 'seopress_social_option_name', 'a:2:{s:27:"seopress_social_facebook_og";s:1:"1";s:28:"seopress_social_twitter_card";s:1:"1";}', 'yes'),
(221, 'seopress_advanced_option_name', 'a:8:{s:38:"seopress_advanced_advanced_attachments";s:1:"1";s:42:"seopress_advanced_advanced_tax_desc_editor";s:1:"1";s:38:"seopress_advanced_appearance_title_col";s:1:"1";s:42:"seopress_advanced_appearance_meta_desc_col";s:1:"1";s:38:"seopress_advanced_appearance_score_col";s:1:"1";s:40:"seopress_advanced_appearance_noindex_col";s:1:"1";s:41:"seopress_advanced_appearance_nofollow_col";s:1:"1";s:54:"seopress_advanced_appearance_universal_metabox_disable";s:1:"1";}', 'yes'),
(223, 'seopress_versions', 'a:2:{s:4:"free";s:5:"7.3.2";s:3:"pro";s:5:"7.3.1";}', 'no'),
(224, 'seopress_instant_indexing_option_name', 'a:2:{s:38:"seopress_instant_indexing_bing_api_key";s:44:"ZTkxYjIzM2FlMTY0NDEzZmFjYTJiYjg3MWU4NmMxOTg=";s:45:"seopress_instant_indexing_automate_submission";s:1:"1";}', 'yes'),
(227, 'seopress_pro_activated', 'yes', 'yes'),
(228, 'widget_seopress_pro_lb_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(231, 'seopress_pro_option_name', 'a:1:{s:27:"seopress_dublin_core_enable";s:1:"1";}', 'yes'),
(232, 'seopress_bot_option_name', 'a:2:{s:37:"seopress_bot_scan_settings_post_types";a:2:{s:4:"post";a:1:{s:7:"include";s:1:"1";}s:4:"page";a:1:{s:7:"include";s:1:"1";}}s:30:"seopress_bot_scan_settings_404";s:1:"1";}', 'yes'),
(233, 'seopress_pro_license_key', '7ab3492d58936bbb70e5f92415af5921', 'yes'),
(236, 'seopress_pro_license_status', 'valid', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(237, 'edd_sl_02f3df28ffa4e08567885012d5bc0d8a', 'a:2:{s:7:"timeout";i:1703404865;s:5:"value";s:52203:"{"new_version":"7.3.1","stable_version":"7.3.1","name":"SEOPress PRO","slug":"seopress-pro","url":"https:\\/\\/www.seopress.org\\/downloads\\/seopress-pro\\/?changelog=1","last_updated":"2023-12-19 09:55:35","homepage":"https:\\/\\/www.seopress.org\\/","package":"https:\\/\\/www.seopress.org\\/edd-sl\\/package_download\\/MTcwMzQ4Mzk5MTo3YWIzNDkyZDU4OTM2YmJiNzBlNWY5MjQxNWFmNTkyMToxMTM6YjQ1NTI0YjhiM2ZkODhmY2M5YzBjOTFkMTY2NDljMjg6aHR0cEAvL3Nlb3dwLmxvY2FsOjA=","download_link":"https:\\/\\/www.seopress.org\\/edd-sl\\/package_download\\/MTcwMzQ4Mzk5MTo3YWIzNDkyZDU4OTM2YmJiNzBlNWY5MjQxNWFmNTkyMToxMTM6YjQ1NTI0YjhiM2ZkODhmY2M5YzBjOTFkMTY2NDljMjg6aHR0cEAvL3Nlb3dwLmxvY2FsOjA=","sections":{"description":"<h3>Best SEO plugin for WordPress fully integrated with all page builders and themes!<\\/h3>\\n<h3>Now with AI (GPT 4) to automagically generate meta title, description and alternative texts for images!<\\/h3>\\n<p>SEOPress is a powerful WordPress SEO plugin to optimize your SEO, boost your traffic, improve social sharing, build custom HTML and XML Sitemaps, create optimized breadcrumbs, add schemas \\/ Google Structured data types, manage 301 redirections and so much more.<br \\/><\\/p>\\n<p>&#x2714; <strong><a href=\\"https:\\/\\/www.seopress.org\\/features\\/page-builders-integration\\/\\">Universal SEO metabox<\\/a>: edit all your SEO from any page builder \\/ theme builder. No more back and forth between your editor and the WordPress administration<\\/strong>\\n&#x2714; <strong>No advertising, no footprints, white label, in backend AND frontend<\\/strong>\\n&#x2714; <strong>Content analysis to help you write content optimized for search engines with unlimited target keywords<\\/strong>\\n&#x2714; <strong><a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Import your post and term metadatas<\\/a> from other plugins or CSV file in 1 click<\\/strong>\\n&#x2714; <strong>Trusted by over 290,000 WordPress websites since 2017<\\/strong><\\/p>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Buy SEOPress PRO: only $49 \\/ year \\/ unlimited sites<\\/strong><\\/a><\\/p>\\n<p>[youtube <a href=\\"https:\\/\\/www.youtube.com\\/watch?v=4ysKFVr_nu0\\">https:\\/\\/www.youtube.com\\/watch?v=4ysKFVr_nu0<\\/a>]<\\/p>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/features\\/\\">Features<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Migrate<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/wordpress-seo-plugins\\/pro\\/\\">PRO<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/integrations\\/\\">Integrations<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/support\\/\\">Support<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/features\\/seopress-white-label\\/\\">White Label<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/features\\/openai\\/\\">AI<\\/a><\\/p>\\n<h3>Why SEOPress is the best WordPress SEO plugin?<\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/seopress-productivity\\/\\"><strong>Save time<\\/strong><\\/a>: you prefer to work with Excel or Google Spreadsheets? No problem, you can import \\/ export your metadata from CSV files with SEOPress PRO in few clicks!<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Save money<\\/strong><\\/a>: SEOPress PRO is available for just $49 \\/ year. Without any sites limit. Yes, you read that right: 1 site or 100 sites, the total price is still $49 \\/ year!<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/\\"><strong>All in one SEO plugin<\\/strong><\\/a>: comes with all the features you need to optimize the SEO of your WordPress site. No need to install additional extensions to manage redirects, schemas, XML sitemaps... You reduce the risk of conflicts and maintenance costs. You don\'t need a special feature? Deactivate it with one click without losing your configuration. Child\'s play !<\\/li>\\n    <li><strong>Easy AND ready to use<\\/strong>: you doesn\'t need to know SEO or code to use SEOPress. Most of the parameters are automatically set. And thanks to our installation wizard, configuring SEOPress has never been easier. To go further, we provide many <a href=\\"https:\\/\\/www.seopress.org\\/support\\/\\">free tutorials<\\/a> and <a href=\\"https:\\/\\/www.seopress.org\\/support\\/ebooks\\/\\">ebooks to learn SEO<\\/a> in order to better understand how to position your content on search engines.<\\/li>\\n<\\/ul>\\n<h3>SEOPress Free Features<\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/google-indexing-api-with-seopress\\/\\"><strong>Google Indexing API and IndexNow API (Bing \\/ Yandex)<\\/strong><\\/a> to quickly index its content in these search engines<\\/li>\\n    <li><strong>Installation wizard<\\/strong> to quickly setup your site<\\/li>\\n    <li><strong>Content analysis<\\/strong> with unlimited keywords to help you write optimized content for search engines<\\/li>\\n    <li><strong>Mobile \\/ Desktop Google Preview<\\/strong> to see how your post will looks like in Google search results<\\/li>\\n    <li><strong>Facebook &amp; Twitter Social Preview<\\/strong> to see how your post will looks like on social media to increase conversions<\\/li>\\n    <li><strong>Titles<\\/strong> (with <a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/manage-titles-meta-descriptions\\/\\">dynamic variables<\\/a>: custom fields, terms taxonomie...)<\\/li>\\n    <li><strong>Meta descriptions<\\/strong> (with dynamic variables too)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/social-media\\/\\"><strong>Open Graph and Twitter Cards<\\/strong><\\/a> to improve social media sharing (Facebook, LinkedIn, Instagram, Twitter, Pinterest, WhatsApp...)<\\/li>\\n    <li><strong>Google Knowledge Graph<\\/strong><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-analytics\\/\\"><strong>Google Analytics<\\/strong> and <strong>Matomo<\\/strong><\\/a> with downloads tracking, custom dimensions, ip anonymization, remarketing, demographics and interest reporting, cross-domain tracking...(<a href=\\"https:\\/\\/www.seopress.org\\/features\\/seopress-white-label\\/\\">GDPR compatibility<\\/a>)<\\/li>\\n    <li><strong>Microsoft Clarity integration<\\/strong>: to capture session recordings, get instant heatmaps and powerful Insights for Free. Know how people interact with your site to improve user experience and conversions<\\/li>\\n    <li><strong>Custom Canonical URL<\\/strong><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/manage-meta-robots\\/\\"><strong>Meta robots<\\/strong><\\/a> (noindex, nofollow, noimageindex, noarchive, nosnippet)<\\/li>\\n    <li>Build your <a href=\\"https:\\/\\/www.seopress.org\\/features\\/sitemaps\\/\\"><strong>custom XML Sitemap<\\/strong><\\/a> to improve search indexing<\\/li>\\n    <li><strong>Image XML Sitemaps<\\/strong> to improve search indexing for Google Images<\\/li>\\n    <li>Build your custom <strong>HTML Sitemap<\\/strong> to enhanced navigation for visitors and improve search indexing<\\/li>\\n    <li>Link your social media accounts to your site<\\/li>\\n    <li><strong>Redirections<\\/strong> in post, pages, custom post types<\\/li>\\n    <li>Remove \\/category\\/ in URLs<\\/li>\\n    <li>Remove \\/product-category\\/ in URLs<\\/li>\\n    <li>Remove ?replytocom to avoid duplicate content<\\/li>\\n    <li>Redirect attachment pages to post parent<\\/li>\\n    <li>Redirect attachment pages to their file URL<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/image-seo\\/\\"><strong>Image SEO<\\/strong><\\/a>: Automatically set the image title \\/ alt \\/ caption \\/ description<\\/li>\\n    <li>Import \\/ Export settings from site to site.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Import posts and terms metadata<\\/a> from Yoast SEO, All In One SEO, SEO Framework, Rank Math, SEO Ultimate, WP Meta SEO, Premium SEO Pack, Squirrly and many other SEO plugins<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/wordpress-seo-plugins\\/free\\/features\\/\\">Check out all SEOPress Free features here<\\/a><\\/p>\\n<h3>SEOPress PRO: to go further with your SEO<\\/h3>\\n<p>[youtube <a href=\\"https:\\/\\/youtu.be\\/zxGCY-bJYwE\\">https:\\/\\/youtu.be\\/zxGCY-bJYwE<\\/a>]<\\/p>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/openai\\/\\"><strong>Use Artificial Intelligence (GPT 4 \\/ Vision and GPT 3.5 Turbo) to generate SEO metadata and alternative texts for image files. Bulk actions supported.<\\/strong><\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-metadata-from-a-csv-file-with-seopress-pro\\/\\"><strong>Import \\/ export metadata<\\/strong><\\/a> (titles, open graph, robots...) from \\/ to CSV file<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/sitemaps\\/\\"><strong>Video XML Sitemap<\\/strong><\\/a> to improve rankings in video search results. YouTube videos are automatically added.<\\/li>\\n    <li>Internal linking suggestions<\\/li>\\n    <li>Inspect URL with Google Search Console: get details about crawling, indexing, mobile compatibility, schemas and more.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-search-console\\/\\"><strong>Search Console integration<\\/strong><\\/a>: get insights from your post \\/ page \\/ post type list with clicks, positions, CTR and impressions.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-suggest\\/\\"><strong>Google Suggestions in Content Analysis<\\/strong><\\/a> to find the top 10 Google suggestions instantly. This is useful if you want to work with the long tail technique.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-structured-data-types\\/\\"><strong>Google Structured Data types<\\/strong> (schema.org)<\\/a>:\\n        <ol>\\n            <li>article schema<\\/li>\\n            <li>local business schema<\\/li>\\n            <li>service schema<\\/li>\\n            <li>how-to schema<\\/li>\\n            <li>FAQ schema<\\/li>\\n            <li>course schema<\\/li>\\n            <li>recipe schema<\\/li>\\n            <li>software application schema<\\/li>\\n            <li>video schema<\\/li>\\n            <li>event schema<\\/li>\\n            <li>product schema<\\/li>\\n            <li>job schema<\\/li>\\n            <li>simple review schema<\\/li>\\n            <li>site navigation element schema<\\/li>\\n            <li>custom schema<\\/li>\\n        <\\/ol>\\n    <\\/li><li><strong>Automatic Schemas<\\/strong> with advanced conditions (AND, OR, Post types, taxonomies)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/breadcrumbs\\/\\"><strong>Breadcrumbs<\\/strong><\\/a> optimized with Schema.org, A11Y ready. Elementor users? <a href=\\"https:\\/\\/www.youtube.com\\/watch?v=ID4xm1UVikc\\">Try our custom breadcrumbs widget!<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-analytics\\/\\"><strong>Google Analytics Stats in Dashboard<\\/strong><\\/a> to quickly see your metrics without leaving your site<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/local-seo\\/\\"><strong>Google Local Business<\\/strong><\\/a> to boost your local store<\\/li>\\n    <li><strong>Broken link checker (SEOPress BOT)<\\/strong>: scan all your links in content to find errors (e.g. 404...)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/woocommerce-seo\\/\\"><strong>WooCommerce<\\/strong><\\/a>: Product Global Identifiers type and Product Global Identifiers fields to WooCommerce metabox for product schema (barcode), disable crawling on cart page, checkout page, customer account pages, add OG Price \\/ OG Currency for better sharing and more<\\/li>\\n    <li><strong>Easy Digital Downloads<\\/strong>: add OG Price \\/ OG Currency, remove EDD meta generator<\\/li>\\n    <li><strong>Dublin Core<\\/strong> meta tags<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/breadcrumbs\\/\\"><strong>Custom Breadcrumbs<\\/strong><\\/a> for single post types \\/ term taxonomy<\\/li>\\n    <li><strong>Google Page Speed Insights<\\/strong> to analyse your site performances on Mobile \\/ Desktop + your Core Web Vitals<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-analytics\\/\\"><strong>Google Enhanced Ecommerce for WooCommerce<\\/strong><\\/a>: measure purchases, singular product view details, additions to and removals from shopping carts<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/htaccess-robots-txt\\/\\">Edit your <strong>robots.txt<\\/strong><\\/a> file from the admin (multisite \\/ multidomain ready)<\\/li>\\n    <li><strong>Google News Sitemap<\\/strong> to get your posts on Google News<\\/li>\\n    <li><strong>404 Monitoring<\\/strong>: Monitor your 404 errors to improve user experience, performances and increase the crawl budget allocated by Google<\\/li>\\n    <li><strong>Redirect 404 to homepage\\/custom url automatically<\\/strong> with custom status code (301, 302, 307, 410 or 451)<\\/li>\\n    <li>Email notifications on 404<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/301-redirects\\/\\"><strong>Redirect manager<\\/strong><\\/a>: create unlimited 301, 302, 307, 410 and 451 redirections. Regular expressions supported. Import \\/ export redirections to CSV or htaccess file.<\\/li>\\n    <li>Import redirections using CSV<\\/li>\\n    <li>Import redirections from Redirections plugin (via a JSON file)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/htaccess-robots-txt\\/\\">Edit your <strong>htaccess file<\\/strong><\\/a> from the admin<\\/li>\\n    <li>Easily customize your <strong>RSS feeds<\\/strong><\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Buy SEOPress PRO now!<\\/strong><\\/a><\\/p>\\n<h3>WooCommerce SEO (SEOPress PRO required)<\\/h3>\\n<p>We support WooCommerce and Easy Digital Downloads for e-commerce sites.<\\/p>\\n<ul>\\n    <li>Price and currency meta tags to improve social sharing<\\/li>\\n    <li>XML sitemaps for products<\\/li>\\n    <li>Support for WooCommerce product images and WooCommerce image galleries for the XML sitemap<\\/li>\\n    <li>Centralized way to set noindex meta robots tags on pages like cart, checkout...<\\/li>\\n    <li>Remove WooCommerce generator meta tag in the source code<\\/li>\\n    <li>Create manual and\\/or automatic \\"product\\" schemas in JSON-LD to increase visibility in Google search results<\\/li>\\n    <li>WooCommerce support for our breadcrumbs<\\/li>\\n    <li>Global dynamic tags to insert in your metas titles \\/ descriptions<\\/li>\\n    <li>Product Global Identifiers type and Product Global Identifiers fields to WooCommerce metabox for product schema (barcode)<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Increase your sales now!<\\/strong><\\/a><\\/p>\\n<h3><a href=\\"https:\\/\\/www.seopress.org\\/features\\/page-builders-integration\\/\\">Universal SEO metabox<\\/a>: edit your metadata from any page builder \\/ editor<\\/h3>\\n<p>[youtube <a href=\\"https:\\/\\/youtu.be\\/sf0ocG7vQMM\\">https:\\/\\/youtu.be\\/sf0ocG7vQMM<\\/a>]<\\/p>\\n<h3>Elementor + SEOPress: perfect combo!<\\/h3>\\n<p>We provide deep integration with Elementor page builder. Directly from Elementor settings, you can:<\\/p>\\n<ul>\\n    <li>edit your SEO metadata (title, meta description, meta robots)<\\/li>\\n    <li>edit social meta (Facebook Open Graph and Twitter Cards)<\\/li>\\n    <li>analyse your content to optimize it for search engines<\\/li>\\n    <li>apply FAQ schema on Toggle and \\/ or Accordion Elementor widgets<\\/li>\\n    <li>generate automagically meta title and description with AI (OpenAI integration - PRO required)<\\/li>\\n    <li>and more!<\\/li>\\n<\\/ul>\\n<p>[youtube <a href=\\"https:\\/\\/www.youtube.com\\/watch?v=oC5QZ0_TH_g\\">https:\\/\\/www.youtube.com\\/watch?v=oC5QZ0_TH_g<\\/a>]<\\/p>\\n<h3>SEOPress Insights: Off-site SEO plugin to track your rankings and backlinks in WordPress<\\/h3>\\n<ul>\\n    <li><strong>Keyword rank tracker<\\/strong>: 48 Google Search locations available<\\/li>\\n    <li>Track <strong>50 keywords<\\/strong> per site daily<\\/li>\\n    <li>Track your <strong>competitors<\\/strong>: who ranks first on your keywords<\\/li>\\n    <li>Monitor and analyze your <strong>backlinks<\\/strong> weekly<\\/li>\\n    <li><strong>Google trends<\\/strong> to find new and relevant ideas for your content marketing strategy<\\/li>\\n    <li>Your <strong>data accessible for life<\\/strong>: export it to a CSV, PDF or Excel file. Sort, order, filter your data right from your WordPress.<\\/li>\\n    <li>Receive <strong>email and Slack alerts<\\/strong> for your rankings to easily follow them<\\/li>\\n<\\/ul>\\n<p>[youtube <a href=\\"https:\\/\\/youtu.be\\/p6v9Jd5lRIU\\">https:\\/\\/youtu.be\\/p6v9Jd5lRIU<\\/a>]<\\/p>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Buy SEOPress Insights now!<\\/strong><\\/a><\\/p>\\n<h3>Developers will love SEOPress!<\\/h3>\\n<ul>\\n    <li>Hundreds of hooks are available to extend SEOPress. <a href=\\"https:\\/\\/www.seopress.org\\/support\\/hooks\\/\\">Browse them all here<\\/a>!<\\/li>\\n    <li>Plus we have a <a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/get-started-with-the-seopress-rest-api\\/\\">REST API<\\/a> to build static websites.<\\/li>\\n    <li>Finally, <a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/seopress-wp-cli\\/\\"><strong>WP CLI commands<\\/strong><\\/a> are available.<\\/li>\\n<\\/ul>\\n<h3>Translations<\\/h3>\\n<p>SEOPress is translated into multiple languages including:<\\/p>\\n<ul>\\n    <li>&#x1f1fa;&#x1f1f8; English (UK) (English (UK)) - professional translation<\\/li>\\n    <li>&#x1f1eb;&#x1f1f7; Fran\\u00e7ais (French (France)) - professional translation<\\/li>\\n    <li>&#x1f1ea;&#x1f1f8; Espa\\u00f1ol (Spanish (Spain)) - professional translation<\\/li>\\n    <li>&#x1f1e9;&#x1f1ea; Deutsch (German) - professional translation<\\/li>\\n    <li>&#x1f1f3;&#x1f1f1; Nederlands (Dutch) - professional translation<\\/li>\\n    <li>&#x1f1f7;&#x1f1fa; \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (Russian) - professional translation<\\/li>\\n    <li>&#x1f1ef;&#x1f1f5; \\u65e5\\u672c\\u8a9e (Japanese) - professional translation<\\/li>\\n    <li>&#x1f1ee;&#x1f1f9; Italiano (Italian) - professional translation<\\/li>\\n    <li>&#x1f1ee;&#x1f1f3; \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 (Hindi) - professional translation<\\/li>\\n    <li>&#x1f1e8;&#x1f1f3; \\u4e2d\\u6587 (Chinese (China)) - professional translation<\\/li>\\n    <li>&#x1f1e7;&#x1f1f7; Portugu\\u00eas do Brasil (Portuguese (Brazil)) - professional translation<\\/li>\\n    <li>&#x1f1f5;&#x1f1f1; Polskie (Polish) - professional translation<\\/li>\\n    <li>&#x1f1f8;&#x1f1ea; Svenska (Swedish) - professional translation<\\/li>\\n    <li>&#x1f1ec;&#x1f1f7; \\u0395\\u03bb\\u03bb\\u03b7\\u03bd\\u03b9\\u03ba\\u03ac (Greek)<\\/li>\\n    <li>&#x1f1e7;&#x1f1ec; \\u0411\\u044a\\u043b\\u0433\\u0430\\u0440\\u0441\\u043a\\u0438 (Bulgarian)<\\/li>\\n    <li>&#x1f1ee;&#x1f1e9; Bahasa Indonesia (Indonesian)<\\/li>\\n    <li>&#x1f1fb;&#x1f1f3; Loki Web (Vietnamese)<\\/li>\\n    <li>&#x1f1f7;&#x1f1f4; Rom\\u00e2n\\u0103 (Romanian)<\\/li>\\n    <li>&#x1f1f0;&#x1f1f7; \\ud55c\\uad6d\\uc778 (Korean)<\\/li>\\n    <li>&#x1f1f8;&#x1f1e6; \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 (Arabic)<\\/li>\\n    <li>&#x1f1ee;&#x1f1f7; \\u0641\\u0627\\u0631\\u0633\\u06cc (Persian)<\\/li>\\n    <li>&#x1f1f9;&#x1f1f7; T\\u00fcrk\\u00e7e (Turkish)<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p>Help localize SEOPress even further by adding your locale \\u2013 visit <a href=\\"https:\\/\\/translate.wordpress.org\\/projects\\/wp-plugins\\/wp-seopress\\/\\">translate.wordpress.org<\\/a>.<\\/p>\\n<h3>SEOPress integrates seamlessly with popular e-commerce, translation, performance and analytics tools.<\\/h3>\\n<ul>\\n    <li>Block Editor + 6 SEOPress blocks: Table of Contents, FAQ, How-to, Breadcrumbs, HTML Sitemap and Local Business<\\/li>\\n    <li>Classic Editor<\\/li>\\n    <li>OpenAI<\\/li>\\n    <li>WPML<\\/li>\\n    <li>Polylang<\\/li>\\n    <li>MultilingualPress<\\/li>\\n    <li>Weglot<\\/li>\\n    <li>TranslatePress<\\/li>\\n    <li>Elementor<\\/li>\\n    <li>Divi<\\/li>\\n    <li>Oxygen Builder<\\/li>\\n    <li>Beaver Builder<\\/li>\\n    <li>WP-Rocket<\\/li>\\n    <li>WooCommerce<\\/li>\\n    <li>Easy Digital Downloads<\\/li>\\n    <li>Admin Columns PRO<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/integrations\\/\\">All our integrations<\\/a><\\/p>\\n<h3><a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Import your post and term metadata from other SEO plugins in 1-click<\\/a><\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-terms-metadatas-yoast-seo-seopress\\/\\">Yoast SEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadatas-from-all-in-one-seo-to-seopress\\/\\">All In One SEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadatas-from-the-seo-framework-to-seopress\\/\\">SEO Framework<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-terms-metadatas-rank-math-seo-seopress\\/\\">Rank Math<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-metadata-from-seo-ultimate-to-seopress\\/\\">SEO Ultimate<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-wp-meta-seo-to-seopress\\/\\">WP Meta SEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-premium-seo-pack-to-seopress\\/\\">Premium SEO Pack<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-metadatas-from-squirrly-to-seopress\\/\\">Squirrly<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-wpseo-to-seopress\\/\\">wpSEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-platinum-seo-pack-to-seopress\\/\\">Platinum SEO Pack<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-smartcrawl-to-seopress\\/\\">SmartCrawl<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-metadata-from-seopressor-to-seopress\\/\\">SEOPressor<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-slim-seo-to-seopress\\/\\">Slim SEO<\\/a><\\/li>\\n<\\/ul>\\n<h3>Help and support<\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/\\">Documentation center<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.facebook.com\\/groups\\/seopress\\/\\">Join our SEOPress official community group<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/ebooks\\/\\">Learn SEO with our Free ebooks<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.youtube.com\\/seopress\\">Our SEOPress YouTube Channel<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/account\\/your-tickets\\/\\">Email (PRO only)<\\/a><\\/li>\\n<\\/ul>\\n<h3><a href=\\"https:\\/\\/www.seopress.org\\/about\\/brand-assets\\/\\">Branding guidelines<\\/a><\\/h3>\\n<p>SEOPress is a registered trademark of SEOPress SASU. When writing about SEOPress plugin, please make sure to write it correctly.<\\/p>\\n<p>SEOPress (correct)\\nSeopress (incorrect)\\nseo press (incorrect)\\nSEOpress (incorrect)<\\/p>\\n<h3>SEOPress featured on<\\/h3>\\n<ul>\\n    <li>WP Beginner<\\/li>\\n    <li>Microsoft<\\/li>\\n    <li>Neil Patel<\\/li>\\n    <li>HubSpot<\\/li>\\n    <li>GoDaddy<\\/li>\\n    <li>Forbes<\\/li>\\n    <li>Search Engine Journal<\\/li>\\n    <li>Elementor<\\/li>\\n    <li>WP Crafter<\\/li>\\n    <li>Kinsta<\\/li>\\n    <li>Pagely<\\/li>\\n    <li>Freemius<\\/li>\\n    <li>Majestic<\\/li>\\n    <li>WP Explorer<\\/li>\\n    <li>MasterWP<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/press\\/\\">Complete list on our Press page<\\/a><\\/p>\\n<h3>Our website:<\\/h3>\\n<p>Any questions? Visit our website <a href=\\"https:\\/\\/www.seopress.org\\">seopress.org<\\/a><\\/p>","changelog":"<h4> 7.3.2 <\\/h4>\\n<ul>\\n<li>FIX Content analysis with the universal SEO metabox<\\/li>\\n<\\/ul>\\n<h4> 7.3.1 <\\/h4>\\n<ul>\\n<li>FIX JS error with the Block Editor<\\/li>\\n<li>FIX Polylang and XML sitemaps<\\/li>\\n<\\/ul>\\n<h4> 7.3 <a href=\\"https:\\/\\/www.seopress.org\\/newsroom\\/product-news\\/seopress-7-3\\/\\">Read the blog post update<\\/a> <\\/h4>\\n<ul>\\n<li>NEW Add pre-published checks to the Block Editor<\\/li>\\n<li>NEW Disable hierarchical display for posts and products in HTML sitemap (SEO, XML - HTML Sitemap, HTML Sitemap tab)<\\/li>\\n<li>NEW \'seopress_ai_openai_request_args_alt\' hook to filter the arguments sent to OpenAI for alt texts (<a href=\\"https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-the-arguments-sent-to-openai-to-generate-alternative-texts\\/\\">https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-the-arguments-sent-to-openai-to-generate-alternative-texts\\/<\\/a>)<\\/li>\\n<li>NEW \'seopress_pro_breadcrumbs_json\' hook to filter the JSON Breadcrumbs (<a href=\\"https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-breadcrumbs-json\\/\\">https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-breadcrumbs-json\\/<\\/a>)<\\/li>\\n<li>INFO Remove very old deprecated functions<\\/li>\\n<li>INFO Strengthening of security<\\/li>\\n<li>INFO Refactoring some code<\\/li>\\n<li>INFO Exclude specific custom post types generated by page builders for the redirect suggestions feature (Elementor, Beaver Builder, Brizy, Zion Builder, Breakdance, Oxygen...)<\\/li>\\n<li>FIX Fatal error in XML sitemaps if no timezone associated to post<\\/li>\\n<li>FIX Oxygen compatibility: PHP Warning: Undefined variable $oxygen_metabox_enabled<\\/li>\\n<li>FIX 403 error with Inspect URL with Google Search Console in specific cases<\\/li>\\n<li>FIX PHP 8.3 compatibility: Fatal error: Duplicate declaration of static variable<\\/li>\\n<li>FIX Compatibility issue with Themify builder<\\/li>\\n<li>FIX Fatal error: Uncaught TypeError: property_exists() on $tax<\\/li>\\n<li>FIX Internal linking suggestions<\\/li>\\n<li>FIX Google Preview regression<\\/li>\\n<li>FIX Compatibility issue with Polylang and XML sitemaps<\\/li>\\n<li>FIX Target keywords with dashes<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/changelog\\/\\">View our complete changelog<\\/a><\\/p>","installation":"<ol>\\n<li>Upload \'wp-seopress\' to the \'\\/wp-content\\/plugins\\/\' directory<\\/li>\\n<li>Activate the plugin through the \'Plugins\' menu in WordPress<\\/li>\\n<li>Click on SEOPress and apply settings.<\\/li>\\n<\\/ol>"},"banners":{"high":"https:\\/\\/ps.w.org\\/wp-seopress\\/assets\\/banner-1544x500.png?rev=1","low":"https:\\/\\/ps.w.org\\/wp-seopress\\/assets\\/banner-772x250.png?rev=1"},"icons":{"1x":"https:\\/\\/www.seopress.org\\/wp-content\\/uploads\\/edd\\/2021\\/10\\/logo-seopress-pro-128x128.png","2x":"https:\\/\\/www.seopress.org\\/wp-content\\/uploads\\/edd\\/2021\\/10\\/logo-seopress-pro-256x256.png"},"tested":"6.4.2","compatibility":"a:1:{s:5:\\"5.5.2\\";a:1:{s:6:\\"1.5.25\\";a:3:{i:0;s:4:\\"100%\\";i:1;s:1:\\"5\\";i:2;s:1:\\"5\\";}}}","stable_tag":"7.3.2","description":["<h3>Best SEO plugin for WordPress fully integrated with all page builders and themes!<\\/h3>\\n<h3>Now with AI (GPT 4) to automagically generate meta title, description and alternative texts for images!<\\/h3>\\n<p>SEOPress is a powerful WordPress SEO plugin to optimize your SEO, boost your traffic, improve social sharing, build custom HTML and XML Sitemaps, create optimized breadcrumbs, add schemas \\/ Google Structured data types, manage 301 redirections and so much more.<br \\/><\\/p>\\n<p>&#x2714; <strong><a href=\\"https:\\/\\/www.seopress.org\\/features\\/page-builders-integration\\/\\">Universal SEO metabox<\\/a>: edit all your SEO from any page builder \\/ theme builder. No more back and forth between your editor and the WordPress administration<\\/strong>\\n&#x2714; <strong>No advertising, no footprints, white label, in backend AND frontend<\\/strong>\\n&#x2714; <strong>Content analysis to help you write content optimized for search engines with unlimited target keywords<\\/strong>\\n&#x2714; <strong><a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Import your post and term metadatas<\\/a> from other plugins or CSV file in 1 click<\\/strong>\\n&#x2714; <strong>Trusted by over 290,000 WordPress websites since 2017<\\/strong><\\/p>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Buy SEOPress PRO: only $49 \\/ year \\/ unlimited sites<\\/strong><\\/a><\\/p>\\n<p>[youtube <a href=\\"https:\\/\\/www.youtube.com\\/watch?v=4ysKFVr_nu0\\">https:\\/\\/www.youtube.com\\/watch?v=4ysKFVr_nu0<\\/a>]<\\/p>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/features\\/\\">Features<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Migrate<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/wordpress-seo-plugins\\/pro\\/\\">PRO<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/integrations\\/\\">Integrations<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/support\\/\\">Support<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/features\\/seopress-white-label\\/\\">White Label<\\/a> | <a href=\\"https:\\/\\/www.seopress.org\\/features\\/openai\\/\\">AI<\\/a><\\/p>\\n<h3>Why SEOPress is the best WordPress SEO plugin?<\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/seopress-productivity\\/\\"><strong>Save time<\\/strong><\\/a>: you prefer to work with Excel or Google Spreadsheets? No problem, you can import \\/ export your metadata from CSV files with SEOPress PRO in few clicks!<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Save money<\\/strong><\\/a>: SEOPress PRO is available for just $49 \\/ year. Without any sites limit. Yes, you read that right: 1 site or 100 sites, the total price is still $49 \\/ year!<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/\\"><strong>All in one SEO plugin<\\/strong><\\/a>: comes with all the features you need to optimize the SEO of your WordPress site. No need to install additional extensions to manage redirects, schemas, XML sitemaps... You reduce the risk of conflicts and maintenance costs. You don\'t need a special feature? Deactivate it with one click without losing your configuration. Child\'s play !<\\/li>\\n    <li><strong>Easy AND ready to use<\\/strong>: you doesn\'t need to know SEO or code to use SEOPress. Most of the parameters are automatically set. And thanks to our installation wizard, configuring SEOPress has never been easier. To go further, we provide many <a href=\\"https:\\/\\/www.seopress.org\\/support\\/\\">free tutorials<\\/a> and <a href=\\"https:\\/\\/www.seopress.org\\/support\\/ebooks\\/\\">ebooks to learn SEO<\\/a> in order to better understand how to position your content on search engines.<\\/li>\\n<\\/ul>\\n<h3>SEOPress Free Features<\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/google-indexing-api-with-seopress\\/\\"><strong>Google Indexing API and IndexNow API (Bing \\/ Yandex)<\\/strong><\\/a> to quickly index its content in these search engines<\\/li>\\n    <li><strong>Installation wizard<\\/strong> to quickly setup your site<\\/li>\\n    <li><strong>Content analysis<\\/strong> with unlimited keywords to help you write optimized content for search engines<\\/li>\\n    <li><strong>Mobile \\/ Desktop Google Preview<\\/strong> to see how your post will looks like in Google search results<\\/li>\\n    <li><strong>Facebook &amp; Twitter Social Preview<\\/strong> to see how your post will looks like on social media to increase conversions<\\/li>\\n    <li><strong>Titles<\\/strong> (with <a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/manage-titles-meta-descriptions\\/\\">dynamic variables<\\/a>: custom fields, terms taxonomie...)<\\/li>\\n    <li><strong>Meta descriptions<\\/strong> (with dynamic variables too)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/social-media\\/\\"><strong>Open Graph and Twitter Cards<\\/strong><\\/a> to improve social media sharing (Facebook, LinkedIn, Instagram, Twitter, Pinterest, WhatsApp...)<\\/li>\\n    <li><strong>Google Knowledge Graph<\\/strong><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-analytics\\/\\"><strong>Google Analytics<\\/strong> and <strong>Matomo<\\/strong><\\/a> with downloads tracking, custom dimensions, ip anonymization, remarketing, demographics and interest reporting, cross-domain tracking...(<a href=\\"https:\\/\\/www.seopress.org\\/features\\/seopress-white-label\\/\\">GDPR compatibility<\\/a>)<\\/li>\\n    <li><strong>Microsoft Clarity integration<\\/strong>: to capture session recordings, get instant heatmaps and powerful Insights for Free. Know how people interact with your site to improve user experience and conversions<\\/li>\\n    <li><strong>Custom Canonical URL<\\/strong><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/manage-meta-robots\\/\\"><strong>Meta robots<\\/strong><\\/a> (noindex, nofollow, noimageindex, noarchive, nosnippet)<\\/li>\\n    <li>Build your <a href=\\"https:\\/\\/www.seopress.org\\/features\\/sitemaps\\/\\"><strong>custom XML Sitemap<\\/strong><\\/a> to improve search indexing<\\/li>\\n    <li><strong>Image XML Sitemaps<\\/strong> to improve search indexing for Google Images<\\/li>\\n    <li>Build your custom <strong>HTML Sitemap<\\/strong> to enhanced navigation for visitors and improve search indexing<\\/li>\\n    <li>Link your social media accounts to your site<\\/li>\\n    <li><strong>Redirections<\\/strong> in post, pages, custom post types<\\/li>\\n    <li>Remove \\/category\\/ in URLs<\\/li>\\n    <li>Remove \\/product-category\\/ in URLs<\\/li>\\n    <li>Remove ?replytocom to avoid duplicate content<\\/li>\\n    <li>Redirect attachment pages to post parent<\\/li>\\n    <li>Redirect attachment pages to their file URL<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/image-seo\\/\\"><strong>Image SEO<\\/strong><\\/a>: Automatically set the image title \\/ alt \\/ caption \\/ description<\\/li>\\n    <li>Import \\/ Export settings from site to site.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Import posts and terms metadata<\\/a> from Yoast SEO, All In One SEO, SEO Framework, Rank Math, SEO Ultimate, WP Meta SEO, Premium SEO Pack, Squirrly and many other SEO plugins<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/wordpress-seo-plugins\\/free\\/features\\/\\">Check out all SEOPress Free features here<\\/a><\\/p>\\n<h3>SEOPress PRO: to go further with your SEO<\\/h3>\\n<p>[youtube <a href=\\"https:\\/\\/youtu.be\\/zxGCY-bJYwE\\">https:\\/\\/youtu.be\\/zxGCY-bJYwE<\\/a>]<\\/p>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/openai\\/\\"><strong>Use Artificial Intelligence (GPT 4 \\/ Vision and GPT 3.5 Turbo) to generate SEO metadata and alternative texts for image files. Bulk actions supported.<\\/strong><\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-metadata-from-a-csv-file-with-seopress-pro\\/\\"><strong>Import \\/ export metadata<\\/strong><\\/a> (titles, open graph, robots...) from \\/ to CSV file<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/sitemaps\\/\\"><strong>Video XML Sitemap<\\/strong><\\/a> to improve rankings in video search results. YouTube videos are automatically added.<\\/li>\\n    <li>Internal linking suggestions<\\/li>\\n    <li>Inspect URL with Google Search Console: get details about crawling, indexing, mobile compatibility, schemas and more.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-search-console\\/\\"><strong>Search Console integration<\\/strong><\\/a>: get insights from your post \\/ page \\/ post type list with clicks, positions, CTR and impressions.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-suggest\\/\\"><strong>Google Suggestions in Content Analysis<\\/strong><\\/a> to find the top 10 Google suggestions instantly. This is useful if you want to work with the long tail technique.<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-structured-data-types\\/\\"><strong>Google Structured Data types<\\/strong> (schema.org)<\\/a>:\\n        <ol>\\n            <li>article schema<\\/li>\\n            <li>local business schema<\\/li>\\n            <li>service schema<\\/li>\\n            <li>how-to schema<\\/li>\\n            <li>FAQ schema<\\/li>\\n            <li>course schema<\\/li>\\n            <li>recipe schema<\\/li>\\n            <li>software application schema<\\/li>\\n            <li>video schema<\\/li>\\n            <li>event schema<\\/li>\\n            <li>product schema<\\/li>\\n            <li>job schema<\\/li>\\n            <li>simple review schema<\\/li>\\n            <li>site navigation element schema<\\/li>\\n            <li>custom schema<\\/li>\\n        <\\/ol>\\n    <\\/li><li><strong>Automatic Schemas<\\/strong> with advanced conditions (AND, OR, Post types, taxonomies)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/breadcrumbs\\/\\"><strong>Breadcrumbs<\\/strong><\\/a> optimized with Schema.org, A11Y ready. Elementor users? <a href=\\"https:\\/\\/www.youtube.com\\/watch?v=ID4xm1UVikc\\">Try our custom breadcrumbs widget!<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-analytics\\/\\"><strong>Google Analytics Stats in Dashboard<\\/strong><\\/a> to quickly see your metrics without leaving your site<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/local-seo\\/\\"><strong>Google Local Business<\\/strong><\\/a> to boost your local store<\\/li>\\n    <li><strong>Broken link checker (SEOPress BOT)<\\/strong>: scan all your links in content to find errors (e.g. 404...)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/woocommerce-seo\\/\\"><strong>WooCommerce<\\/strong><\\/a>: Product Global Identifiers type and Product Global Identifiers fields to WooCommerce metabox for product schema (barcode), disable crawling on cart page, checkout page, customer account pages, add OG Price \\/ OG Currency for better sharing and more<\\/li>\\n    <li><strong>Easy Digital Downloads<\\/strong>: add OG Price \\/ OG Currency, remove EDD meta generator<\\/li>\\n    <li><strong>Dublin Core<\\/strong> meta tags<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/breadcrumbs\\/\\"><strong>Custom Breadcrumbs<\\/strong><\\/a> for single post types \\/ term taxonomy<\\/li>\\n    <li><strong>Google Page Speed Insights<\\/strong> to analyse your site performances on Mobile \\/ Desktop + your Core Web Vitals<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/google-analytics\\/\\"><strong>Google Enhanced Ecommerce for WooCommerce<\\/strong><\\/a>: measure purchases, singular product view details, additions to and removals from shopping carts<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/htaccess-robots-txt\\/\\">Edit your <strong>robots.txt<\\/strong><\\/a> file from the admin (multisite \\/ multidomain ready)<\\/li>\\n    <li><strong>Google News Sitemap<\\/strong> to get your posts on Google News<\\/li>\\n    <li><strong>404 Monitoring<\\/strong>: Monitor your 404 errors to improve user experience, performances and increase the crawl budget allocated by Google<\\/li>\\n    <li><strong>Redirect 404 to homepage\\/custom url automatically<\\/strong> with custom status code (301, 302, 307, 410 or 451)<\\/li>\\n    <li>Email notifications on 404<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/301-redirects\\/\\"><strong>Redirect manager<\\/strong><\\/a>: create unlimited 301, 302, 307, 410 and 451 redirections. Regular expressions supported. Import \\/ export redirections to CSV or htaccess file.<\\/li>\\n    <li>Import redirections using CSV<\\/li>\\n    <li>Import redirections from Redirections plugin (via a JSON file)<\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/features\\/htaccess-robots-txt\\/\\">Edit your <strong>htaccess file<\\/strong><\\/a> from the admin<\\/li>\\n    <li>Easily customize your <strong>RSS feeds<\\/strong><\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Buy SEOPress PRO now!<\\/strong><\\/a><\\/p>\\n<h3>WooCommerce SEO (SEOPress PRO required)<\\/h3>\\n<p>We support WooCommerce and Easy Digital Downloads for e-commerce sites.<\\/p>\\n<ul>\\n    <li>Price and currency meta tags to improve social sharing<\\/li>\\n    <li>XML sitemaps for products<\\/li>\\n    <li>Support for WooCommerce product images and WooCommerce image galleries for the XML sitemap<\\/li>\\n    <li>Centralized way to set noindex meta robots tags on pages like cart, checkout...<\\/li>\\n    <li>Remove WooCommerce generator meta tag in the source code<\\/li>\\n    <li>Create manual and\\/or automatic \\"product\\" schemas in JSON-LD to increase visibility in Google search results<\\/li>\\n    <li>WooCommerce support for our breadcrumbs<\\/li>\\n    <li>Global dynamic tags to insert in your metas titles \\/ descriptions<\\/li>\\n    <li>Product Global Identifiers type and Product Global Identifiers fields to WooCommerce metabox for product schema (barcode)<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Increase your sales now!<\\/strong><\\/a><\\/p>\\n<h3><a href=\\"https:\\/\\/www.seopress.org\\/features\\/page-builders-integration\\/\\">Universal SEO metabox<\\/a>: edit your metadata from any page builder \\/ editor<\\/h3>\\n<p>[youtube <a href=\\"https:\\/\\/youtu.be\\/sf0ocG7vQMM\\">https:\\/\\/youtu.be\\/sf0ocG7vQMM<\\/a>]<\\/p>\\n<h3>Elementor + SEOPress: perfect combo!<\\/h3>\\n<p>We provide deep integration with Elementor page builder. Directly from Elementor settings, you can:<\\/p>\\n<ul>\\n    <li>edit your SEO metadata (title, meta description, meta robots)<\\/li>\\n    <li>edit social meta (Facebook Open Graph and Twitter Cards)<\\/li>\\n    <li>analyse your content to optimize it for search engines<\\/li>\\n    <li>apply FAQ schema on Toggle and \\/ or Accordion Elementor widgets<\\/li>\\n    <li>generate automagically meta title and description with AI (OpenAI integration - PRO required)<\\/li>\\n    <li>and more!<\\/li>\\n<\\/ul>\\n<p>[youtube <a href=\\"https:\\/\\/www.youtube.com\\/watch?v=oC5QZ0_TH_g\\">https:\\/\\/www.youtube.com\\/watch?v=oC5QZ0_TH_g<\\/a>]<\\/p>\\n<h3>SEOPress Insights: Off-site SEO plugin to track your rankings and backlinks in WordPress<\\/h3>\\n<ul>\\n    <li><strong>Keyword rank tracker<\\/strong>: 48 Google Search locations available<\\/li>\\n    <li>Track <strong>50 keywords<\\/strong> per site daily<\\/li>\\n    <li>Track your <strong>competitors<\\/strong>: who ranks first on your keywords<\\/li>\\n    <li>Monitor and analyze your <strong>backlinks<\\/strong> weekly<\\/li>\\n    <li><strong>Google trends<\\/strong> to find new and relevant ideas for your content marketing strategy<\\/li>\\n    <li>Your <strong>data accessible for life<\\/strong>: export it to a CSV, PDF or Excel file. Sort, order, filter your data right from your WordPress.<\\/li>\\n    <li>Receive <strong>email and Slack alerts<\\/strong> for your rankings to easily follow them<\\/li>\\n<\\/ul>\\n<p>[youtube <a href=\\"https:\\/\\/youtu.be\\/p6v9Jd5lRIU\\">https:\\/\\/youtu.be\\/p6v9Jd5lRIU<\\/a>]<\\/p>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/pricing\\/\\"><strong>Buy SEOPress Insights now!<\\/strong><\\/a><\\/p>\\n<h3>Developers will love SEOPress!<\\/h3>\\n<ul>\\n    <li>Hundreds of hooks are available to extend SEOPress. <a href=\\"https:\\/\\/www.seopress.org\\/support\\/hooks\\/\\">Browse them all here<\\/a>!<\\/li>\\n    <li>Plus we have a <a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/get-started-with-the-seopress-rest-api\\/\\">REST API<\\/a> to build static websites.<\\/li>\\n    <li>Finally, <a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/seopress-wp-cli\\/\\"><strong>WP CLI commands<\\/strong><\\/a> are available.<\\/li>\\n<\\/ul>\\n<h3>Translations<\\/h3>\\n<p>SEOPress is translated into multiple languages including:<\\/p>\\n<ul>\\n    <li>&#x1f1fa;&#x1f1f8; English (UK) (English (UK)) - professional translation<\\/li>\\n    <li>&#x1f1eb;&#x1f1f7; Fran\\u00e7ais (French (France)) - professional translation<\\/li>\\n    <li>&#x1f1ea;&#x1f1f8; Espa\\u00f1ol (Spanish (Spain)) - professional translation<\\/li>\\n    <li>&#x1f1e9;&#x1f1ea; Deutsch (German) - professional translation<\\/li>\\n    <li>&#x1f1f3;&#x1f1f1; Nederlands (Dutch) - professional translation<\\/li>\\n    <li>&#x1f1f7;&#x1f1fa; \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (Russian) - professional translation<\\/li>\\n    <li>&#x1f1ef;&#x1f1f5; \\u65e5\\u672c\\u8a9e (Japanese) - professional translation<\\/li>\\n    <li>&#x1f1ee;&#x1f1f9; Italiano (Italian) - professional translation<\\/li>\\n    <li>&#x1f1ee;&#x1f1f3; \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 (Hindi) - professional translation<\\/li>\\n    <li>&#x1f1e8;&#x1f1f3; \\u4e2d\\u6587 (Chinese (China)) - professional translation<\\/li>\\n    <li>&#x1f1e7;&#x1f1f7; Portugu\\u00eas do Brasil (Portuguese (Brazil)) - professional translation<\\/li>\\n    <li>&#x1f1f5;&#x1f1f1; Polskie (Polish) - professional translation<\\/li>\\n    <li>&#x1f1f8;&#x1f1ea; Svenska (Swedish) - professional translation<\\/li>\\n    <li>&#x1f1ec;&#x1f1f7; \\u0395\\u03bb\\u03bb\\u03b7\\u03bd\\u03b9\\u03ba\\u03ac (Greek)<\\/li>\\n    <li>&#x1f1e7;&#x1f1ec; \\u0411\\u044a\\u043b\\u0433\\u0430\\u0440\\u0441\\u043a\\u0438 (Bulgarian)<\\/li>\\n    <li>&#x1f1ee;&#x1f1e9; Bahasa Indonesia (Indonesian)<\\/li>\\n    <li>&#x1f1fb;&#x1f1f3; Loki Web (Vietnamese)<\\/li>\\n    <li>&#x1f1f7;&#x1f1f4; Rom\\u00e2n\\u0103 (Romanian)<\\/li>\\n    <li>&#x1f1f0;&#x1f1f7; \\ud55c\\uad6d\\uc778 (Korean)<\\/li>\\n    <li>&#x1f1f8;&#x1f1e6; \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 (Arabic)<\\/li>\\n    <li>&#x1f1ee;&#x1f1f7; \\u0641\\u0627\\u0631\\u0633\\u06cc (Persian)<\\/li>\\n    <li>&#x1f1f9;&#x1f1f7; T\\u00fcrk\\u00e7e (Turkish)<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p>Help localize SEOPress even further by adding your locale \\u2013 visit <a href=\\"https:\\/\\/translate.wordpress.org\\/projects\\/wp-plugins\\/wp-seopress\\/\\">translate.wordpress.org<\\/a>.<\\/p>\\n<h3>SEOPress integrates seamlessly with popular e-commerce, translation, performance and analytics tools.<\\/h3>\\n<ul>\\n    <li>Block Editor + 6 SEOPress blocks: Table of Contents, FAQ, How-to, Breadcrumbs, HTML Sitemap and Local Business<\\/li>\\n    <li>Classic Editor<\\/li>\\n    <li>OpenAI<\\/li>\\n    <li>WPML<\\/li>\\n    <li>Polylang<\\/li>\\n    <li>MultilingualPress<\\/li>\\n    <li>Weglot<\\/li>\\n    <li>TranslatePress<\\/li>\\n    <li>Elementor<\\/li>\\n    <li>Divi<\\/li>\\n    <li>Oxygen Builder<\\/li>\\n    <li>Beaver Builder<\\/li>\\n    <li>WP-Rocket<\\/li>\\n    <li>WooCommerce<\\/li>\\n    <li>Easy Digital Downloads<\\/li>\\n    <li>Admin Columns PRO<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/integrations\\/\\">All our integrations<\\/a><\\/p>\\n<h3><a href=\\"https:\\/\\/www.seopress.org\\/solutions\\/migrate-from\\/\\">Import your post and term metadata from other SEO plugins in 1-click<\\/a><\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-terms-metadatas-yoast-seo-seopress\\/\\">Yoast SEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadatas-from-all-in-one-seo-to-seopress\\/\\">All In One SEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadatas-from-the-seo-framework-to-seopress\\/\\">SEO Framework<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-terms-metadatas-rank-math-seo-seopress\\/\\">Rank Math<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-metadata-from-seo-ultimate-to-seopress\\/\\">SEO Ultimate<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-wp-meta-seo-to-seopress\\/\\">WP Meta SEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-premium-seo-pack-to-seopress\\/\\">Premium SEO Pack<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-metadatas-from-squirrly-to-seopress\\/\\">Squirrly<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-wpseo-to-seopress\\/\\">wpSEO<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-platinum-seo-pack-to-seopress\\/\\">Platinum SEO Pack<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-smartcrawl-to-seopress\\/\\">SmartCrawl<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-metadata-from-seopressor-to-seopress\\/\\">SEOPressor<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/guides\\/import-post-and-terms-metadata-from-slim-seo-to-seopress\\/\\">Slim SEO<\\/a><\\/li>\\n<\\/ul>\\n<h3>Help and support<\\/h3>\\n<ul>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/\\">Documentation center<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.facebook.com\\/groups\\/seopress\\/\\">Join our SEOPress official community group<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/support\\/ebooks\\/\\">Learn SEO with our Free ebooks<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.youtube.com\\/seopress\\">Our SEOPress YouTube Channel<\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/www.seopress.org\\/account\\/your-tickets\\/\\">Email (PRO only)<\\/a><\\/li>\\n<\\/ul>\\n<h3><a href=\\"https:\\/\\/www.seopress.org\\/about\\/brand-assets\\/\\">Branding guidelines<\\/a><\\/h3>\\n<p>SEOPress is a registered trademark of SEOPress SASU. When writing about SEOPress plugin, please make sure to write it correctly.<\\/p>\\n<p>SEOPress (correct)\\nSeopress (incorrect)\\nseo press (incorrect)\\nSEOpress (incorrect)<\\/p>\\n<h3>SEOPress featured on<\\/h3>\\n<ul>\\n    <li>WP Beginner<\\/li>\\n    <li>Microsoft<\\/li>\\n    <li>Neil Patel<\\/li>\\n    <li>HubSpot<\\/li>\\n    <li>GoDaddy<\\/li>\\n    <li>Forbes<\\/li>\\n    <li>Search Engine Journal<\\/li>\\n    <li>Elementor<\\/li>\\n    <li>WP Crafter<\\/li>\\n    <li>Kinsta<\\/li>\\n    <li>Pagely<\\/li>\\n    <li>Freemius<\\/li>\\n    <li>Majestic<\\/li>\\n    <li>WP Explorer<\\/li>\\n    <li>MasterWP<\\/li>\\n    <li>...<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/press\\/\\">Complete list on our Press page<\\/a><\\/p>\\n<h3>Our website:<\\/h3>\\n<p>Any questions? Visit our website <a href=\\"https:\\/\\/www.seopress.org\\">seopress.org<\\/a><\\/p>"],"changelog":["<h4> 7.3.2 <\\/h4>\\n<ul>\\n<li>FIX Content analysis with the universal SEO metabox<\\/li>\\n<\\/ul>\\n<h4> 7.3.1 <\\/h4>\\n<ul>\\n<li>FIX JS error with the Block Editor<\\/li>\\n<li>FIX Polylang and XML sitemaps<\\/li>\\n<\\/ul>\\n<h4> 7.3 <a href=\\"https:\\/\\/www.seopress.org\\/newsroom\\/product-news\\/seopress-7-3\\/\\">Read the blog post update<\\/a> <\\/h4>\\n<ul>\\n<li>NEW Add pre-published checks to the Block Editor<\\/li>\\n<li>NEW Disable hierarchical display for posts and products in HTML sitemap (SEO, XML - HTML Sitemap, HTML Sitemap tab)<\\/li>\\n<li>NEW \'seopress_ai_openai_request_args_alt\' hook to filter the arguments sent to OpenAI for alt texts (<a href=\\"https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-the-arguments-sent-to-openai-to-generate-alternative-texts\\/\\">https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-the-arguments-sent-to-openai-to-generate-alternative-texts\\/<\\/a>)<\\/li>\\n<li>NEW \'seopress_pro_breadcrumbs_json\' hook to filter the JSON Breadcrumbs (<a href=\\"https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-breadcrumbs-json\\/\\">https:\\/\\/www.seopress.org\\/support\\/hooks\\/filter-breadcrumbs-json\\/<\\/a>)<\\/li>\\n<li>INFO Remove very old deprecated functions<\\/li>\\n<li>INFO Strengthening of security<\\/li>\\n<li>INFO Refactoring some code<\\/li>\\n<li>INFO Exclude specific custom post types generated by page builders for the redirect suggestions feature (Elementor, Beaver Builder, Brizy, Zion Builder, Breakdance, Oxygen...)<\\/li>\\n<li>FIX Fatal error in XML sitemaps if no timezone associated to post<\\/li>\\n<li>FIX Oxygen compatibility: PHP Warning: Undefined variable $oxygen_metabox_enabled<\\/li>\\n<li>FIX 403 error with Inspect URL with Google Search Console in specific cases<\\/li>\\n<li>FIX PHP 8.3 compatibility: Fatal error: Duplicate declaration of static variable<\\/li>\\n<li>FIX Compatibility issue with Themify builder<\\/li>\\n<li>FIX Fatal error: Uncaught TypeError: property_exists() on $tax<\\/li>\\n<li>FIX Internal linking suggestions<\\/li>\\n<li>FIX Google Preview regression<\\/li>\\n<li>FIX Compatibility issue with Polylang and XML sitemaps<\\/li>\\n<li>FIX Target keywords with dashes<\\/li>\\n<\\/ul>\\n<p><a href=\\"https:\\/\\/www.seopress.org\\/changelog\\/\\">View our complete changelog<\\/a><\\/p>"],"installation":["<ol>\\n<li>Upload \'wp-seopress\' to the \'\\/wp-content\\/plugins\\/\' directory<\\/li>\\n<li>Activate the plugin through the \'Plugins\' menu in WordPress<\\/li>\\n<li>Click on SEOPress and apply settings.<\\/li>\\n<\\/ol>"],"plugin":"wp-seopress-pro\\/seopress-pro.php","id":"wp-seopress-pro\\/seopress-pro.php"}";}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(246, 'seopress_instant_indexing_log_option_name', 'a:1:{s:5:"error";s:26:"No search engines selected";}', 'no'),
(247, 'seopress_404_cat_children', 'a:0:{}', 'yes'),
(255, 'theme_mods_twentytwentyfour', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1703313264:1'),
(10, 1, '_wp_trash_meta_status', 'publish'),
(11, 1, '_wp_trash_meta_time', '1703394201'),
(12, 1, '_wp_desired_post_slug', 'hello-world'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(14, 11, '_edit_last', '1'),
(15, 11, '_seopress_redirections_type', '301'),
(16, 11, '_seopress_redirections_value', 'http://seowp.local/'),
(17, 11, '_seopress_redirections_param', 'exact_match'),
(18, 11, '_seopress_redirections_enabled', 'yes'),
(19, 11, '_seopress_redirections_logged_status', 'both'),
(20, 11, '_edit_lock', '1703394165:1'),
(21, 12, '_edit_lock', '1703394212:1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-12-23 06:31:15', '2023-12-23 06:31:15', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-12-24 05:03:21', '2023-12-24 05:03:21', '', 0, 'http://seowp.local/?p=1', 0, 'post', '', 1),
(2, 1, '2023-12-23 06:31:15', '2023-12-23 06:31:15', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://seowp.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-12-23 06:31:15', '2023-12-23 06:31:15', '', 0, 'http://seowp.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-12-23 06:31:15', '2023-12-23 06:31:15', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://seowp.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-12-23 06:31:15', '2023-12-23 06:31:15', '', 0, 'http://seowp.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-12-23 06:31:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-12-23 06:31:33', '0000-00-00 00:00:00', '', 0, 'http://seowp.local/?p=4', 0, 'post', '', 0),
(6, 1, '2023-12-23 06:36:46', '2023-12-23 06:36:46', '<!-- wp:paragraph -->\n<p>Helllllllllllllooooooooooooooo</p>\n<!-- /wp:paragraph -->', 'SEO Post', '', 'publish', 'open', 'open', '', 'seo-post', '', '', '2023-12-23 06:36:46', '2023-12-23 06:36:46', '', 0, 'http://seowp.local/?p=6', 0, 'post', '', 0),
(7, 1, '2023-12-23 06:36:36', '2023-12-23 06:36:36', '{"version":2,"isGlobalStylesUserThemeJSON":true}', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2023-12-23 06:36:36', '2023-12-23 06:36:36', '', 0, 'http://seowp.local/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(8, 1, '2023-12-23 06:36:46', '2023-12-23 06:36:46', '<!-- wp:paragraph -->\n<p>Helllllllllllllooooooooooooooo</p>\n<!-- /wp:paragraph -->', 'SEO Post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-12-23 06:36:46', '2023-12-23 06:36:46', '', 6, 'http://seowp.local/?p=8', 0, 'revision', '', 0),
(10, 1, '2023-12-24 05:03:21', '2023-12-24 05:03:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-12-24 05:03:21', '2023-12-24 05:03:21', '', 1, 'http://seowp.local/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-12-24 05:03:37', '2023-12-24 05:03:37', '', 'hello-world', '', 'publish', 'closed', 'closed', '', 'hello-world', '', '', '2023-12-24 05:03:37', '2023-12-24 05:03:37', '', 0, 'http://seowp.local/?post_type=seopress_404&#038;p=11', 0, 'seopress_404', '', 0),
(12, 1, '2023-12-24 05:05:39', '2023-12-24 05:05:39', '<!-- wp:paragraph -->\n<p>SEO Post 2</p>\n<!-- /wp:paragraph -->', 'SEO Post 2', '', 'publish', 'open', 'open', '', 'seo-post-2', '', '', '2023-12-24 05:05:39', '2023-12-24 05:05:39', '', 0, 'http://seowp.local/?p=12', 0, 'post', '', 0),
(13, 1, '2023-12-24 05:05:39', '2023-12-24 05:05:39', '<!-- wp:paragraph -->\n<p>SEO Post 2</p>\n<!-- /wp:paragraph -->', 'SEO Post 2', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-12-24 05:05:39', '2023-12-24 05:05:39', '', 12, 'http://seowp.local/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-12-24 05:05:45', '2023-12-24 05:05:45', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-12-24 05:05:45', '2023-12-24 05:05:45', '', 0, 'http://seowp.local/navigation/', 0, 'wp_navigation', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_seopress_significant_keywords`
#

DROP TABLE IF EXISTS `wp_seopress_significant_keywords`;


#
# Table structure of table `wp_seopress_significant_keywords`
#

CREATE TABLE `wp_seopress_significant_keywords` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `word` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `tf` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_post_id` (`post_id`),
  KEY `idx_word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_seopress_significant_keywords`
#

#
# End of data contents of table `wp_seopress_significant_keywords`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(7, 2, 0),
(11, 3, 0),
(12, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'seopress_404_cat', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'Auto Redirect', 'autoredirect_by_seopress', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"dd680237303d6c1cbbc71cea8946729190556efad439cf2b37d1dbd49a456f11";a:4:{s:10:"expiration";i:1703485891;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36";s:5:"login";i:1703313091;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wpmdb_licence_key', '09ac7bba-a727-4ab9-a915-231625c780cf'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:"core/edit-post";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2023-12-23T06:36:37.366Z";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bj6gbvHv41L0IBkVET8yDCy/YqC.ov.', 'admin', 'dev-email@wpengine.local', 'http://seowp.local', '2023-12-23 06:31:15', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

