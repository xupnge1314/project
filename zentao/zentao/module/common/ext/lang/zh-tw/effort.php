<?php
$lang->effort = new stdclass();
/* Insert effort into $lang->my->menu.*/
if(!isset($lang->my->menu->effort)) 
{
    $lang->my->menu->effort  = array('link' => '日誌|my|effort|', 'subModule' => 'effort');
    $lang->my->menuOrder[16] = 'effort';
}

/* Insert effort into $lang->user->menu.*/
$lang->user->menu->effort = array('link' => '日誌|user|effort|account=%s', 'subModule' => 'effort');

/* Insert effort into $lang->project->menu.*/
$lang->project->menu->effort  = '日誌|project|effort|projectID=%s';

/* Insert effort into $lang->company->menu.*/
$lang->company->menu->effort  = '日誌|company|effort|';

$lang->effort->menuOrder      = new stdclass();
$lang->company->menuOrder[7]  = 'effort';
$lang->company->menuOrder[8]  = 'dynamic';
$lang->project->menuOrder[37] = 'effort';
$lang->user->menuOrder[6]     = 'effort';
$lang->todo->menuOrder        = $lang->my->menuOrder;
$lang->effort->menuOrder      = $lang->my->menuOrder;
$lang->task->menuOrder        = $lang->project->menuOrder;
$lang->build->menuOrder       = $lang->project->menuOrder;
$lang->dept->menuOrder        = $lang->company->menuOrder;
$lang->group->menuOrder       = $lang->company->menuOrder;
$lang->user->menuOrder        = $lang->company->menuOrder;

$lang->dept->menu   = $lang->company->menu;
$lang->group->menu  = $lang->company->menu;
$lang->todo->menu   = $lang->my->menu;
$lang->effort->menu = $lang->my->menu;
$lang->task->menu   = $lang->project->menu;
$lang->build->menu  = $lang->project->menu;
$lang->user->menu   = $lang->company->menu;

$lang->menugroup->effort = 'my';
