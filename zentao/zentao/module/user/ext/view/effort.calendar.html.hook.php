<?php if(common::hasPriv('user', 'effortcalendar')):?>
<script>
$('.sub-featurebar ul.nav').prepend(<?php echo json_encode("<li id='effortcalendar'>" . html::a(inlink('effortcalendar', "account=$account"), $lang->user->effortcalendar) . '<li>');?>);
</script>
<?php endif;?>
