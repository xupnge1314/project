<?php
/**
 * The show view file of report module of ZenTaoPMS.
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
<div class='side'><?php include '../../view/blockreportlist.html.php'?></div>
<div class='main'>
  <?php if($setVars):?>
  <div class='row'>
    <form method='post'>
      <div class='row mg-0 mgb-20'>
        <?php include 'setvarvalues.html.php';?>
        <div class='col-md-3 col-sm-6'><?php echo html::submitButton($lang->crystal->query);?></div>
      </div>
    </form>
  </div>
  <?php endif;?>
  <?php if(!empty($dataList) and isset($step)):?>
  <div class='panel'>
    <div class='panel-heading'>
      <strong><?php echo $title?></strong>
      <?php if(common::hasPriv('report', 'crystalExport')):?>
      <div class='panel-actions pull-right'>
      <?php echo html::a($this->createLink('report', 'crystalExport', "step=$step&reportID=$reportID"), $lang->export, '', "class='export btn btn-sm btn-primary'")?>
      </div>
      <?php endif;?>
    </div>
    <div class='panel-body scroll-table' style='padding: 0;'>
    <?php if($step == 2):?>
      <?php include 'reportdata.html.php';?>
    </div>
    <?php elseif($step == 1):?>
      <table class='table'>
        <tr>
          <?php foreach($fields as $field):?>
          <th><nobr><?php echo $field;?></nobr></th>
          <?php endforeach;?>
        </tr>
        <?php foreach($dataList as $data):?>
        <tr>
          <?php foreach($data as $field => $value):?>
          <td><?php echo $value?></td>
          <?php endforeach;?>
        </tr>
        <?php endforeach;?>
      </table>
    </div>
    <div class='panel-footer'><?php printf($lang->crystal->noticeResult, count($dataList), count($dataList))?></div>
    <?php endif;?>
  </div>
  <?php endif;?>
  <?php
  $desc = json_decode($report->desc, true);
  if(!empty($desc[$this->app->getClientLang()])):
  ?>
  <div class='alert'><?php echo $desc[$this->app->getClientLang()];?></div>
  <?php endif;?>
</div>
<?php include '../../../common/view/footer.html.php';?>
