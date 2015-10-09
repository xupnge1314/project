<?php
/**
 * The control file of my module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     my 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/header.html.php';?>
<?php include '../../../common/view/datepicker.html.php';?>
<div id='featurebar'>
  <ul class='nav'>
    <?php
    echo '<li id="today">'    . html::a(inlink('effort', "date=today"),     $lang->effort->todayEfforts)     . '</li>';
    echo '<li id="yesterday">'. html::a(inlink('effort', "date=yesterday"), $lang->effort->yesterdayEfforts) . '</li>';
    echo '<li id="thisweek">' . html::a(inlink('effort', "date=thisweek"),  $lang->effort->thisWeekEfforts)  . '</li>';
    echo '<li id="lastweek">' . html::a(inlink('effort', "date=lastweek"),  $lang->effort->lastWeekEfforts)  . '</li>';
    echo '<li id="thismonth">'. html::a(inlink('effort', "date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
    echo '<li id="lastmonth">'. html::a(inlink('effort', "date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
    echo '<li id="all">'      . html::a(inlink('effort', "date=all"),       $lang->effort->allDaysEfforts)   . '</li>';
    echo "<li id='$date'>" . html::input('date', $date, 'class="select-7 form-date form-control" onchange=changeDate(this.value)') . '</li>';
    ?>
  </ul>
  <div class='actions'>
    <?php 
    $date = str_replace('-', '', $date);
    if(common::hasPriv('effort', 'export')) echo html::a($this->createLink('effort', 'export', "account=$account&orderBy=date_asc"), '<i class="icon-download-alt"></i> ' . $lang->effort->export, '', "class='btn export'");
    common::printIcon('effort', 'batchCreate', "date=$date");
    ?>
  </div>
</div>
<div class='c-both'></div>
<form action='<?php echo $this->createLink('effort', 'batchEdit', "from=browse")?>' method='post'>
<table class='table table-condensed table-hover table-striped tablesorter table-fixed'>
  <?php $vars = "type=$type&orderBy=%s&recTotal=$pager->recTotal&recPerPage=$pager->recPerPage"; ?>
  <thead>
  <tr class='colhead'>
    <th class='w-id'>   <?php common::printOrderLink('id',         $orderBy, $vars, $lang->idAB);?></th>
    <th class='w-date'> <?php common::printOrderLink('date',       $orderBy, $vars, $lang->effort->date);?></th>
    <th>                <?php common::printOrderLink('work',       $orderBy, $vars, $lang->effort->work);?></th>
    <th class='w-100px'><?php common::printOrderLink('consumed',   $orderBy, $vars, $lang->effort->consumed . '('. $lang->effort->hour . ')');?></th>
    <th class='w-100px'><?php common::printOrderLink('left',       $orderBy, $vars, $lang->effort->left . '('. $lang->effort->hour . ')');?></th>
    <th width='350'>    <?php common::printOrderLink('objectType', $orderBy, $vars, $lang->effort->objectType);?></th>
    <th class='w-80px'> <?php echo $lang->actions;?></th>
  </tr>
  </thead>
  <tbody>
  <?php $times = 0?>
  <?php foreach($efforts as $effort):?>
  <tr class='a-center'>
    <td>
      <input type='checkbox' name='effortIDList[]'  value='<?php echo $effort->id;?>'/>
      <?php printf('%03d', $effort->id);?>
    </td>
    <td><?php echo $effort->date;?></td>
    <td class='a-left'><?php echo html::a($this->createLink('effort', 'view', "id=$effort->id&from=my"), $effort->work);?></td>
    <td><?php echo $effort->consumed;?></td>
    <td><?php echo $effort->objectType == 'task' ? $effort->left : '';?></td>
    <td class='a-left'><?php if($effort->objectType != 'custom') echo html::a($this->createLink($effort->objectType, 'view', "id=$effort->objectID"),$effort->objectTitle);?></td>
    <td>
      <?php 
      common::printIcon('effort', 'edit',   "id=$effort->id", '', 'list');
      common::printIcon('effort', 'delete', "id=$effort->id", '', 'list', '', 'hiddenwin');
      ?>
    </td>
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
<?php
if($type == 'bydate')
{
    if($date == date('Y-m-d'))
    {
        $type = 'today';
    }
    else if($date == date('Y-m-d', strtotime('-1 day')))
    {
        $type = 'yesterday'; 
    }
}
?>
<script>$('#<?php echo $type;?>').addClass('active')</script>
<?php include '../../../common/view/footer.html.php';?>
