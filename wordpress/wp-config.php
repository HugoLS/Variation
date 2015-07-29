<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_ergo');

/** MySQL database username */
define('DB_USER', 'wp_user_ergo');

/** MySQL database password */
define('DB_PASSWORD', 'CJcD3sZM25ywyxdE');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'J?_uS2r&Vf~<+sc7yFLT6`sY!}LOb1{Yq`XG<N) .sW*02Fd_z?.^+ATF]%A*oR[');
define('SECURE_AUTH_KEY',  '+>(fxH=H-S[f;Yy6>|5sW_L$9o}<TVVE{wo=m/2/ezC]sXbP^~0!~|q{:%6Zq@-[');
define('LOGGED_IN_KEY',    'HOz$>cpdKP=w$LD4YAkjY3^R1u]TwuO#0.JJ^I(uvyO^Gnf9xEiS)29|L_F|+g~V');
define('NONCE_KEY',        'fNZZtAS54;o!uBE,|?4:/>y!4mYgu+A>bW61FTaJ:NzPM6Yg7O[{=Dh84=vi+Li]');
define('AUTH_SALT',        '71V&l5/J1to]vbga?cYT7A$:]H6mJ|i/b9S+;il1;)/2MKo9Fpym 3z,@B5v~&7!');
define('SECURE_AUTH_SALT', 'Ko*YZmmmTM&5{>+0~D7eD^Q:o28)B;E%?TS)+vfy5W3H|0[;u)HM|!/D-+.UAdKI');
define('LOGGED_IN_SALT',   'r+N7$!tBncQZ<MLRtx(TM`(bqGHA*fkSFEl?{fpHQ<D -%)|~WNy@It)q)=_BKQF');
define('NONCE_SALT',       '%Kmse/ui82cOhj{ q`;}34{<@v-|x)t,8ADV|scr~8&<yz/Ul0Dv-m]kx%(Y;]k&');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

