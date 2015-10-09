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
  <form method='post'>
    <div class='row' style='margin-bottom:5px;'>
      <div class='col-sm-3'>
        <div class='input-group input-group-sm'>
          <span class='input-group-addon'><?php echo $lang->report->dept;?></span>
          <?php echo html::select('dept', $depts, $dept, "class='form-control chosen' onchange='changeParams(this)'");?>
        </div>
      </div>
      <div class='col-sm-5'>
        <div class='input-group input-group-sm'>
          <span class='input-group-addon'><?php echo $lang->report->taskFinishedDate;?></span>
          <div class='datepicker-wrapper datepicker-date'><?php echo html::input('begin', $begin, "class='w-100px form-control form-date' onchange='changeParams(this)'");?></div>
          <span class='input-group-addon'><?php echo $lang->report->to;?></span>
          <div class='datepicker-wrapper datepicker-date'><?php echo html::input('end', $end, "class='form-control form-date' onchange='changeParams(this)'");?></div>
        </div>
      </div>
    </div>
  </form>
  <table class='table table-condensed table-striped table-bordered tablesorter table-fixed active-disabled' id="worksummary">
    <thead>
    <tr class='colhead'>
      <th class="w-70px"><?php echo $lang->task->finishedByAB;?></th>
      <th class="w-id"><?php echo $lang->task->id;?></th>
      <th><?php echo $lang->task->name;?></th>
      <th class="w-50px"><?php echo $lang->task->pri;?></th>
      <th class="w-80px"><?php echo $lang->task->estStarted;?></th>
      <th class="w-80px"><?php echo $lang->task->realStarted;?></th>
      <th class="w-80px"><?php echo $lang->task->deadline;?></th>
      <th class="w-80px"><?php echo $lang->task->finishedDate;?></th>
      <th class="w-80px"><?php echo $lang->report->delay . '(' . $lang->report->day . ')';?></th>
      <th class="w-70px"><?php echo $lang->task->estimate;?></th>
      <th class="w-60px"><?php echo $lang->task->consumed;?></th>
      <th class="w-70px"><?php echo $lang->task->status;?></th>
    </tr>
    </thead>
    <tbody>
    <?php $color = false;?>
    <?php foreach($userTasks as $user => $tasks):?>
      <?php if(!array_key_exists($user, $users)) continue;?>
      <tr class="text-center">
        <td class="w-user" rowspan="<?php echo count($tasks);?>"><?php echo $users[$user];?></td>
        <?php foreach($tasks as $id => $task):?>
        <?php $class = $color ? 'rowcolor' : '';?>
        <?php if($id != 0) echo "<tr class='text-center'>"?>
          <td class="<?php echo $class;?>"><?php echo $task->id;?></td>
          <td class="text-left <?php echo $class;?>" title="<?php echo $task->name;?>"><?php echo $task->name;?></td>
          <td class="<?php echo $class;?>"><span class='<?php echo 'pri' . $task->pri?>'><?php echo $task->pri;?></span></td>
          <td class="<?php echo $class;?>"><?php echo $task->estStarted;?></td>
          <td class="<?php echo $class;?>"><?php echo $task->realStarted;?></td>
          <td class="<?php echo $class;?>"><?php echo $task->deadline;?></td>
          <td class="<?php echo $class;?>"><?php echo substr($task->finishedDate, 0, 10);?></td>
          <td class="<?php echo $class;?>">
          <?php if($task->deadline != '0000-00-00')
          {
              $finishedDate = strtotime(substr($task->finishedDate, 0, 10));
              $deadline     = strtotime($task->deadline);
              $days         = round(($finishedDate - $deadline)/3600/24);
              if($days > 0) echo $days;
          } 
          ?>
          </td>
          <td class="<?php echo $class;?>"><?php echo $task->estimate;?></td>
          <td class="<?php echo $class;?>"><?php echo $task->consumed;?></td>
          <td class="<?php echo $class;?>"><?php echo $lang->task->statusList[$task->status];?></td>
        <?php if($id != 0) echo "</tr>"?>
        <?php $color = !$color;?>
        <?php endforeach;?>
      </tr>
    <?php endforeach;?>
    </tbody>
  </table> 
</tr>
<?php include '../../../common/view/footer.html.php';?>
