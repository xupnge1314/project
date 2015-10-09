<?php include '../../../common/view/header.lite.html.php';?>
<script>
function setDownloading()
{
    if($.browser.opera) return true;   // Opera don't support, omit it.

    $.cookie('downloading', 0);
    time = setInterval("closeWindow()", 300);
    return true;
}

function closeWindow()
{
    if($.cookie('downloading') == 1)
    {
        parent.$.closeModal();
        $.cookie('downloading', null);
        clearInterval(time);
    }
}
</script>
<form method='post' target='hiddenwin' onsubmit='setDownloading();' style='margin-top:10px'>
  <table class='table table-form' style='padding:30px'>
    <tr>
      <th class='w-100px'><?php echo $lang->setFileName;?></th>
      <td><?php echo html::input('fileName', $name, "class='form-control'");?></td>
      <td>
        <?php
        unset($lang->exportFileTypeList['csv']);
        unset($lang->exportFileTypeList['xml']);
        echo html::select('fileType',   $lang->exportFileTypeList, '', 'onchange=switchEncode(this.value) class="form-control"');
        ?>
      </td>
      <td><?php echo html::submitButton();?></td>
    </tr>
  </table>
</form>
<?php include '../../../common/view/footer.lite.html.php';?>
