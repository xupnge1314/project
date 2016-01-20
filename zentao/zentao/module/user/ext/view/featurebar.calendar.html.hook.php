<?php if(common::hasPriv('user', 'effortcalendar')):?>
<script>
$('#featurebar ul.nav #effortTab a').attr('href', <?php echo json_encode(inlink('effortcalendar', "account=$account"));?>);
</script>
<?php endif;?>
<?php if(common::hasPriv('user', 'todocalendar')):?>
<script>
$('#featurebar ul.nav #todoTab a').attr('href', <?php echo json_encode(inlink('todocalendar', "account=$account"));?>);
</script>
<?php endif;?>
