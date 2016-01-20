<?php include '../../../common/view/header.html.php';?>
<div id='titlebar'>
  <div class='heading'><?php echo $lang->user->importLDAP?></div>
</div>
<form target='hiddenwin' method='post'>
<table class='table table-fixed active-disabled'>
  <thead>
  <tr class='text-center'>
    <th class='w-100px'><?php echo $lang->user->id?></th>
    <th class='w-200px'><?php echo $lang->user->account?></th>
    <th><?php echo $lang->user->dept?></th>
    <th><?php echo $lang->user->role?></th>
    <th><?php echo $lang->user->group?></th>
  </tr>
  </thead>
  <tbody>
  <?php foreach($users as $i => $user):?>
  <tr>
    <td><input type='checkbox' name='add[<?php echo $i?>]' value='<?php echo $i?>' checked=true> <?php printf("%03d", $i + 1)?></td>
    <td><?php echo $user['account'] . html::hidden("account[$i]", $user['account'])?></td>
    <td class='text-left' style='overflow:visible'><?php echo html::select("dept[$i]", $depts, $i == 0 ? '' : 'ditto', 'class="form-control chosen"')?></td>
    <td><?php echo html::select("role[$i]", $roles, $i == 0 ? '' : 'ditto', 'class="form-control"')?></td>
    <td><?php echo html::select("group[$i]", $groups, $i == 0 ? '' : 'ditto', 'class="form-control"')?></td>
  </tr>
  <?php endforeach;?>
  </tbody>
  <tfoot>
  <tr>
    <td colspan='5' align='left'>
    <?php echo html::selectAll() . html::selectReverse()?>
    <?php $pager->show()?>
    </td>
  </tr>
  <tr>
    <td colspan='5' align='center'><?php echo html::submitButton() . html::backButton() . '&nbsp;&nbsp;' . $lang->user->notice->checkbox?></td>
  </tr>
  </tfoot>
</table>
</form>
<?php include '../../../common/view/footer.html.php';?>
