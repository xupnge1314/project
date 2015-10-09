<?php include '../../common/view/m.header.html.php';?>
</div>
<form method='post' target='hiddenwin'>
  <h3><?php echo $lang->effort->create;?></h3>
  <table class='table-1'>
    <tr>
      <td class="w-70px"><?php echo $lang->effort->consumed;?></td>
      <td><?php echo html::input('consumed[1]', '');?></td>
    </tr>
    <tr>
      <td><?php echo $lang->effort->left;?></td>
      <td><?php echo html::input('left[1]', '');?></td>
    </tr>
    <tr>
      <td><?php echo $lang->comment;?></td>
      <td><?php echo html::textarea('work[1]', '', "data-mini='true'");?></td>
    </tr>
    <tr class='a-center'>
      <td colspan="2">
        <?php 
        echo html::submitButton();
        echo html::hidden('dates[1]', helper::today());
        echo html::hidden("id[1]", 1);
        echo html::hidden("objectType[1]", $objectType);
        echo html::hidden("objectID[1]", $objectID);
        ?>
      </td>
    </tr>
  </table>
</form>
<?php include '../../common/view/m.footer.html.php';?>
