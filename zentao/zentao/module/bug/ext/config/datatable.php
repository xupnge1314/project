<?php
$config->bug->datatable = new stdclass();
$config->bug->datatable->defaultField = array('id', 'severity', 'pri', 'title', 'status', 'openedBy', 'openedDate', 'assignedTo', 'resolvedBy', 'resolution', 'resolvedDate', 'actions');

$config->bug->datatable->fieldList['id']['title']    = 'idAB';
$config->bug->datatable->fieldList['id']['fixed']    = 'left';
$config->bug->datatable->fieldList['id']['width']    = '70';
$config->bug->datatable->fieldList['id']['required'] = 'yes';

$config->bug->datatable->fieldList['severity']['title']    = 'severityAB';
$config->bug->datatable->fieldList['severity']['fixed']    = 'left';
$config->bug->datatable->fieldList['severity']['width']    = '50';
$config->bug->datatable->fieldList['severity']['required'] = 'no';

$config->bug->datatable->fieldList['pri']['title']    = 'P';
$config->bug->datatable->fieldList['pri']['fixed']    = 'left';
$config->bug->datatable->fieldList['pri']['width']    = '40';
$config->bug->datatable->fieldList['pri']['required'] = 'no';

$config->bug->datatable->fieldList['title']['title']    = 'title';
$config->bug->datatable->fieldList['title']['fixed']    = 'left';
$config->bug->datatable->fieldList['title']['width']    = 'auto';
$config->bug->datatable->fieldList['title']['required'] = 'yes';

$config->bug->datatable->fieldList['type']['title']    = 'type';
$config->bug->datatable->fieldList['type']['fixed']    = 'no';
$config->bug->datatable->fieldList['type']['width']    = '90';
$config->bug->datatable->fieldList['type']['required'] = 'no';

$config->bug->datatable->fieldList['status']['title']    = 'statusAB';
$config->bug->datatable->fieldList['status']['fixed']    = 'no';
$config->bug->datatable->fieldList['status']['width']    = '80';
$config->bug->datatable->fieldList['status']['required'] = 'no';

$config->bug->datatable->fieldList['activatedCount']['title']    = 'activatedCountAB';
$config->bug->datatable->fieldList['activatedCount']['fixed']    = 'no';
$config->bug->datatable->fieldList['activatedCount']['width']    = '80';
$config->bug->datatable->fieldList['activatedCount']['required'] = 'no';

$config->bug->datatable->fieldList['openedBy']['title']    = 'openedByAB';
$config->bug->datatable->fieldList['openedBy']['fixed']    = 'no';
$config->bug->datatable->fieldList['openedBy']['width']    = '80';
$config->bug->datatable->fieldList['openedBy']['required'] = 'no';

$config->bug->datatable->fieldList['openedDate']['title']    = 'openedDateAB';
$config->bug->datatable->fieldList['openedDate']['fixed']    = 'no';
$config->bug->datatable->fieldList['openedDate']['width']    = '90';
$config->bug->datatable->fieldList['openedDate']['required'] = 'no';

$config->bug->datatable->fieldList['openedBuild']['title']    = 'openedBuild';
$config->bug->datatable->fieldList['openedBuild']['fixed']    = 'no';
$config->bug->datatable->fieldList['openedBuild']['width']    = '120';
$config->bug->datatable->fieldList['openedBuild']['required'] = 'no';

$config->bug->datatable->fieldList['assignedTo']['title']    = 'assignedTo';
$config->bug->datatable->fieldList['assignedTo']['fixed']    = 'no';
$config->bug->datatable->fieldList['assignedTo']['width']    = '80';
$config->bug->datatable->fieldList['assignedTo']['required'] = 'no';

$config->bug->datatable->fieldList['assignedDate']['title']    = 'assignedDate';
$config->bug->datatable->fieldList['assignedDate']['fixed']    = 'no';
$config->bug->datatable->fieldList['assignedDate']['width']    = '90';
$config->bug->datatable->fieldList['assignedDate']['required'] = 'no';

$config->bug->datatable->fieldList['resolvedBy']['title']    = 'resolvedByAB';
$config->bug->datatable->fieldList['resolvedBy']['fixed']    = 'no';
$config->bug->datatable->fieldList['resolvedBy']['width']    = '80';
$config->bug->datatable->fieldList['resolvedBy']['required'] = 'no';

$config->bug->datatable->fieldList['resolution']['title']    = 'resolutionAB';
$config->bug->datatable->fieldList['resolution']['fixed']    = 'no';
$config->bug->datatable->fieldList['resolution']['width']    = '80';
$config->bug->datatable->fieldList['resolution']['required'] = 'no';

$config->bug->datatable->fieldList['resolvedDate']['title']    = 'resolvedDateAB';
$config->bug->datatable->fieldList['resolvedDate']['fixed']    = 'no';
$config->bug->datatable->fieldList['resolvedDate']['width']    = '90';
$config->bug->datatable->fieldList['resolvedDate']['required'] = 'no';

$config->bug->datatable->fieldList['resolvedBuild']['title']    = 'resolvedBuild';
$config->bug->datatable->fieldList['resolvedBuild']['fixed']    = 'no';
$config->bug->datatable->fieldList['resolvedBuild']['width']    = '120';
$config->bug->datatable->fieldList['resolvedBuild']['required'] = 'no';

$config->bug->datatable->fieldList['closedBy']['title']    = 'closedBy';
$config->bug->datatable->fieldList['closedBy']['fixed']    = 'no';
$config->bug->datatable->fieldList['closedBy']['width']    = '80';
$config->bug->datatable->fieldList['closedBy']['required'] = 'no';

$config->bug->datatable->fieldList['closedDate']['title']    = 'closedDate';
$config->bug->datatable->fieldList['closedDate']['fixed']    = 'no';
$config->bug->datatable->fieldList['closedDate']['width']    = '90';
$config->bug->datatable->fieldList['closedDate']['required'] = 'no';

$config->bug->datatable->fieldList['lastEditedDate']['title']    = 'lastEditedDateAB';
$config->bug->datatable->fieldList['lastEditedDate']['fixed']    = 'no';
$config->bug->datatable->fieldList['lastEditedDate']['width']    = '90';
$config->bug->datatable->fieldList['lastEditedDate']['required'] = 'no';

$config->bug->datatable->fieldList['actions']['title']    = 'actions';
$config->bug->datatable->fieldList['actions']['fixed']    = 'right';
$config->bug->datatable->fieldList['actions']['width']    = '140';
$config->bug->datatable->fieldList['actions']['required'] = 'yes';
