<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'rpni2_monagence' );

/** Database username */
define( 'DB_USER', 'rpni2_user' );

/** Database password */
define( 'DB_PASSWORD', 'rpni2_mdp' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'b<=m8%3]4=J_ a{XT4I{mjUqGs,*c1ig h>%CwCqi!BSIB7cik;+?JH#Cg{-RRC]' );
define( 'SECURE_AUTH_KEY',  '|w8S>sG <Z1[=_26=NS.I>OD pGu2vvi#O}Yw(Y^Wl8/FO<iRyh{d-3vrt7BYxuE' );
define( 'LOGGED_IN_KEY',    'c_w^,<08BTl:O&vAeVVk]}z4Y0X;^vj>J0toQg^2S2tDrboCOmGhr[@/AP&M`z$}' );
define( 'NONCE_KEY',        'z{O4aV :-Oc7 W_4Sv_:&$6z.GuIbBMl(qPM(TIeJ:g[=JXOW37jQibnvT#E<+7V' );
define( 'AUTH_SALT',        '4,R`KK%<R<IgN5/3 gO.ooWV_uRhywx2F)MAcR_b-}mcWd^/qjVEb($ZyVWPl*Wc' );
define( 'SECURE_AUTH_SALT', 'He9c3Y18GS4dG-{vT_OA+Mwx63v._^pA12Ih)L3UhE<`}!B=a|qOp/< =QnM2hA+' );
define( 'LOGGED_IN_SALT',   'JUSy*ST[h(xcPYkN@Cc{@&9u^=<U4IvrA~v+#B&+GeZZ5T;igEZ{o#o4p_O^|f[#' );
define( 'NONCE_SALT',       'q=8P:H(}elC#fYq`SuT#AAn#zzt_4Qa~LKKq%TGM4yjhYEnD#KV<gaJWfdl0G[:-' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

define('FS_METHOD', 'direct');

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
