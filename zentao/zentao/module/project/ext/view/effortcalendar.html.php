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
<?php include '../../../common/ext/view/calendar.html.php'?>
<?php include '../../../common/view/datepicker.html.php';?>
<?php include '../../../common/view/tablesorter.html.php';?>

<form method='post' target='hiddenwin' action='<?php echo $this->createLink('effort', 'import2Today');?>' id='effortform'>
  <div id='featurebar'>
    <ul class='nav'>
      <?php 
      echo '<li id="calendarTab" class="active">' . html::a(inlink('effortcalendar', "projectID=$projectID"), $lang->effort->calendar) . '</li>';
      echo '<li id="today">'    . html::a(inlink('effort', "projectID=$projectID&date=today"),     $lang->effort->todayEfforts)    . '</li>';
      echo '<li id="yesterday">'. html::a(inlink('effort', "projectID=$projectID&date=yesterday"), $lang->effort->yesterdayEfforts). '</li>';
      echo '<li id="thisweek">' . html::a(inlink('effort', "projectID=$projectID&date=thisweek"),  $lang->effort->thisWeekEfforts) . '</li>';
      echo '<li id="lastweek">' . html::a(inlink('effort', "projectID=$projectID&date=lastweek"),  $lang->effort->lastWeekEfforts) . '</li>';
      echo '<li id="thismonth">'. html::a(inlink('effort', "projectID=$projectID&date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
      echo '<li id="lastmonth">'. html::a(inlink('effort', "projectID=$projectID&date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
      echo '<li id="all">'      . html::a(inlink('effort', "projectID=$projectID&date=all"),       $lang->effort->allDaysEfforts)  . '</li>';
      echo "<li id='account' class='w-150px'>" . html::select('account', $users, $account, "onchange='changeUser($projectID, this.value)' class='form-control chosen'") . '</li>';
      ?>
    </ul>
  </div>
  <div id='calendar' class='calendar'></div>
</form>
<script>
$(document).ready(function() {
    var tasks = <?php echo $efforts?>;

    $('#calendar').calendar({
        startView:defaultView,
        dragThenDrop:true,
        data:
        {
            calendars:
            [
                {name: 'success', color: '#229f24'}
            ],
            events: tasks 
        },
        clickEvent: function(event)
        {
            event = event.event;
            if(event.url) $.modalTrigger({width: '80%', url: event.url});
        },
        display:function(event)
        {
            if(event.view == 'month') adjustWidth();
        }
    });
}); 

function changeUser(projectID, account)
{
    location.href = createLink('project', 'effortcalendar', 'projectID=' + projectID + '&account=' + account); 
}
</script>
<?php include '../../../common/view/footer.html.php';?>
