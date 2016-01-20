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
css::import($jsRoot . 'zui/calendar/zui.calendar.min.css', $config->version);
js::import($jsRoot . 'zui/calendar/zui.calendar.min.js', $config->version);
?>
<style>
.calendar .table tr.week-days td.cell-day{vertical-align:top;}
.calendar .cell-day.current > .day {border: none}
.calendar .btn {padding-top: 4px; padding-bottom: 4px;}
.calendar .cell-day.past>.day>.content {opacity: 0.8}
.calendar .event {font-size: 12px; opacity: 0.95}
.outer .calendar .table tr > td:first-child {padding-left: 0!important;}
.calendar .event.with-action {position: relative; padding-right: 30px;}
.calendar .event.with-action .action {position: absolute; right: 0; top: 0;}
.calendar .event.with-action .action > a {display: inline-block; padding: 0 4px; color: #fff; background-color: rgba(0,0,0,0.25); line-height: 19px; padding: 0 6px;}
.calendar .event.with-action .action > a:hover {background-color: rgba(0,0,0,0.5)}
</style>
<script>
var date = new Date();
var d    = date.getDate();
var m    = date.getMonth();
var y    = date.getFullYear();

var defaultView = 'month';

function appendAddLink(place)
{
    $('#calendar tbody.month-days tr.week-days td.cell-day div.day div.heading .number').each(function()
    {
        var $this = $(this);
        $this.parent().find('.icon-plus').remove();
        thisDate = new Date($this.parents('div.day').attr('data-date'));
        year     = thisDate.getFullYear();
        month    = thisDate.getMonth();
        day      = thisDate.getDate();
        if((year > y || (year == y && month > m) || (year == y && month == m && day >= d)) && place == 'todo')
        {
            $this.after(<?php echo json_encode(" <span class='text-muted icon-plus'>&nbsp;</span>")?>)
        }
        else if((year < y || (year == y && month < m) || (year == y && month == m && day <= d)) && place == 'effort')
        {
            $this.after(<?php echo json_encode(" <span class='text-muted icon-plus'>&nbsp;</span>")?>)
        }
    });
}

function adjustWidth()
{
    var weekendEvents = 0;
    var width = 80;
    $('#calendar tbody.month-days tr.week-days').each(function()
    {
        weekendEvents += $(this).find('td').eq(5).find('.event').size();
        weekendEvents += $(this).find('td').eq(6).find('.event').size();
    });
    if(weekendEvents == 0)
    {
        $('#calendar tr.week-head th').width('auto');
        $('#calendar tr.week-head th').eq(5).width(width);
        $('#calendar tr.week-head th').eq(6).width(width - 10);
        $('#calendar tbody.month-days tr.week-days').each(function()
        {
            $(this).find('td').width('auto');
            $(this).find('td').eq(5).width(width);
            $(this).find('td').eq(6).width(width - 10);
        });
    }
    else
    {
        $('#calendar tr.week-head th').removeAttr('style');
        $('#calendar tbody.month-days tr.week-days').each(function()
        {
            $(this).find('td').removeAttr('style');
        });
    }
}
</script>
