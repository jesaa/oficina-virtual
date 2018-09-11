# --- WireDatabaseBackup {"time":"2018-09-11 18:02:10","user":"","dbName":"larealco_db74","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_apoyo`;
CREATE TABLE `field_apoyo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_aprobado`;
CREATE TABLE `field_aprobado` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_aprobado` (`pages_id`, `data`) VALUES('1227', '1');

DROP TABLE IF EXISTS `field_autoridad`;
CREATE TABLE `field_autoridad` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_autoridad` (`pages_id`, `data`) VALUES('1164', 'Autoridad');
INSERT INTO `field_autoridad` (`pages_id`, `data`) VALUES('1161', 'autoridad 2');
INSERT INTO `field_autoridad` (`pages_id`, `data`) VALUES('1185', 'dasdas');
INSERT INTO `field_autoridad` (`pages_id`, `data`) VALUES('1220', 'dsa');
INSERT INTO `field_autoridad` (`pages_id`, `data`) VALUES('1221', 'Gabriela Canales');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>The page you were looking for is not found.</h3><p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h2>What is ProcessWire?</h2>\r\n\r\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\r\n\r\n<h3>About this site profile</h3>\r\n\r\n<p>This is a basic minimal site for you to use in developing your own site or to learn from. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\r\n\r\n<h3>Browse the site</h3>');

DROP TABLE IF EXISTS `field_breve`;
CREATE TABLE `field_breve` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_breve` (`pages_id`, `data`) VALUES('1161', 'info breve');
INSERT INTO `field_breve` (`pages_id`, `data`) VALUES('1164', 'Prueba');
INSERT INTO `field_breve` (`pages_id`, `data`) VALUES('1185', 'asa');
INSERT INTO `field_breve` (`pages_id`, `data`) VALUES('1220', 'dasdsa');
INSERT INTO `field_breve` (`pages_id`, `data`) VALUES('1221', 'Asistir al taller impartido por la Secretaría de Innovación');

DROP TABLE IF EXISTS `field_datauser`;
CREATE TABLE `field_datauser` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'aewu173460297_attlog-2.dat', '6', '', '2018-09-07 15:47:55', '2018-09-07 15:47:55', '');
INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'aewu173460297_attlog-1.dat', '5', '', '2018-09-05 20:50:23', '2018-09-05 20:50:23', '');
INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'aewu173460297_attlog.dat', '4', '', '2018-07-27 20:50:36', '2018-07-27 20:50:36', '');
INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'phpzrfr3m.', '3', '', '2018-07-17 17:23:14', '2018-07-17 17:23:14', '');
INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'datosasis-1.dat', '1', '', '2018-07-17 14:38:27', '2018-07-17 14:38:27', '');
INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'datosasis-2.dat', '2', '', '2018-07-17 15:36:50', '2018-07-17 15:36:50', '');
INSERT INTO `field_datauser` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1053', 'datosasis.dat', '0', '', '2018-07-17 14:38:06', '2018-07-17 14:38:06', '');

DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1280', '09/20/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1262', '09/05/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1243', '01/08/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1244', '08 28 2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1245', '08/14/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1246', '08/22/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1279', '09/11/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1248', '08/20/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1249', '08/10/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1250', '08/03/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1253', '07/30/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1255', '07/30/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1256', '07/02/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1257', '05/30/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1258', '07/31/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1259', '07/10/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1260', '08/06/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1270', '07/31/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1269', '07/31/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1268', '07/31/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1272', '07/31/2018');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1276', '09/12/2018');

DROP TABLE IF EXISTS `field_desc`;
CREATE TABLE `field_desc` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1280', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1243', 'Junta');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1244', 'Desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1245', 'Descripción Editar');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1246', 'Descripción');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1249', 'desc23');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1248', 'la descripción');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1279', 'dsa');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1253', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1255', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1256', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1257', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1259', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1260', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1250', 'desc23');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1258', 'desMod');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1262', 'Desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1268', 'Desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1269', 'Desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1270', 'Descripción eveento');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1272', 'desc');
INSERT INTO `field_desc` (`pages_id`, `data`) VALUES('1276', 'desc');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_fechafi`;
CREATE TABLE `field_fechafi` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_fechafi` (`pages_id`, `data`) VALUES('1161', '2018-07-23 17:00:00');
INSERT INTO `field_fechafi` (`pages_id`, `data`) VALUES('1164', '2018-07-26 14:00:00');
INSERT INTO `field_fechafi` (`pages_id`, `data`) VALUES('1185', '2018-07-23 00:00:00');
INSERT INTO `field_fechafi` (`pages_id`, `data`) VALUES('1220', '2018-07-05 00:00:00');
INSERT INTO `field_fechafi` (`pages_id`, `data`) VALUES('1221', '2018-07-30 14:00:00');

DROP TABLE IF EXISTS `field_fechain`;
CREATE TABLE `field_fechain` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_fechain` (`pages_id`, `data`) VALUES('1161', '2018-07-23 14:00:00');
INSERT INTO `field_fechain` (`pages_id`, `data`) VALUES('1164', '2018-07-26 12:00:00');
INSERT INTO `field_fechain` (`pages_id`, `data`) VALUES('1185', '2018-07-23 00:00:00');
INSERT INTO `field_fechain` (`pages_id`, `data`) VALUES('1220', '2018-07-05 00:00:00');
INSERT INTO `field_fechain` (`pages_id`, `data`) VALUES('1221', '2018-07-30 10:00:00');

DROP TABLE IF EXISTS `field_fechaperm`;
CREATE TABLE `field_fechaperm` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_fechaperm` (`pages_id`, `data`) VALUES('1218', '1533736800-1533740400');
INSERT INTO `field_fechaperm` (`pages_id`, `data`) VALUES('1222', '1531411200-1531414800');
INSERT INTO `field_fechaperm` (`pages_id`, `data`) VALUES('1224', '1532684700-1532691900');
INSERT INTO `field_fechaperm` (`pages_id`, `data`) VALUES('1225', '1533646800-1533650400');
INSERT INTO `field_fechaperm` (`pages_id`, `data`) VALUES('1282', '1536602400-1536606000');
INSERT INTO `field_fechaperm` (`pages_id`, `data`) VALUES('1227', '1533229200-1533319200');

DROP TABLE IF EXISTS `field_fechasrepo`;
CREATE TABLE `field_fechasrepo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_fechasrepo` (`pages_id`, `data`) VALUES('1218', '1535637600-1535641200');
INSERT INTO `field_fechasrepo` (`pages_id`, `data`) VALUES('1222', '1532106000-1532109600');
INSERT INTO `field_fechasrepo` (`pages_id`, `data`) VALUES('1224', '1532970000-1532973600');
INSERT INTO `field_fechasrepo` (`pages_id`, `data`) VALUES('1225', '1534510800-1534514400');

DROP TABLE IF EXISTS `field_firstl`;
CREATE TABLE `field_firstl` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Minimal Site Profile');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('27', '404 Page Not Found');

DROP TABLE IF EXISTS `field_horaf`;
CREATE TABLE `field_horaf` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_horaf` (`pages_id`, `data`) VALUES('1185', '2018-07-26 17:00:00');
INSERT INTO `field_horaf` (`pages_id`, `data`) VALUES('1220', '2018-07-27 17:00:00');
INSERT INTO `field_horaf` (`pages_id`, `data`) VALUES('1221', '2018-07-27 14:00:00');

