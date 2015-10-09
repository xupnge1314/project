# For kevin login 1.2
CREATE TABLE IF NOT EXISTS `zt_defaultpassword` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `password` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

