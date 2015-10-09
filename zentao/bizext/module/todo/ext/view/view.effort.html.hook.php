<?php 
$this->app->loadlang('effort');
$effortHtml = $this->loadModel('effort')->createAppendLink('todo', $todo->id);
?>
<script language='Javascript'>
$(function()
{
    $('.panel-footer').prepend(<?php echo json_encode($effortHtml);?>);
    $(".effort").colorbox({width:1024, height:600, iframe:true, transition:'elastic'});
})
</script>