DROP TABLE IF EXISTS `field_horafin`;
CREATE TABLE `field_horafin` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1280', '11:40');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1243', '19:00');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1244', '20:24');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1245', '17:22');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1246', '10:30');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1248', '15:27');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1249', '16:30');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1250', '19:40');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1262', '12:12');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1279', '10:34');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1253', '18:28');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1255', '18:34');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1256', '20:24');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1257', '14:44');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1258', '20:24');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1259', '19:53');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1260', '18:54');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1268', '11:15');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1269', '19:17');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1270', '9:20');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1272', '10:30');
INSERT INTO `field_horafin` (`pages_id`, `data`) VALUES('1276', '13:50');

DROP TABLE IF EXISTS `field_horai`;
CREATE TABLE `field_horai` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_horai` (`pages_id`, `data`) VALUES('1185', '2018-07-26 13:00:00');
INSERT INTO `field_horai` (`pages_id`, `data`) VALUES('1220', '2018-07-27 14:30:00');
INSERT INTO `field_horai` (`pages_id`, `data`) VALUES('1221', '2018-07-27 10:00:00');

DROP TABLE IF EXISTS `field_horaini`;
CREATE TABLE `field_horaini` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1280', '10:40');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1243', '16:00');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1244', '18:31');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1245', '15:22');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1246', '9:30');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1248', '13:27');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1249', '15:38');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1250', '18:46');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1262', '11:12');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1279', '9:39');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1253', '15:28');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1255', '17:34');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1256', '18:26');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1257', '12:44');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1258', '19:28');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1259', '16:53');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1260', '16:54');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1268', '10:15');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1269', '18:17');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1270', '8:20');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1272', '9:30');
INSERT INTO `field_horaini` (`pages_id`, `data`) VALUES('1276', '12:50');

DROP TABLE IF EXISTS `field_id_per`;
CREATE TABLE `field_id_per` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1015', '18');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1016', '1');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1017', '2');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1018', '3');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1019', '4');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1020', '5');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1021', '6');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1022', '7');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1023', '8');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1024', '9');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1025', '10');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1026', '11');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1027', '12');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1028', '13');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1029', '14');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1030', '15');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1031', '16');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1032', '17');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1033', '19');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1034', '20');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1035', '21');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1036', '22');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1037', '23');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1038', '24');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1039', '25');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1040', '26');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1041', '27');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1042', '28');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1043', '29');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1044', '30');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1045', '31');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1046', '32');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1047', '33');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1048', '34');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1049', '35');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1050', '36');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1051', '37');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1052', '38');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1218', '1096');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1222', '1093');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1224', '1093');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1225', '1091');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1282', '1091');
INSERT INTO `field_id_per` (`pages_id`, `data`) VALUES('1227', '1093');

DROP TABLE IF EXISTS `field_iduser`;
CREATE TABLE `field_iduser` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1243', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1244', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1245', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1246', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1248', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1249', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1250', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1253', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1255', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1256', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1257', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1258', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1259', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1260', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1262', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1268', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1269', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1270', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1272', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1276', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1279', '1091', '0');
INSERT INTO `field_iduser` (`pages_id`, `data`, `sort`) VALUES('1280', '1091', '0');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'rough_cartoon_puppet.jpg', '1', 'Copyright by Austin Cramer for DesignIntelligence. This is a placeholder while he makes new ones for us.', '2018-07-16 09:46:49', '2018-07-16 09:46:49', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'airport_cartoon_3.jpg', '0', 'Copyright by Austin Cramer for DesignIntelligence. This is a placeholder while he makes new ones for us.', '2018-07-16 09:46:49', '2018-07-16 09:46:49', NULL);

DROP TABLE IF EXISTS `field_infoge`;
CREATE TABLE `field_infoge` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_infoge` (`pages_id`, `data`) VALUES('1164', 'Prueba final');
INSERT INTO `field_infoge` (`pages_id`, `data`) VALUES('1161', 'otra prueba');
INSERT INTO `field_infoge` (`pages_id`, `data`) VALUES('1185', 'prueba');
INSERT INTO `field_infoge` (`pages_id`, `data`) VALUES('1220', 'Prueba');
INSERT INTO `field_infoge` (`pages_id`, `data`) VALUES('1221', 'Taller de Gestión Responsable de Datos Gubernamentaless');

DROP TABLE IF EXISTS `field_invitados`;
CREATE TABLE `field_invitados` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_invitados` (`pages_id`, `data`, `sort`) VALUES('1164', '1096', '0');
INSERT INTO `field_invitados` (`pages_id`, `data`, `sort`) VALUES('1220', '1121', '0');
INSERT INTO `field_invitados` (`pages_id`, `data`, `sort`) VALUES('1164', '1128', '1');

DROP TABLE IF EXISTS `field_lugar`;
CREATE TABLE `field_lugar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_lugar` (`pages_id`, `data`) VALUES('1164', 'En el lugar ');
INSERT INTO `field_lugar` (`pages_id`, `data`) VALUES('1161', 'lugar 2');
INSERT INTO `field_lugar` (`pages_id`, `data`) VALUES('1185', '12as');
INSERT INTO `field_lugar` (`pages_id`, `data`) VALUES('1220', 'dsads');
INSERT INTO `field_lugar` (`pages_id`, `data`) VALUES('1221', 'Dirección de innovación Gubernamental Hidalgo 400 piso 4 (mercado corona)');

DROP TABLE IF EXISTS `field_medio`;
CREATE TABLE `field_medio` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_medio` (`pages_id`, `data`) VALUES('1164', 'Correo electronico');
INSERT INTO `field_medio` (`pages_id`, `data`) VALUES('1161', 'medio 2');
INSERT INTO `field_medio` (`pages_id`, `data`) VALUES('1185', 'dadas');
INSERT INTO `field_medio` (`pages_id`, `data`) VALUES('1220', 'dsads');
INSERT INTO `field_medio` (`pages_id`, `data`) VALUES('1221', 'Correo electrónico ');

DROP TABLE IF EXISTS `field_motivo`;
CREATE TABLE `field_motivo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_motivo` (`pages_id`, `data`) VALUES('1164', 'Organizador');
INSERT INTO `field_motivo` (`pages_id`, `data`) VALUES('1161', 'Otro');
INSERT INTO `field_motivo` (`pages_id`, `data`) VALUES('1185', 'Staff');
INSERT INTO `field_motivo` (`pages_id`, `data`) VALUES('1220', 'Ponente');
INSERT INTO `field_motivo` (`pages_id`, `data`) VALUES('1221', 'GIZ TIC-A');

