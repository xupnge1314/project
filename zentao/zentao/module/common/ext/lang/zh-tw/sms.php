<?php
$lang->admin->menu->sms     = array('link' => '短信配置|sms|index', 'subModule' => 'sms');
$lang->admin->menuOrder[21] = 'sms';

$subModules = array();
foreach($lang->admin->menu as $key => $value)
{
    if(isset($value['subModule']))
    {
        foreach(explode(',', $value['subModule']) as $subModule) $subModules[] = $subModule;
    }
}

$lang->sms       = new stdclass();
$lang->sms->menu = new stdclass();
foreach($subModules as $subModule)
{
    $lang->$subModule->menu      = $lang->admin->menu;
    $lang->$subModule->menuOrder = $lang->admin->menuOrder;
}

$lang->menugroup->sms = 'admin';
