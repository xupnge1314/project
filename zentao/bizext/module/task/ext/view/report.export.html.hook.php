<?php if(common::hasPriv('report', 'export')):?>
<script>
$(function()
{
    $('#titlebar .actions').prepend(<?php echo json_encode(html::a($this->createLink('report', 'export', 'module=' . $this->app->getModuleName()), $lang->export, '', "class='btn btn-primary' id='exportchart'"))?>);
    $('#exportchart').modalTrigger();
});
</script>
<?php endif;?>
