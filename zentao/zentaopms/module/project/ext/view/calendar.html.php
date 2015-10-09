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
<?php include '../../../common/ext/view/calendar.html.php'?>
<?php include '../../view/taskheader.html.php';?>
<div class='calendar' id='calendar'></div>
<script language='javascript'>
$('#calendarTab').addClass('active');
$(document).ready(function() {
    var tasks   = <?php echo $tasks?>;

    $('#calendar').calendar({
        startView:defaultView,
        dragThenDrop:true,
        data:
        {
            calendars:
            [
                {name: 'done', color: '#229f24'},
                {name: 'pause', color: '#e48600'},
                {name: 'doing', color: '#d2322d'},
                {name: 'wait', color: '#39b3d7'},
                {name: 'cancel', color: '#999'},
                {name: 'closed', color: '#999'}
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
