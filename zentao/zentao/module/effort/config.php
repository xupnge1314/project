<?php
$config->effort         = new stdclass();
$config->effort->create = new stdclass();
$config->effort->edit   = new stdclass();
$config->effort->times  = new stdclass();
$config->effort->list   = new stdclass();

$config->effort->create->requiredFields = 'work';
$config->effort->edit->requiredFields   = 'work';
$config->effort->times->delta           = 10;

$config->effort->list->exportFields = 'id, account, date, consumed, left, objectType, work'; 

$config->effort->objectTables['story']       = TABLE_STORY;
$config->effort->objectTables['productplan'] = TABLE_PRODUCTPLAN;
$config->effort->objectTables['release']     = TABLE_RELEASE;
$config->effort->objectTables['task']        = TABLE_TASK;
$config->effort->objectTables['build']       = TABLE_BUILD;
$config->effort->objectTables['bug']         = TABLE_BUG;
$config->effort->objectTables['case']        = TABLE_CASE;
$config->effort->objectTables['testtask']    = TABLE_TESTTASK;
$config->effort->objectTables['doc']         = TABLE_DOC;
$config->effort->objectTables['todo']        = TABLE_TODO;

$config->effort->limitLength = 255;
