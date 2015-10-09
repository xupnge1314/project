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
<?php include '../../view/featurebar.html.php';?>
<div class='sub-featurebar'>
  <ul class='nav'>
    <li id='todocalendar' class='active'><?php echo html::a(inlink('todocalendar', "account=$account"), $lang->user->todocalendar)?></li>
    <?php 
    foreach($lang->todo->periods as $period => $label)
    {
        $vars = "account={$account}&date=$period";
        if($period == 'before') $vars .= "&status=undone";
        echo "<li id='$period'>" . html::a(inlink('todo', $vars), $label) . '</li> ';
    }
    ?>
  </ul>
</div>
<div class='calendar' id='calendar'></div>
<script language='javascript'>
$('#todoTab').addClass('active');
$(document).ready(function() {
    var tasks   = <?php echo $todos?>;

    $('#calendar').calendar(
    {
        startView:defaultView,
        dragThenDrop:false,
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
