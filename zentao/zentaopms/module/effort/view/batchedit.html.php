<?php
/**
 * The control file of effort module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     effort
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../common/view/header.html.php';?>
<?php include '../../common/view/datepicker.html.php';?>
<form class='form-condensed' method='post' target='hiddenwin' action='<?php echo $this->createLink('effort', 'batchEdit', 'from=batchEdit')?>'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->effort->batchEdit;?></strong>&nbsp;
    </div>
  </div>
  <table class='table table-form table-fixed' id='objectTable'>
    <thead>
      <?php if(!empty($efforts)):?>
      <tr>
        <th class='w-id'><?php echo $lang->idAB;?></th>
        <th class='w-120px'><?php echo $lang->effort->date;?></th>
        <th><?php echo $lang->effort->work;?></th>
        <th class='w-80px'><?php echo $lang->effort->consumed . '(' . $lang->effort->hour . ')';?></th>
        <th class='w-80px'><?php echo $lang->effort->left . '(' . $lang->effort->hour . ')';?></th>
        <th class='w-400px'><?php echo $lang->effort->objectType;?></th>
      </tr>  
      <?php endif;?>
    </thead>
    <?php foreach($efforts as $id =>$effort ):?>
    <tr id='row<?php echo $id?>'>
      <td class='text-center'><?php echo $id . html::hidden("id[$id]", $id) . html::hidden("objectID[$id]", $effort->objectID);?></td>
      <td class='text-center'><?php echo html::input("date[$id]", "$effort->date", "class='form-date form-control'");?></td>
      <td><?php echo html::input("work[$id]", "$effort->work", "class='form-control'");?></td>
      <td><?php echo html::input("consumed[$id]", $effort->consumed, 'autocomplete="off" class="form-control"');?></td>
      <td><?php $disabled = $effort->objectType == 'task' ? '' : 'disabled'; echo html::input("left[$id]", $effort->left, "autocomplete='off' class='$disabled form-control' " . $disabled);?></td>
      <td style='overflow:visible'><?php echo html::select("objectType[$id]", $typeList, "{$effort->objectType}_{$effort->objectID}", 'tabindex="9999" onchange=setLeftInput(this) class="form-control chosen"');?> 
    </tr>  
    <?php endforeach;?>
    <tr>
      <td colspan='6' class='text-center'>
        <?php echo html::hidden('effortIDList', join(',', $_POST['effortIDList']));?>
        <?php echo html::submitButton('', "onclick='return checkTaskLeft(\"{$lang->effort->noticeFinish}\")'") . html::backButton();?>
      </td>
    </tr>
  </table>
</form>
<?php include '../../common/view/footer.html.php';?>
