<?php
$calendar = common::hasPriv('todo', 'calendar') ? trim("<li id='calendarTab'>" . html::a(helper::createLink('todo', 'calendar', "account=$account"), $lang->todo->calendar))  . ' ' : '';
?>
<script language='Javascript'>
$(function(){
    $('#today').before("<?php echo $calendar;?>");
    $('#before a').css('border', 'none');
    $('#submenutodo').parent().addClass('active');
})
</script>
