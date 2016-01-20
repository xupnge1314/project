<?php
$lang->admin->menu->ldap    = array('link' => 'LDAP Setting|ldap|index', 'subModule' => 'ldap');
$lang->admin->menuOrder[22] = 'ldap';

$subModules = array();
foreach($lang->admin->menu as $key => $value)
{
    if(isset($value['subModule']))
    {
        foreach(explode(',', $value['subModule']) as $subModule) $subModules[] = $subModule;
    }
}

$lang->ldap       = new stdclass();
$lang->ldap->menu = new stdclass();
foreach($subModules as $subModule)
{
    if(!isset($lang->$subModule)) $lang->$subModule = new stdclass();
    $lang->$subModule->menu      = $lang->admin->menu;
    $lang->$subModule->menuOrder = $lang->admin->menuOrder;
}

$lang->menugroup->ldap = 'admin';
