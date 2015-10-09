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
<?php include '../../../common/view/tablesorter.html.php';?>
<?php include '../../../common/view/datepicker.html.php';?>
<?php include './featurebar.html.php';?>
<div class='sub-featurebar'>
  <ul class='nav'>
    <?php
    echo '<li id="today">'    . html::a(inlink('effort', "account=$account&date=today"),     $lang->effort->todayEfforts)     . '</li>';
    echo '<li id="yesterday">'. html::a(inlink('effort', "account=$account&date=yesterday"), $lang->effort->yesterdayEfforts) . '</li>';
    echo '<li id="thisweek">' . html::a(inlink('effort', "account=$account&date=thisweek"),  $lang->effort->thisWeekEfforts)  . '</li>';
    echo '<li id="lastweek">' . html::a(inlink('effort', "account=$account&date=lastweek"),  $lang->effort->lastWeekEfforts)  . '</li>';
    echo '<li id="thismonth">'. html::a(inlink('effort', "account=$account&date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
    echo '<li id="lastmonth">'. html::a(inlink('effort', "account=$account&date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
    echo '<li id="all">'      . html::a(inlink('effort', "account=$account&date=all"),       $lang->effort->allDaysEfforts)   . '</li>';
    ?>
    <script>$('#<?php echo $type;?>').addClass('active')</script>
  </ul>
</div>
<form method='post' action='<?php echo $this->createLink('effort', 'batchEdit', "from=browse&account=$account")?>'>
<table class='table tablesorter table-fixed'>
  <thead>
  <tr class='colhead'>
    <th class='w-id'><?php echo $lang->idAB;?></th>
    <th class='w-date'><?php echo $lang->effort->date;?></th>
    <th class='w-80px'><?php echo $lang->effort->consumed;?></th>
    <th width='350'><?php echo $lang->effort->objectType;?></th>
    <th><?php echo $lang->effort->work;?></th>
  </tr>
  </thead>
  <tbody>
  <?php $times = 0?>
  <?php foreach($efforts as $effort):?>
  <tr class='a-center'>
    <td class='a-left'>
      <input type='checkbox' name='effortIDList[]'  value='<?php echo $effort->id;?>'/>
      <?php printf('%03d', $effort->id);?>
    </td>
    <td><?php echo $effort->date;?></td>
    <td><?php echo $effort->consumed;?></td>
    <td class='a-left'><?php if($effort->objectType != 'custom') echo html::a($this->createLink($effort->objectType, 'view', "id=$effort->objectID"),$effort->objectTitle);?></td>
    <td class='a-left'><?php echo html::a($this->createLink('effort', 'view', "id=$effort->id&from=my"), $effort->work);?></td>
  </tr>
  <?php $times += $effort->consumed;?>
  <?php endforeach;?>
  </tbody>
  <tfoot>
    <tr>
      <td colspan='5'>
        <div class='table-actions clearfix'>
          <div class='btn-group'><?php echo html::selectButton();?></div>
          <?php
          if(common::hasPriv('effort', 'batchEdit')) echo html::submitButton($lang->effort->batchEdit);
          if($times) printf('<div class="text">' . $lang->company->effort->timeStat . '</div>', $times);
          ?>
        </div>
        <?php $pager->show();
        ?>
      </td>
    </tr>
  </tfoot>
</table>
</form>
<?php include '../../../common/view/footer.html.php';?>
