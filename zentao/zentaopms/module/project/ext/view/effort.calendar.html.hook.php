<?php
$calendar = common::hasPriv('project', 'effortcalendar') ? trim("<li id='calendarTab'>" . html::a(helper::createLink('project', 'effortcalendar', "prejectID=$projectID"), $lang->effort->calendar)) . ' ' : '';
?>
<script language='Javascript'>
$(function(){
    $('#today').before("<?php echo $calendar;?>");
    $('#all a').css('border', 'none');
    $('#submenueffort').parent().addClass('active');
})
</script>
