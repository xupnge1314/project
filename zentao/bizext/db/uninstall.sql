DROP TABLE `zt_effort`;
CREATE TABLE IF NOT EXISTS `zt_effort` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `company` mediumint(8) unsigned NOT NULL,
  `user` char(30) NOT NULL default '',
  `todo` enum('1','0') NOT NULL default '1',
  `date` date NOT NULL default '0000-00-00',
  `begin` datetime NOT NULL default '0000-00-00 00:00:00',
  `end` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` enum('1','2','3') NOT NULL default '1',
  `idvalue` mediumint(8) unsigned NOT NULL default '0',
  `name` char(30) NOT NULL default '',
  `desc` char(255) NOT NULL default '',
  `status` enum('1','2','3') NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `user` (`user`),
  KEY `company` (`company`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `zt_action` DROP `efforted`;

DELETE FROM `zt_grouppriv` WHERE `module` = 'company' AND `method` = 'effort';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'export';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'view';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'edit';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'batchCreate';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'delete';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'createForObject';
DELETE FROM `zt_grouppriv` WHERE `module` = 'my' AND `method` = 'effort';
DELETE FROM `zt_grouppriv` WHERE `module` = 'project' AND `method` = 'effort';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'user' AND `method` = 'effort';
DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'bug' AND `method` = 'exportTemplet';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'bug' AND `method` = 'exportTemplet';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'bug' AND `method` = 'import';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'bug' AND `method` = 'import';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'bug' AND `method` = 'showImport';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'bug' AND `method` = 'showImport';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'task' AND `method` = 'exportTemplet';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'task' AND `method` = 'exportTemplet';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'task' AND `method` = 'import';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'task' AND `method` = 'import';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'task' AND `method` = 'showImport';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'task' AND `method` = 'showImport';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'story' AND `method` = 'exportTemplet';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'story' AND `method` = 'exportTemplet';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'story' AND `method` = 'import';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'story' AND `method` = 'import';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'story' AND `method` = 'showImport';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'story' AND `method` = 'showImport';
DELETE FROM `zt_grouppriv` WHERE `module` = 'todo' AND `method` = 'calendar';
DELETE FROM `zt_grouppriv` WHERE `module` = 'effort' AND `method` = 'calendar';
DELETE FROM `zt_grouppriv` WHERE `module` = 'project' AND `method` = 'calendar';
DELETE FROM `zt_grouppriv` WHERE `module` = 'user' AND `method` = 'effortcalendar';
DELETE FROM `zt_grouppriv` WHERE `module` = 'user' AND `method` = 'todocalendar';
DROP TABLE `zt_relationoftasks`;
DELETE FROM `zt_grouppriv` WHERE `module` = 'project' AND `method` = 'gantt';
DELETE FROM `zt_grouppriv` WHERE `module` = 'project' AND `method` = 'relation';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'project' AND `method` = 'deleterelation';
DELETE FROM `zt_grouppriv` WHERE `module` = 'project' AND `method` = 'kanban';
DROP TABLE `zt_kanban`;
DROP TABLE `zt_repo`;
DROP TABLE `zt_repohistory`;
DROP TABLE `zt_repofiles`;
ALTER TABLE `zt_bug` DROP `repo`, DROP `entry`, DROP `lines`, DROP `v1`, DROP `v2`;

DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'view';
DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'revision';
DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'showSyncComment';
DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'download';
DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'browse';
DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'diff';
DELETE FROM `zt_grouppriv` WHERE `module` = 'repo' AND `method` = 'log';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'repo' AND `method` = 'create';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'repo' AND `method` = 'create';
DELETE FROM `zt_grouppriv` WHERE `group` = 5 AND `module` = 'repo' AND `method` = 'create';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'repo' AND `method` = 'settings';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'repo' AND `method` = 'settings';
DELETE FROM `zt_grouppriv` WHERE `group` = 5 AND `module` = 'repo' AND `method` = 'settings';

DELETE FROM `zt_grouppriv` WHERE `group` = 1 AND `module` = 'repo' AND `method` = 'delete';
DELETE FROM `zt_grouppriv` WHERE `group` = 4 AND `module` = 'repo' AND `method` = 'delete';
DELETE FROM `zt_grouppriv` WHERE `group` = 5 AND `module` = 'repo' AND `method` = 'delete';
DELETE FROM `zt_grouppriv` WHERE `module` = 'report' AND `method` = 'build';
DELETE FROM `zt_grouppriv` WHERE `module` = 'report' AND `method` = 'testcase';
DELETE FROM `zt_grouppriv` WHERE `module` = 'report' AND `method` = 'workSummary';
DROP TABLE IF EXISTS `zt_report`;
DELETE FROM `zt_grouppriv` WHERE `module` = 'datatable' AND `method` = 'custom';
 DROP TABLE `zt_searchindex`;
 DROP TABLE `zt_searchdict`;
DELETE FROM `zt_grouppriv` WHERE `module` = 'search' AND `method` = 'index';
DELETE FROM `zt_grouppriv` WHERE `module` = 'search' AND `method` = 'buildIndex';
DELETE FROM `zt_grouppriv` WHERE `module` = 'report' AND `method` = 'export';
