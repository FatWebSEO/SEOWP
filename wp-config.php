<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          'R4IsYis#M}FS&6>:DXUa+^bAC3|r]yE;yq3mmK2+mdW4Z[Fj^NeeY :WB.do$l7z' );
define( 'SECURE_AUTH_KEY',   '?rWr[w(i^`&2SJ%n^p~heSYe!xa3GpNX[k@b&iXv[:<~dD0K6PSVwJW,opMff2)x' );
define( 'LOGGED_IN_KEY',     'O}8,c;i~]6 H_`%z-afNl>LCsOcB=FHPptQLy @`$Di+c<1TMZJ0;M<(d+B^11?7' );
define( 'NONCE_KEY',         '~|HHqXAhiw$seQGe@2J$)s_qqKhb-Xn7;g@dW>@%3eO7Abtp222fa9Le~? 1GhkT' );
define( 'AUTH_SALT',         'tgvrO*?j2D^?ME.YiZe<cX?UP0i{>ipv<VCrhYLM2*2K-?7b5JB??|Zuj{8{9xdh' );
define( 'SECURE_AUTH_SALT',  '|gy!J2MB*emwTA)3lnv>4gp]UFQ<.`tLrmqSnc*+49u-z/u<Sy~Td)`PAiC@FV:s' );
define( 'LOGGED_IN_SALT',    '@3zHMBi],]N[6lp,bIre0nnJQMb`%Ow_y]MI1@D)ZuP=@TZ8C#!6bSw<4T,6Y9-i' );
define( 'NONCE_SALT',        '%D/s6,@IBVMr?6Auaitjk}:~YXzKj[C6A}SNeCciU$03+5YhRqdz^<;VL0ivQ:18' );
define( 'WP_CACHE_KEY_SALT', ',9{?Bt&#$kXb&TBjQv*/a?B5dCJgw0 l-WFSR/M#nriZC^`_9.)aw3(EBf|lQ@o1' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
