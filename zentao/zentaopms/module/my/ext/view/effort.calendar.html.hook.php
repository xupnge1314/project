<?php
$calendar = common::hasPriv('effort', 'calendar') ? trim("<li id='calendarTab'>" . html::a(helper::createLink('effort', 'calendar'), $lang->effort->calendar)) . ' ' : '';
?>
<script language='Javascript'>
$(function(){
    $('#today').before("<?php echo $calendar;?>");
    $('#all a').css('border', 'none');
    $('#submenueffort').parent().addClass('active');
})
</script>
