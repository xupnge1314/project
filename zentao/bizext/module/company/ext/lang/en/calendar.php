<?php
/**
 * The lang file of calendar module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     calendar 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
$lang->company->calendar       = 'Calendar';
$lang->company->todo           = 'TODO';
$lang->company->selectDept     = 'Please select deptment';
$lang->company->date           = 'date';
$lang->company->allDept        = 'all';
$lang->company->to             = 'to';
$lang->company->user           = 'user';
$lang->company->dept           = 'dept';
$lang->company->effortCalendar = 'Effort calendar';
$lang->company->todoCalendar   = 'Todo calendar';
$lang->company->beginDate      = 'Begin';
$lang->company->endDate        = 'End';
$lang->company->companyTodo    = 'Company todo';
$lang->company->todoList       = 'Company Todo List';
$lang->company->effortList     = 'Company effort List';
$lang->company->showAll        = 'Display all members of the Department';

if(!isset($lang->company->effort)) $lang->company->effort = new stdclass();
$lang->company->effort->selectDate    = 'Date';
$lang->company->effort->projectSelect = $lang->projectCommon;
$lang->company->effort->productSelect = $lang->productCommon;
$lang->company->effort->userSelect    = 'User';
$lang->company->effort->view          = 'view';

$lang->company->currentDept = 'current dept';
