<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'x3wsChgnWzEsro6x0fTSIhBpz0+BxxGtkQZx3UqbrcAYabogczibxTif7nnbxtvHV5vmOF9+AGYC9J7ZmLwqiw==');
define('SECURE_AUTH_KEY',  'LsIX7Q3bQ2rtv4H1uK5hQer7q+NPfLNFB3VuGz+f5UcN33BHRPuBMFyoCUdIkmiz+9z+6LvV5xHb85B0mRe/ug==');
define('LOGGED_IN_KEY',    'yXTaVRbN2iJf1P82PtoVT8tjwd3bd0XnC/zrzIFR5fU53T8M/L7T92LPTWgpfiGcTe6LacfmpMt2/W9QTLa4tA==');
define('NONCE_KEY',        'qZpu6YMn4WnQ0xuAFJKD4WK/0dyz4RTeZaay5yD9gHJbskVM+TTIkLdbnoMuwwXpa10k1yYJqYjbacOvT7h/XQ==');
define('AUTH_SALT',        'C4h7MSmgy6aSOnZVAo0EzeEygafTu0td2MqnSuIA+O+F0UOublNaRUGPUa9tEz3F7zwYAAJLI99Vt2qupiZggw==');
define('SECURE_AUTH_SALT', 'I3jackT9Ywp7BUwbbhMuTzHl36UPtTTc403lwfkz9ag9z1QAK+QAcMeHqj1od4ZjJ9vgUyprltsX8+nZqUuI9Q==');
define('LOGGED_IN_SALT',   'jDUO0c/kq+ZQpQrbprw8lwH/OXEAvSVG4jkbdB7xi3boH41fVZ1ugUCl98ZTeZXo2EUUxXouEB+9yWoYQ12+Rw==');
define('NONCE_SALT',       'Akb3iEy2RNr6POFXU0T951jDUs9ODpDDiFhwawN7wxQdj0gu/LUeuSkGq7vyDYl/z4yM3zh2ifPQpja2PQmAtA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
