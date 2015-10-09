<?php
$lang->report->crystalExport = 'Crystal export';

$lang->crystal = new stdclass();
$lang->crystal->common  = 'Crystal report';
$lang->crystal->setVar  = 'Set variable';
$lang->crystal->browse  = 'Browse report';
$lang->crystal->use     = 'Change';
$lang->crystal->addVar  = 'Add variable';
$lang->crystal->addLang = 'Set lang';
$lang->crystal->custom  = 'Add report';
$lang->crystal->saveAs  = 'Save as';

$lang->crystal->sql         = 'SQL';
$lang->crystal->query       = 'Query';
$lang->crystal->condition   = 'Design report';
$lang->crystal->params      = 'Params';
$lang->crystal->result      = 'Result';
$lang->crystal->group       = 'Group field';
$lang->crystal->statistics  = 'Statistics field';
$lang->crystal->group1      = 'Field of group 1';
$lang->crystal->group2      = 'Field of group 2';
$lang->crystal->reportField = 'Field of report';
$lang->crystal->reportType  = 'Report type';
$lang->crystal->reportTotal = 'Show total';
$lang->crystal->percent     = 'Show Percent';
$lang->crystal->contrast    = 'Contrast';
$lang->crystal->showAlone   = 'Show alone';
$lang->crystal->percentAB   = 'Percent';
$lang->crystal->isUser      = 'Show realname';
$lang->crystal->total       = 'Total';
$lang->crystal->requestType = 'Input type';
$lang->crystal->varName     = 'Variable name';
$lang->crystal->showName    = 'Showed name';
$lang->crystal->name        = 'Report name';
$lang->crystal->module      = 'Module';
$lang->crystal->id          = 'ID';
$lang->crystal->code        = 'Code';
$lang->crystal->all         = 'All';
$lang->crystal->fieldName   = 'Field name';
$lang->crystal->fieldValue  = 'Field value';
$lang->crystal->lang        = 'Language';
$lang->crystal->desc        = 'Desc';
$lang->crystal->default     = 'Default';

$lang->crystal->reportTypeList['count'] = 'Count';
$lang->crystal->reportTypeList['sum']   = 'Sum';

$lang->crystal->requestTypeList['input']   = 'Input';
$lang->crystal->requestTypeList['date']    = 'Date';
$lang->crystal->requestTypeList['select']  = 'Select';

$lang->crystal->selectList['user']    = 'User list';
$lang->crystal->selectList['product'] = $lang->productCommon . ' list';
$lang->crystal->selectList['project'] = $lang->projectCommon . ' list';
$lang->crystal->selectList['dept']    = 'Dept list';
$lang->crystal->selectList['project.status'] = $lang->projectCommon . ' status list';

$lang->crystal->moduleList['']        = '';
$lang->crystal->moduleList['product'] = $lang->productCommon;
$lang->crystal->moduleList['project'] = $lang->projectCommon;
$lang->crystal->moduleList['test']    = 'Test';
$lang->crystal->moduleList['staff']   = 'Staff';

$lang->crystal->sqlPlaceholder    = 'Direct write a SQL query, only the query operation, the prohibition of other SQL operations';
$lang->crystal->sumPlaceholder    = 'Select the field of sum';
$lang->crystal->noticeSelect      = 'The SQL statement is only the query statement';
$lang->crystal->noticeBlack       = 'SQL contains non query keyword %s';
$lang->crystal->notResult         = 'No query data.';
$lang->crystal->noticeResult      = 'A total of %s data, display the %s';
$lang->crystal->noticeVarName     = 'The name of the variable is not set';
$lang->crystal->noticeRequestType = 'Input type of %s is not set';
$lang->crystal->errorSave         = 'The SQL variables cannot be empty!';
$lang->crystal->errorNoReport     = 'The report is not exist!';
$lang->crystal->confirmDelete     = 'Do you want to delete this report';
$lang->crystal->errorSql          = 'The SQL statement is wrong! Error:';
$lang->crystal->noSumAppend       = 'No choice summation field in %s';
$lang->crystal->noStep            = 'Please check out the data and then save the report!';
$lang->crystal->emptyName         = 'The name is not empty.';

$lang->report->custom       = $lang->crystal->custom;
$lang->report->useReport    = $lang->crystal->use;
$lang->report->browseReport = 'Browse report';
$lang->report->deleteReport = 'Delete report';
$lang->report->editReport   = 'Rename';
$lang->report->saveReport   = 'Save report';
$lang->report->show         = 'Show data';

$lang->datepicker->dpText->TEXT_WEEK_MONDAY = 'Monday';
$lang->datepicker->dpText->TEXT_WEEK_SUNDAY = 'Sunday';
$lang->datepicker->dpText->TEXT_MONTH_BEGIN = 'Month begin';
$lang->datepicker->dpText->TEXT_MONTH_END   = 'Month end';
