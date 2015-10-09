<?php
//db
define('TABLE_DEFAULTPASSWORD',     '`' . $config->db->prefix  . 'defaultpassword`');
$config->objectTables['defaultpassword']        = TABLE_DEFAULTPASSWORD;