<?php
/**
 * The view file of calendar module of ZenTaoPMS.
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
<?php include '../../../common/view/datepicker.html.php';?>
<?php include '../../../common/ext/view/calendar.html.php';?>
<body>
<div id='featurebar'>
  <ul class='nav'>
    <?php 
    echo "<li id='calendarTab' class='active'>" . html::a($this->createLink('effort', 'calendar', "account=$account"), $lang->effort->calendar) . '</li>';
    echo '<li id="today">'    . html::a($this->createLink('my', 'effort', "date=today"),     $lang->effort->todayEfforts)     . '</li>';
    echo '<li id="yesterday">'. html::a($this->createLink('my', 'effort', "date=yesterday"), $lang->effort->yesterdayEfforts) . '</li>';
    echo '<li id="thisweek">' . html::a($this->createLink('my', 'effort', "date=thisweek"),  $lang->effort->thisWeekEfforts)  . '</li>';
    echo '<li id="lastweek">' . html::a($this->createLink('my', 'effort', "date=lastweek"),  $lang->effort->lastWeekEfforts)  . '</li>';
    echo '<li id="thismonth">'. html::a($this->createLink('my', 'effort', "date=thismonth"), $lang->effort->thisMonthEfforts) . '</li>';
    echo '<li id="lastmonth">'. html::a($this->createLink('my', 'effort', "date=lastmonth"), $lang->effort->lastMonthEfforts) . '</li>';
    echo '<li id="all">'      . html::a($this->createLink('my', 'effort', "date=all"),       $lang->effort->allDaysEfforts)   . '</li>';
    echo "<li id='bydate'>"   . html::input('date', $date, "class='w-date date form-date form-control' onchange=changeDate(this.value)") . '</li>';
    ?>
  </ul>
  <div class='actions'>
    <?php 
    $date = str_replace('-', '', $date);
    common::printIcon('effort', 'batchCreate', "date=$date");
    ?>
  </div>
</div>
<div id='calendar' class='calendar'></div>
<script language='javascript'>
$(document).ready(function()
{
    var tasks = <?php echo $efforts?>;

    $('#calendar').calendar(
    {
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
        clickCell:function(event)
        {
            if(event.view == 'month')
            {
                date = event.date;
                var year  = date.getFullYear();
                var month = date.getMonth();
                var day   = date.getDate();
                if(year < y || (year == y && month < m) || (year == y && month == m && day <= d))
                {
                    month = month + 1;
                    if (day <= 9) day ='0'+ day;
                    if (month <= 9) month ='0'+ month;
                    var efforturl = createLink('effort', 'batchCreate', "date="+year+''+month+''+day, '', true);

                    $.modalTrigger({width: '85%', url: efforturl});
                }
            }
        },
        display: function(event)
        {
            if(event.view == 'month')
            {
                appendAddLink('effort');
                adjustWidth();
            }
        }
    });
});  

function changeDate(date)
{
    date = date.replace(/\-/g, '');
    location.href = createLink('my', 'effort', 'type=' + date);
}
function refreshCaldar(account)
{
    if(typeof(account) == 'undefined') account = '';
    $.getJSON(createLink('effort', 'ajaxGetEfforts', 'account=' + account), function(data)
    {
        var calendar    = $('#calendar').data('zui.calendar');
        calendar.events = [];

        tasks = data;
        calendar.addEvents(tasks);
        calendar.display();
    });
}
</script>
<?php include '../../../common/view/footer.html.php';?>
