<?php
$config->owner   = 'system';
$config->module  = 'common';
$config->section = 'global';
$config->key     = 'flow';
$config->value   = 'full';

$this->dao->replace(TABLE_CONFIG)->data($config, false)->exec();
