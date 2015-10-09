<?php if(version_compare($config->installedVersion, 'pro4.6', '<')):?>
<?php $this->loadModel('setting')->updateVersion($config->installedVersion);?>
<script>
$(function()
{
    $('a#tohome').attr('href', '<?php echo inlink('end')?>');
    $('.adbox').before("<div id='resultBox' class='alert alert-info'><p><?php echo $lang->upgrade->needBuild;?><a href='<?php echo $this->createLink('search', 'buildIndex')?>' id='execButton' class='btn btn-primary btn-sm'><?php echo $lang->upgrade->buildIndex;?></a></p></div>");
    $('#execButton').click(function()
    {
        $('#execButton').hide();
        $.getJSON($(this).attr('href'), function(response)
        {
           if(response.result == 'finished')
           {
              $('#resultBox').append("<li class='text-success'>" + response.message + "</li>");
              $.get('<?php echo inlink('end')?>');
              $('a#tohome').attr('href', 'index.php');
              return false;
           }
           else
           {
               $('#execButton').attr('href', response.next);
               $('#resultBox').append("<li class='text-success'>" + response.message + "</li>");
               return $('#execButton').click();
           }
        }); 
        return false;
    });
})
</script>
<?php else:?>
<?php
@unlink($this->app->getAppRoot() . 'www/install.php');
@unlink($this->app->getAppRoot() . 'www/upgrade.php');
?>
<?php endif;?>
