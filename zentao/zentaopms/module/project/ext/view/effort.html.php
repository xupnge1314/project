<?php
/**
 * The control file of project module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     project 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/header.html.php';?>
<?php include '../../../common/view/datepicker.html.php';?>
<div id='featurebar'>
  <ul class='nav'>
    <?php 
    echo '<li id="today">'    . html::a(inlink('effort', "projectID=$projectID&date=today"),     $lang->effort->todayEfforts)     . '</li>';
    echo '<li id="yesterday">'. html::a(inlink('effort', "projectID=$projectID&date=yesterday"), $lang->effort->yesterdayEfforts) . '</li>';
    echo '<li id="thisweek">' . html::a(inlink('effort', "projectID=$projectID&date=thisweek"),  $lang->effort->thisWeekEfforts)  . '</li>';
    echo '<li id="lastweek">' . html::a(inlink('effort', "projectID=$projectID&date=lastweek"),  $lang->effort->lastWeekEfforts)  . '</li>';
    echo '<li id="thismonth">'. html::a(inlink('effort', "projectID=$projectID&date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
    echo '<li id="lastmonth">'. html::a(inlink('effort', "projectID=$projectID&date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
    echo '<li id="all">'      . html::a(inlink('effort', "projectID=$projectID&date=all"),       $lang->effort->allDaysEfforts)   . '</li>';
    echo "<li id='$today'>"   . html::input('date', $today, "class='form-date form-control' onchange=changeDate($projectID,this.value)") . '</li>';
    echo "<li id='account' class='w-150px'>" . html::select('account', $users, $account, "class='form-control chosen' onchange=changeUser($projectID,'$date',this.value)") . '</li>';
    ?>
  </ul>
  <div class='actions'>
    <?php common::printIcon('effort', 'export', "account=$account&orderBy=date_asc", '', 'button', '', '', 'export iframe');?>
  </div>
</div>
<div class='c-both'></div>
<form method='post' action='<?php echo $this->createLink('effort', 'batchEdit', "from=browse&account=" . ($account == 'all' ? '' : $account))?>'>
<table class='table table-condensed table-hover table-striped tablesorter table-fixed'>
  <?php $vars = "projectID=$projectID&date=$date&account=$account&orderBy=%s&recTotal=$pager->recTotal&recPerPage=$pager->recPerPage"; ?>
  <thead>
    <tr class='colhead'>
      <th class='w-id'>  <?php common::printOrderLink('id',         $orderBy, $vars, $lang->idAB);?></th>
      <th class='w-date'><?php common::printOrderLink('date',       $orderBy, $vars, $lang->effort->date);?></th>
      <th class='w-80px'><?php common::printOrderLink('account',    $orderBy, $vars, $lang->effort->account);?></th>
      <th>               <?php common::printOrderLink('work',       $orderBy, $vars, $lang->effort->work);?></th>
      <th class='w-80px'><?php common::printOrderLink('consumed',   $orderBy, $vars, $lang->effort->consumed);?></th>
      <th class='w-80px'><?php common::printOrderLink('left',       $orderBy, $vars, $lang->effort->left);?></th>
      <th width='350'>   <?php common::printOrderLink('objectType', $orderBy, $vars, $lang->effort->objectType);?></th>
    </tr>
  </thead>
  <tbody>
  <?php $times = 0?>
  <?php foreach($efforts as $effort):?>
  <tr class='a-center'>
    <td class='a-center'>
      <input type='checkbox' name='effortIDList[]'  value='<?php echo $effort->id;?>'/>
      <?php printf('%03d', $effort->id);?>
    </td>
    <td><?php echo $effort->date;?></td>
    <td><?php echo $accounts[$effort->account];?></td>
    <td class='a-left'><?php echo html::a($this->createLink('effort', 'view', "id=$effort->id&from=my", '', true), $effort->work, '', "class='effortview iframe'");?></td>
    <td><?php echo $effort->consumed;?></td>
    <td><?php echo $effort->left;?></td>
    <td class='a-left'><?php if($effort->objectType != 'custom') echo html::a($this->createLink($effort->objectType, 'view', "id=$effort->objectID"),$effort->objectTitle);?></td>
  </tr>
  <?php $times += $effort->consumed;?>
  <?php endforeach;?>
  </tbody>
  <tfoot>
    <tr>
      <td colspan='7'>
        <div class='table-actions clearfix'>
          <?php
          if($efforts)
          {
              echo html::selectAll() . html::selectReverse();
              if(common::hasPriv('effort', 'batchEdit')) echo html::submitButton($lang->effort->batchEdit);
          }
          if($times) printf('<div class="text">' . $lang->company->effort->timeStat . '</div>', $times);
          ?>
        </div>
        <?php $pager->show();?>
      </td>
    </tr>
  </tfoot>
</table>
</form>
<script>
$(function()
{
    $('#<?php echo $date;?>').addClass('active');
});
</script>
<?php include '../../../common/view/footer.html.php';?>
