-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 25 fév. 2025 à 13:56
-- Version du serveur : 8.0.40
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rpni2_monagence`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2025-01-28 14:25:36', '2025-01-28 13:25:36', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:10:{i:1740493536;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740493537;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1740495336;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740497136;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740533157;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740576336;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740576357;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1741095025;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1741095101;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost:8888/rpni2/mon_agence/public', 'on'),
(3, 'home', 'http://localhost:8888/rpni2/mon_agence/public', 'on'),
(4, 'blogname', 'Mon agence', 'on'),
(5, 'blogdescription', 'Un design dynamique, rapide et effiace!', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', '2364422@csfoy.ca', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F Y', 'on'),
(25, 'time_format', 'G\\hi', 'on'),
(26, 'links_updated_date_format', 'd F Y G\\hi', 'on'),
(27, 'comment_moderation', '', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:160:{s:15:\"realisations/?$\";s:32:\"index.php?post_type=realisations\";s:45:\"realisations/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=realisations&feed=$matches[1]\";s:40:\"realisations/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=realisations&feed=$matches[1]\";s:32:\"realisations/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=realisations&paged=$matches[1]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:10:\"équipe/?$\";s:26:\"index.php?post_type=equipe\";s:40:\"équipe/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=equipe&feed=$matches[1]\";s:35:\"équipe/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=equipe&feed=$matches[1]\";s:27:\"équipe/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=equipe&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"realisations/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"realisations/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"realisations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"realisations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"realisations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"realisations/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"realisations/([^/]+)/embed/?$\";s:45:\"index.php?realisations=$matches[1]&embed=true\";s:33:\"realisations/([^/]+)/trackback/?$\";s:39:\"index.php?realisations=$matches[1]&tb=1\";s:53:\"realisations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?realisations=$matches[1]&feed=$matches[2]\";s:48:\"realisations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?realisations=$matches[1]&feed=$matches[2]\";s:41:\"realisations/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?realisations=$matches[1]&paged=$matches[2]\";s:48:\"realisations/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?realisations=$matches[1]&cpage=$matches[2]\";s:37:\"realisations/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?realisations=$matches[1]&page=$matches[2]\";s:29:\"realisations/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"realisations/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"realisations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"realisations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"realisations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"realisations/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"équipe/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"équipe/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"équipe/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"équipe/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"équipe/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"équipe/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"équipe/([^/]+)/embed/?$\";s:39:\"index.php?equipe=$matches[1]&embed=true\";s:28:\"équipe/([^/]+)/trackback/?$\";s:33:\"index.php?equipe=$matches[1]&tb=1\";s:48:\"équipe/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?equipe=$matches[1]&feed=$matches[2]\";s:43:\"équipe/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?equipe=$matches[1]&feed=$matches[2]\";s:36:\"équipe/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?equipe=$matches[1]&paged=$matches[2]\";s:43:\"équipe/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?equipe=$matches[1]&cpage=$matches[2]\";s:32:\"équipe/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?equipe=$matches[1]&page=$matches[2]\";s:24:\"équipe/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"équipe/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"équipe/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"équipe/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"équipe/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"équipe/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:85:\"/Users/laurieroy/Sites/rpni2/mon_agence/public/wp-content/themes/mon_agence/style.css\";i:1;s:0:\"\";}', 'off'),
(41, 'template', 'mon_agence', 'on'),
(42, 'stylesheet', 'mon_agence', 'on'),
(43, 'comment_registration', '', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'wavatar', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'Europe/Paris', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1753622736', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'fr_FR', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1738074441;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"2d7a6815563f573a7ab62867d7523521\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(147, 'can_compress_scripts', '1', 'on'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(171, 'current_theme', 'Mon thème complet', 'auto'),
(172, 'theme_mods_mon_agence', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"principal\";i:2;s:10:\"secondaire\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(173, 'theme_switched', '', 'auto'),
(179, 'new_admin_email', '2364422@csfoy.ca', 'auto'),
(202, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'auto'),
(205, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":8,\"critical\":1}', 'on'),
(240, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(241, 'recovery_mode_email_last_sent', '1739282946', 'auto'),
(279, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(280, 'recently_activated', 'a:0:{}', 'off'),
(285, 'acf_first_activated_version', '6.3.12', 'on'),
(286, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.7.1\",\"mysql_version\":\"8.0.40\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Mon th\\u00e8me complet\",\"version\":\"v0.1\",\"theme_uri\":\"http:\\/\\/local.sites\\/mon-theme-complet\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"3\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"text\":3,\"image\":10},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1739280701,\"event_first_created_field_group\":1739281086,\"last_updated\":1740490418}', 'off'),
(288, 'acf_version', '6.3.12', 'auto'),
(327, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(332, 'category_children', 'a:0:{}', 'auto'),
(361, '_site_transient_timeout_php_check_02188af51d4a5a03791426b00985b4f3', '1740754216', 'off'),
(362, '_site_transient_php_check_02188af51d4a5a03791426b00985b4f3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(383, '_site_transient_timeout_browser_b801d494f122793b0612636bfa234b9c', '1740766989', 'off'),
(384, '_site_transient_browser_b801d494f122793b0612636bfa234b9c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"133.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(398, '_site_transient_timeout_theme_roots', '1740492029', 'off'),
(399, '_site_transient_theme_roots', 'a:1:{s:10:\"mon_agence\";s:7:\"/themes\";}', 'off'),
(401, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.7.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:5:\"6.7.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1740490230;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-06 14:03:49\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'off'),
(402, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1740490230;s:7:\"checked\";a:1:{s:10:\"mon_agence\";s:4:\"v0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(403, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1740490230;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"6.3.12\";s:7:\"updated\";s:19:\"2025-02-12 20:30:38\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.3.12/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2024-05-24 07:04:35\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";s:19:\"akismet/akismet.php\";s:5:\"5.3.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(404, '_site_transient_timeout_wp_theme_files_patterns-70735aeaa936e2ecf46da4a7009b1e22', '1740492030', 'off'),
(405, '_site_transient_wp_theme_files_patterns-70735aeaa936e2ecf46da4a7009b1e22', 'a:2:{s:7:\"version\";s:4:\"v0.1\";s:8:\"patterns\";a:0:{}}', 'off'),
(406, '_site_transient_timeout_available_translations', '1740501030', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(407, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-01 09:05:28\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.5/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2024-12-26 00:37:42\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.26/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-12 07:32:34\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-11 11:12:13\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-23 15:46:02\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-11 08:34:45\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-04 15:09:31\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-30 01:15:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-05 18:11:40\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-03 07:45:57\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-08 01:15:14\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-08 01:13:58\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.7.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-05 18:08:14\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.7.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-23 00:05:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-08 19:43:34\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-15 22:47:35\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-14 20:17:10\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-06 16:38:21\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-12 00:03:39\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-20 19:38:18\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-02 23:11:20\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-04 14:46:26\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-05 15:56:22\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.10/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.16/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.21/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-09 22:28:42\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-30 07:43:09\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-01 20:26:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-23 15:37:32\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-30 10:07:14\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-10 01:30:52\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-27 13:02:04\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-12 22:29:22\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-06 14:03:49\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.6/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-29 23:44:41\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-31 07:07:30\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.33\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.33/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-01 09:14:16\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-22 18:23:30\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-31 11:29:26\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-16 18:27:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-07 13:30:47\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-01 06:53:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.21/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-16 17:32:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-11 06:34:23\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-04 13:14:22\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.7.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-11 17:53:34\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.7.1/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-13 13:11:03\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-02 13:58:02\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-05 15:57:37\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-09 17:43:36\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.15\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-07 23:57:02\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 11:32:23\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-08 02:42:50\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-08 03:02:52\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.7.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-11 13:37:10\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-10 11:19:42\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.34\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.34/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-22 09:42:36\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.7.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-03 15:04:58\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-01 14:10:09\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-10 15:43:56\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-30 08:56:10\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.16/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-10 11:39:57\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 09:44:08\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-08-30 07:14:35\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-30 10:26:38\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-09-20 22:15:56\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-03 17:00:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-02 07:29:05\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.25/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-06 13:44:46\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-03 01:12:45\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.16/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-02-11 06:35:32\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-23 16:50:06\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2025-01-12 05:35:18\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'off');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1738078518:1'),
(4, 8, '_edit_lock', '1739282199:1'),
(5, 10, '_edit_lock', '1738677384:1'),
(6, 10, '_wp_page_template', 'page-contact.php'),
(7, 12, '_menu_item_type', 'custom'),
(8, 12, '_menu_item_menu_item_parent', '0'),
(9, 12, '_menu_item_object_id', '12'),
(10, 12, '_menu_item_object', 'custom'),
(11, 12, '_menu_item_target', ''),
(12, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 12, '_menu_item_xfn', ''),
(14, 12, '_menu_item_url', 'http://localhost:8888/rpni2/mon_agence/public/'),
(15, 12, '_menu_item_orphaned', '1738678602'),
(16, 13, '_menu_item_type', 'post_type'),
(17, 13, '_menu_item_menu_item_parent', '0'),
(18, 13, '_menu_item_object_id', '10'),
(19, 13, '_menu_item_object', 'page'),
(20, 13, '_menu_item_target', ''),
(21, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 13, '_menu_item_xfn', ''),
(23, 13, '_menu_item_url', ''),
(24, 13, '_menu_item_orphaned', '1738678602'),
(25, 14, '_menu_item_type', 'post_type'),
(26, 14, '_menu_item_menu_item_parent', '0'),
(27, 14, '_menu_item_object_id', '2'),
(28, 14, '_menu_item_object', 'page'),
(29, 14, '_menu_item_target', ''),
(30, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 14, '_menu_item_xfn', ''),
(32, 14, '_menu_item_url', ''),
(33, 14, '_menu_item_orphaned', '1738678602'),
(34, 15, '_menu_item_type', 'post_type'),
(35, 15, '_menu_item_menu_item_parent', '0'),
(36, 15, '_menu_item_object_id', '8'),
(37, 15, '_menu_item_object', 'page'),
(38, 15, '_menu_item_target', ''),
(39, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 15, '_menu_item_xfn', ''),
(41, 15, '_menu_item_url', ''),
(42, 15, '_menu_item_orphaned', '1738678602'),
(43, 16, '_menu_item_type', 'post_type'),
(44, 16, '_menu_item_menu_item_parent', '0'),
(45, 16, '_menu_item_object_id', '6'),
(46, 16, '_menu_item_object', 'page'),
(47, 16, '_menu_item_target', ''),
(48, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 16, '_menu_item_xfn', ''),
(50, 16, '_menu_item_url', ''),
(51, 16, '_menu_item_orphaned', '1738678602'),
(52, 17, '_menu_item_type', 'custom'),
(53, 17, '_menu_item_menu_item_parent', '0'),
(54, 17, '_menu_item_object_id', '17'),
(55, 17, '_menu_item_object', 'custom'),
(56, 17, '_menu_item_target', ''),
(57, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 17, '_menu_item_xfn', ''),
(59, 17, '_menu_item_url', 'http://localhost:8888/rpni2/mon_agence/public/'),
(60, 17, '_menu_item_orphaned', '1738678788'),
(61, 18, '_menu_item_type', 'post_type'),
(62, 18, '_menu_item_menu_item_parent', '0'),
(63, 18, '_menu_item_object_id', '10'),
(64, 18, '_menu_item_object', 'page'),
(65, 18, '_menu_item_target', ''),
(66, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 18, '_menu_item_xfn', ''),
(68, 18, '_menu_item_url', ''),
(69, 18, '_menu_item_orphaned', '1738678788'),
(70, 19, '_menu_item_type', 'post_type'),
(71, 19, '_menu_item_menu_item_parent', '0'),
(72, 19, '_menu_item_object_id', '2'),
(73, 19, '_menu_item_object', 'page'),
(74, 19, '_menu_item_target', ''),
(75, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 19, '_menu_item_xfn', ''),
(77, 19, '_menu_item_url', ''),
(78, 19, '_menu_item_orphaned', '1738678788'),
(79, 20, '_menu_item_type', 'post_type'),
(80, 20, '_menu_item_menu_item_parent', '0'),
(81, 20, '_menu_item_object_id', '8'),
(82, 20, '_menu_item_object', 'page'),
(83, 20, '_menu_item_target', ''),
(84, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 20, '_menu_item_xfn', ''),
(86, 20, '_menu_item_url', ''),
(87, 20, '_menu_item_orphaned', '1738678788'),
(88, 21, '_menu_item_type', 'post_type'),
(89, 21, '_menu_item_menu_item_parent', '0'),
(90, 21, '_menu_item_object_id', '6'),
(91, 21, '_menu_item_object', 'page'),
(92, 21, '_menu_item_target', ''),
(93, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 21, '_menu_item_xfn', ''),
(95, 21, '_menu_item_url', ''),
(96, 21, '_menu_item_orphaned', '1738678788'),
(97, 22, '_menu_item_type', 'custom'),
(98, 22, '_menu_item_menu_item_parent', '0'),
(99, 22, '_menu_item_object_id', '22'),
(100, 22, '_menu_item_object', 'custom'),
(101, 22, '_menu_item_target', ''),
(102, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 22, '_menu_item_xfn', ''),
(104, 22, '_menu_item_url', 'http://localhost:8888/rpni2/mon_agence/public/'),
(151, 28, '_menu_item_type', 'custom'),
(152, 28, '_menu_item_menu_item_parent', '0'),
(153, 28, '_menu_item_object_id', '28'),
(154, 28, '_menu_item_object', 'custom'),
(155, 28, '_menu_item_target', ''),
(156, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 28, '_menu_item_xfn', ''),
(158, 28, '_menu_item_url', 'http://localhost:8888/rpni2/mon_agence/public/'),
(160, 29, '_edit_last', '1'),
(161, 29, '_edit_lock', '1739285413:1'),
(162, 2, '_wp_trash_meta_status', 'publish'),
(163, 2, '_wp_trash_meta_time', '1739282085'),
(164, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(165, 3, '_wp_trash_meta_status', 'draft'),
(166, 3, '_wp_trash_meta_time', '1739282088'),
(167, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(168, 10, '_wp_trash_meta_status', 'publish'),
(169, 10, '_wp_trash_meta_time', '1739282103'),
(170, 10, '_wp_desired_post_slug', 'contactez-nous'),
(171, 6, '_wp_trash_meta_status', 'publish'),
(172, 6, '_wp_trash_meta_time', '1739282108'),
(173, 6, '_wp_desired_post_slug', 'yolo'),
(174, 42, '_edit_lock', '1740153031:1'),
(175, 44, '_edit_lock', '1740151520:1'),
(176, 47, '_edit_lock', '1740152129:1'),
(177, 8, '_wp_trash_meta_status', 'publish'),
(178, 8, '_wp_trash_meta_time', '1739282371'),
(179, 8, '_wp_desired_post_slug', 'realisations'),
(180, 42, '_wp_page_template', 'page-realisations.php'),
(181, 47, '_wp_page_template', 'page-services.php'),
(182, 44, '_wp_page_template', 'page-equipe.php'),
(183, 50, '_menu_item_type', 'post_type'),
(184, 50, '_menu_item_menu_item_parent', '0'),
(185, 50, '_menu_item_object_id', '42'),
(186, 50, '_menu_item_object', 'page'),
(187, 50, '_menu_item_target', ''),
(188, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 50, '_menu_item_xfn', ''),
(190, 50, '_menu_item_url', ''),
(192, 51, '_menu_item_type', 'post_type'),
(193, 51, '_menu_item_menu_item_parent', '0'),
(194, 51, '_menu_item_object_id', '47'),
(195, 51, '_menu_item_object', 'page'),
(196, 51, '_menu_item_target', ''),
(197, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 51, '_menu_item_xfn', ''),
(199, 51, '_menu_item_url', ''),
(201, 52, '_menu_item_type', 'post_type'),
(202, 52, '_menu_item_menu_item_parent', '0'),
(203, 52, '_menu_item_object_id', '44'),
(204, 52, '_menu_item_object', 'page'),
(205, 52, '_menu_item_target', ''),
(206, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 52, '_menu_item_xfn', ''),
(208, 52, '_menu_item_url', ''),
(210, 28, '_wp_old_date', '2025-02-04'),
(211, 54, '_edit_last', '1'),
(212, 54, '_edit_lock', '1739284053:1'),
(213, 54, '_wp_trash_meta_status', 'publish'),
(214, 54, '_wp_trash_meta_time', '1739284208'),
(215, 54, '_wp_desired_post_slug', 'group_67ab5e74d7d49'),
(216, 55, '_wp_trash_meta_status', 'publish'),
(217, 55, '_wp_trash_meta_time', '1739284208'),
(218, 55, '_wp_desired_post_slug', 'field_67ab5e758710b'),
(219, 58, '_edit_last', '1'),
(220, 58, '_edit_lock', '1739287472:1'),
(221, 62, '_edit_lock', '1740151616:1'),
(222, 63, '_wp_attached_file', '2025/02/tout-le-monde-dans-charlevoix.jpg'),
(223, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:41:\"2025/02/tout-le-monde-dans-charlevoix.jpg\";s:8:\"filesize\";i:269362;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"tout-le-monde-dans-charlevoix-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4642;}s:5:\"large\";a:5:{s:4:\"file\";s:42:\"tout-le-monde-dans-charlevoix-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25794;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"tout-le-monde-dans-charlevoix-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3527;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"tout-le-monde-dans-charlevoix-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16819;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"tout-le-monde-dans-charlevoix-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45702;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(226, 62, 'footnotes', ''),
(228, 64, 'footnotes', ''),
(230, 65, '_edit_lock', '1740151606:1'),
(231, 66, '_wp_attached_file', '2025/02/six-prix-aux-crea-2019.jpg'),
(232, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2025/02/six-prix-aux-crea-2019.jpg\";s:8:\"filesize\";i:990804;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"six-prix-aux-crea-2019-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9364;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"six-prix-aux-crea-2019-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68553;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"six-prix-aux-crea-2019-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5519;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"six-prix-aux-crea-2019-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43400;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"six-prix-aux-crea-2019-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132921;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 68, '_edit_lock', '1740152984:1'),
(235, 69, '_wp_attached_file', '2025/02/brad-atelier-another-brick-wall-.jpg'),
(236, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1134;s:6:\"height\";i:638;s:4:\"file\";s:44:\"2025/02/brad-atelier-another-brick-wall-.jpg\";s:8:\"filesize\";i:544575;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"brad-atelier-another-brick-wall--300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11059;}s:5:\"large\";a:5:{s:4:\"file\";s:45:\"brad-atelier-another-brick-wall--1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91242;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"brad-atelier-another-brick-wall--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5782;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"brad-atelier-another-brick-wall--768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56027;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(239, 71, 'footnotes', ''),
(240, 72, '_edit_last', '1'),
(241, 72, '_edit_lock', '1739284993:1'),
(242, 72, 'nom_client', ''),
(243, 72, '_nom_client', 'field_67ab514c8a3e2'),
(244, 72, 'photo_1', ''),
(245, 72, '_photo_1', 'field_67ab51628a3e3'),
(246, 72, 'photo_2', ''),
(247, 72, '_photo_2', 'field_67ab51bc8a3e4'),
(248, 72, 'photo_3', ''),
(249, 72, '_photo_3', 'field_67ab51cd8a3e5'),
(250, 72, 'photo_4', ''),
(251, 72, '_photo_4', 'field_67ab51de8a3e6'),
(252, 72, 'photo_5', ''),
(253, 72, '_photo_5', 'field_67ab51e98a3e7'),
(254, 72, 'photo_6', ''),
(255, 72, '_photo_6', 'field_67ab51f58a3e8'),
(256, 72, 'photo_7', ''),
(257, 72, '_photo_7', 'field_67ab52048a3e9'),
(258, 72, 'photo_8', ''),
(259, 72, '_photo_8', 'field_67ab52178a3ea'),
(260, 73, 'nom_client', ''),
(261, 73, '_nom_client', 'field_67ab514c8a3e2'),
(262, 73, 'photo_1', ''),
(263, 73, '_photo_1', 'field_67ab51628a3e3'),
(264, 73, 'photo_2', ''),
(265, 73, '_photo_2', 'field_67ab51bc8a3e4'),
(266, 73, 'photo_3', ''),
(267, 73, '_photo_3', 'field_67ab51cd8a3e5'),
(268, 73, 'photo_4', ''),
(269, 73, '_photo_4', 'field_67ab51de8a3e6'),
(270, 73, 'photo_5', ''),
(271, 73, '_photo_5', 'field_67ab51e98a3e7'),
(272, 73, 'photo_6', ''),
(273, 73, '_photo_6', 'field_67ab51f58a3e8'),
(274, 73, 'photo_7', ''),
(275, 73, '_photo_7', 'field_67ab52048a3e9'),
(276, 73, 'photo_8', ''),
(277, 73, '_photo_8', 'field_67ab52178a3ea'),
(278, 75, '_menu_item_type', 'post_type'),
(279, 75, '_menu_item_menu_item_parent', '0'),
(280, 75, '_menu_item_object_id', '47'),
(281, 75, '_menu_item_object', 'page'),
(282, 75, '_menu_item_target', ''),
(283, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 75, '_menu_item_xfn', ''),
(285, 75, '_menu_item_url', ''),
(287, 76, '_menu_item_type', 'post_type'),
(288, 76, '_menu_item_menu_item_parent', '0'),
(289, 76, '_menu_item_object_id', '44'),
(290, 76, '_menu_item_object', 'page'),
(291, 76, '_menu_item_target', ''),
(292, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 76, '_menu_item_xfn', ''),
(294, 76, '_menu_item_url', ''),
(296, 77, '_menu_item_type', 'post_type'),
(297, 77, '_menu_item_menu_item_parent', '0'),
(298, 77, '_menu_item_object_id', '42'),
(299, 77, '_menu_item_object', 'page'),
(300, 77, '_menu_item_target', ''),
(301, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(302, 77, '_menu_item_xfn', ''),
(303, 77, '_menu_item_url', ''),
(305, 22, '_wp_old_date', '2025-02-04'),
(306, 72, '_wp_trash_meta_status', 'publish'),
(307, 72, '_wp_trash_meta_time', '1739285585'),
(308, 72, '_wp_desired_post_slug', 'realisations'),
(309, 80, '_edit_last', '1'),
(310, 80, '_edit_lock', '1739285532:1'),
(311, 81, '_wp_attached_file', '2025/02/Brick-BRAD.png'),
(312, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1829;s:4:\"file\";s:22:\"2025/02/Brick-BRAD.png\";s:8:\"filesize\";i:2437541;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Brick-BRAD-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36941;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"Brick-BRAD-1024x732.png\";s:5:\"width\";i:1024;s:6:\"height\";i:732;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:409360;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Brick-BRAD-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16174;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"Brick-BRAD-768x549.png\";s:5:\"width\";i:768;s:6:\"height\";i:549;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:229520;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"Brick-BRAD-1536x1097.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1097;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:905302;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"Brick-BRAD-2048x1463.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1463;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1551124;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 82, '_wp_attached_file', '2025/02/08_reveal.jpg'),
(314, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:857;s:4:\"file\";s:21:\"2025/02/08_reveal.jpg\";s:8:\"filesize\";i:958736;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"08_reveal-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19218;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"08_reveal-1024x731.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:731;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:153168;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"08_reveal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7518;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"08_reveal-768x548.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:548;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93627;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1480337674\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.05\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(315, 83, '_wp_attached_file', '2025/02/11_teaser.jpg'),
(316, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:608;s:4:\"file\";s:21:\"2025/02/11_teaser.jpg\";s:8:\"filesize\";i:871525;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"11_teaser-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14260;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"11_teaser-1024x519.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128119;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"11_teaser-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7655;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"11_teaser-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78107;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1478622532\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(317, 80, 'nom_client', 'Opéra de Montréal'),
(318, 80, '_nom_client', 'field_67ab514c8a3e2'),
(319, 80, 'photo_1', '81'),
(320, 80, '_photo_1', 'field_67ab51628a3e3'),
(321, 80, 'photo_2', '82'),
(322, 80, '_photo_2', 'field_67ab51bc8a3e4'),
(323, 80, 'photo_3', '83'),
(324, 80, '_photo_3', 'field_67ab51cd8a3e5'),
(325, 80, 'photo_4', ''),
(326, 80, '_photo_4', 'field_67ab51de8a3e6'),
(327, 80, 'photo_5', ''),
(328, 80, '_photo_5', 'field_67ab51e98a3e7'),
(329, 80, 'photo_6', ''),
(330, 80, '_photo_6', 'field_67ab51f58a3e8'),
(331, 80, 'photo_7', ''),
(332, 80, '_photo_7', 'field_67ab52048a3e9'),
(333, 80, 'photo_8', ''),
(334, 80, '_photo_8', 'field_67ab52178a3ea'),
(335, 84, 'nom_client', 'Opéra de Montréal'),
(336, 84, '_nom_client', 'field_67ab514c8a3e2'),
(337, 84, 'photo_1', '81'),
(338, 84, '_photo_1', 'field_67ab51628a3e3'),
(339, 84, 'photo_2', '82'),
(340, 84, '_photo_2', 'field_67ab51bc8a3e4'),
(341, 84, 'photo_3', '83'),
(342, 84, '_photo_3', 'field_67ab51cd8a3e5'),
(343, 84, 'photo_4', ''),
(344, 84, '_photo_4', 'field_67ab51de8a3e6'),
(345, 84, 'photo_5', ''),
(346, 84, '_photo_5', 'field_67ab51e98a3e7'),
(347, 84, 'photo_6', ''),
(348, 84, '_photo_6', 'field_67ab51f58a3e8'),
(349, 84, 'photo_7', ''),
(350, 84, '_photo_7', 'field_67ab52048a3e9'),
(351, 84, 'photo_8', ''),
(352, 84, '_photo_8', 'field_67ab52178a3ea'),
(353, 85, '_edit_last', '1'),
(354, 85, '_edit_lock', '1739287128:1'),
(355, 86, '_wp_attached_file', '2025/02/bbq-americaine-barbacoa.jpg'),
(356, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1134;s:6:\"height\";i:638;s:4:\"file\";s:35:\"2025/02/bbq-americaine-barbacoa.jpg\";s:8:\"filesize\";i:559344;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"bbq-americaine-barbacoa-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12959;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"bbq-americaine-barbacoa-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94404;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"bbq-americaine-barbacoa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5233;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"bbq-americaine-barbacoa-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59175;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(357, 87, '_wp_attached_file', '2025/02/burgerpulledpork.jpg'),
(358, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1695;s:6:\"height\";i:2168;s:4:\"file\";s:28:\"2025/02/burgerpulledpork.jpg\";s:8:\"filesize\";i:1614092;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"burgerpulledpork-235x300.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13624;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"burgerpulledpork-801x1024.jpg\";s:5:\"width\";i:801;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123187;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"burgerpulledpork-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6156;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"burgerpulledpork-768x982.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:982;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114230;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"burgerpulledpork-1201x1536.jpg\";s:5:\"width\";i:1201;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:253714;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:30:\"burgerpulledpork-1601x2048.jpg\";s:5:\"width\";i:1601;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:416249;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 88, '_wp_attached_file', '2025/02/kiosque.jpg'),
(360, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2043;s:6:\"height\";i:1205;s:4:\"file\";s:19:\"2025/02/kiosque.jpg\";s:8:\"filesize\";i:2101187;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"kiosque-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14964;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"kiosque-1024x604.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:604;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124314;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"kiosque-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6884;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"kiosque-768x453.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:453;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74774;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"kiosque-1536x906.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:906;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:253525;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:25:\"Copyright: MARCPHOTOS.COM\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(361, 85, 'nom_client', 'Barbacoa'),
(362, 85, '_nom_client', 'field_67ab514c8a3e2'),
(363, 85, 'photo_1', '86'),
(364, 85, '_photo_1', 'field_67ab51628a3e3'),
(365, 85, 'photo_2', '88'),
(366, 85, '_photo_2', 'field_67ab51bc8a3e4'),
(367, 85, 'photo_3', '87'),
(368, 85, '_photo_3', 'field_67ab51cd8a3e5'),
(369, 85, 'photo_4', ''),
(370, 85, '_photo_4', 'field_67ab51de8a3e6'),
(371, 85, 'photo_5', ''),
(372, 85, '_photo_5', 'field_67ab51e98a3e7'),
(373, 85, 'photo_6', ''),
(374, 85, '_photo_6', 'field_67ab51f58a3e8'),
(375, 85, 'photo_7', ''),
(376, 85, '_photo_7', 'field_67ab52048a3e9'),
(377, 85, 'photo_8', ''),
(378, 85, '_photo_8', 'field_67ab52178a3ea'),
(379, 89, 'nom_client', 'Barbacoa'),
(380, 89, '_nom_client', 'field_67ab514c8a3e2'),
(381, 89, 'photo_1', '86'),
(382, 89, '_photo_1', 'field_67ab51628a3e3'),
(383, 89, 'photo_2', '88'),
(384, 89, '_photo_2', 'field_67ab51bc8a3e4'),
(385, 89, 'photo_3', '87'),
(386, 89, '_photo_3', 'field_67ab51cd8a3e5'),
(387, 89, 'photo_4', ''),
(388, 89, '_photo_4', 'field_67ab51de8a3e6'),
(389, 89, 'photo_5', ''),
(390, 89, '_photo_5', 'field_67ab51e98a3e7'),
(391, 89, 'photo_6', ''),
(392, 89, '_photo_6', 'field_67ab51f58a3e8'),
(393, 89, 'photo_7', ''),
(394, 89, '_photo_7', 'field_67ab52048a3e9'),
(395, 89, 'photo_8', ''),
(396, 89, '_photo_8', 'field_67ab52178a3ea'),
(397, 90, '_edit_last', '1'),
(398, 90, '_edit_lock', '1739285671:1'),
(399, 91, '_wp_attached_file', '2025/02/01-agence-brad-creation-lego-ooh-enfants-noel-fille.jpg'),
(400, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:806;s:4:\"file\";s:63:\"2025/02/01-agence-brad-creation-lego-ooh-enfants-noel-fille.jpg\";s:8:\"filesize\";i:222174;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:63:\"01-agence-brad-creation-lego-ooh-enfants-noel-fille-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11954;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:63:\"01-agence-brad-creation-lego-ooh-enfants-noel-fille-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5101;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 92, '_wp_attached_file', '2025/02/02-agence-brad-creation-lego-ooh-enfants-noel-garcon.jpg'),
(402, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:806;s:4:\"file\";s:64:\"2025/02/02-agence-brad-creation-lego-ooh-enfants-noel-garcon.jpg\";s:8:\"filesize\";i:250231;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:64:\"02-agence-brad-creation-lego-ooh-enfants-noel-garcon-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14290;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:64:\"02-agence-brad-creation-lego-ooh-enfants-noel-garcon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5575;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 93, '_wp_attached_file', '2025/02/01-agence-brad-creation-lego-ooh-enfants-noel-fille-1.jpg'),
(404, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:806;s:4:\"file\";s:65:\"2025/02/01-agence-brad-creation-lego-ooh-enfants-noel-fille-1.jpg\";s:8:\"filesize\";i:222174;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:65:\"01-agence-brad-creation-lego-ooh-enfants-noel-fille-1-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11954;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:65:\"01-agence-brad-creation-lego-ooh-enfants-noel-fille-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5101;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 94, '_wp_attached_file', '2025/02/03-agence-brad-creation-lego-ooh-enfants-noel-tan.jpg'),
(406, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:806;s:4:\"file\";s:61:\"2025/02/03-agence-brad-creation-lego-ooh-enfants-noel-tan.jpg\";s:8:\"filesize\";i:205541;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:61:\"03-agence-brad-creation-lego-ooh-enfants-noel-tan-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12827;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:61:\"03-agence-brad-creation-lego-ooh-enfants-noel-tan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5391;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 90, 'nom_client', 'Lego'),
(408, 90, '_nom_client', 'field_67ab514c8a3e2'),
(409, 90, 'photo_1', '91'),
(410, 90, '_photo_1', 'field_67ab51628a3e3'),
(411, 90, 'photo_2', '92'),
(412, 90, '_photo_2', 'field_67ab51bc8a3e4'),
(413, 90, 'photo_3', '94'),
(414, 90, '_photo_3', 'field_67ab51cd8a3e5'),
(415, 90, 'photo_4', ''),
(416, 90, '_photo_4', 'field_67ab51de8a3e6'),
(417, 90, 'photo_5', ''),
(418, 90, '_photo_5', 'field_67ab51e98a3e7'),
(419, 90, 'photo_6', ''),
(420, 90, '_photo_6', 'field_67ab51f58a3e8'),
(421, 90, 'photo_7', ''),
(422, 90, '_photo_7', 'field_67ab52048a3e9'),
(423, 90, 'photo_8', ''),
(424, 90, '_photo_8', 'field_67ab52178a3ea'),
(425, 95, 'nom_client', 'Lego'),
(426, 95, '_nom_client', 'field_67ab514c8a3e2'),
(427, 95, 'photo_1', '91'),
(428, 95, '_photo_1', 'field_67ab51628a3e3'),
(429, 95, 'photo_2', '92'),
(430, 95, '_photo_2', 'field_67ab51bc8a3e4'),
(431, 95, 'photo_3', '94'),
(432, 95, '_photo_3', 'field_67ab51cd8a3e5'),
(433, 95, 'photo_4', ''),
(434, 95, '_photo_4', 'field_67ab51de8a3e6'),
(435, 95, 'photo_5', ''),
(436, 95, '_photo_5', 'field_67ab51e98a3e7'),
(437, 95, 'photo_6', ''),
(438, 95, '_photo_6', 'field_67ab51f58a3e8'),
(439, 95, 'photo_7', ''),
(440, 95, '_photo_7', 'field_67ab52048a3e9'),
(441, 95, 'photo_8', ''),
(442, 95, '_photo_8', 'field_67ab52178a3ea'),
(443, 96, '_edit_last', '1'),
(444, 96, '_edit_lock', '1740152043:1'),
(445, 97, '_wp_attached_file', '2025/02/experience-disney.jpg'),
(446, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:29:\"2025/02/experience-disney.jpg\";s:8:\"filesize\";i:792118;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"experience-disney-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13494;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"experience-disney-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108021;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"experience-disney-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6928;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"experience-disney-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66771;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"experience-disney-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:209547;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(447, 98, '_wp_attached_file', '2025/02/02-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg'),
(448, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:319;s:4:\"file\";s:70:\"2025/02/02-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg\";s:8:\"filesize\";i:75991;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:70:\"02-agence-brad-creation-disney-tower-of-terror-stunt-video-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10612;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:70:\"02-agence-brad-creation-disney-tower-of-terror-stunt-video-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5482;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(449, 99, '_wp_attached_file', '2025/02/03-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg'),
(450, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:319;s:4:\"file\";s:70:\"2025/02/03-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg\";s:8:\"filesize\";i:104655;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:70:\"03-agence-brad-creation-disney-tower-of-terror-stunt-video-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15204;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:70:\"03-agence-brad-creation-disney-tower-of-terror-stunt-video-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7795;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(451, 100, '_wp_attached_file', '2025/02/01-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg'),
(452, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:567;s:6:\"height\";i:319;s:4:\"file\";s:70:\"2025/02/01-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg\";s:8:\"filesize\";i:75136;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:70:\"01-agence-brad-creation-disney-tower-of-terror-stunt-video-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10825;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:70:\"01-agence-brad-creation-disney-tower-of-terror-stunt-video-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5594;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 96, 'nom_client', 'Disney'),
(454, 96, '_nom_client', 'field_67ab514c8a3e2'),
(455, 96, 'photo_1', '97'),
(456, 96, '_photo_1', 'field_67ab51628a3e3'),
(457, 96, 'photo_2', '98'),
(458, 96, '_photo_2', 'field_67ab51bc8a3e4'),
(459, 96, 'photo_3', '99'),
(460, 96, '_photo_3', 'field_67ab51cd8a3e5'),
(461, 96, 'photo_4', '100'),
(462, 96, '_photo_4', 'field_67ab51de8a3e6'),
(463, 96, 'photo_5', ''),
(464, 96, '_photo_5', 'field_67ab51e98a3e7'),
(465, 96, 'photo_6', ''),
(466, 96, '_photo_6', 'field_67ab51f58a3e8'),
(467, 96, 'photo_7', ''),
(468, 96, '_photo_7', 'field_67ab52048a3e9'),
(469, 96, 'photo_8', ''),
(470, 96, '_photo_8', 'field_67ab52178a3ea'),
(471, 101, 'nom_client', 'Disney'),
(472, 101, '_nom_client', 'field_67ab514c8a3e2'),
(473, 101, 'photo_1', '97'),
(474, 101, '_photo_1', 'field_67ab51628a3e3'),
(475, 101, 'photo_2', '98'),
(476, 101, '_photo_2', 'field_67ab51bc8a3e4'),
(477, 101, 'photo_3', '99'),
(478, 101, '_photo_3', 'field_67ab51cd8a3e5'),
(479, 101, 'photo_4', '100'),
(480, 101, '_photo_4', 'field_67ab51de8a3e6'),
(481, 101, 'photo_5', ''),
(482, 101, '_photo_5', 'field_67ab51e98a3e7'),
(483, 101, 'photo_6', ''),
(484, 101, '_photo_6', 'field_67ab51f58a3e8'),
(485, 101, 'photo_7', ''),
(486, 101, '_photo_7', 'field_67ab52048a3e9'),
(487, 101, 'photo_8', ''),
(488, 101, '_photo_8', 'field_67ab52178a3ea'),
(489, 102, '_edit_last', '1'),
(490, 102, '_edit_lock', '1739287483:1'),
(491, 103, '_wp_attached_file', '2025/02/IMG_4858.jpg'),
(492, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1112;s:6:\"height\";i:1901;s:4:\"file\";s:20:\"2025/02/IMG_4858.jpg\";s:8:\"filesize\";i:460897;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"IMG_4858-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14239;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"IMG_4858-599x1024.jpg\";s:5:\"width\";i:599;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91926;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"IMG_4858-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6874;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"IMG_4858-768x1313.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1313;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132320;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"IMG_4858-898x1536.jpg\";s:5:\"width\";i:898;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166207;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:10:\"Screenshot\";s:17:\"created_timestamp\";s:10:\"1738347315\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:10:\"Screenshot\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(493, 102, 'titre_du_membre', 'Laurie Roy'),
(494, 102, '_titre_du_membre', 'field_67ab5ef399e79'),
(495, 104, 'titre_du_membre', 'Laurie Roy'),
(496, 104, '_titre_du_membre', 'field_67ab5ef399e79'),
(497, 106, 'titre_du_membre', 'Laurie Roy'),
(498, 106, '_titre_du_membre', 'field_67ab5ef399e79'),
(499, 102, 'Photo_1', '103'),
(500, 102, '_Photo_1', 'field_67ab677fc7ff2'),
(501, 108, 'titre_du_membre', 'Laurie Roy'),
(502, 108, '_titre_du_membre', 'field_67ab5ef399e79'),
(503, 108, 'Photo_1', '103'),
(504, 108, '_Photo_1', 'field_67ab677fc7ff2'),
(505, 102, 'Photo_1_equipe', '83'),
(506, 102, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(507, 109, 'titre_du_membre', 'Laurie Roy'),
(508, 109, '_titre_du_membre', 'field_67ab5ef399e79'),
(509, 109, 'Photo_1', '103'),
(510, 109, '_Photo_1', 'field_67ab677fc7ff2'),
(511, 109, 'Photo_1_equipe', ''),
(512, 109, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(513, 110, 'titre_du_membre', 'Laurie Roy'),
(514, 110, '_titre_du_membre', 'field_67ab5ef399e79'),
(515, 110, 'Photo_1', '103'),
(516, 110, '_Photo_1', 'field_67ab677fc7ff2'),
(517, 110, 'Photo_1_equipe', '103'),
(518, 110, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(519, 111, 'titre_du_membre', 'Laurie Roy'),
(520, 111, '_titre_du_membre', 'field_67ab5ef399e79'),
(521, 111, 'Photo_1', '103'),
(522, 111, '_Photo_1', 'field_67ab677fc7ff2'),
(523, 111, 'Photo_1_equipe', '103'),
(524, 111, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(525, 112, 'titre_du_membre', 'Laurie Roy'),
(526, 112, '_titre_du_membre', 'field_67ab5ef399e79'),
(527, 112, 'Photo_1', '103'),
(528, 112, '_Photo_1', 'field_67ab677fc7ff2'),
(529, 112, 'Photo_1_equipe', '103'),
(530, 112, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(531, 113, 'titre_du_membre', 'Laurie Roy'),
(532, 113, '_titre_du_membre', 'field_67ab5ef399e79'),
(533, 113, 'Photo_1', '103'),
(534, 113, '_Photo_1', 'field_67ab677fc7ff2'),
(535, 113, 'Photo_1_equipe', '103'),
(536, 113, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(537, 114, 'titre_du_membre', 'Laurie Roy'),
(538, 114, '_titre_du_membre', 'field_67ab5ef399e79'),
(539, 114, 'Photo_1', '103'),
(540, 114, '_Photo_1', 'field_67ab677fc7ff2'),
(541, 114, 'Photo_1_equipe', '99'),
(542, 114, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(543, 115, 'titre_du_membre', 'Laurie Roy'),
(544, 115, '_titre_du_membre', 'field_67ab5ef399e79'),
(545, 115, 'Photo_1', '103'),
(546, 115, '_Photo_1', 'field_67ab677fc7ff2'),
(547, 115, 'Photo_1_equipe', '103'),
(548, 115, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(549, 116, 'titre_du_membre', 'Laurie Roy'),
(550, 116, '_titre_du_membre', 'field_67ab5ef399e79'),
(551, 116, 'Photo_1', '103'),
(552, 116, '_Photo_1', 'field_67ab677fc7ff2'),
(553, 116, 'Photo_1_equipe', '103'),
(554, 116, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(555, 117, '_wp_attached_file', '2025/02/IMG_4858-1.jpg'),
(556, 117, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1112;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2025/02/IMG_4858-1.jpg\";s:8:\"filesize\";i:190869;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"IMG_4858-1-300x216.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13599;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"IMG_4858-1-1024x738.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:738;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82678;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"IMG_4858-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6263;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"IMG_4858-1-768x553.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54740;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:10:\"Screenshot\";s:17:\"created_timestamp\";s:10:\"1738347315\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:10:\"Screenshot\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(557, 118, 'titre_du_membre', 'Laurie Roy'),
(558, 118, '_titre_du_membre', 'field_67ab5ef399e79'),
(559, 118, 'Photo_1', '103'),
(560, 118, '_Photo_1', 'field_67ab677fc7ff2'),
(561, 118, 'Photo_1_equipe', '117'),
(562, 118, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(563, 119, 'titre_du_membre', 'Laurie Roy'),
(564, 119, '_titre_du_membre', 'field_67ab5ef399e79'),
(565, 119, 'Photo_1', '103'),
(566, 119, '_Photo_1', 'field_67ab677fc7ff2'),
(567, 119, 'Photo_1_equipe', '83'),
(568, 119, '_Photo_1_equipe', 'field_67ab677fc7ff2'),
(569, 120, '_edit_last', '1'),
(570, 120, 'titre_du_membre', 'Laurie Roy'),
(571, 120, '_titre_du_membre', 'field_67ab5ef399e79'),
(572, 120, 'photo_1_equipe', '103'),
(573, 120, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(574, 121, 'titre_du_membre', ''),
(575, 121, '_titre_du_membre', 'field_67ab5ef399e79'),
(576, 121, 'photo_1_equipe', '86'),
(577, 121, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(578, 120, '_edit_lock', '1740161968:1'),
(579, 102, '_wp_trash_meta_status', 'publish'),
(580, 102, '_wp_trash_meta_time', '1739287645'),
(581, 102, '_wp_desired_post_slug', 'laurie-roy'),
(582, 122, 'titre_du_membre', 'Laurie Roy'),
(583, 122, '_titre_du_membre', 'field_67ab5ef399e79'),
(584, 122, 'photo_1_equipe', '103'),
(585, 122, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(586, 123, 'titre_du_membre', 'Laurie Roy'),
(587, 123, '_titre_du_membre', 'field_67ab5ef399e79'),
(588, 123, 'photo_1_equipe', '103'),
(589, 123, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(590, 124, '_edit_last', '1'),
(591, 124, '_edit_lock', '1739293279:1'),
(592, 129, '_edit_last', '1'),
(593, 129, '_edit_lock', '1739292877:1'),
(594, 129, 'titre_du_service', ''),
(595, 129, '_titre_du_service', 'field_67ab804bc9b0d'),
(596, 129, 'photo_1_service', ''),
(597, 129, '_photo_1_service', 'field_67ab808ac9b0e'),
(598, 130, 'titre_du_service', ''),
(599, 130, '_titre_du_service', 'field_67ab804bc9b0d'),
(600, 130, 'photo_1_service', ''),
(601, 130, '_photo_1_service', 'field_67ab808ac9b0e'),
(602, 131, '_edit_last', '1'),
(603, 131, 'titre_du_service', 'Création'),
(604, 131, '_titre_du_service', 'field_67ab804bc9b0d'),
(605, 131, 'photo_1_service', ''),
(606, 131, '_photo_1_service', 'field_67ab808ac9b0e'),
(607, 132, 'titre_du_service', 'Création'),
(608, 132, '_titre_du_service', 'field_67ab804bc9b0d'),
(609, 132, 'photo_1_service', ''),
(610, 132, '_photo_1_service', 'field_67ab808ac9b0e'),
(611, 131, '_edit_lock', '1739293144:1'),
(612, 133, 'titre_du_service', 'Création'),
(613, 133, '_titre_du_service', 'field_67ab804bc9b0d'),
(614, 133, 'photo_1_service', ''),
(615, 133, '_photo_1_service', 'field_67ab808ac9b0e'),
(616, 134, '_edit_last', '1'),
(617, 134, '_edit_lock', '1739293185:1'),
(618, 134, 'titre_du_service', 'Stratégie'),
(619, 134, '_titre_du_service', 'field_67ab804bc9b0d'),
(620, 134, 'photo_1_service', ''),
(621, 134, '_photo_1_service', 'field_67ab808ac9b0e'),
(622, 135, 'titre_du_service', 'Stratégie'),
(623, 135, '_titre_du_service', 'field_67ab804bc9b0d'),
(624, 135, 'photo_1_service', ''),
(625, 135, '_photo_1_service', 'field_67ab808ac9b0e'),
(626, 136, '_edit_last', '1'),
(627, 136, '_edit_lock', '1739293216:1'),
(628, 136, 'titre_du_service', 'Web et médias sociaux'),
(629, 136, '_titre_du_service', 'field_67ab804bc9b0d'),
(630, 136, 'photo_1_service', ''),
(631, 136, '_photo_1_service', 'field_67ab808ac9b0e'),
(632, 137, 'titre_du_service', 'Web et médias sociaux'),
(633, 137, '_titre_du_service', 'field_67ab804bc9b0d'),
(634, 137, 'photo_1_service', ''),
(635, 137, '_photo_1_service', 'field_67ab808ac9b0e'),
(636, 138, '_edit_last', '1'),
(637, 138, 'titre_du_service', 'Commerce électronique '),
(638, 138, '_titre_du_service', 'field_67ab804bc9b0d'),
(639, 138, 'photo_1_service', ''),
(640, 138, '_photo_1_service', 'field_67ab808ac9b0e'),
(641, 139, 'titre_du_service', 'Commerce électronique '),
(642, 139, '_titre_du_service', 'field_67ab804bc9b0d'),
(643, 139, 'photo_1_service', ''),
(644, 139, '_photo_1_service', 'field_67ab808ac9b0e'),
(645, 138, '_edit_lock', '1739293241:1'),
(647, 68, '_thumbnail_id', '69'),
(649, 65, '_thumbnail_id', '66'),
(651, 62, '_thumbnail_id', '63'),
(652, 1, '_edit_lock', '1740151622:1'),
(653, 140, 'nom_client', 'Disney'),
(654, 140, '_nom_client', 'field_67ab514c8a3e2'),
(655, 140, 'photo_1', '97'),
(656, 140, '_photo_1', 'field_67ab51628a3e3'),
(657, 140, 'photo_2', '98'),
(658, 140, '_photo_2', 'field_67ab51bc8a3e4'),
(659, 140, 'photo_3', '99'),
(660, 140, '_photo_3', 'field_67ab51cd8a3e5'),
(661, 140, 'photo_4', '100'),
(662, 140, '_photo_4', 'field_67ab51de8a3e6'),
(663, 140, 'photo_5', ''),
(664, 140, '_photo_5', 'field_67ab51e98a3e7'),
(665, 140, 'photo_6', ''),
(666, 140, '_photo_6', 'field_67ab51f58a3e8'),
(667, 140, 'photo_7', ''),
(668, 140, '_photo_7', 'field_67ab52048a3e9'),
(669, 140, 'photo_8', ''),
(670, 140, '_photo_8', 'field_67ab52178a3ea'),
(671, 141, '_edit_last', '1'),
(672, 141, '_edit_lock', '1740162075:1'),
(675, 141, 'titre_du_membre', 'Marie-Pierre Plante'),
(676, 141, '_titre_du_membre', 'field_67ab5ef399e79'),
(677, 141, 'photo_1_equipe', '145'),
(678, 141, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(679, 143, 'titre_du_membre', 'Femme à tout faire A.K.A meilleure designeuse'),
(680, 143, '_titre_du_membre', 'field_67ab5ef399e79'),
(681, 143, 'photo_1_equipe', '142'),
(682, 143, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(685, 145, '_wp_attached_file', '2025/02/IMG_7799-scaled.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(686, 145, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2025/02/IMG_7799-scaled.jpg\";s:8:\"filesize\";i:630015;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"IMG_7799-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21187;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"IMG_7799-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:156659;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"IMG_7799-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8373;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"IMG_7799-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:156659;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"IMG_7799-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:293440;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"IMG_7799-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:453078;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"iPhone 11\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1697048152\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"1.54\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:17:\"0.017241379310345\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_7799.jpg\";}'),
(687, 146, 'titre_du_membre', 'Femme à tout faire A.K.A meilleure designeuse'),
(688, 146, '_titre_du_membre', 'field_67ab5ef399e79'),
(689, 146, 'photo_1_equipe', '145'),
(690, 146, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(691, 147, 'titre_du_membre', 'Marie-Pierre Plante'),
(692, 147, '_titre_du_membre', 'field_67ab5ef399e79'),
(693, 147, 'photo_1_equipe', '145'),
(694, 147, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(695, 148, 'titre_du_membre', 'Marie-Pierre Plante'),
(696, 148, '_titre_du_membre', 'field_67ab5ef399e79'),
(697, 148, 'photo_1_equipe', '145'),
(698, 148, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(699, 150, '_edit_last', '1'),
(700, 150, '_edit_lock', '1740162191:1'),
(703, 152, '_wp_attached_file', '2025/02/IMG_4571-scaled.jpg'),
(704, 152, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2025/02/IMG_4571-scaled.jpg\";s:8:\"filesize\";i:455230;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"IMG_4571-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14669;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"IMG_4571-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104987;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"IMG_4571-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6214;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"IMG_4571-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104987;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"IMG_4571-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:207897;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"IMG_4571-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:315598;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_4571.jpg\";}'),
(705, 150, 'titre_du_membre', 'Esteban Henry'),
(706, 150, '_titre_du_membre', 'field_67ab5ef399e79'),
(707, 150, 'photo_1_equipe', '152'),
(708, 150, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(709, 153, 'titre_du_membre', 'Esteban Henry'),
(710, 153, '_titre_du_membre', 'field_67ab5ef399e79'),
(711, 153, 'photo_1_equipe', '152'),
(712, 153, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(713, 154, 'titre_du_membre', 'Esteban Henry'),
(714, 154, '_titre_du_membre', 'field_67ab5ef399e79'),
(715, 154, 'photo_1_equipe', '152'),
(716, 154, '_photo_1_equipe', 'field_67ab677fc7ff2'),
(717, 155, 'titre_du_membre', 'Esteban Henry'),
(718, 155, '_titre_du_membre', 'field_67ab5ef399e79'),
(719, 155, 'photo_1_equipe', '152'),
(720, 155, '_photo_1_equipe', 'field_67ab677fc7ff2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-01-28 14:25:36', '2025-01-28 13:25:36', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2025-01-28 14:25:36', '2025-01-28 13:25:36', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2025-01-28 14:25:36', '2025-01-28 13:25:36', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/rpni2/mon_agence/public/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2025-02-11 14:54:45', '2025-02-11 13:54:45', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-01-28 14:25:36', '2025-01-28 13:25:36', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/rpni2/mon_agence/public/wordpress.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2025-02-11 14:54:48', '2025-02-11 13:54:48', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-01-28 14:25:37', '2025-01-28 13:25:37', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-01-28 14:25:37', '2025-01-28 13:25:37', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/wordpress/index.php/2025/01/28/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2025-01-28 16:35:11', '2025-01-28 15:35:11', '', 'yolo', '', 'trash', 'closed', 'closed', '', 'yolo__trashed', '', '', '2025-02-11 14:55:08', '2025-02-11 13:55:08', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-01-28 16:35:11', '2025-01-28 15:35:11', '', 'yolo', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-01-28 16:35:11', '2025-01-28 15:35:11', '', 6, 'http://localhost:8888/rpni2/mon_agence/public/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-02-04 14:47:43', '2025-02-04 13:47:43', '<!-- wp:paragraph -->\n<p>Envie d’en apprendre plus sur notre travail et nos réalisations…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'trash', 'closed', 'closed', '', 'realisations__trashed', '', '', '2025-02-11 14:59:31', '2025-02-11 13:59:31', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?page_id=8', 0, 'page', '', 0),
(9, 1, '2025-02-04 14:47:43', '2025-02-04 13:47:43', '<!-- wp:paragraph -->\n<p>Envie d’en apprendre plus sur notre travail et nos réalisations…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2025-02-04 14:47:43', '2025-02-04 13:47:43', '', 8, 'http://localhost:8888/rpni2/mon_agence/public/?p=9', 0, 'revision', '', 0),
(10, 1, '2025-02-04 14:56:24', '2025-02-04 13:56:24', '', 'Contactez-nous!', '', 'trash', 'closed', 'closed', '', 'contactez-nous__trashed', '', '', '2025-02-11 14:55:03', '2025-02-11 13:55:03', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?page_id=10', 0, 'page', '', 0),
(11, 1, '2025-02-04 14:56:24', '2025-02-04 13:56:24', '', 'Contactez-nous!', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-02-04 14:56:24', '2025-02-04 13:56:24', '', 10, 'http://localhost:8888/rpni2/mon_agence/public/?p=11', 0, 'revision', '', 0),
(12, 1, '2025-02-04 15:16:42', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2025-02-04 15:16:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2025-02-04 15:16:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2025-02-04 15:16:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2025-02-04 15:16:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2025-02-04 15:19:48', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:19:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2025-02-04 15:19:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:19:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2025-02-04 15:19:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:19:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2025-02-04 15:19:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:19:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2025-02-04 15:19:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-04 15:19:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2025-02-11 15:47:28', '2025-02-04 14:20:43', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2025-02-11 15:47:28', '2025-02-11 14:47:28', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=22', 1, 'nav_menu_item', '', 0),
(28, 1, '2025-02-11 15:15:03', '2025-02-04 14:32:18', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil-2', '', '', '2025-02-11 15:15:03', '2025-02-11 14:15:03', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"realisations\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:6:\"author\";i:6;s:6:\"format\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:34:\"Fiche de gestion des réalisations\";s:12:\"show_in_rest\";i:0;}', 'Fiche des réalisations', 'fiche-des-realisations', 'publish', 'closed', 'closed', '', 'group_67ab514beef21', '', '', '2025-02-11 15:52:29', '2025-02-11 14:52:29', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nom du client', 'nom_client', 'publish', 'closed', 'closed', '', 'field_67ab514c8a3e2', '', '', '2025-02-11 15:52:29', '2025-02-11 14:52:29', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&#038;p=30', 0, 'acf-field', '', 0),
(31, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #1', 'photo_1', 'publish', 'closed', 'closed', '', 'field_67ab51628a3e3', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #2', 'photo_2', 'publish', 'closed', 'closed', '', 'field_67ab51bc8a3e4', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #3', 'photo_3', 'publish', 'closed', 'closed', '', 'field_67ab51cd8a3e5', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=33', 3, 'acf-field', '', 0),
(34, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #4', 'photo_4', 'publish', 'closed', 'closed', '', 'field_67ab51de8a3e6', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=34', 4, 'acf-field', '', 0),
(35, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #5', 'photo_5', 'publish', 'closed', 'closed', '', 'field_67ab51e98a3e7', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=35', 5, 'acf-field', '', 0),
(36, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #6', 'photo_6', 'publish', 'closed', 'closed', '', 'field_67ab51f58a3e8', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=36', 6, 'acf-field', '', 0),
(37, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #7', 'photo_7', 'publish', 'closed', 'closed', '', 'field_67ab52048a3e9', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=37', 7, 'acf-field', '', 0),
(38, 1, '2025-02-11 14:38:06', '2025-02-11 13:38:06', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #8', 'photo_8', 'publish', 'closed', 'closed', '', 'field_67ab52178a3ea', '', '', '2025-02-11 14:38:06', '2025-02-11 13:38:06', '', 29, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=38', 8, 'acf-field', '', 0),
(40, 1, '2025-02-11 14:54:45', '2025-02-11 13:54:45', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/rpni2/mon_agence/public/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-02-11 14:54:45', '2025-02-11 13:54:45', '', 2, 'http://localhost:8888/rpni2/mon_agence/public/?p=40', 0, 'revision', '', 0),
(41, 1, '2025-02-11 14:54:48', '2025-02-11 13:54:48', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/rpni2/mon_agence/public/wordpress.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-02-11 14:54:48', '2025-02-11 13:54:48', '', 3, 'http://localhost:8888/rpni2/mon_agence/public/?p=41', 0, 'revision', '', 0),
(42, 1, '2025-02-11 14:57:24', '2025-02-11 13:57:24', '<!-- wp:paragraph -->\n<p><strong>Envie d’en apprendre plus sur notre travail et nos réalisations…</strong></p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'publish', 'closed', 'closed', '', 'nos-realisations', '', '', '2025-02-21 16:23:45', '2025-02-21 15:23:45', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?page_id=42', 0, 'page', '', 0),
(43, 1, '2025-02-11 14:57:24', '2025-02-11 13:57:24', '<!-- wp:paragraph -->\n<p><strong>Envie d’en apprendre plus sur notre travail et nos réalisations…</strong></p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2025-02-11 14:57:24', '2025-02-11 13:57:24', '', 42, 'http://localhost:8888/rpni2/mon_agence/public/?p=43', 0, 'revision', '', 0),
(44, 1, '2025-02-11 14:58:05', '2025-02-11 13:58:05', '<!-- wp:paragraph -->\n<p>Agence humaine et multidisciplinaire, où chacun se plaît à pousser son talent plus loin et contribue à écrire l’histoire à sa façon.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Équipe', '', 'publish', 'closed', 'closed', '', 'notre-equipe', '', '', '2025-02-21 16:24:47', '2025-02-21 15:24:47', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?page_id=44', 0, 'page', '', 0),
(45, 1, '2025-02-11 14:58:05', '2025-02-11 13:58:05', '<!-- wp:paragraph -->\n<p>Agence humaine et multidisciplinaire, où chacun se plaît à pousser son talent plus loin et contribue à écrire l’histoire à sa façon.</p>\n<!-- /wp:paragraph -->', 'Équipe', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2025-02-11 14:58:05', '2025-02-11 13:58:05', '', 44, 'http://localhost:8888/rpni2/mon_agence/public/?p=45', 0, 'revision', '', 0),
(46, 1, '2025-02-11 14:58:13', '2025-02-11 13:58:13', '<!-- wp:paragraph -->\n<p>Agence humaine et multidisciplinaire, où chacun se plaît à pousser son talent plus loin et contribue à écrire l’histoire à sa façon.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Équipe', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2025-02-11 14:58:13', '2025-02-11 13:58:13', '', 44, 'http://localhost:8888/rpni2/mon_agence/public/?p=46', 0, 'revision', '', 0),
(47, 1, '2025-02-11 14:58:36', '2025-02-11 13:58:36', '<!-- wp:paragraph -->\n<p>De la stratégie à la création, en passant par le design, le Web et les médias sociaux, nous rassemblons les compétences de chacun pour que naissent des solutions novatrices et performantes.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2025-02-21 16:25:31', '2025-02-21 15:25:31', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?page_id=47', 0, 'page', '', 0),
(48, 1, '2025-02-11 14:58:36', '2025-02-11 13:58:36', '<!-- wp:paragraph -->\n<p>De la stratégie à la création, en passant par le design, le Web et les médias sociaux, nous rassemblons les compétences de chacun pour que naissent des solutions novatrices et performantes.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2025-02-11 14:58:36', '2025-02-11 13:58:36', '', 47, 'http://localhost:8888/rpni2/mon_agence/public/?p=48', 0, 'revision', '', 0),
(50, 1, '2025-02-11 15:15:03', '2025-02-11 14:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2025-02-11 15:15:03', '2025-02-11 14:15:03', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2025-02-11 15:15:03', '2025-02-11 14:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2025-02-11 15:15:03', '2025-02-11 14:15:03', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2025-02-11 15:15:03', '2025-02-11 14:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2025-02-11 15:15:03', '2025-02-11 14:15:03', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=52', 4, 'nav_menu_item', '', 0),
(54, 1, '2025-02-11 15:28:46', '2025-02-11 14:28:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'équipe', 'equipe', 'trash', 'closed', 'closed', '', 'group_67ab5e74d7d49__trashed', '', '', '2025-02-11 15:30:08', '2025-02-11 14:30:08', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field-group&#038;p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2025-02-11 15:28:46', '2025-02-11 14:28:46', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre du membre', 'titre_du_membre', 'trash', 'closed', 'closed', '', 'field_67ab5e758710b__trashed', '', '', '2025-02-11 15:30:08', '2025-02-11 14:30:08', '', 54, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&#038;p=55', 0, 'acf-field', '', 0),
(58, 1, '2025-02-11 15:31:05', '2025-02-11 14:31:05', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"equipe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:6:\"author\";i:6;s:6:\"format\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:47:\"Fiche de présentation des membres de l\'équipe\";s:12:\"show_in_rest\";i:0;}', 'Fiche de l\'équipe', 'fiche-de-lequipe', 'publish', 'closed', 'closed', '', 'group_67ab5ef364690', '', '', '2025-02-11 16:19:30', '2025-02-11 15:19:30', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2025-02-11 15:31:05', '2025-02-11 14:31:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre du membre', 'titre_du_membre', 'publish', 'closed', 'closed', '', 'field_67ab5ef399e79', '', '', '2025-02-11 15:31:05', '2025-02-11 14:31:05', '', 58, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(62, 1, '2025-02-11 15:40:06', '2025-02-11 14:40:06', '<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/tout-le-monde-dans-charlevoix-1024x576.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication : 5 octobre 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L’une des plus belles régions du Québec nous a invités à venir faire un tour et on est tombés amoureux. Non, ce n’est pas vrai. On s’aimait déjà depuis longtemps, mais l’invitation officielle s’est faite par un processus d’appel d’offres qui nous ont menés à une relation d’affaires sérieuse : Panini Press est aujourd’hui l’agence de référence pour Tourisme Charlevoix et on va bientôt vous donner le goût de venir y faire un tour, ou deux, ou trois.</p>\n<!-- /wp:paragraph -->', 'Tout le monde dans Charlevoix', '', 'publish', 'open', 'open', '', 'tout-le-monde-dans-charlevoix', '', '', '2025-02-21 16:29:19', '2025-02-21 15:29:19', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=62', 0, 'post', '', 0),
(63, 1, '2025-02-11 15:38:32', '2025-02-11 14:38:32', '', 'tout-le-monde-dans-charlevoix', '', 'inherit', 'open', 'closed', '', 'tout-le-monde-dans-charlevoix', '', '', '2025-02-11 15:38:32', '2025-02-11 14:38:32', '', 62, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/tout-le-monde-dans-charlevoix.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2025-02-11 15:40:06', '2025-02-11 14:40:06', '<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/tout-le-monde-dans-charlevoix-1024x576.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication : 5 octobre 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L’une des plus belles régions du Québec nous a invités à venir faire un tour et on est tombés amoureux. Non, ce n’est pas vrai. On s’aimait déjà depuis longtemps, mais l’invitation officielle s’est faite par un processus d’appel d’offres qui nous ont menés à une relation d’affaires sérieuse : « Nom de votre agence » est aujourd’hui l’agence de référence pour Tourisme Charlevoix et on va bientôt vous donner le goût de venir y faire un tour, ou deux, ou trois.</p>\n<!-- /wp:paragraph -->', 'Tout le monde dans Charlevoix', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2025-02-11 15:40:06', '2025-02-11 14:40:06', '', 62, 'http://localhost:8888/rpni2/mon_agence/public/?p=64', 0, 'revision', '', 0),
(65, 1, '2025-02-11 15:41:18', '2025-02-11 14:41:18', '<!-- wp:image {\"id\":66,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/six-prix-aux-crea-2019-1024x576.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication: 21 avril 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La campagne <em>Presque rien ne vous sépare d’un Créa</em> a remporté deux Grands Prix aux Créa 2018 dans la catégorie Imprimé – Publicité magazine. Cette campagne représentait les obstacles susceptibles de se dresser entre une bonne idée et un prix Créa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et ce n’est pas tout! Nous sommes également repartis avec deux prix pour l’Opéra de Montréal dans les catégories Publicité télé – Service et Publicité – Campagne. Notre initiative pour le Centre québécois du P.E.N. International a obtenu un prix dans la catégorie Film – Organisme à but non lucratif et notre campagne pour les séminaires de lecture rapide Daniel Gagnon a également été primée dans la catégorie Affichage extérieur. Bravo à toute l’équipe pour avoir contribué à ces réussites!</p>\n<!-- /wp:paragraph -->', 'Six prix aux Créa 2018', '', 'publish', 'open', 'open', '', 'six-prix-aux-crea-2018', '', '', '2025-02-21 16:29:09', '2025-02-21 15:29:09', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=65', 0, 'post', '', 0),
(66, 1, '2025-02-11 15:41:07', '2025-02-11 14:41:07', '', 'six-prix-aux-crea-2019', '', 'inherit', 'open', 'closed', '', 'six-prix-aux-crea-2019', '', '', '2025-02-11 15:41:07', '2025-02-11 14:41:07', '', 65, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/six-prix-aux-crea-2019.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2025-02-11 15:41:18', '2025-02-11 14:41:18', '<!-- wp:image {\"id\":66,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/six-prix-aux-crea-2019-1024x576.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication: 21 avril 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La campagne <em>Presque rien ne vous sépare d’un Créa</em> a remporté deux Grands Prix aux Créa 2018 dans la catégorie Imprimé – Publicité magazine. Cette campagne représentait les obstacles susceptibles de se dresser entre une bonne idée et un prix Créa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et ce n’est pas tout! Nous sommes également repartis avec deux prix pour l’Opéra de Montréal dans les catégories Publicité télé – Service et Publicité – Campagne. Notre initiative pour le Centre québécois du P.E.N. International a obtenu un prix dans la catégorie Film – Organisme à but non lucratif et notre campagne pour les séminaires de lecture rapide Daniel Gagnon a également été primée dans la catégorie Affichage extérieur. Bravo à toute l’équipe pour avoir contribué à ces réussites!</p>\n<!-- /wp:paragraph -->', 'Six prix aux Créa 2018', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2025-02-11 15:41:18', '2025-02-11 14:41:18', '', 65, 'http://localhost:8888/rpni2/mon_agence/public/?p=67', 0, 'revision', '', 0),
(68, 1, '2025-02-11 15:42:46', '2025-02-11 14:42:46', '<!-- wp:image {\"id\":69,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/brad-atelier-another-brick-wall--1024x576.jpg\" alt=\"\" class=\"wp-image-69\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication : 10 mars 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Panini Press est très fier d’annoncer qu’il s’est vu confier le mandat de réaliser la plateforme visuelle et le développement de l’image de marque pour Another Brick In The Wall – L’Opéra. Cette version lyrique, créée par l’Opéra de Montréal est inspirée des paroles et de la musique de The Wall, de Roger Waters. Inutile de dire que nous sommes très heureux et surtout très excités de pouvoir collaborer à ce grand projet. Nous bâtirons une image de marque inspirée de l’œuvre originale, mais distinctive à cette adaptation lyrique. Chose certaine, nous surprendrons avec audace et créativité!</p>\n<!-- /wp:paragraph -->', 'Panini Press réalisera la plateforme visuelle pour Another Brick In The Wall – L’opéra', '', 'publish', 'open', 'open', '', 'panini-press-realisera-la-plateforme-visuelle-pour-another-brick-in-the-wall-lopera', '', '', '2025-02-21 16:28:58', '2025-02-21 15:28:58', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=68', 0, 'post', '', 0),
(69, 1, '2025-02-11 15:42:30', '2025-02-11 14:42:30', '', 'brad-atelier-another-brick-wall', '', 'inherit', 'open', 'closed', '', 'brad-atelier-another-brick-wall', '', '', '2025-02-11 15:42:30', '2025-02-11 14:42:30', '', 68, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/brad-atelier-another-brick-wall-.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2025-02-11 15:42:46', '2025-02-11 14:42:46', '<!-- wp:image {\"id\":69,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/brad-atelier-another-brick-wall--1024x576.jpg\" alt=\"\" class=\"wp-image-69\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication : 10 mars 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Panini Press est très fier d’annoncer qu’il s’est vu confier le mandat de réaliser la plateforme visuelle et le développement de l’image de marque pour Another Brick In The Wall – L’Opéra. Cette version lyrique, créée par l’Opéra de Montréal est inspirée des paroles et de la musique de The Wall, de Roger Waters. Inutile de dire que nous sommes très heureux et surtout très excités de pouvoir collaborer à ce grand projet. Nous bâtirons une image de marque inspirée de l’œuvre originale, mais distinctive à cette adaptation lyrique. Chose certaine, nous surprendrons avec audace et créativité!</p>\n<!-- /wp:paragraph -->', 'Panini Press réalisera la plateforme visuelle pour Another Brick In The Wall – L’opéra', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2025-02-11 15:42:46', '2025-02-11 14:42:46', '', 68, 'http://localhost:8888/rpni2/mon_agence/public/?p=70', 0, 'revision', '', 0),
(71, 1, '2025-02-11 15:43:22', '2025-02-11 14:43:22', '<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/tout-le-monde-dans-charlevoix-1024x576.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Date de publication : 5 octobre 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L’une des plus belles régions du Québec nous a invités à venir faire un tour et on est tombés amoureux. Non, ce n’est pas vrai. On s’aimait déjà depuis longtemps, mais l’invitation officielle s’est faite par un processus d’appel d’offres qui nous ont menés à une relation d’affaires sérieuse : Panini Press est aujourd’hui l’agence de référence pour Tourisme Charlevoix et on va bientôt vous donner le goût de venir y faire un tour, ou deux, ou trois.</p>\n<!-- /wp:paragraph -->', 'Tout le monde dans Charlevoix', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2025-02-11 15:43:22', '2025-02-11 14:43:22', '', 62, 'http://localhost:8888/rpni2/mon_agence/public/?p=71', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2025-02-11 15:44:48', '2025-02-11 14:44:48', 'Envie d’en apprendre plus sur notre travail et nos réalisations…', 'Réalisations', '', 'trash', 'open', 'closed', '', 'realisations__trashed', '', '', '2025-02-11 15:53:05', '2025-02-11 14:53:05', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=realisations&#038;p=72', 0, 'realisations', '', 0),
(73, 1, '2025-02-11 15:44:48', '2025-02-11 14:44:48', 'Envie d’en apprendre plus sur notre travail et nos réalisations…', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2025-02-11 15:44:48', '2025-02-11 14:44:48', '', 72, 'http://localhost:8888/rpni2/mon_agence/public/?p=73', 0, 'revision', '', 0),
(75, 1, '2025-02-11 15:47:28', '2025-02-11 14:47:28', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2025-02-11 15:47:28', '2025-02-11 14:47:28', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2025-02-11 15:47:28', '2025-02-11 14:47:28', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2025-02-11 15:47:28', '2025-02-11 14:47:28', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2025-02-11 15:47:28', '2025-02-11 14:47:28', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2025-02-11 15:47:28', '2025-02-11 14:47:28', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=77', 4, 'nav_menu_item', '', 0),
(80, 1, '2025-02-11 15:54:32', '2025-02-11 14:54:32', 'Dans le cadre des célébrations du 375e anniversaire de la ville de Montréal, l’opéra du mythique spectacle The Wall créé par Roger Waters, ANOTHER BRICK IN THE WALL, sera présenté en première mondiale à l’<a href=\"http://www.operademontreal.com/\">Opéra de Montréal</a>.\r\n\r\nThe Wall est un drame psychologique inspiré de la vie de Roger Waters. À travers la mise en scène des sentiments d’aliénation mentale et d’isolation de Pink, The Wall représente les difficultés de toute une génération confrontée à la désintégration de ses rêves et du monde.\r\n\r\nCette campagne en deux temps, signée Panini Press, et dont une partie du design a été réalisée par « Nom de votre agence », la division branding et design de Panini Press, développe les thèmes récurrents de l’œuvre, soit le contrôle, l’isolement, la guerre et le sentiment d’invasion.', 'Another Brick in The Wall – L’opéra', '', 'publish', 'open', 'closed', '', 'another-brick-in-the-wall-lopera', '', '', '2025-02-11 15:54:32', '2025-02-11 14:54:32', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=realisations&#038;p=80', 0, 'realisations', '', 0),
(81, 1, '2025-02-11 15:54:02', '2025-02-11 14:54:02', '', 'Brick-BRAD', '', 'inherit', 'open', 'closed', '', 'brick-brad', '', '', '2025-02-11 15:54:02', '2025-02-11 14:54:02', '', 80, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/Brick-BRAD.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2025-02-11 15:54:17', '2025-02-11 14:54:17', '', '08_reveal', '', 'inherit', 'open', 'closed', '', '08_reveal', '', '', '2025-02-11 15:54:17', '2025-02-11 14:54:17', '', 80, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/08_reveal.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2025-02-11 15:54:27', '2025-02-11 14:54:27', '', '11_teaser', '', 'inherit', 'open', 'closed', '', '11_teaser', '', '', '2025-02-11 15:54:27', '2025-02-11 14:54:27', '', 80, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/11_teaser.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2025-02-11 15:54:32', '2025-02-11 14:54:32', 'Dans le cadre des célébrations du 375e anniversaire de la ville de Montréal, l’opéra du mythique spectacle The Wall créé par Roger Waters, ANOTHER BRICK IN THE WALL, sera présenté en première mondiale à l’<a href=\"http://www.operademontreal.com/\">Opéra de Montréal</a>.\r\n\r\nThe Wall est un drame psychologique inspiré de la vie de Roger Waters. À travers la mise en scène des sentiments d’aliénation mentale et d’isolation de Pink, The Wall représente les difficultés de toute une génération confrontée à la désintégration de ses rêves et du monde.\r\n\r\nCette campagne en deux temps, signée Panini Press, et dont une partie du design a été réalisée par « Nom de votre agence », la division branding et design de Panini Press, développe les thèmes récurrents de l’œuvre, soit le contrôle, l’isolement, la guerre et le sentiment d’invasion.', 'Another Brick in The Wall – L’opéra', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2025-02-11 15:54:32', '2025-02-11 14:54:32', '', 80, 'http://localhost:8888/rpni2/mon_agence/public/?p=84', 0, 'revision', '', 0),
(85, 1, '2025-02-11 15:55:43', '2025-02-11 14:55:43', 'Barbacoa est un restaurant spécialisé dans la pure tradition du barbecue à l’américaine : porc effiloché, poulet, côtes levées, fèves au lard. À l’occasion de l’ouverture de leur nouvelle adresse située dans l’aire de restauration revampée de Laurier Québec, Brad Atelier a signé le design d’intérieur et la création de l’univers de marque de la nouvelle adresse axée sur une expérience complète et distinctive qui permet de vivre l’authentique expérience du barbecue shack à l’américaine.\r\n\r\nComme le déclare Jason Savage, président de la chaîne, « c’était important pour moi que le design du point de vente se fasse conjointement avec l’agence pour que le discours de marque soit uniforme ».', 'Le vrai BBQ à l’américaine', '', 'publish', 'open', 'closed', '', 'le-vrai-bbq-a-lamericaine', '', '', '2025-02-11 15:55:43', '2025-02-11 14:55:43', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=realisations&#038;p=85', 0, 'realisations', '', 0),
(86, 1, '2025-02-11 15:55:06', '2025-02-11 14:55:06', '', 'bbq-americaine-barbacoa', '', 'inherit', 'open', 'closed', '', 'bbq-americaine-barbacoa', '', '', '2025-02-11 15:55:06', '2025-02-11 14:55:06', '', 85, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/bbq-americaine-barbacoa.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2025-02-11 15:55:15', '2025-02-11 14:55:15', '', 'burgerpulledpork', '', 'inherit', 'open', 'closed', '', 'burgerpulledpork', '', '', '2025-02-11 15:55:15', '2025-02-11 14:55:15', '', 85, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/burgerpulledpork.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2025-02-11 15:55:26', '2025-02-11 14:55:26', '', 'kiosque', '', 'inherit', 'open', 'closed', '', 'kiosque', '', '', '2025-02-11 15:55:26', '2025-02-11 14:55:26', '', 85, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/kiosque.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2025-02-11 15:55:43', '2025-02-11 14:55:43', 'Barbacoa est un restaurant spécialisé dans la pure tradition du barbecue à l’américaine : porc effiloché, poulet, côtes levées, fèves au lard. À l’occasion de l’ouverture de leur nouvelle adresse située dans l’aire de restauration revampée de Laurier Québec, Brad Atelier a signé le design d’intérieur et la création de l’univers de marque de la nouvelle adresse axée sur une expérience complète et distinctive qui permet de vivre l’authentique expérience du barbecue shack à l’américaine.\r\n\r\nComme le déclare Jason Savage, président de la chaîne, « c’était important pour moi que le design du point de vente se fasse conjointement avec l’agence pour que le discours de marque soit uniforme ».', 'Le vrai BBQ à l’américaine', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2025-02-11 15:55:43', '2025-02-11 14:55:43', '', 85, 'http://localhost:8888/rpni2/mon_agence/public/?p=89', 0, 'revision', '', 0),
(90, 1, '2025-02-11 15:56:51', '2025-02-11 14:56:51', 'Dans ces trois exécutions, des enfants que l’on devine la plupart du temps espiègles font de gros efforts pour paraitre sages afin que le père Noël leur apporte ce qu’ils désirent vraiment : des blocs LEGO.', 'Comme des enfants sages', '', 'publish', 'open', 'closed', '', 'comme-des-enfants-sages', '', '', '2025-02-11 15:56:51', '2025-02-11 14:56:51', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=realisations&#038;p=90', 0, 'realisations', '', 0),
(91, 1, '2025-02-11 15:56:19', '2025-02-11 14:56:19', '', '01-agence-brad-creation-lego-ooh-enfants-noel-fille', '', 'inherit', 'open', 'closed', '', '01-agence-brad-creation-lego-ooh-enfants-noel-fille', '', '', '2025-02-11 15:56:19', '2025-02-11 14:56:19', '', 90, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/01-agence-brad-creation-lego-ooh-enfants-noel-fille.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2025-02-11 15:56:29', '2025-02-11 14:56:29', '', '02-agence-brad-creation-lego-ooh-enfants-noel-garcon', '', 'inherit', 'open', 'closed', '', '02-agence-brad-creation-lego-ooh-enfants-noel-garcon', '', '', '2025-02-11 15:56:29', '2025-02-11 14:56:29', '', 90, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/02-agence-brad-creation-lego-ooh-enfants-noel-garcon.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2025-02-11 15:56:39', '2025-02-11 14:56:39', '', '01-agence-brad-creation-lego-ooh-enfants-noel-fille', '', 'inherit', 'open', 'closed', '', '01-agence-brad-creation-lego-ooh-enfants-noel-fille-2', '', '', '2025-02-11 15:56:39', '2025-02-11 14:56:39', '', 90, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/01-agence-brad-creation-lego-ooh-enfants-noel-fille-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2025-02-11 15:56:45', '2025-02-11 14:56:45', '', '03-agence-brad-creation-lego-ooh-enfants-noel-tan', '', 'inherit', 'open', 'closed', '', '03-agence-brad-creation-lego-ooh-enfants-noel-tan', '', '', '2025-02-11 15:56:45', '2025-02-11 14:56:45', '', 90, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/03-agence-brad-creation-lego-ooh-enfants-noel-tan.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2025-02-11 15:56:51', '2025-02-11 14:56:51', 'Dans ces trois exécutions, des enfants que l’on devine la plupart du temps espiègles font de gros efforts pour paraitre sages afin que le père Noël leur apporte ce qu’ils désirent vraiment : des blocs LEGO.', 'Comme des enfants sages', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2025-02-11 15:56:51', '2025-02-11 14:56:51', '', 90, 'http://localhost:8888/rpni2/mon_agence/public/?p=95', 0, 'revision', '', 0),
(96, 1, '2025-02-11 15:58:06', '2025-02-11 14:58:06', 'Brad a recréé l’univers Disney, donnant ainsi un avant-goût aux Montréalais de ce qui les attend au célèbre parc d’attractions.\r\n\r\nUn abribus a été entièrement transformé en une version miniature de l’attraction The Twilight Zone Tower of Terror Hotel. Le jour de l’inauguration du coup publicitaire, deux personnages sortis tout droit de l’imaginaire de Disney interagissaient avec les passants qui, émerveillés, se laissaient imprégner de la magie de Disney.', 'L’expérience Disney à Montréal', '', 'publish', 'open', 'closed', '', 'lexperience-disney-a-montreal', '', '', '2025-02-11 15:58:06', '2025-02-11 14:58:06', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=realisations&#038;p=96', 0, 'realisations', '', 0),
(97, 1, '2025-02-11 15:57:34', '2025-02-11 14:57:34', '', 'experience-disney', '', 'inherit', 'open', 'closed', '', 'experience-disney', '', '', '2025-02-11 15:57:34', '2025-02-11 14:57:34', '', 96, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/experience-disney.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2025-02-11 15:57:44', '2025-02-11 14:57:44', '', '02-agence-brad-creation-disney-tower-of-terror-stunt-video', '', 'inherit', 'open', 'closed', '', '02-agence-brad-creation-disney-tower-of-terror-stunt-video', '', '', '2025-02-11 15:57:44', '2025-02-11 14:57:44', '', 96, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/02-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2025-02-11 15:57:53', '2025-02-11 14:57:53', '', '03-agence-brad-creation-disney-tower-of-terror-stunt-video', '', 'inherit', 'open', 'closed', '', '03-agence-brad-creation-disney-tower-of-terror-stunt-video', '', '', '2025-02-11 15:57:53', '2025-02-11 14:57:53', '', 96, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/03-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2025-02-11 15:58:02', '2025-02-11 14:58:02', '', '01-agence-brad-creation-disney-tower-of-terror-stunt-video', '', 'inherit', 'open', 'closed', '', '01-agence-brad-creation-disney-tower-of-terror-stunt-video', '', '', '2025-02-11 15:58:02', '2025-02-11 14:58:02', '', 96, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/01-agence-brad-creation-disney-tower-of-terror-stunt-video.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2025-02-11 15:58:06', '2025-02-11 14:58:06', 'Brad a recréé l’univers Disney, donnant ainsi un avant-goût aux Montréalais de ce qui les attend au célèbre parc d’attractions.\r\n\r\nUn abribus a été entièrement transformé en une version miniature de l’attraction The Twilight Zone Tower of Terror Hotel. Le jour de l’inauguration du coup publicitaire, deux personnages sortis tout droit de l’imaginaire de Disney interagissaient avec les passants qui, émerveillés, se laissaient imprégner de la magie de Disney.', 'L’expérience Disney à Montréal', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2025-02-11 15:58:06', '2025-02-11 14:58:06', '', 96, 'http://localhost:8888/rpni2/mon_agence/public/?p=101', 0, 'revision', '', 0),
(102, 1, '2025-02-11 16:02:30', '2025-02-11 15:02:30', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'trash', 'open', 'closed', '', 'laurie-roy__trashed', '', '', '2025-02-11 16:27:25', '2025-02-11 15:27:25', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=equipe&#038;p=102', 0, 'equipe', '', 0),
(103, 1, '2025-02-11 16:00:50', '2025-02-11 15:00:50', '', 'Screenshot', 'Screenshot', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2025-02-11 16:00:50', '2025-02-11 15:00:50', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/IMG_4858.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2025-02-11 16:02:30', '2025-02-11 15:02:30', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n<img class=\"size-medium wp-image-103\" src=\"http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/IMG_4858-175x300.jpg\" alt=\"\" width=\"175\" height=\"300\" />', 'Laurie Roy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:02:30', '2025-02-11 15:02:30', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=104', 0, 'revision', '', 0),
(106, 1, '2025-02-11 16:06:25', '2025-02-11 15:06:25', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Laurie Roy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:06:25', '2025-02-11 15:06:25', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=106', 0, 'revision', '', 0),
(107, 1, '2025-02-11 16:07:23', '2025-02-11 15:07:23', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #1', 'photo_1_equipe', 'publish', 'closed', 'closed', '', 'field_67ab677fc7ff2', '', '', '2025-02-11 16:17:42', '2025-02-11 15:17:42', '', 58, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&#038;p=107', 1, 'acf-field', '', 0),
(108, 1, '2025-02-11 16:07:42', '2025-02-11 15:07:42', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Laurie Roy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:07:42', '2025-02-11 15:07:42', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=108', 0, 'revision', '', 0),
(109, 1, '2025-02-11 16:13:15', '2025-02-11 15:13:15', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:13:15', '2025-02-11 15:13:15', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=109', 0, 'revision', '', 0),
(110, 1, '2025-02-11 16:14:21', '2025-02-11 15:14:21', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:14:21', '2025-02-11 15:14:21', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=110', 0, 'revision', '', 0),
(111, 1, '2025-02-11 16:15:35', '2025-02-11 15:15:35', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:15:35', '2025-02-11 15:15:35', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=111', 0, 'revision', '', 0),
(112, 1, '2025-02-11 16:15:48', '2025-02-11 15:15:48', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:15:48', '2025-02-11 15:15:48', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=112', 0, 'revision', '', 0),
(113, 1, '2025-02-11 16:16:06', '2025-02-11 15:16:06', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:16:06', '2025-02-11 15:16:06', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=113', 0, 'revision', '', 0),
(114, 1, '2025-02-11 16:16:12', '2025-02-11 15:16:12', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:16:12', '2025-02-11 15:16:12', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=114', 0, 'revision', '', 0),
(115, 1, '2025-02-11 16:18:08', '2025-02-11 15:18:08', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:18:08', '2025-02-11 15:18:08', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=115', 0, 'revision', '', 0),
(116, 1, '2025-02-11 16:18:21', '2025-02-11 15:18:21', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:18:21', '2025-02-11 15:18:21', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=116', 0, 'revision', '', 0),
(117, 1, '2025-02-11 16:25:54', '2025-02-11 15:25:54', '', 'Screenshot', 'Screenshot', 'inherit', 'open', 'closed', '', 'screenshot-2', '', '', '2025-02-11 16:25:54', '2025-02-11 15:25:54', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/IMG_4858-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2025-02-11 16:25:58', '2025-02-11 15:25:58', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:25:58', '2025-02-11 15:25:58', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=118', 0, 'revision', '', 0),
(119, 1, '2025-02-11 16:27:04', '2025-02-11 15:27:04', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.\r\n\r\n&nbsp;', 'Meilleure flippeuse de crêpes', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-02-11 16:27:04', '2025-02-11 15:27:04', '', 102, 'http://localhost:8888/rpni2/mon_agence/public/?p=119', 0, 'revision', '', 0),
(120, 1, '2025-02-11 16:27:14', '2025-02-11 15:27:14', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.', 'Meilleure flippeuse de crêpes 🥞🧈', '', 'publish', 'open', 'closed', '', '120', '', '', '2025-02-11 16:28:26', '2025-02-11 15:28:26', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=equipe&#038;p=120', 0, 'equipe', '', 0),
(121, 1, '2025-02-11 16:27:14', '2025-02-11 15:27:14', '', '', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2025-02-11 16:27:14', '2025-02-11 15:27:14', '', 120, 'http://localhost:8888/rpni2/mon_agence/public/?p=121', 0, 'revision', '', 0),
(122, 1, '2025-02-11 16:27:45', '2025-02-11 15:27:45', '', '', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2025-02-11 16:27:45', '2025-02-11 15:27:45', '', 120, 'http://localhost:8888/rpni2/mon_agence/public/?p=122', 0, 'revision', '', 0),
(123, 1, '2025-02-11 16:28:26', '2025-02-11 15:28:26', 'Je n\'ai aucune idée du texte que je peux me mettre. Help.', 'Meilleure flippeuse de crêpes 🥞🧈', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2025-02-11 16:28:26', '2025-02-11 15:28:26', '', 120, 'http://localhost:8888/rpni2/mon_agence/public/?p=123', 0, 'revision', '', 0),
(124, 1, '2025-02-11 17:53:51', '2025-02-11 16:53:51', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:6:\"author\";i:6;s:6:\"format\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:18:\"Fiche des services\";s:12:\"show_in_rest\";i:0;}', 'Fiches des services', 'fiches-des-services', 'publish', 'closed', 'closed', '', 'group_67ab804b9aa42', '', '', '2025-02-11 18:03:37', '2025-02-11 17:03:37', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field-group&#038;p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2025-02-11 17:53:51', '2025-02-11 16:53:51', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre du service', 'titre_du_service', 'publish', 'closed', 'closed', '', 'field_67ab804bc9b0d', '', '', '2025-02-11 17:53:51', '2025-02-11 16:53:51', '', 124, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2025-02-11 17:53:51', '2025-02-11 16:53:51', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo #1', 'photo_1_service', 'publish', 'closed', 'closed', '', 'field_67ab808ac9b0e', '', '', '2025-02-11 17:53:51', '2025-02-11 16:53:51', '', 124, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=acf-field&p=126', 1, 'acf-field', '', 0),
(129, 1, '2025-02-11 17:56:56', '2025-02-11 16:56:56', 'De la stratégie à la création, en passant par le design, le Web et les médias sociaux, nous rassemblons les compétences de chacun pour que naissent des solutions novatrices et performantes. De la stratégie à la création, en passant par le design, le Web et les médias sociaux, nous rassemblons les compétences de chacun pour que naissent des solutions novatrices et performantes.', 'Services', '', 'publish', 'open', 'closed', '', 'services', '', '', '2025-02-11 17:56:56', '2025-02-11 16:56:56', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=services&#038;p=129', 0, 'services', '', 0),
(130, 1, '2025-02-11 17:56:56', '2025-02-11 16:56:56', 'De la stratégie à la création, en passant par le design, le Web et les médias sociaux, nous rassemblons les compétences de chacun pour que naissent des solutions novatrices et performantes. De la stratégie à la création, en passant par le design, le Web et les médias sociaux, nous rassemblons les compétences de chacun pour que naissent des solutions novatrices et performantes.', 'Services', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2025-02-11 17:56:56', '2025-02-11 16:56:56', '', 129, 'http://localhost:8888/rpni2/mon_agence/public/?p=130', 0, 'revision', '', 0),
(131, 1, '2025-02-11 17:58:07', '2025-02-11 16:58:07', 'On aime raconter des histoires, mais pas des salades. C’est pourquoi notre création marque l’imaginaire en suscitant une réaction. On y arrive avec rigueur et folie en triturant le rationnel et l’irrationnel. Le résultat est convaincant.', 'Création', '', 'publish', 'open', 'closed', '', '131', '', '', '2025-02-11 18:00:56', '2025-02-11 17:00:56', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=services&#038;p=131', 0, 'services', '', 0),
(132, 1, '2025-02-11 17:58:07', '2025-02-11 16:58:07', 'On aime raconter des histoires, mais pas des salades. C’est pourquoi notre création marque l’imaginaire en suscitant une réaction. On y arrive avec rigueur et folie en triturant le rationnel et l’irrationnel. Le résultat est convaincant.', '', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2025-02-11 17:58:07', '2025-02-11 16:58:07', '', 131, 'http://localhost:8888/rpni2/mon_agence/public/?p=132', 0, 'revision', '', 0),
(133, 1, '2025-02-11 18:00:56', '2025-02-11 17:00:56', 'On aime raconter des histoires, mais pas des salades. C’est pourquoi notre création marque l’imaginaire en suscitant une réaction. On y arrive avec rigueur et folie en triturant le rationnel et l’irrationnel. Le résultat est convaincant.', 'Création', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2025-02-11 18:00:56', '2025-02-11 17:00:56', '', 131, 'http://localhost:8888/rpni2/mon_agence/public/?p=133', 0, 'revision', '', 0),
(134, 1, '2025-02-11 18:02:05', '2025-02-11 17:02:05', 'Avant d’être créative, une communication est avant tout stratégique. C’est du moins ce dont nous sommes intimement convaincus à l’agence et ce que nous recommandons à nos clients. Ainsi, Panini Press a développé une méthode d’analyse qui lui est propre, lui permettant de cerner en profondeur chacune des problématiques de communication auxquelles nous sommes confrontés. Efficace et impeccable, la réflexion stratégique qui en découle est une base indispensable au succès de tout mandat.', 'Stratégie', '', 'publish', 'open', 'closed', '', 'strategie', '', '', '2025-02-11 18:02:05', '2025-02-11 17:02:05', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=services&#038;p=134', 0, 'services', '', 0),
(135, 1, '2025-02-11 18:02:05', '2025-02-11 17:02:05', 'Avant d’être créative, une communication est avant tout stratégique. C’est du moins ce dont nous sommes intimement convaincus à l’agence et ce que nous recommandons à nos clients. Ainsi, Panini Press a développé une méthode d’analyse qui lui est propre, lui permettant de cerner en profondeur chacune des problématiques de communication auxquelles nous sommes confrontés. Efficace et impeccable, la réflexion stratégique qui en découle est une base indispensable au succès de tout mandat.', 'Stratégie', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2025-02-11 18:02:05', '2025-02-11 17:02:05', '', 134, 'http://localhost:8888/rpni2/mon_agence/public/?p=135', 0, 'revision', '', 0),
(136, 1, '2025-02-11 18:02:25', '2025-02-11 17:02:25', 'L’interactif fait partie de notre identité. Chaque jour, on développe des idées et des outils pertinents au déploiement de stratégies Web percutantes et à la création de contenus engageants pour les médias sociaux – en plus d’en effectuer la gestion quotidienne (c’est une longue phrase, mais ça en valait la peine). Notre dévouement et notre minutie font de nous le meilleur allié de plusieurs marques sur la toile.', 'Web et médias sociaux', '', 'publish', 'open', 'closed', '', 'web-et-medias-sociaux', '', '', '2025-02-11 18:02:25', '2025-02-11 17:02:25', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=services&#038;p=136', 0, 'services', '', 0),
(137, 1, '2025-02-11 18:02:25', '2025-02-11 17:02:25', 'L’interactif fait partie de notre identité. Chaque jour, on développe des idées et des outils pertinents au déploiement de stratégies Web percutantes et à la création de contenus engageants pour les médias sociaux – en plus d’en effectuer la gestion quotidienne (c’est une longue phrase, mais ça en valait la peine). Notre dévouement et notre minutie font de nous le meilleur allié de plusieurs marques sur la toile.', 'Web et médias sociaux', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2025-02-11 18:02:25', '2025-02-11 17:02:25', '', 136, 'http://localhost:8888/rpni2/mon_agence/public/?p=137', 0, 'revision', '', 0),
(138, 1, '2025-02-11 18:02:58', '2025-02-11 17:02:58', 'Parce que le commerce électronique occupe de plus en plus de place dans les stratégies marketing, il faut davantage considérer son efficacité d’un angle communicationnel. Pour cela, Panini Press offre un service clés en main pour toute plateforme de vente en ligne. Ainsi, nos conseils et recommandations sur sa mise en place maximisent son efficacité, puisqu’elle est en lien direct avec les efforts de communication.', 'Commerce électronique', '', 'publish', 'open', 'closed', '', 'commerce-electronique', '', '', '2025-02-11 18:02:58', '2025-02-11 17:02:58', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=services&#038;p=138', 0, 'services', '', 0),
(139, 1, '2025-02-11 18:02:58', '2025-02-11 17:02:58', 'Parce que le commerce électronique occupe de plus en plus de place dans les stratégies marketing, il faut davantage considérer son efficacité d’un angle communicationnel. Pour cela, Panini Press offre un service clés en main pour toute plateforme de vente en ligne. Ainsi, nos conseils et recommandations sur sa mise en place maximisent son efficacité, puisqu’elle est en lien direct avec les efforts de communication.', 'Commerce électronique', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2025-02-11 18:02:58', '2025-02-11 17:02:58', '', 138, 'http://localhost:8888/rpni2/mon_agence/public/?p=139', 0, 'revision', '', 0),
(140, 1, '2025-02-21 16:36:22', '2025-02-21 15:36:22', 'Brad a recréé l’univers Disney, donnant ainsi un avant-goût aux Montréalais de ce qui les attend au célèbre parc d’attractions.\r\n\r\nUn abribus a été entièrement transformé en une version miniature de l’attraction The Twilight Zone Tower of Terror Hotel. Le jour de l’inauguration du coup publicitaire, deux personnages sortis tout droit de l’imaginaire de Disney interagissaient avec les passants qui, émerveillés, se laissaient imprégner de la magie de Disney.', 'L’expérience Disney à Montréal', '', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2025-02-21 16:36:22', '2025-02-21 15:36:22', '', 96, 'http://localhost:8888/rpni2/mon_agence/public/?p=140', 0, 'revision', '', 0),
(141, 1, '2025-02-21 16:59:17', '2025-02-21 15:59:17', '', 'Femme à tout faire A.K.A meilleure web designer', '', 'publish', 'open', 'closed', '', 'marie-pierre-plante', '', '', '2025-02-21 19:22:54', '2025-02-21 18:22:54', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=equipe&#038;p=141', 0, 'equipe', '', 0),
(143, 1, '2025-02-21 16:59:17', '2025-02-21 15:59:17', '', 'Marie-Pierre Plante', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-02-21 16:59:17', '2025-02-21 15:59:17', '', 141, 'http://localhost:8888/rpni2/mon_agence/public/?p=143', 0, 'revision', '', 0),
(145, 1, '2025-02-21 17:01:06', '2025-02-21 16:01:06', '', 'IMG_7799', '', 'inherit', 'open', 'closed', '', 'img_7799', '', '', '2025-02-21 17:01:06', '2025-02-21 16:01:06', '', 141, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/IMG_7799.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2025-02-21 17:01:14', '2025-02-21 16:01:14', '', 'Marie-Pierre Plante', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-02-21 17:01:14', '2025-02-21 16:01:14', '', 141, 'http://localhost:8888/rpni2/mon_agence/public/?p=146', 0, 'revision', '', 0),
(147, 1, '2025-02-21 17:01:51', '2025-02-21 16:01:51', 'Femme à tout faire A.K.A meilleure designeuse', 'Marie-Pierre Plante', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-02-21 17:01:51', '2025-02-21 16:01:51', '', 141, 'http://localhost:8888/rpni2/mon_agence/public/?p=147', 0, 'revision', '', 0),
(148, 1, '2025-02-21 19:22:54', '2025-02-21 18:22:54', '', 'Femme à tout faire A.K.A meilleure web designer', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-02-21 19:22:54', '2025-02-21 18:22:54', '', 141, 'http://localhost:8888/rpni2/mon_agence/public/?p=148', 0, 'revision', '', 0),
(149, 1, '2025-02-21 19:23:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-21 19:23:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?p=149', 0, 'post', '', 0),
(150, 1, '2025-02-21 19:25:03', '2025-02-21 18:25:03', '', 'Sushi Master et pro-codeur 🍱', '', 'publish', 'open', 'closed', '', 'sushi-master-%f0%9f%8d%b1', '', '', '2025-02-21 19:25:32', '2025-02-21 18:25:32', '', 0, 'http://localhost:8888/rpni2/mon_agence/public/?post_type=equipe&#038;p=150', 0, 'equipe', '', 0),
(152, 1, '2025-02-21 19:24:55', '2025-02-21 18:24:55', '', 'IMG_4571', '', 'inherit', 'open', 'closed', '', 'img_4571', '', '', '2025-02-21 19:24:55', '2025-02-21 18:24:55', '', 150, 'http://localhost:8888/rpni2/mon_agence/public/wp-content/uploads/2025/02/IMG_4571.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2025-02-21 19:25:03', '2025-02-21 18:25:03', '', 'Sushi Master 🍱', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2025-02-21 19:25:03', '2025-02-21 18:25:03', '', 150, 'http://localhost:8888/rpni2/mon_agence/public/?p=153', 0, 'revision', '', 0),
(154, 1, '2025-02-21 19:25:27', '2025-02-21 18:25:27', '', 'Sushi Master et Pro-codeur 🍱', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2025-02-21 19:25:27', '2025-02-21 18:25:27', '', 150, 'http://localhost:8888/rpni2/mon_agence/public/?p=154', 0, 'revision', '', 0),
(155, 1, '2025-02-21 19:25:32', '2025-02-21 18:25:32', '', 'Sushi Master et pro-codeur 🍱', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2025-02-21 19:25:32', '2025-02-21 18:25:32', '', 150, 'http://localhost:8888/rpni2/mon_agence/public/?p=155', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Menu 2', 'menu-2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(28, 3, 0),
(50, 3, 0),
(51, 3, 0),
(52, 3, 0),
(62, 1, 0),
(65, 1, 0),
(68, 1, 0),
(75, 2, 0),
(76, 2, 0),
(77, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'agence_user'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"002884a37ab62faeb296de3b5aa8ffda4d3ab61d532ec0d23d0065464943bec4\";a:4:{s:10:\"expiration\";i:1740663035;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\";s:5:\"login\";i:1740490235;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '149'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(22, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(23, 1, 'closedpostboxes_realisations', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(24, 1, 'metaboxhidden_realisations', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1740151734'),
(27, 1, 'wp_persisted_preferences', 'a:5:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-post_tag\";i:2;s:23:\"taxonomy-panel-category\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-02-21T15:22:46.847Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'agence_user', '$P$Bvtfos1DesP87A.5Bxt6kA68AZb5O4/', 'agence_user', '2364422@csfoy.ca', 'http://localhost:8888/rpni2/mon_agence/public/wordpress', '2025-01-28 13:25:36', '', 0, 'agence_user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
