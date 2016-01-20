<?php
/**
 * The effort module English file of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     effort
 * @version     $Id: en.php 2605 2012-02-21 07:22:58Z wwccss $
 * @link        http://www.zentao.net
 */
$lang->effort->common          = 'EFFORT';
$lang->effort->index           = "Index";
$lang->effort->create          = "Create";
$lang->effort->batchCreate     = "Create";
$lang->effort->createForObject = "Create for object";
$lang->effort->edit            = "Edit";
$lang->effort->batchEdit       = "Batch edit";
$lang->effort->view            = "Info";
$lang->effort->viewAB          = "Info";
$lang->effort->comment         = 'Comment';
$lang->effort->export          = "Export";
$lang->effort->delete          = "Delete";
$lang->effort->browse          = "Browse";
$lang->effort->history         = "History";
$lang->effort->hour            = "hour";
$lang->effort->clean           = "Clean";

$lang->effort->id          = 'ID';
$lang->effort->account     = 'Owner';
$lang->effort->date        = 'Date';
$lang->effort->left        = 'Left';
$lang->effort->consumed    = 'Consumed';
$lang->effort->objectType  = 'objectType';
$lang->effort->objectID    = 'objectID';
$lang->effort->work        = 'Work';
$lang->effort->deal        = 'deal with ';

$lang->effort->week         = '(l)';  // date function's param.
$lang->effort->today        = 'Today';
$lang->effort->weekDateList = '';

$lang->effort->objectTypeList['custom']      = '';
$lang->effort->objectTypeList['story']       = 'Story';
$lang->effort->objectTypeList['productplan'] = 'Productplan';
$lang->effort->objectTypeList['release']     = 'Release';
$lang->effort->objectTypeList['task']        = 'Task';
$lang->effort->objectTypeList['build']       = 'Build';
$lang->effort->objectTypeList['bug']         = 'Bug';
$lang->effort->objectTypeList['case']        = 'Testcase';
$lang->effort->objectTypeList['testtask']    = 'Testtask';
$lang->effort->objectTypeList['doc']         = 'Doc';
$lang->effort->objectTypeList['todo']        = 'TODO';

$lang->effort->todayEfforts     = 'Today';
$lang->effort->yesterdayEfforts = 'Yesterday';
$lang->effort->thisWeekEfforts  = 'Thisweek';
$lang->effort->lastWeekEfforts  = 'Lastweek';
$lang->effort->thisMonthEfforts = 'Thismonth';
$lang->effort->lastMonthEfforts = 'Lastmonth';
$lang->effort->allDaysEfforts   = 'All';

$lang->effort->notEmpty    = 'must be not empty.';
$lang->effort->notNegative = "must be not negative.";
$lang->effort->isNumber    = 'must be number.';
$lang->effort->tooLang     = 'Effore content of ID%s is too lang.';
$lang->effort->nowork      = "Work content of ID%s must be not empty!";
$lang->effort->notice      = '(notice:1.if the %s is empty, it is invalid;2.if the %s is not equal %s and %s is empty, it is invalid)';
$lang->effort->confirmDelete  = "Are you sure to delete this effort?";
$lang->effort->noticeClean    = "Only removal of all system generated effort";
$lang->effort->noticeFinish   = "There are log that left is zero, the system will automatically complete the task, do you want to continue?";
