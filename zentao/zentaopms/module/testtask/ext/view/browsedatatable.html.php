<?php
/**
 * The view file of datatable module of ZenTaoPMS.
 *
 * @copyright   Copyright 2014-2014 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Hao sun <sunhao@cnezsoft.com>
 * @package     datatable 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php
include '../../../common/view/header.html.php';
include '../../../common/view/treeview.html.php';
include '../../../common/ext/view/datatable.html.php';
include '../../view/caseheader.html.php';
?>
<?php js::set('confirmUnlink', $lang->testtask->confirmUnlinkCase)?>
<script language="Javascript">
var browseType = '<?php echo $browseType;?>';
var moduleID   = '<?php echo $moduleID;?>';
</script>
<div class='side' id='casesbox'>
  <a class='side-handle' data-id='testtaskTree'><i class='icon-caret-left'></i></a>
  <div class='side-body'>
    <div class='panel panel-sm'>
      <div class='panel-heading nobr'><?php echo html::icon($lang->icons['product']);?> <strong><?php echo $productName;?></strong></div>
      <div class='panel-body'>
        <?php echo $moduleTree;?>
      </div>
    </div>
  </div>
</div>
<div class='main'>
  <form method='post' name='casesform'>
    <?php $vars = "taskID=$task->id&browseType=$browseType&param=$param&orderBy=%s&recToal={$pager->recTotal}&recPerPage={$pager->recPerPage}"; ?>
    <?php
    $leftWidth  = 0;
    $rightWidth = 0;
    foreach($setting as $key => $value)
    {
        if($value->fixed != 'no') ${$value->fixed . 'Width'} += (int)trim($value->width, 'px');
    }
    if($leftWidth <= 550) $leftWidth = 550;
    if($rightWidth <= 0) $rightWidth = 140;

    $canBatchEdit   = common::hasPriv('testcase', 'batchEdit');
    $canBatchAssign = common::hasPriv('testtask', 'batchAssign');
    $canBatchRun    = common::hasPriv('testtask', 'batchRun');
    $hasCheckbox    = ($canBatchEdit or $canBatchAssign or $canBatchRun) ? 'true' : 'false';
    ?>
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed datatable' id='caseList' data-checkable='<?php echo $hasCheckbox?>' data-fixed-left-width='<?php echo $leftWidth?>' data-fixed-right-width='<?php echo $rightWidth?>' data-custom-menu='true' data-checkbox-name='caseIDList[]'>
      <thead>
        <tr><?php foreach($setting as $key => $value) $this->testcase->printHead($value, $orderBy, $vars);?></tr>
      </thead>
      <tbody>
        <?php foreach($runs as $run):?>
        <tr class='text-center' data-id='<?php echo $run->case?>'>
          <?php foreach($setting as $key => $value) $this->testtask->printCell($value, $run, $users, $task);?>
        </tr>
        <?php endforeach;?>
      </tbody>
      <tfoot>
        <tr>
          <td colspan='10'>
            <?php if($runs):?>
            <div class='table-actions clearfix'>

            <?php 
            if($canBatchEdit or $canBatchAssign or $canBatchRun) echo "<div class='btn-group'>" . html::selectButton() . '</div>';
            if($canBatchEdit)
            {
                $actionLink = $this->createLink('testcase', 'batchEdit', "productID=$productID");
                echo html::commonButton($lang->edit, "onclick=\"setFormAction('$actionLink')\"");
            }
            if($canBatchAssign)
            {
                $actionLink = inLink('batchAssign', "taskID=$task->id");
                echo "<div class='input-group w-200px'>";
                echo html::select('assignedTo', $users, '', 'class="form-control chosen"');
                echo "<span class='input-group-addon'>";
                echo html::a("javascript:setFormAction(\"$actionLink\")", $lang->testtask->assign);
                echo '</span></div>';
            }
            if($canBatchRun)
            {
                $actionLink = inLink('batchRUN', "productID=$productID&orderBy=id_desc&from=testtask");
                echo html::commonButton($lang->testtask->runCase, "onclick=\"setFormAction('$actionLink')\"");
            }
            ?>

            </div>
            <?php endif;?>
            <?php echo $pager->show();?>
          </td>
        </tr>
      </tfoot>
    </table>
  </form>
</div>
<?php include '../../../common/view/footer.html.php';?>