DROP TABLE IF EXISTS `field_nameevento`;
CREATE TABLE `field_nameevento` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_nameevento` (`pages_id`, `data`) VALUES('1161', 'evento 2');
INSERT INTO `field_nameevento` (`pages_id`, `data`) VALUES('1164', 'Evento definitivo');
INSERT INTO `field_nameevento` (`pages_id`, `data`) VALUES('1185', 'da890');
INSERT INTO `field_nameevento` (`pages_id`, `data`) VALUES('1220', 'dsad');
INSERT INTO `field_nameevento` (`pages_id`, `data`) VALUES('1221', 'Taller gestión de datos gubernamentales');

DROP TABLE IF EXISTS `field_nombre`;
CREATE TABLE `field_nombre` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1015', 'PRECIADO SANTANA ALAN GERARDO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1016', 'COVARRUBIAS LEOS ERICK YESAI');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1017', 'BELTRAN DE LA TORRE JUAN JESUS');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1018', 'GONZALEZ PIMENTEL GASTON');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1019', 'AGUILA GONZALEZ JOSE GERMAN');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1020', 'CHARENTON MALOU');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1021', 'GARCIA CHAVEZ MARTIN JOSUE');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1022', 'LLAMAS VILLANUEVA LILIA MYRNA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1023', 'DIEZ DE SOLLANO ENRIQUEZ CLARA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1024', 'ARAMBULA QUIRARTE ROBERTO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1025', 'HERNANDEZ SANTILLAN ALEJANDRA GPE.');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1026', 'LEDEZMA ESCALANTE MONTSERRAT');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1027', 'LOAIZA CISNEROS CECILIA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1028', 'ZARATE KHALILI ANIS BADI');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1029', 'LAZCANO VELASCO MONICA LETICIA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1030', 'LOPEZ MALDONADO JOSE LUIS');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1031', 'LLAMAS CASTAÑEDA LUIS MIGUEL');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1032', 'OROZCO SEIFERT JUAN IGNACIO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1033', 'ROSAS SANCHEZ JONATHAN MIZAEL');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1034', 'PALACIOS ÁLVAREZ DANIA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1035', 'GRANATA ARREOLA MARINELLA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1036', 'OROZCO MURILLO FERNANDO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1037', 'RIZO RANGEL GERARDO ALONSO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1038', 'REYNOSO DELGADILLO JACOB RAMIRO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1039', 'SIQUEIROS QUIROZ CRISTINA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1040', 'HERNANDEZ CRUZ IVAN ALEJANDRO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1041', 'ZUÑIGA LAZARO CUAHUTEMOC AQUILES');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1042', 'ROMERO MAGAÑA MARÍA DEL PILAR');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1043', 'ZAMORA MACÍAS PERLA MARÍA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1044', 'GALVAN RODRIGUEZ OMAR ALONZO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1045', 'RODRIGUEZ URREGO MIGUEL ANGEL');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1046', 'CERVANTES FLORES PAULINA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1047', 'LORENZO SOTO THALIA MAIRANI');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1048', 'GÓMEZ CASTRO JOSÉ ALEJANDRO');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1049', 'HERNANDEZ RAMOS GABRIELA ALEJANDRA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1050', 'VALDIVIA VITELA JOSE MANUEL');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1051', 'FREGOSO CUENCA ERIKA ALEJANDRA');
INSERT INTO `field_nombre` (`pages_id`, `data`) VALUES('1052', 'CANALES GALLARDO CLAUDIA GABRIELA');

DROP TABLE IF EXISTS `field_observaciones`;
CREATE TABLE `field_observaciones` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_observaciones` (`pages_id`, `data`) VALUES('1227', 'askpasokdpoaskdpoasd');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_pertenece`;
CREATE TABLE `field_pertenece` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1015', 'Gerencia Técnica de Riesgo y Resiliencia');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1016', 'Dirección de Gestión del Desarrollo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1017', 'Unidad Jurídica');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1018', 'Gerencia Técnica de Ordenamiento Territorial y Control de Suelo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1019', 'Coordinación de Comunicación y Vinculación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1020', 'Gerencia Técnica de Movilidad');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1021', 'Gerencia Técnica de Ordenamiento Territorial y Control de Suelo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1022', 'Dirección General');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1023', 'Dirección de Gestión del Desarrollo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1024', 'Dirección General');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1025', 'Dirección General');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1026', 'Coordinación de Cooperación Internacional');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1027', 'Dirección de Planeación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1028', 'Dirección General');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1029', 'Gerencia Técnica de Sustentabilidad y Cambio Climático');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1030', 'Contralor');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1031', 'Dirección de Planeación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1032', 'Gerencia Técnica de Ordenamiento Territorial y Control de Suelo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1033', 'Gerencia Técnica de Movilidad');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1034', 'Coordinación de Comunicación y Vinculación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1035', 'Unidad Administrativa');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1036', 'Gerencia Técnica de Ordenamiento Territorial y Control de Suelo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1037', 'Dirección de Gestión del Desarrollo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1038', 'Gerencia de Banco de Proyectos');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1039', 'Coordinador de Gestión, Información, Evaluación y Seguimiento');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1040', 'Gerencia Técnica de Ordenamiento Territorial y Control de Suelo');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1041', 'Gerencia Técnica de Riesgo y Resiliencia');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1042', 'Coordinación de Cambio Climático');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1043', 'Dirección de Planeación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1044', 'Dirección General');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1045', 'Dirección General');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1046', 'Dirección de Planeación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1047', 'Unidad Administrativa');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1048', 'Coordinación de Vinculación Metropolitana');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1049', 'Unidad Administrativa');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1050', 'Unidad Jurídica');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1051', 'Coordinador de Gestión, Información, Evaluación y Seguimiento');
INSERT INTO `field_pertenece` (`pages_id`, `data`) VALUES('1052', 'Dirección General');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');

DROP TABLE IF EXISTS `field_programa`;
CREATE TABLE `field_programa` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_programa` (`pages_id`, `data`) VALUES('1161', 'Otro');
INSERT INTO `field_programa` (`pages_id`, `data`) VALUES('1164', 'Gestión del Desarrollo Metropolitano');
INSERT INTO `field_programa` (`pages_id`, `data`) VALUES('1185', 'Planeación Metropolitana');
INSERT INTO `field_programa` (`pages_id`, `data`) VALUES('1220', 'Planeación Metropolitana');

