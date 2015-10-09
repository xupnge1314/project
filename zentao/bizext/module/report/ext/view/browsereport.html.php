<?php
/**
 * The browseReport view file of report module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2014 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     report
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/header.html.php';?>
<div class='side'>
  <div class='side-body'>
    <div class='panel panel-sm'>
      <ul id='report-list' class='list-group'>
      <?php
          foreach($lang->crystal->moduleList as $module => $name)
          {
              if(empty($name)) $name = $lang->crystal->all;
              $class = $currentModule == $module ? ' active' : '';
              echo html::a(inlink('browseReport', "module=$module"), $name, '', "class='list-group-item $class'");
          }   
      ?>  
      </ul>
    </div>
  </div>
</div>
<div class='main'>
  <table class='table table-fixed mg-0' style='border: 1px solid #ddd;'>
    <thead>
      <tr>
        <th class='w-id'><?php echo $lang->crystal->id?></th>
        <th width='260'><?php echo $lang->crystal->name?></th>
        <th><?php echo $lang->crystal->desc?></th>
        <th class='w-100px'><?php echo $lang->crystal->module?></th>
        <th class='w-150px'><?php echo $lang->actions?></th>
      </tr>
    </thead>
    <tbody class='text-center'>
      <?php foreach($reports as $report):?>
      <tr>
        <td><?php echo $report->id;?></td>
        <td class='text-left'>
          <?php
          $name = json_decode($report->name, true);
          if(empty($name)) $name[$this->app->getClientLang()] = $report->name;
          echo zget($name, $this->app->getClientLang());
          ?>
        </td>
        <td class='text-left'><?php $desc = json_decode($report->desc, true); echo zget($desc, $this->app->getClientLang());?></td>
        <td>
          <?php
          $modules = explode(',', trim($report->module, ','));
          foreach($modules as $module) echo $lang->crystal->moduleList[$module] . ' ';
          ?>
        </td>
        <td>
          <?php
          if(common::hasPriv('report', 'useReport')) echo html::a(inlink('useReport', "reportID=$report->id"), $lang->crystal->use,'', $report->vars ? "data-type='iframe' data-toggle='modal'" : '');
          if(common::hasPriv('report', 'editReport')) echo html::a(inlink('editReport', "reportID=$report->id"), $lang->report->editReport, '', "data-type='iframe' data-toggle='modal'");
          if(common::hasPriv('report', 'deleteReport')) echo html::a(inlink('deleteReport', "reportID=$report->id"), $lang->delete, 'hiddenwin');
          ?>
        </td>
      </tr>
      <?php endforeach;?>
    </tbody>
    <tfoot>
      <tr><td colspan='5'><?php $pager->show();?></td></tr>
    </tfoot>
  </table>
</div>
<?php include '../../../common/view/footer.html.php';?>
