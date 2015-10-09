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
$lang->my->menu->todo['link'] = "待办|todo|calendar|";
$lang->my->menu->effort       = array('link' => "日志|effort|calendar|", 'subModule' => 'effort');

$lang->company->menu->effort       = array('link' => "日志|company|calendar|", 'alias' => 'effort');
$lang->company->menu->todo['link'] = "待办|company|todo|";

$lang->project->menu->task['alias'] .= ',calendar';
$lang->project->menu->effort         = array('link' => "日志|project|effortcalendar|projectID=%s", 'subModule' => 'effort');

if(!isset($lang->effort))$lang->effort = new stdclass();
if(!isset($lang->effort->menuOrder))$lang->effort->menuOrder = new stdclass();
$lang->my->menuOrder[16]      = 'effort';
$lang->company->menuOrder[6]  = 'todo';
$lang->company->menuOrder[7]  = 'effort';
$lang->company->menuOrder[8]  = 'dynamic';
$lang->project->menuOrder[37] = 'effort';
$lang->dept->menuOrder        = $lang->company->menuOrder;
$lang->group->menuOrder       = $lang->company->menuOrder;
$lang->todo->menuOrder        = $lang->my->menuOrder;
$lang->effort->menuOrder      = $lang->my->menuOrder;
$lang->task->menuOrder        = $lang->project->menuOrder;
$lang->build->menuOrder       = $lang->project->menuOrder;
$lang->user->menuOrder        = $lang->company->menuOrder;

$lang->dept->menu   = $lang->company->menu;
$lang->group->menu  = $lang->company->menu;
$lang->todo->menu   = $lang->my->menu;
$lang->effort->menu = $lang->my->menu;
$lang->task->menu   = $lang->project->menu;
$lang->build->menu  = $lang->project->menu;
$lang->user->menu   = $lang->company->menu;