DROP TABLE IF EXISTS `field_puesto`;
CREATE TABLE `field_puesto` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1015', 'Líder de Proyectos');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1016', 'Coordinador de Tecnologías de la información');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1017', 'Auxiliar de Transparencia');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1018', 'Apoyo de Área');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1019', 'Diseñador Gráfico');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1020', 'Analista Técnico en Movilidad');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1021', 'Apoyo de Área');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1022', 'Titular de la Unidad Administrativa');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1023', 'Coordinador de Cooperación Internacional');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1024', 'Secretario Técnico del CCM');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1025', 'Titular de la Unidad Jurídica');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1026', 'Líder de Proyectos de Cooperación Internacional');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1027', 'Gerente Técnico de Movilidad');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1028', 'Coordinador de Comunicación y Vinculación Metropolitana');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1029', 'Coordinadora de Cambio Climático');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1030', 'Contraloría');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1031', 'Coordinador de Gestión, Información, Evaluación y Seguimiento');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1032', 'Líder de Proyectos en Ordenamiento Territorial y Control de Suelo');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1033', 'Analista Técnico en Movilidad');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1034', 'Líder de Proyectos de Comunicación');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1035', 'Apoyo de Área');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1036', 'Coordinador de Ordenamiento Territorial');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1037', 'Gerente de Banco de Proyectos');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1038', 'Líder de Proyecto');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1039', 'Auxiliar en la Coordinación de Gestión Información, Evaluación y Seguimiento');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1040', 'Coordinador de Control del Suelo');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1041', 'Analista Técnico en Riesgo y Resiliencia');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1042', 'Analista Técnico en Sustentabilidad y Cambio Climático');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1043', 'Gerente Técnico de Ordenamiento Territorial y Control del SueloDirección de Planeación Metropolitana');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1044', 'Asistente de Dirección General');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1045', 'Director de Planeación Metropolitana');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1046', 'Gerente Técnico de Sustentabilidad y Cambio Climático');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1047', 'Intendencia');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1048', 'Voluntario');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1049', 'Auxiliar Administrativo');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1050', 'Abogado Auxiliar');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1051', 'Voluntario');
INSERT INTO `field_puesto` (`pages_id`, `data`) VALUES('1052', 'Director de Gestión del Desarrollo');

DROP TABLE IF EXISTS `field_reponer`;
CREATE TABLE `field_reponer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_reponer` (`pages_id`, `data`) VALUES('1218', 'Si');
INSERT INTO `field_reponer` (`pages_id`, `data`) VALUES('1222', 'Si');
INSERT INTO `field_reponer` (`pages_id`, `data`) VALUES('1224', 'No');
INSERT INTO `field_reponer` (`pages_id`, `data`) VALUES('1225', 'Si');
INSERT INTO `field_reponer` (`pages_id`, `data`) VALUES('1227', 'No');

DROP TABLE IF EXISTS `field_resultados`;
CREATE TABLE `field_resultados` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_resultados` (`pages_id`, `data`) VALUES('1161', 'resultados');
INSERT INTO `field_resultados` (`pages_id`, `data`) VALUES('1185', 'dsadsadasdasdasdas');
INSERT INTO `field_resultados` (`pages_id`, `data`) VALUES('1220', 'dasds11 kl');
INSERT INTO `field_resultados` (`pages_id`, `data`) VALUES('1221', 'pakspokdapoksdpoaksdpokaspsaodkpasokdpoaskdasdasd');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_salt`;
CREATE TABLE `field_salt` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1', '<h3>About ProcessWire</h3>\r\n\r\n<p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.</p>\r\n\r\n<ul>\r\n	<li><a href=\"http://processwire.com/talk/\">Support</a>&nbsp;</li>\r\n	<li><a href=\"http://processwire.com/docs/\">Documentation</a></li>\r\n	<li><a href=\"http://processwire.com/docs/tutorials/\">Tutorials</a></li>\r\n	<li><a href=\"http://cheatsheet.processwire.com\">API Cheatsheet</a></li>\r\n	<li><a href=\"http://modules.processwire.com\">Modules/Plugins</a></li>\r\n</ul>');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ');

