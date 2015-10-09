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
<form class='form-condensed' method='post' target='hiddenwin' style='min-height: 580px'>
  <div id='titlebar'>
    <div class='heading'>
      <strong class='pull-left'><?php echo $lang->effort->create;?></strong>&nbsp;
      <div class='input-group w-100px pull-left' style="position: relative; top: -6px; margin-left: 10px;">
        <?php echo html::input('date', $date, "class='form-control form-date' onchange='updateAction(this.value)'");?>
      </div>
    </div>
  </div>
  <table class='table table-form table-fixed' id='objectTable'>
    <thead>
      <tr>
        <th class='w-id'><?php echo $lang->idAB;?></th>
        <th><?php echo $lang->effort->work;?></th>
        <th class='w-80px'><?php echo $lang->effort->consumed . '(' . $lang->effort->hour . ')';?></th>
        <th class='w-80px'><?php echo $lang->effort->left . '(' . $lang->effort->hour . ')';?></th>
        <th class='w-300px'><?php echo $lang->effort->objectType;?></th>
        <th class='w-60px'><?php echo html::commonButton($lang->effort->clean, "onclick='cleanEffort()' title='{$lang->effort->noticeClean}'")?></th>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1;?>
      <?php foreach($actions as $action):?>
      <tr class="effortBox computed">
        <td align='center'><?php echo '<span class="effortID">' . $i . '</span>' . html::hidden("id[$i]", $i);?></td>
        <td><?php echo html::input("work[$i]", $action->work, 'class="form-control" ' . (empty($action->work) ? '' : 'tabindex="9999"'));?></td>
        <td><?php echo html::input("consumed[$i]", '', 'autocomplete="off" class="form-control"');?></td>
        <td><?php $disabled = $action->objectType == 'task' ? '' : 'disabled'; echo html::input("left[$i]", '', "autocomplete='off' class='form-control $disabled' " . $disabled);?></td>
        <td style='overflow:visible'>
          <?php
          echo html::select("objectType[$i]", $typeList, "{$action->objectType}_{$action->objectID}", "class='form-control chosen' tabindex='9999' onchange=controlInput(this)");
          echo html::hidden("actionID[$i]", $action->id);
          ?> 
        </td>
        <td align='center'>
          <a href='javascript:void()' onclick='addEffort(this)' tabindex="9999" class='btn-icon'><i class="icon-plus"></i></a>
          <a href='javascript:void()' onclick='deleteEffort(this)' tabindex="9999" class='btn-icon'><i class="icon-remove"></i></a>
        </td>
      </tr>
      <?php $i++;?>
      <?php endforeach;?>
      <?php for($j = 0; $j < 5; $j++, $i++):?>
      <tr class="effortBox new">
        <td align='center'><?php echo '<span class="effortID">' . $i . '</span>' . html::hidden("id[$i]", $i);?></td>
        <td><?php echo html::input("work[$i]", '', 'class=form-control');?></td>
        <td><?php echo html::input("consumed[$i]", '', 'autocomplete="off" class="form-control"');?></td>
        <td><?php echo html::input("left[$i]", '', 'autocomplete="off" disabled class="disabled form-control"');?></td>
        <td style='overflow:visible'><?php echo html::select("objectType[$i]", $typeList, 'custom', "tabindex='9999' onchange=setLeftInput(this) class='form-control chosen'");?></td> 
        <td align='center'>
          <a href='javascript:void()' onclick='addEffort(this)' tabindex="9999" class='btn-icon'><i class="icon-plus"></i></a>
          <a href='javascript:void()' onclick='deleteEffort(this)' tabindex="9999" class='btn-icon'><i class="icon-remove"></i></a>
        </td>
      </tr>
      <?php endfor;?>
    </tbody>
    <tfoot>
      <tr>
        <td colspan='6' class='text-center'>
          <?php echo html::submitButton('', "onclick='return checkTaskLeft(\"{$lang->effort->noticeFinish}\")'") . html::backButton();?>
        </td>
      </tr>
    </tfoot>
  </table>
</form>
<?php js::set('num', $i)?>
<?php include '../../common/view/footer.html.php';?>
