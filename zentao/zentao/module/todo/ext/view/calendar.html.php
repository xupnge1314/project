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
<?php include '../../../common/view/datepicker.html.php';?>
<?php include '../../../common/ext/view/calendar.html.php';?>
<div id='featurebar'>
  <ul class='nav'>
    <?php 
    echo "<li id='calendarTab' class='active'>" . html::a($this->createLink('todo', 'calendar', "account=$account"), $lang->todo->calendar) . '</li>';
    foreach($lang->todo->periods as $period => $label)
    {
        $vars = "date=$period";
        if($period == 'before') $vars .= "&account={$app->user->account}&status=undone";
        echo "<li id='$period'>" . html::a($this->createLink('my', 'todo', $vars), $label) . '</li>';
    }
    echo "<li id='byDate' class='datepicker-wrapper datepicker-date'>" . html::input('date', $date,"class='form-control form-date' onchange='changeDate(this.value)'") . '</li>';
    ?>
  </ul>
  <div class='actions'>
    <?php 
      common::printIcon('todo', 'batchCreate');
      common::printIcon('todo', 'create', "date=" . str_replace('-', '', $date));
    ?>
  </div>
</div>
<div class='calendar' id='calendar'></div>
<?php js::set('confirmBug', $lang->todo->confirmBug)?>
<?php js::set('confirmTask', $lang->todo->confirmTask)?>
<script language='javascript'>
var tasks = <?php echo $todos?>;
$(document).ready(function() {
    $('#calendar').calendar({
        startView:defaultView,
        dragThenDrop:true,
        data:
        {
            calendars:
            [
                {name: 'done', color: '#229f24'},
                {name: 'doing', color: '#d2322d'},
                {name: 'wait', color: '#108bf1'}
            ],
            events: tasks 
        },
        clickEvent: function(event)
        {
            doneColor = this.data.calendars[0].color;
            todo      = event.event;
            if(todo.className == 'undone' && typeof(done) != 'undefined' && done == 1)
            {
                $.get(createLink('todo', 'finish', "id=" + todo.id), function(data)
                {
                    $('.events .event[data-id=' + todo.id + ']').find('.action').remove();
                    $('.events .event[data-id=' + todo.id + ']').css("background-color", doneColor);
                    if(todo.type == 'task' && confirm(confirmTask.replace('%s', todo.idvalue)))
                    {
                        location = createLink(todo.type, 'view', 'id=' + todo.idvalue);
                    }
                    else if(todo.type == 'bug' && confirm(confirmBug.replace('%s', todo.idvalue)))
                    {
                        location = createLink(todo.type, 'view', 'id=' + todo.idvalue);
                    }
                });
                done = 0;
                return false;
            }
            $.modalTrigger({width: '80%', url: todo.url});
        },
        clickCell:function(event)
        {
            if(event.view == 'month'){
                var date = event.date;
                var year   = date.getFullYear();
                var month  = date.getMonth();
                var day    = date.getDate();
                if(year > y || (year == y && month > m) || (year == y && month == m && day >= d))
                {
                    month = month + 1;
                    if (day <= 9) day ='0'+ day;
                    if (month <= 9) month ='0'+ month;
                    var todourl = createLink('todo', 'batchCreate', "date="+year+''+month+''+day, '', true);

                    $.modalTrigger({width: '85%', url: todourl});
                }
            }
        },
        display: function(event)
        {
            $('#calendar tbody.month-days td.cell-day div.day div.content div.events div.event').each(function()
            {
                id = $(this).attr('data-id');
                todo = getTodo(id);
                if(todo && todo.className=='undone') addDoneButton($(this));
            });
            if(event.view == 'month')
            {
                appendAddLink('todo');
                adjustWidth();
            }
        },
        beforeChange:function(event)
        {
            if(event.change == 'start')
            {
                var newMilliseconds = event.to.getTime();
                $.get(createLink('todo', 'ajaxChangeDays', "id=" + event.event.id + "&millseconds=" + newMilliseconds), function()
                {
                    refreshCaldar('<?php echo $this->app->user->account?>');
                });
            }
        },
        change:function(event){adjustWidth();}
    });

});  

function getTodo(id)
{
    for(var i in tasks)
    {
        var t = tasks[i];
        if(t.id == id) return t;
    }
    return null;
}

function changeDate(date)
{
    date = date.replace(/\-/g, '');
    link = createLink('my', 'todo', 'type=' + date);
    location.href=link;
}

function addDoneButton(element)
{
    $(element).append(<?php echo json_encode("<div class='action'>" . html::a('javascript:;', $lang->todo->finish, '', "onmousedown='done=1'") . '</span>')?>).closest('.event').addClass('with-action')
}
function refreshCaldar(account)
{
    if(typeof(account) == 'undefined') account = '';
    $.getJSON(createLink('todo', 'ajaxGetTodos', 'account=' + account), function(data)
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