DROP TABLE IF EXISTS `field_tipoincidencia`;
CREATE TABLE `field_tipoincidencia` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_tipoincidencia` (`pages_id`, `data`) VALUES('1218', 'Permiso sin goce de sueldo');
INSERT INTO `field_tipoincidencia` (`pages_id`, `data`) VALUES('1222', 'Entrada y salida irregulares al horario laboral con reposición de tiempo');
INSERT INTO `field_tipoincidencia` (`pages_id`, `data`) VALUES('1224', 'Entrada y salida irregulares al horario laboral con reposición de tiempo');
INSERT INTO `field_tipoincidencia` (`pages_id`, `data`) VALUES('1225', 'Incapacidad por enfermedad o accidente (presentar justificante');
INSERT INTO `field_tipoincidencia` (`pages_id`, `data`) VALUES('1282', 'Entrada y salida irregulares al horario laboral con reposición de tiempo');
INSERT INTO `field_tipoincidencia` (`pages_id`, `data`) VALUES('1227', 'Vacaciones');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1279', 'Demo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1280', 'Demo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1282', '1091/1536602400-1536606000');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Personal');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Alanpreciado');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Erickleos');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Juanbeltran');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Gastongonzalez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Germanaguila');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Maloucharenton');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Martingarcia');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Myrnallamas');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Claradiez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Robertoarambula');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Alejandrahernandez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Montserratledezma');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Cecilialoaiza');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Badizarate');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Monicalazcano');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Joselopez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Luisllamas');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Juanorozco');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Jonathanrosas');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Daniapalacios');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Marinellagranata');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Ferndomurillo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Alonsorizo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'Jacobreynoso');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Cristinasiqueiros');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Ivanhernandez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Cuahtemoczuniga');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Pilarromero');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'Perlazamora');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'Omargalvan');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'Miguelrodriguez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'Paulinacervantes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'Thalialorenzo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'Alejandrogomez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'Gabrielahernandez');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Josevaldivia');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'Erikafregoso');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Gabrielacanales');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Cargar');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1130', 'Iniciar sesión');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1131', '¿Olvidaste tu contraseña?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1134', 'Perfil');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1135', 'Cambiar contraseña');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1136', 'Ausencias e Incidencias');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1137', 'Recuperar contraseña');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1163', 'Perfil ausencias');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1161', 'evento 2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1164', 'Evento definitivo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1185', 'da890');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1186', 'Permisos e incidencias');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1203', 'Edit only pages user has created');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1204', 'Publish/unpublish pages or edit already published pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1218', '1096/1533736800-1533740400');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1219', 'Ausencias');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1220', 'dsad');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1221', 'Taller gestión de datos gubernamentales');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1222', '1093/1531411200-1531414800');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1224', '1093/1532684700-1532691900');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1225', '1091/1533646800-1533650400');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1227', '1093/1533229200-1533319200');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1228', 'Reporte General');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1229', 'Sala de juntas');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1278', 'Eventos');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1243', 'Evento');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1244', 'Evento');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1245', 'Demo8');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1246', 'Mi Evento');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1248', 'Mi evento');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1249', 'prueba23');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1250', 'prueba1000');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1262', 'MiEvento');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1253', 'distri');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1255', 'distrib');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1256', 'Nuevo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1257', 'Distribucion');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1258', 'descMod');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1259', 'motiv');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1260', 'Works');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1268', 'Mi Evento');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1269', 'Nuevo');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1270', 'Primero');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1272', 'Despues');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1273', 'Permisos');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1276', 'prueba');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'personal');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'persona');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'cargar');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'iniciar-sesion');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'forgot-password');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'perfil');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'cambiar-contrasena');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'ausencias-incidencias');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'recuperar-contrasena');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'evento');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'perfil-ausencias');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'form-permisos');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'permiso');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'ausencias');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'imprimir-mes');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'sala-de-juntas');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'event');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'permisos');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('115', 'eventos');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '103', '9', '{\"collapsed\":\"8\",\"label\":\"Primer inicio de sesi\\u00f3n\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '101', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '99', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '1', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '101', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '103', '6', '{\"collapsed\":\"8\",\"label\":\"Cambio de contrase\\u00f1a\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '105', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '104', '10', '{\"collapsed\":\"8\",\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '107', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '119', '4', '{\"label\":\"Hora\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '109', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '110', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '111', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '112', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '118', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '117', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '116', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '115', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '114', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '113', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '112', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '111', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '110', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '109', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '108', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '120', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '119', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '107', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '113', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '114', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '115', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '116', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '117', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '118', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '105', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '101', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '118', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '122', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '124', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '123', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '125', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '126', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '128', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '127', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '129', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '121', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '130', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '1', '0', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":6,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeText', 'puesto', '0', 'Puesto', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeText', 'pertenece', '0', 'Pertenece', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeText', 'nombre', '0', 'Nombre', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeInteger', 'id_per', '0', 'Id personal', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeFile', 'dataUser', '0', '', '{\"extensions\":\"dat\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeInteger', 'firstL', '0', '', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'salt', '0', 'Salt', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeTextarea', 'infoGe', '0', 'Información General', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeDatetime', 'fechaIn', '0', 'Fecha Inicial', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"datepicker\":0,\"timeInputSelect\":0,\"dateOutputFormat\":\"d\\/m\\/Y\",\"dateInputFormat\":\"d.m.y\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeDatetime', 'fechaFi', '0', 'Fecha Final', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"dateOutputFormat\":\"d\\/m\\/Y\",\"datepicker\":0,\"timeInputSelect\":0,\"dateInputFormat\":\"d.m.y\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'invitados', '0', 'Asistentes', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0,\"usePageEdit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'nameEvento', '0', 'Nombre Evento', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextarea', 'lugar', '0', 'Lugar del evento y dirección', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeText', 'autoridad', '0', 'Nombre de la autoridad', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeText', 'medio', '0', 'Medio notificación', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'apoyo', '0', 'Apoyo economico', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeText', 'motivo', '0', 'Motivo', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeText', 'programa', '0', 'Programa', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeTextarea', 'breve', '0', 'Información Breve', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeTextarea', 'resultados', '0', 'Resultados', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeTextarea', 'observaciones', '0', 'Observaciones', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeTextarea', 'desc', '0', 'Descripción', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeDatetime', 'horaI', '0', '', '{\"dateOutputFormat\":\"g:i A\",\"collapsed\":0,\"size\":25,\"datepicker\":0,\"timeInputSelect\":0,\"timeInputFormat\":\"g:i A\",\"dateInputFormat\":\"Y-m-d\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeDatetime', 'horaF', '0', '', '{\"dateOutputFormat\":\"g:i A\",\"collapsed\":0,\"size\":25,\"datepicker\":0,\"timeInputSelect\":0,\"timeInputFormat\":\"g:i A\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypePage', 'idUser', '0', '', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0,\"usePageEdit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'tipoIncidencia', '0', '', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeText', 'reponer', '0', '', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeText', 'fechaPerm', '0', '', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeTextarea', 'fechasRepo', '0', '', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeText', 'horaIni', '0', 'Hora de Inicio', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeText', 'horaFin', '0', 'Hora Finalización', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeText', 'date', '0', 'Fecha', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeInteger', 'aprobado', '0', 'Aprobado', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"email\",\"nombre\",\"pass\",\"pertenece\",\"puesto\"]}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.98\"}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-07-16 09:46:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2018-07-16 09:47:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'AdminThemeUikit', '10', '{\"useAsLogin\":1,\"userAvatar\":\"icon.user-circle\",\"userLabel\":\"{Name}\",\"logoAction\":\"0\",\"layout\":\"\",\"maxWidth\":1600,\"groupNotices\":\"1\",\"cssURL\":\"\",\"logoURL\":\"\",\"noBorderTypes\":[],\"offsetTypes\":[]}', '2018-07-16 09:47:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLogger', '1', '', '2018-07-16 09:47:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'InputfieldIcon', '0', '', '2018-07-16 09:47:27');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1284 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2018-07-16 09:47:20', '40', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2018-07-16 09:48:49', '40', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2018-07-16 09:49:14', '40', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2018-07-16 09:48:59', '40', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '3', '2018-07-16 09:46:49', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '2', '2018-07-16 09:46:49', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '41', '2018-07-16 09:46:49', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1280', '1229', '59', 'demo-22', '1', '2018-09-10 10:00:50', '1091', '2018-09-10 09:40:22', '1091', '2018-09-10 09:40:22', '21');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-07-16 09:46:49', '40', '2018-07-16 09:46:49', '40', '2018-07-16 09:46:49', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2018-07-16 09:46:49', '40', '2018-07-16 09:46:49', '40', '2018-07-16 09:46:49', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2018-07-16 09:47:20', '40', '2018-07-16 09:47:20', '40', '2018-07-16 09:47:20', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2018-07-16 09:47:20', '40', '2018-07-16 09:47:20', '40', '2018-07-16 09:47:20', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'logs', '1', '2018-07-16 09:47:27', '40', '2018-07-16 09:47:27', '40', '2018-07-16 09:47:27', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '31', '5', 'logs-view', '1', '2018-07-16 09:47:27', '40', '2018-07-16 09:47:27', '40', '2018-07-16 09:47:27', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-edit', '1', '2018-07-16 09:47:27', '40', '2018-07-16 09:47:27', '40', '2018-07-16 09:47:27', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '1', '43', 'personal', '1', '2018-07-16 10:39:59', '41', '2018-07-16 10:39:59', '41', '2018-07-16 10:39:59', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '1014', '44', 'alanpreciado', '1', '2018-07-16 15:58:51', '41', '2018-07-16 10:52:55', '41', '2018-07-16 10:54:53', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1014', '44', 'erickleos', '1', '2018-07-16 10:55:51', '41', '2018-07-16 10:55:07', '41', '2018-07-16 10:55:51', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1014', '44', 'juanbeltran', '1', '2018-07-16 10:56:40', '41', '2018-07-16 10:56:02', '41', '2018-07-16 10:56:40', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1014', '44', 'gastongonzalez', '1', '2018-07-16 10:57:26', '41', '2018-07-16 10:56:47', '41', '2018-07-16 10:57:26', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1014', '44', 'germanaguila', '1', '2018-07-16 10:58:06', '41', '2018-07-16 10:57:34', '41', '2018-07-16 10:58:06', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1014', '44', 'maloucharenton', '1', '2018-07-16 10:58:55', '41', '2018-07-16 10:58:16', '41', '2018-07-16 10:58:55', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1014', '44', 'martingarcia', '1', '2018-07-16 10:59:43', '41', '2018-07-16 10:59:04', '41', '2018-07-16 10:59:43', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1014', '44', 'myrnallamas', '1', '2018-07-16 11:00:31', '41', '2018-07-16 10:59:49', '41', '2018-07-16 11:00:31', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1014', '44', 'claradiez', '1', '2018-07-16 13:27:13', '41', '2018-07-16 11:00:41', '41', '2018-07-16 11:01:35', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1014', '44', 'robertoarambula', '1', '2018-07-16 13:27:07', '41', '2018-07-16 11:01:44', '41', '2018-07-16 11:02:16', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1014', '44', 'alejandrahernandez', '1', '2018-07-17 10:11:36', '41', '2018-07-16 11:02:25', '41', '2018-07-16 11:03:01', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1014', '44', 'montserratledezma', '1', '2018-07-16 13:22:56', '41', '2018-07-16 12:51:49', '41', '2018-07-16 12:52:36', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1014', '44', 'cecilialoaiza', '1', '2018-07-16 13:22:52', '41', '2018-07-16 12:52:44', '41', '2018-07-16 12:53:32', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1014', '44', 'badizarate', '1', '2018-07-16 13:22:46', '41', '2018-07-16 12:53:38', '41', '2018-07-16 12:54:22', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1014', '44', 'monicalazcano', '1', '2018-07-16 13:22:41', '41', '2018-07-16 12:54:29', '41', '2018-07-16 12:55:08', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1014', '44', 'joselopez', '1', '2018-07-16 13:22:37', '41', '2018-07-16 12:55:18', '41', '2018-07-16 12:56:03', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1014', '44', 'luisllamas', '1', '2018-07-16 13:22:33', '41', '2018-07-16 12:56:08', '41', '2018-07-16 12:57:10', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1014', '44', 'juanorozco', '1', '2018-07-16 13:22:29', '41', '2018-07-16 12:57:16', '41', '2018-07-16 12:58:08', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1014', '44', 'jonathanrosas', '1', '2018-07-19 15:11:14', '1091', '2018-07-16 12:58:17', '41', '2018-07-16 12:58:58', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1014', '44', 'daniapalacios', '1', '2018-07-16 13:22:19', '41', '2018-07-16 12:59:07', '41', '2018-07-16 12:59:54', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1014', '44', 'marinellagranata', '1', '2018-07-16 13:22:15', '41', '2018-07-16 13:00:04', '41', '2018-07-16 13:00:34', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1014', '44', 'ferndomurillo', '1', '2018-07-16 13:19:45', '41', '2018-07-16 13:00:41', '41', '2018-07-16 13:01:21', '21');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1014', '44', 'alonsorizo', '1', '2018-07-16 13:22:09', '41', '2018-07-16 13:01:30', '41', '2018-07-16 13:02:08', '22');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1014', '44', 'jacobreynoso', '1', '2018-07-16 13:22:05', '41', '2018-07-16 13:02:16', '41', '2018-07-16 13:02:48', '23');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1014', '44', 'cristinasiqueiros', '1', '2018-07-16 13:21:58', '41', '2018-07-16 13:02:55', '41', '2018-07-16 13:03:27', '24');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1014', '44', 'ivanhernandez', '1', '2018-07-16 15:59:21', '41', '2018-07-16 13:03:35', '41', '2018-07-16 13:04:10', '25');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1014', '44', 'cuahtemoczuniga', '1', '2018-07-16 13:21:46', '41', '2018-07-16 13:04:16', '41', '2018-07-16 13:04:47', '26');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1014', '44', 'pilarromero', '1', '2018-07-16 13:21:42', '41', '2018-07-16 13:04:55', '41', '2018-07-16 13:05:38', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1014', '44', 'perlazamora', '1', '2018-07-16 13:21:38', '41', '2018-07-16 13:05:44', '41', '2018-07-16 13:06:18', '28');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1014', '44', 'omargalvan', '1', '2018-07-16 13:21:34', '41', '2018-07-16 13:06:27', '41', '2018-07-16 13:07:02', '29');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1014', '44', 'miguelrodriguez', '1', '2018-07-16 13:21:29', '41', '2018-07-16 13:07:09', '41', '2018-07-16 13:07:57', '30');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1014', '44', 'paulinacervantes', '1', '2018-07-16 13:21:24', '41', '2018-07-16 13:08:03', '41', '2018-07-16 13:08:33', '31');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1014', '44', 'thalialorenzo', '1', '2018-07-16 13:21:19', '41', '2018-07-16 13:08:40', '41', '2018-07-16 13:09:11', '32');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1014', '44', 'alejandrogomez', '1', '2018-07-16 13:21:15', '41', '2018-07-16 13:09:26', '41', '2018-07-16 13:10:09', '33');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '1014', '44', 'gabrielahernandez', '1', '2018-07-16 13:21:09', '41', '2018-07-16 13:10:17', '41', '2018-07-16 13:10:53', '34');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1014', '44', 'josevaldivia', '1', '2018-07-16 15:53:38', '41', '2018-07-16 13:10:58', '41', '2018-07-16 13:11:32', '35');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1014', '44', 'erikafregoso', '1', '2018-07-16 13:20:58', '41', '2018-07-16 13:12:08', '41', '2018-07-16 13:12:40', '36');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1014', '44', 'gabrielacanales', '1', '2018-07-16 13:20:52', '41', '2018-07-16 13:12:45', '41', '2018-07-16 13:13:37', '37');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1', '45', 'cargar', '1', '2018-09-07 10:47:55', '1091', '2018-07-17 09:36:51', '41', '2018-07-17 09:37:02', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1130', '1', '46', 'iniciar-sesion', '1', '2018-07-17 10:44:04', '1091', '2018-07-17 10:44:04', '1091', '2018-07-17 10:44:04', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1131', '1', '47', 'olvidaste-tu-contrasena', '1', '2018-07-17 12:01:47', '1091', '2018-07-17 12:01:47', '1091', '2018-07-17 12:01:47', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1132', '30', '4', 'administrativo', '1', '2018-07-17 15:07:18', '1091', '2018-07-17 15:06:32', '1091', '2018-07-17 15:07:18', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1133', '30', '4', 'usuario', '1', '2018-07-27 12:55:15', '1091', '2018-07-17 15:07:26', '1091', '2018-07-17 15:07:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1134', '1', '48', 'perfil', '1', '2018-07-17 15:29:26', '1091', '2018-07-17 15:29:26', '1091', '2018-07-17 15:29:26', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1135', '1', '49', 'cambiar-contrasena', '1', '2018-07-17 15:57:19', '1091', '2018-07-17 15:57:19', '1091', '2018-07-17 15:57:19', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1136', '1', '50', 'ausencias-e-incidencias', '1', '2018-07-18 13:29:06', '1091', '2018-07-18 13:29:06', '1091', '2018-07-18 13:29:06', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1137', '1', '51', 'recuperar-contrasena', '1', '2018-07-18 16:05:22', '1091', '2018-07-18 16:04:48', '1091', '2018-07-18 16:04:48', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1164', '1091', '52', 'evento-definitivo', '2049', '2018-07-26 12:04:20', '1091', '2018-07-26 10:31:15', '1091', '2018-07-26 10:31:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1161', '1091', '52', 'evento-2', '2049', '2018-07-26 12:04:17', '1091', '2018-07-23 11:40:22', '1091', '2018-07-23 11:40:22', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1163', '1', '53', 'perfil-ausencias', '1', '2018-07-25 11:58:29', '1091', '2018-07-25 11:57:41', '1091', '2018-07-25 11:57:41', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1185', '1091', '52', 'da890', '2049', '2018-09-04 12:49:41', '1091', '2018-07-26 12:02:08', '1091', '2018-07-26 12:02:08', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1186', '1', '54', 'permisos-e-incidencias', '1', '2018-07-26 15:13:05', '1091', '2018-07-26 15:11:47', '1091', '2018-07-26 15:11:47', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1203', '31', '5', 'page-edit-created', '1', '2018-07-27 12:54:04', '1091', '2018-07-27 12:54:04', '1091', '2018-07-27 12:54:04', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1204', '31', '5', 'page-publish', '1', '2018-07-27 12:54:04', '1091', '2018-07-27 12:54:04', '1091', '2018-07-27 12:54:04', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1218', '1186', '55', '1096-1533736800-1533740400', '1', '2018-07-27 13:42:50', '1096', '2018-07-27 13:42:50', '1096', '2018-07-27 13:42:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1219', '1', '56', 'ausencias', '1', '2018-07-27 13:54:39', '1096', '2018-07-27 13:54:39', '1096', '2018-07-27 13:54:39', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1220', '1096', '52', 'dsad', '1', '2018-09-07 12:24:11', '1091', '2018-07-27 15:25:38', '1096', '2018-07-27 15:25:38', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1221', '1093', '52', 'taller-gestion-de-datos-gubernamentales', '1', '2018-07-31 16:37:38', '1093', '2018-07-27 16:02:38', '1093', '2018-07-27 16:02:38', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1222', '1186', '55', '1093-1531411200-1531414800', '2048', '2018-09-10 10:18:57', '1091', '2018-07-27 16:04:23', '1093', '2018-07-27 16:04:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1224', '1186', '55', '1093-1532684700-1532691900', '1', '2018-07-27 17:00:39', '1093', '2018-07-27 17:00:39', '1093', '2018-07-27 17:00:39', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1225', '1186', '55', '1091-1533646800-1533650400', '2048', '2018-09-10 10:18:35', '1091', '2018-07-30 12:39:08', '1091', '2018-07-30 12:39:08', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1227', '1186', '55', '1093-1533229200-1533319200', '1', '2018-09-04 12:01:04', '1091', '2018-07-31 16:40:40', '1093', '2018-07-31 16:40:40', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1228', '1', '57', 'reporte-general', '1', '2018-08-22 11:37:25', '1091', '2018-08-22 11:37:25', '1091', '2018-08-22 11:37:25', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1229', '1', '58', 'sala-de-juntas', '1', '2018-09-03 17:19:56', '1091', '2018-08-22 16:27:33', '1091', '2018-08-22 16:27:33', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1243', '1229', '59', 'evento', '1', '2018-08-29 11:56:54', '1091', '2018-08-29 11:56:54', '1091', '2018-08-29 11:56:54', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1244', '1229', '59', 'evento-3', '1', '2018-08-29 12:02:44', '1091', '2018-08-29 12:02:44', '1091', '2018-08-29 12:02:44', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1245', '1229', '59', 'demo', '1', '2018-09-06 17:23:04', '1091', '2018-08-29 12:22:42', '1091', '2018-08-29 12:22:42', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1246', '1229', '59', 'mi-evento', '1', '2018-08-29 12:25:21', '1091', '2018-08-29 12:25:21', '1091', '2018-08-29 12:25:21', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1248', '1229', '59', 'mi-evento-7', '1', '2018-08-29 12:27:58', '1091', '2018-08-29 12:27:58', '1091', '2018-08-29 12:27:58', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1249', '1229', '59', 'prueba-8', '1', '2018-09-03 13:40:37', '1091', '2018-08-29 12:29:54', '1091', '2018-08-29 12:29:54', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1250', '1229', '59', 'mi-evento-9', '1', '2018-09-03 16:58:09', '1091', '2018-08-29 12:30:31', '1091', '2018-08-29 12:30:31', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1282', '1186', '55', '1091-1536602400-1536606000', '2048', '2018-09-10 17:11:45', '1091', '2018-09-10 17:09:47', '1091', '2018-09-10 17:09:47', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1253', '1229', '59', 'distri', '1', '2018-08-29 13:28:58', '1091', '2018-08-29 13:28:58', '1091', '2018-08-29 13:28:58', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1278', '1', '61', 'eventos', '1', '2018-09-04 12:42:09', '1091', '2018-09-04 12:41:30', '1091', '2018-09-04 12:41:30', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1255', '1229', '59', 'distrib', '1', '2018-08-29 13:35:00', '1091', '2018-08-29 13:35:00', '1091', '2018-08-29 13:35:00', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1256', '1229', '59', 'nuevo-15', '1', '2018-08-29 13:35:23', '1091', '2018-08-29 13:35:23', '1091', '2018-08-29 13:35:23', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1257', '1229', '59', 'distribucion', '1', '2018-08-29 13:44:06', '1091', '2018-08-29 13:44:06', '1091', '2018-08-29 13:44:06', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1258', '1229', '59', 'desc', '1', '2018-09-03 13:21:59', '1091', '2018-08-29 13:50:51', '1091', '2018-08-29 13:50:51', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1259', '1229', '59', 'motiv', '1', '2018-08-29 13:53:07', '1091', '2018-08-29 13:53:07', '1091', '2018-08-29 13:53:07', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1260', '1229', '59', 'works', '1', '2018-08-29 13:54:07', '1091', '2018-08-29 13:54:07', '1091', '2018-08-29 13:54:07', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1262', '1229', '59', 'mievento', '1', '2018-09-03 17:13:22', '1091', '2018-09-03 17:13:22', '1091', '2018-09-03 17:13:22', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1270', '1229', '59', 'primero', '1', '2018-09-03 17:20:52', '1091', '2018-09-03 17:20:52', '1091', '2018-09-03 17:20:52', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1269', '1229', '59', 'nuevo', '1', '2018-09-03 17:17:34', '1091', '2018-09-03 17:17:34', '1091', '2018-09-03 17:17:34', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1268', '1229', '59', 'mi-evento-18', '1', '2018-09-03 17:16:47', '1091', '2018-09-03 17:16:47', '1091', '2018-09-03 17:16:47', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1272', '1229', '59', 'despues', '1', '2018-09-03 17:21:37', '1091', '2018-09-03 17:21:37', '1091', '2018-09-03 17:21:37', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1273', '1', '60', 'permisos', '1', '2018-09-04 08:04:13', '1091', '2018-09-04 08:04:13', '1091', '2018-09-04 08:04:13', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1276', '1229', '59', 'prueba-24', '1', '2018-09-04 10:50:55', '1091', '2018-09-04 10:50:55', '1091', '2018-09-04 10:50:55', '23');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1279', '1229', '59', 'demo-21', '1', '2018-09-10 10:00:32', '1091', '2018-09-10 09:39:22', '1091', '2018-09-10 09:39:22', '20');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-07-16 09:46:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2018-07-16 09:47:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2018-07-16 09:47:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2018-07-16 09:47:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '1', '2018-07-16 10:39:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2018-07-16 10:52:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2018-07-16 10:55:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2018-07-16 10:56:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2018-07-16 10:56:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '1', '2018-07-16 10:57:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '1', '2018-07-16 10:58:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '1', '2018-07-16 10:59:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '1', '2018-07-16 10:59:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2018-07-16 11:00:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2018-07-16 11:01:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '1', '2018-07-16 11:02:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '1', '2018-07-16 12:51:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2018-07-16 12:52:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2018-07-16 12:53:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2018-07-16 12:54:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2018-07-16 12:55:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2018-07-16 12:56:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2018-07-16 12:57:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2018-07-16 12:58:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '1', '2018-07-16 12:59:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '1', '2018-07-16 13:00:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '1', '2018-07-16 13:00:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '1', '2018-07-16 13:01:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '1', '2018-07-16 13:02:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '1', '2018-07-16 13:02:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '1', '2018-07-16 13:03:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '1', '2018-07-16 13:04:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '1', '2018-07-16 13:04:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '1', '2018-07-16 13:05:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1044', '1', '2018-07-16 13:06:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '1', '2018-07-16 13:07:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '1', '2018-07-16 13:08:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '1', '2018-07-16 13:08:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '1', '2018-07-16 13:09:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '1', '2018-07-16 13:10:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '1', '2018-07-16 13:10:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '1', '2018-07-16 13:12:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '1', '2018-07-16 13:12:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2018-07-17 09:36:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '1', '2018-07-17 10:44:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1131', '1', '2018-07-17 12:01:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1132', '2', '2018-07-17 15:06:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1133', '2', '2018-07-17 15:07:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1134', '1', '2018-07-17 15:29:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1135', '1', '2018-07-17 15:57:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1136', '1', '2018-07-18 13:29:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1137', '1', '2018-07-18 16:04:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1164', '3', '2018-07-26 10:31:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1161', '3', '2018-07-23 11:40:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1163', '1', '2018-07-25 11:57:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1185', '3', '2018-07-26 12:02:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1186', '1', '2018-07-26 15:11:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1203', '2', '2018-07-27 12:54:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1204', '2', '2018-07-27 12:54:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1218', '1', '2018-07-27 13:42:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1219', '1', '2018-07-27 13:54:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1220', '3', '2018-07-27 15:25:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1221', '3', '2018-07-27 16:02:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1222', '1', '2018-07-27 16:04:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1224', '1', '2018-07-27 17:00:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1225', '1', '2018-07-30 12:39:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1227', '1', '2018-07-31 16:40:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1228', '1', '2018-08-22 11:37:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1229', '1', '2018-08-22 16:27:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1243', '1', '2018-08-29 11:56:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1244', '1', '2018-08-29 12:02:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1245', '1', '2018-08-29 12:22:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1246', '1', '2018-08-29 12:25:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1280', '1', '2018-09-10 09:40:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1248', '1', '2018-08-29 12:27:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1249', '1', '2018-08-29 12:29:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1250', '1', '2018-08-29 12:30:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1282', '1', '2018-09-10 17:09:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1253', '1', '2018-08-29 13:28:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1278', '1', '2018-09-04 12:41:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1255', '1', '2018-08-29 13:35:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1256', '1', '2018-08-29 13:35:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1257', '1', '2018-08-29 13:44:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1258', '1', '2018-08-29 13:50:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1259', '1', '2018-08-29 13:53:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1260', '1', '2018-08-29 13:54:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1262', '1', '2018-09-03 17:13:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1270', '1', '2018-09-03 17:20:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1269', '1', '2018-09-03 17:17:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1268', '1', '2018-09-03 17:16:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1272', '1', '2018-09-03 17:21:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1273', '1', '2018-09-04 08:04:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1279', '1', '2018-09-10 09:39:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1276', '1', '2018-09-04 10:50:55');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1229', 'published');

DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1523039149,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1531948727}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"editRoles\":[1133],\"noParents\":1,\"urlSegments\":[\"login\",\"logout\",\"forgot\",\"change-pass\",\"change-pass-login\",\"send-ausencia\",\"update-results\",\"delete-ausencia\",\"send-permiso\",\"add-new-event\",\"update-event\",\"del-event\",\"perm-aprobado\",\"perm-rechazado\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536072211,\"ns\":\"\\\\\",\"roles\":[37,1132,1133]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1531925888,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1523039149,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"modified\":1523039149,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'personal', '97', '0', '0', '{\"noParents\":-1,\"childTemplates\":[44],\"urlSegments\":[\"regex:^[A-Za-z1-9_-]+$\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536356235,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'persona', '98', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[43],\"urlSegments\":[\"regex:^[A-Za-z0-9_-]+$\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536336512,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'cargar', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1531848190,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'iniciar-sesion', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1534803370,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'forgot-password', '101', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536610505,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'perfil', '102', '0', '0', '{\"urlSegments\":[\"regex:^[A-Za-z0-9_-]+$\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536356139,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'cambiar-contrasena', '103', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1532714755,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'ausencias-incidencias', '104', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536167170,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'recuperar-contrasena', '105', '0', '0', '{\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1531952434,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'evento', '106', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536100317,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'perfil-ausencias', '107', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536087103,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'form-permisos', '108', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536172580,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'permiso', '109', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536162890,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'ausencias', '110', '0', '0', '{\"urlSegments\":[\"regex:^[A-Za-z0-9_-]+$\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536336661,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'imprimir-mes', '111', '0', '0', '{\"allowPageNum\":1,\"urlSegments\":[\"regex:^[A-Za-z0-9_-]+$\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536337038,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'sala-de-juntas', '112', '0', '0', '{\"childTemplates\":[59],\"urlSegments\":[\"regex:^[A-Za-z0-9_-]+$\"],\"slashUrls\":1,\"compile\":3,\"modified\":1536592121,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'event', '113', '0', '0', '{\"parentTemplates\":[58],\"slashUrls\":1,\"compile\":3,\"modified\":1535494077}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'permisos', '114', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536085944,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('61', 'eventos', '115', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536336973,\"ns\":\"\\\\\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":50,"numCreateTables":57,"numInserts":1061,"numSeconds":1}