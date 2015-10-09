<?php
$lang->user->importLDAP = '從LDAP導入用戶';
$lang->user->group      = '權限分組';

if(!isset($lang->user->error)) $lang->user->error = new stdclass();
$lang->user->error->repeat     = "%s，因為用戶名重複，不能添加！，請修改用戶名後再添加";
$lang->user->error->illaccount = "%s，因為用戶名不合法，添加失敗！，請修改用戶名後再添加";

$lang->user->notice = new stdclass();
$lang->user->notice->checkbox = '沒有勾選，則不導入！';
$lang->user->notice->ldapoff  = 'LDAP處于關閉狀態。';
