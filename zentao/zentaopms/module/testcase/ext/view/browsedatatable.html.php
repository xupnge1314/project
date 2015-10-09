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
include '../../../common/view/datepicker.html.php';
include '../../../common/view/treeview.html.php';
include '../../../common/ext/view/datatable.html.php';
include '../../view/caseheader.html.php';
js::set('browseType', $browseType);
js::set('moduleID'  , $moduleID);
js::set('confirmDelete', $lang->testcase->confirmDelete);
js::set('batchDelete', $lang->testcase->confirmBatchDelete);
?>
<div class='side' id='treebox'>
  <a class='side-handle' data-id='testcaseTree'><i class='icon-caret-left'></i></a>
  <div class='side-body'>
    <div class='panel panel-sm'>
      <div class='panel-heading nobr'><?php echo html::icon($lang->icons['product']);?> <strong><?php echo $productName;?></strong></div>
      <div class='panel-body'>
        <?php echo $moduleTree;?>
        <div class='text-right'>
          <?php common::printLink('tree', 'browse', "productID=$productID&view=case", $lang->tree->manage);?>
          <?php common::printLink('tree', 'fix',    "root=$productID&type=case", $lang->tree->fix, 'hiddenwin');?>
        </div>
      </div>
    </div>
  </div>
</div>
<div class='main'>
  <form id='batchForm' method='post'>
    <?php $vars = "productID=$productID&browseType=$browseType&param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}"; ?>
    <?php
    $leftWidth  = 0;
    $rightWidth = 0;
    foreach($setting as $key => $value)
    {
        if($value->fixed != 'no') ${$value->fixed . 'Width'} += (int)trim($value->width, 'px');
    }
    if($leftWidth <= 550) $leftWidth = 550;
    if($rightWidth <= 0) $rightWidth = 150;
    ?>
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed datatable' id='caseList' data-checkable='true' data-fixed-left-width='<?php echo $leftWidth?>' data-fixed-right-width='<?php echo $rightWidth?>' data-custom-menu='true' data-checkbox-name='caseIDList[]'>
      <thead>
        <tr><?php foreach($setting as $key => $value) $this->testcase->printHead($value, $orderBy, $vars);?></tr>
      </thead>
      <tbody>
        <?php foreach($cases as $case):?>
        <tr class='text-center' data-id='<?php echo $case->id?>'>
          <?php foreach($setting as $key => $value) $this->testcase->printCell($value, $case, $users);?>
        </tr>
        <?php endforeach;?>
      </tbody>
      <tfoot>
       <tr>
         <?php $mergeColums = $browseType == 'needconfirm' ? 5 : 10;?>
         <td colspan='<?php echo $mergeColums?>'>
           <?php if($cases):?>
           <div class='table-actions clearfix'>
             <div class='btn-group'>
               <?php echo html::selectButton();?>
             </div>
             <div class='btn-group dropup'>
               <?php
               $actionLink = $this->createLink('testcase', 'batchEdit', "productID=$productID");
               $misc       = common::hasPriv('testcase', 'batchEdit') ? "onclick=\"setFormAction('$actionLink')\"" : "disabled='disabled'";
               echo html::commonButton($lang->edit, $misc);
               ?>
               <button type='button' class='btn dropdown-toggle' data-toggle='dropdown'><span class='caret'></span></button>
               <ul class='dropdown-menu' id='moreActionMenu'>
                <?php 
                $actionLink = $this->createLink('testcase', 'batchDelete', "productID=$productID");
                $misc = common::hasPriv('testcase', 'batchDelete') ? "onclick=\"confirmBatchDelete('$actionLink')\"" : "class='disabled'";
                echo "<li>" . html::a('#', $lang->delete, '', $misc) . "</li>";

                $actionLink = $this->createLink('testtask', 'batchRun', "productID=$productID&orderBy=$orderBy");
                $misc = common::hasPriv('testtask', 'batchRun') ? "onclick=\"setFormAction('$actionLink')\"" : "class='disabled'";
                echo "<li>" . html::a('#', $lang->testtask->runCase, '', $misc) . "</li>";
                ?>
               </ul>
             </div>
           </div>
           <?php endif?>
           <div class='text-right'><?php $pager->show();?></div>
         </td>
       </tr>
     </tfoot>
    </table>
  </form>
</div>
<?php include '../../../common/view/footer.html.php';?>
