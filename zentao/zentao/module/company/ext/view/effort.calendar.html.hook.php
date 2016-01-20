<?php $calendar = "<li id='calendarTab'>" . html::a(inlink('calendar'), $lang->company->calendar) . '</li>';?>
<script language='Javascript'>
$('#today').before(<?php echo json_encode($calendar);?>);
</script>
