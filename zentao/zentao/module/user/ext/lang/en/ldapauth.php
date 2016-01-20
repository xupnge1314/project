<?php
$lang->user->importLDAP = 'Import user from LDAP';
$lang->user->group      = 'Power group';

if(!isset($lang->user->error)) $lang->user->error = new stdclass();
$lang->user->error->repeat     = "%s,Because the user name repeat, can not be added! , Modify the user name and then add";
$lang->user->error->illaccount = "%s,Because the user name is not legitimate, adding to fail! , Modify the user name and then add";

$lang->user->notice = new stdclass();
$lang->user->notice->checkbox = 'Is not checked, not imported!';
$lang->user->notice->ldapoff  = "LDAP's status is off";
