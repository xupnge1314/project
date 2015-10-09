<script>
$(function()
{
    $('#poweredby a:first').html('<i class="icon-zentao"></i> <?php echo $lang->zentaoPMS . str_replace('pro', $lang->proName . ' ', $config->version)?>');
})
</script>
<?php if(isset($this->session->ioncubeProperties->expireDate) and $this->session->ioncubeProperties->expireDate):?>
<?php $expireDate = $this->session->ioncubeProperties->expireDate;?>
<?php $limitUsers  = isset($this->session->ioncubeProperties->user) ? $this->session->ioncubeProperties->user : 0;?>
<script>
<?php
$expireDate = strtolower($expireDate) == 'all life' ? $lang->forever : sprintf($lang->expireDate, $expireDate);
$limitUsers = $limitUsers == 0 ? $lang->unlimited : sprintf($lang->licensedUser, $limitUsers);
?>
$('#poweredby a:first').attr('title', '<?php echo $expireDate . "，" . $limitUsers; ?>');
</script>
<?php endif;?>
<?php if(isset($this->session->ioncubeProperties->company) and $this->session->ioncubeProperties->company == 'try'):?>
<script>
$('#poweredby a:first').after("(<?php echo $config->version . ' ' . $lang->try;?>)");
</script>
<?php endif;?>
<?php if(isset($this->session->ioncubeProperties->userLimited) and $this->session->ioncubeProperties->userLimited):?>
<script>
$(function()
{
    $('#footer #crumbs').after("<?php echo $lang->noticeLimited?>");
    $('#userLimited').css('margin-left', ($('#footer').width() - $('#crumbs').width() - $('#poweredby').width() - $('#userLimited').width()) / 2);
})    
</script>
<?php endif;?>
