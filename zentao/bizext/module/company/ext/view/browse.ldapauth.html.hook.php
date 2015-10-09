<?php $ldapHtml = common::hasPriv('user', 'importLDAP') ? html::a($this->createLink('user', 'importLDAP'), $lang->user->importLDAP) : '';?>
<script language='Javascript'>
$(function()
{
    $('.side .side-body .panel-body .text-right').append('<br />' + <?php echo json_encode($ldapHtml)?>);
})
</script>
