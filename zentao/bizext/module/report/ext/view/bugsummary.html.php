<?php include '../../../common/view/header.html.php';?>
<?php include '../../../common/view/datepicker.html.php';?>
<style>
.rowcolor{background:#F9F9F9;}
</style>
<div id='titlebar'>
  <div class='heading'>    
    <span class='prefix'><?php echo html::icon($lang->icons['report-file']);?></span>
    <strong> <?php echo $title;?></strong>
  </div>
</div>
<div class='side'>
  <?php include '../../view/blockreportlist.html.php';?>
</div>
<div class='main'>
  <div class='row' style='margin-bottom:10px;'>
    <div class='col-sm-3'>
      <div class='input-group input-group-sm'>
        <span class='input-group-addon'><?php echo $lang->report->dept;?></span>
        <?php echo html::select('dept', $depts, $dept, "class='form-control chosen' onchange='changeParams(this)'");?>
      </div>
    </div>
  </div>
  <table class='table table-condensed table-striped table-bordered tablesorter table-fixed active-disabled' id="worksummary">
    <thead>
    <tr class='colhead'>
      <th class="w-70px"><?php echo $lang->bug->assignedTo;?></th>
      <th class="w-id"><?php echo $lang->bug->id;?></th>
      <th><?php echo $lang->bug->title;?></th>
      <th class="w-50px"><?php echo $lang->bug->pri;?></th>
      <th class="w-80px"><?php echo $lang->bug->severity;?></th>
      <th class="w-80px"><?php echo $lang->bug->openedBy;?></th>
      <th class="w-80px"><?php echo $lang->bug->openedDate;?></th>
      <th class="w-80px"><?php echo $lang->bug->resolution;?></th>
      <th class="w-80px"><?php echo $lang->bug->resolvedDate;?></th>
      <th class="w-70px"><?php echo $lang->bug->status;?></th>
    </tr>
    </thead>
    <tbody>
    <?php $color = false;?>
    <?php foreach($userBugs as $user => $bugs):?>
      <?php if(!array_key_exists($user, $users)) continue;?>
      <tr class="text-center">
        <td class="w-user" rowspan="<?php echo count($bugs);?>"><?php echo $users[$user];?></td>
        <?php foreach($bugs as $id => $bug):?>
        <?php $class = $color ? 'rowcolor' : '';?>
        <?php if($id != 0) echo "<tr class='text-center'>"?>
          <td class="<?php echo $class;?>"><?php echo $bug->id;?></td>
          <td class="text-left <?php echo $class;?>" title="<?php echo $bug->title;?>"><?php echo $bug->title;?></td>
          <td class="<?php echo $class;?>"><span class='<?php echo 'pri' . $bug->pri?>'><?php echo $bug->pri;?></span></td>
          <td class="<?php echo $class;?>"><span class='<?php echo 'severity' . $bug->severity?>'><?php echo $bug->severity;?></span></td>
          <td class="<?php echo $class;?>"><?php echo $users[$bug->openedBy];?></td>
          <td class="<?php echo $class;?>"><?php echo substr($bug->openedDate, 0, 10);?></td>
          <td class="<?php echo $class;?>"><?php echo $lang->bug->resolutionList[$bug->resolution];?></td>
          <td class="<?php echo $class;?>"><?php echo substr($bug->resolvedDate, 0, 10);?></td>
          <td class="<?php echo $class;?>"><?php echo $lang->bug->statusList[$bug->status];?></td>
        <?php if($id != 0) echo "</tr>"?>
        <?php $color = !$color;?>
        <?php endforeach;?>
      </tr>
    <?php endforeach;?>
    </tbody>
  </table> 
</tr>
<?php include '../../../common/view/footer.html.php';?>
