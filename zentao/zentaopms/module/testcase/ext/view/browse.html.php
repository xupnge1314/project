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
    $setting = $this->datatable->getSetting('testcase');
    include('browsedatatable.html.php');
}
else
{
    $cwd = getcwd();
    chdir($this->app->getModulePath('testcase') . 'view/');
    include($this->app->getModulePath('testcase') . 'view/browse.html.php');

    chdir($cwd);
    include '../../../common/ext/view/datatable.fix.html.php';
}
?>
