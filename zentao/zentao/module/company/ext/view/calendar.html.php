<?php
/**
 * The view file of company module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     company 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php
if($iframe == 'yes')
{
    $type = 'effort';
    die(include './showdata.html.php');
}
?>
<?php include '../../../common/view/header.html.php';?>
<?php include '../../../common/view/datepicker.html.php';?>
<?php include '../../../common/ext/view/datatable.html.php';?>
<div id='featurebar'>
  <ul class='nav'>
  <?php 
  echo '<li id="calendarTab" class="active">' . html::a(inlink('calendar'), $lang->company->calendar)    . '</li>';
  echo '<li id="today">'    . html::a(inlink('effort', "date=today"),     $lang->effort->todayEfforts)     . '</li>';
  echo '<li id="yesterday">'. html::a(inlink('effort', "date=yesterday"), $lang->effort->yesterdayEfforts) . '</li>';
  echo '<li id="thisweek">' . html::a(inlink('effort', "date=thisweek"),  $lang->effort->thisWeekEfforts)  . '</li>';
  echo '<li id="lastweek">' . html::a(inlink('effort', "date=lastweek"),  $lang->effort->lastWeekEfforts)  . '</li>';
  echo '<li id="thismonth">'. html::a(inlink('effort', "date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
  echo '<li id="lastmonth">'. html::a(inlink('effort', "date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
  echo '<li id="all">'      . html::a(inlink('effort', "date=all"),       $lang->effort->allDaysEfforts)   . '</li>';
  echo "<li>"  . html::input('date', (int)$date == 0 ? $lang->company->effort->selectDate : $today, 'class="form-control form-date dp-applied" style="width:60px;" onchange=changeDate(this.value)') . '</li>';
  echo "<li>"  . html::select('account', $users, $account, "onchange=changeUser(this.value) class='form-control chosen'") . '</li>';
  echo "<li>"  . html::select('product', $products, $product, "onchange=changeProduct(this.value) class='form-control chosen'") . '</li>';
  echo "<li>"  . html::select('project', $projects, $project, "onchange=changeProject(this.value) class='form-control chosen'") . '</li>';
  ?>
  </ul>
</div>
<?php 
for($i = strtotime($begin); $i <= strtotime($end); $i +=86400)
{
    $days[] = date('Y-m-d', $i); 
}
?>
<div class='side'>
  <a class='side-handle' data-id='companyTree'><i class='icon-caret-left'></i></a>
  <form method='post' class='form-condensed' target='hiddenwin' action='<?php echo $this->createLink('company', 'calendar');?>'>
    <div class='panel panel-sm'>
      <div class='panel-heading'><strong><?php echo $lang->company->effortCalendar;?></strong></div>
      <div class='panel-body'>
        <div class='form-group'>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->company->dept;?></span>
            <?php echo html::select('dept', $mainDepts, $parent, "class='form-control chosen'");?>
          </div>
        </div>
        <div class='form-group'>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->company->beginDate;?></span>
            <?php echo html::input('begin', $begin, 'class="form-control form-date"');?>
          </div>
        </div>
        <div class='form-group'>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->company->endDate;?></span>
            <?php echo html::input('end', $end, 'class="form-control form-date"');?>
          </div>
        </div>
        <div class='form-group'>
          <div class='input-group'>
            <label class="checkbox-inline">
              <input type="checkbox" name="showAll" value="1" id="showAll" <?php echo $showAll ? 'checked' : ''?>>
              <?php echo $lang->company->showAll?>
            </label>
          </div>
        </div>
        <div class='form-group'><?php echo html::submitButton($lang->company->effort->view);?></div>
      </div>
    </div>
  </form>
</div>
<div class="main">
  <div id='showdata' data-url='<?php echo $this->createLink('company', 'calendar', "dept=$parent&begin=" . strtotime($begin) . "&end=" . strtotime($end) . "&showAll=$showAll&iframe=yes")?>'>
    <div style='background: #f1f1f1; padding: 40px;' class='text-center'><i class='icon-spinner icon-spin' style='font-size: 28px'></i></div>
  </div>
</div>
<?php include '../../../common/view/footer.html.php';?>
