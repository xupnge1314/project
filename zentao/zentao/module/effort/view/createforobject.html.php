<?php
/**
 * The create view of effort module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     effort
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../common/view/header.lite.html.php';?>
<?php include '../../common/view/datepicker.html.php';?>
<style>
.body-modal form, .body-modal .container > form {margin: 0;padding: 0 20px 20px;}
.body-modal #titlebar {margin: 0 -20px 20px}
.body-modal #titlebar + .table-form {border: 1px solid #ddd}
</style>
<form class='form-condensed' method='post' action='<?php echo $this->createLink('effort', 'createForObject', "objectType=$objectType&objectID=$objectID");?>' target='hiddenwin'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->effort->create;?></strong>
    </div>
  </div>
  <table class='table table-form table-fixed' id='objectTable'>
    <thead>
      <tr>
        <th class='w-id'><?php echo $lang->idAB;?></th>
        <th class='w-120px'><?php echo $lang->effort->date;?></th>
        <th class='w-60px'><?php echo $lang->effort->consumed;?></th>
        <?php if($objectType == 'task'):?>
        <th class='w-60px'><?php echo $lang->effort->left;?></th>
        <?php endif;?>
        <th><?php echo $lang->effort->work;?></th>
        <th class='w-80px'><?php echo $lang->actions;?></th>
      </tr>  
    </thead>
    <?php foreach($efforts as $effort):?>
    <tr class='main'>
      <td align='center'><?php echo $effort->id?></td>
      <td align='center'><?php echo $effort->date?></td>
      <td align='center'><?php echo $effort->consumed?></td>
      <?php if($objectType == 'task'):?>
      <td align='center'><?php echo $effort->left;?></td>
      <?php endif;?>
      <td><?php echo $effort->work;?></td>
      <td align='center' class='actions'>
        <?php
        common::printIcon('effort', 'edit', "effortID=$effort->id", '', 'button', '', '', 'showinonlybody', true);
        common::printIcon('effort', 'delete', "effortID=$effort->id", '', 'button', '', 'hiddenwin', 'showinonlybody');
        ?>
      </td>
    </tr>
    <?php endforeach;?>
    <?php $today = date(DT_DATE1);?>
    <?php for($i = 1; $i <= 5; $i++):?>
    <tr>
      <td align='center'><?php echo $i . html::hidden("id[$i]", $i);?></td>
      <td><?php echo html::input("dates[$i]", $today, "class='form-control form-date'");?></td>
      <td><?php echo html::input("consumed[$i]", '', "class='form-control' autocomplete='off'");?></td>
      <?php if($objectType == 'task'):?>
      <td><?php echo html::input("left[$i]", '', "class='form-control' autocomplete='off'");?></td>
      <?php endif;?>
      <td>
      <?php
      echo html::hidden("objectType[$i]", $objectType); 
      echo html::hidden("objectID[$i]", $objectID); 
      echo html::input("work[$i]", '', 'class=form-control');
      ?>
      </td>
      <td></td>
    </tr>  
    <?php endfor;?>
    <tr>
      <?php $cols = $objectType == 'task' ? 6 : 5;?>
      <td colspan='<?php echo $cols?>' class='text-center'><?php echo html::submitButton('', "onclick='return checkTaskLeft(\"{$lang->effort->noticeFinish}\")'") . html::backButton();?></td>
    </tr>
  </table>
</form>
<?php include '../../common/view/footer.lite.html.php'?>
