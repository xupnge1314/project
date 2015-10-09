<?php
/**
 * The browse view file of bug module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2014 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     bug
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php
$this->loadModel('datatable');
$datatableId = $this->moduleName . $this->methodName;
if(isset($this->config->datatable->$datatableId->mode) and $this->config->datatable->$datatableId->mode == 'datatable')
{
    $this->loadModel('testcase');
    $this->config->testcase->datatable->defaultField = $this->config->testtask->datatable->defaultField;
    $this->config->testcase->datatable->fieldList['assignedTo']['title']    = 'assignedTo';
    $this->config->testcase->datatable->fieldList['assignedTo']['fixed']    = 'no';
    $this->config->testcase->datatable->fieldList['assignedTo']['width']    = '80';
    $this->config->testcase->datatable->fieldList['assignedTo']['required'] = 'no';
    $this->config->testcase->datatable->fieldList['actions']['width']       = '100';

    $setting = $this->datatable->getSetting('testtask');
    include('browsedatatable.html.php');
}
else
{
    $cwd = getcwd();
    chdir($this->app->getModulePath('testtask') . 'view/');
    include($this->app->getModulePath('testtask') . 'view/cases.html.php');

    chdir($cwd);
    include '../../../common/ext/view/datatable.fix.html.php';
}
?>
