<?php
$config->testcase->datatable = new stdclass();
$config->testcase->datatable->defaultField = array('id', 'pri', 'title', 'type', 'openedBy', 'lastRunner', 'lastRunDate', 'lastRunResult', 'status', 'actions');

$config->testcase->datatable->fieldList['id']['title']    = 'idAB';
$config->testcase->datatable->fieldList['id']['fixed']    = 'left';
$config->testcase->datatable->fieldList['id']['width']    = '70';
$config->testcase->datatable->fieldList['id']['required'] = 'yes';

$config->testcase->datatable->fieldList['pri']['title']    = 'priAB';
$config->testcase->datatable->fieldList['pri']['fixed']    = 'left';
$config->testcase->datatable->fieldList['pri']['width']    = '40';
$config->testcase->datatable->fieldList['pri']['required'] = 'no';

$config->testcase->datatable->fieldList['title']['title']    = 'title';
$config->testcase->datatable->fieldList['title']['fixed']    = 'left';
$config->testcase->datatable->fieldList['title']['width']    = 'auto';
$config->testcase->datatable->fieldList['title']['required'] = 'yes';

$config->testcase->datatable->fieldList['type']['title']    = 'type';
$config->testcase->datatable->fieldList['type']['fixed']    = 'no';
$config->testcase->datatable->fieldList['type']['width']    = '90';
$config->testcase->datatable->fieldList['type']['required'] = 'no';

$config->testcase->datatable->fieldList['stage']['title']    = 'stage';
$config->testcase->datatable->fieldList['stage']['fixed']    = 'no';
$config->testcase->datatable->fieldList['stage']['width']    = '110';
$config->testcase->datatable->fieldList['stage']['required'] = 'no';

$config->testcase->datatable->fieldList['status']['title']    = 'statusAB';
$config->testcase->datatable->fieldList['status']['fixed']    = 'no';
$config->testcase->datatable->fieldList['status']['width']    = '80';
$config->testcase->datatable->fieldList['status']['required'] = 'no';

$config->testcase->datatable->fieldList['openedBy']['title']    = 'openedByAB';
$config->testcase->datatable->fieldList['openedBy']['fixed']    = 'no';
$config->testcase->datatable->fieldList['openedBy']['width']    = '80';
$config->testcase->datatable->fieldList['openedBy']['required'] = 'no';

$config->testcase->datatable->fieldList['openedDate']['title']    = 'openedDate';
$config->testcase->datatable->fieldList['openedDate']['fixed']    = 'no';
$config->testcase->datatable->fieldList['openedDate']['width']    = '90';
$config->testcase->datatable->fieldList['openedDate']['required'] = 'no';

$config->testcase->datatable->fieldList['lastRunner']['title']    = 'lastRunner';
$config->testcase->datatable->fieldList['lastRunner']['fixed']    = 'no';
$config->testcase->datatable->fieldList['lastRunner']['width']    = '80';
$config->testcase->datatable->fieldList['lastRunner']['required'] = 'no';

$config->testcase->datatable->fieldList['lastRunDate']['title']    = 'lastRunDate';
$config->testcase->datatable->fieldList['lastRunDate']['fixed']    = 'no';
$config->testcase->datatable->fieldList['lastRunDate']['width']    = '90';
$config->testcase->datatable->fieldList['lastRunDate']['required'] = 'no';

$config->testcase->datatable->fieldList['lastRunResult']['title']    = 'lastRunResult';
$config->testcase->datatable->fieldList['lastRunResult']['fixed']    = 'no';
$config->testcase->datatable->fieldList['lastRunResult']['width']    = '80';
$config->testcase->datatable->fieldList['lastRunResult']['required'] = 'no';

$config->testcase->datatable->fieldList['story']['title']    = 'story';
$config->testcase->datatable->fieldList['story']['fixed']    = 'no';
$config->testcase->datatable->fieldList['story']['width']    = '90';
$config->testcase->datatable->fieldList['story']['required'] = 'no';

$config->testcase->datatable->fieldList['actions']['title']    = 'actions';
$config->testcase->datatable->fieldList['actions']['fixed']    = 'right';
$config->testcase->datatable->fieldList['actions']['width']    = '140';
$config->testcase->datatable->fieldList['actions']['required'] = 'yes';
