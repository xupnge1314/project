<?php
/**
 * The view file of my module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     calendar 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/header.html.php';?>
<?php include '../../../common/ext/view/calendar.html.php'?>
<?php include './featurebar.html.php';?>
<div class='sub-featurebar'>
  <ul class='nav'>
    <li id='effortcalendar' class='active'><?php echo html::a(inlink('effortcalendar', "account=$account"), $lang->user->effortcalendar)?></li>
    <?php
    echo '<li id="today">'    . html::a(inlink('effort', "account=$account&date=today"),     $lang->effort->todayEfforts)     . '</li>';
    echo '<li id="yesterday">'. html::a(inlink('effort', "account=$account&date=yesterday"), $lang->effort->yesterdayEfforts) . '</li>';
    echo '<li id="thisweek">' . html::a(inlink('effort', "account=$account&date=thisweek"),  $lang->effort->thisWeekEfforts)  . '</li>';
    echo '<li id="lastweek">' . html::a(inlink('effort', "account=$account&date=lastweek"),  $lang->effort->lastWeekEfforts)  . '</li>';
    echo '<li id="thismonth">'. html::a(inlink('effort', "account=$account&date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
    echo '<li id="lastmonth">'. html::a(inlink('effort', "account=$account&date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
    echo '<li id="all">'      . html::a(inlink('effort', "account=$account&date=all"),       $lang->effort->allDaysEfforts)   . '</li>';
    ?>
  </ul>
</div>
<script>$('#effortTab').addClass('active')</script>
<div class='calendar' id='calendar'></div>
<script language='javascript'>
$(document).ready(function() {
    var tasks   = <?php echo $efforts?>;

    $('#calendar').calendar({
        startView:defaultView,
        dragThenDrop:false,
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
</script>
<?php include '../../../common/view/footer.html.php';?>
