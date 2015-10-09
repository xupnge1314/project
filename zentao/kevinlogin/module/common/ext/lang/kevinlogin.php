<?php
$lang->kevinlogin = new stdclass();

$lang->kevinlogin->menu = $lang->admin->menu;

$lang->admin->menu->kevinlogin = array('link' => 'KEVIN|kevinlogin|defaultpwd', 'subModule' => 'kevinlogin');

$lang->menugroup->kevinlogin = 'admin';

$lang->admin->menuOrder[60] = 'kevinlogin';
$lang->kevinlogin->menuOrder = $lang->admin->menuOrder;