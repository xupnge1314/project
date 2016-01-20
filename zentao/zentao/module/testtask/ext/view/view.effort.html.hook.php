<?php $effortHtml = $this->loadModel('effort')->createAppendLink('testtask', $task->id); ?>
<script language='Javascript'>
$('.actions').each(function()
{
    $(this).children('.btn-group:first').children('a:first').before(<?php echo json_encode($effortHtml);?>);
});
$(function()
{
    $(".effort").colorbox({width:1024, height:600, iframe:true, transition:'elastic'});
});
</script>
