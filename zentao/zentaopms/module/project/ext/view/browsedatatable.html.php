<?php
/**
 * The view file of datatable module of ZenTaoPMS.
 *
 * @copyright   Copyright 2014-2014 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Hao sun <sunhao@cnezsoft.com>
 * @package     datatable 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php
include '../../../common/view/header.html.php';
include '../../../common/view/treeview.html.php';
include '../../../common/view/datepicker.html.php';
include '../../../common/ext/view/datatable.html.php';
include '../../view/taskheader.html.php';
?>
<?php js::set('moduleID', $moduleID);?>
<?php js::set('productID', $productID);?>
<?php js::set('browseType', $browseType);?>
<div class='side' id='taskTree'>
  <a class='side-handle' data-id='projectTree'><i class='icon-caret-left'></i></a>
  <div class='side-body'>
    <div class='panel panel-sm'>
      <div class='panel-heading nobr'>
        <?php echo html::icon($lang->icons['project']);?> <strong><?php echo $project->name;?></strong>
      </div>
      <div class='panel-body'>
        <?php echo $moduleTree;?>
        <div class='text-right'>
          <?php common::printLink('project', 'edit',    "projectID=$projectID", $lang->edit);?>
          <?php common::printLink('project', 'delete',  "projectID=$projectID&confirm=no", $lang->delete, 'hiddenwin');?>
          <?php common::printLink('tree', 'browsetask', "rootID=$projectID&productID=0", $lang->tree->manage);?>
          <?php common::printLink('tree', 'fix',        "root=$projectID&type=task", $lang->tree->fix, 'hiddenwin');?>
        </div>
      </div>
    </div>
  </div>
</div>
<div class='main'>
  <form method='post' id='projectTaskForm'>
    <?php $vars = "projectID=$project->id&status=$status&parma=$param&orderBy=%s&recTotal=$recTotal&recPerPage=$recPerPage"; ?>
    <?php
    $leftWidth  = 0;
    $rightWidth = 0;
    foreach($setting as $key => $value)
    {
        if($value->fixed != 'no') ${$value->fixed . 'Width'} += (int)trim($value->width, 'px');
    }
    if($leftWidth <= 550) $leftWidth = 550;
    if($rightWidth <= 0) $rightWidth = 140;
    ?>
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed datatable' id='taskList' data-checkable='true' data-fixed-left-width='<?php echo $leftWidth?>' data-fixed-right-width='<?php echo $rightWidth?>' data-custom-menu='true' data-checkbox-name='taskIDList[]'>
      <thead>
        <tr><?php foreach ($setting as $key => $value) $this->task->printHead($value, $orderBy, $vars);?></tr>
      </thead>
      <tbody>
        <?php foreach($tasks as $task):?>
        <tr class='text-center' data-id='<?php echo $task->id?>'>
          <?php foreach ($setting as $key => $value) $this->task->printCell($value, $task, $memberPairs, $browseType);?>
        </tr>
        <?php endforeach;?>
      </tbody>
      <tfoot>
        <tr>
          <?php $columns = ($this->cookie->windowWidth > $this->config->wideSize ? 14 : 12) - ($project->type == 'sprint' ? 0 : 1);?>
          <td colspan='<?php echo $columns;?>'>
            <div class='table-actions clearfix'>
            <?php 
            $canBatchEdit     = common::hasPriv('task', 'batchEdit');
            $canBatchClose    = (common::hasPriv('task', 'batchClose') && strtolower($browseType) != 'closedBy');
            $canBatchAssignTo = common::hasPriv('task', 'batchAssignTo');
            if(count($tasks))
            {
                echo "<div class='btn-group'>" . html::selectButton() . '</div>';

                $actionLink = $this->createLink('task', 'batchEdit', "projectID=$projectID");
                $misc       = $canBatchEdit ? "onclick=\"setFormAction('$actionLink')\"" : "disabled='disabled'";

                echo "<div class='btn-group dropup'>";
                echo html::commonButton($lang->edit, $misc);
                echo "<button id='moreAction' type='button' class='btn dropdown-toggle' data-toggle='dropdown'><span class='caret'></span></button>";
                echo "<ul class='dropdown-menu' id='moreActionMenu'>";
                $actionLink = $this->createLink('task', 'batchClose');
                $misc = $canBatchClose ? "onclick=\"setFormAction('$actionLink','hiddenwin')\"" : "class='disabled'";
                echo "<li>" . html::a('#', $lang->close, '', $misc) . "</li>";

                /* Batch assign. */
                if($canBatchAssignTo)
                {
                    $withSearch = count($memberPairs) > 10;
                    $actionLink = $this->createLink('task', 'batchAssignTo', "projectID=$projectID");
                    echo html::select('assignedTo', $memberPairs, '', 'class="hidden"');
                    echo "<li class='dropdown-submenu'>";
                    echo html::a('javascript::', $lang->task->assignedTo, 'id="assignItem"');
                    echo "<ul class='dropdown-menu assign-menu" . ($withSearch ? ' with-search':'') . "'>";
                    foreach ($memberPairs as $key => $value)
                    {
                        if(empty($key)) continue;
                        echo "<li class='option' data-key='$key'>" . html::a("javascript:$(\".table-actions #assignedTo\").val(\"$key\");setFormAction(\"$actionLink\")", $value, '', '') . '</li>';
                    }
                    if($withSearch) echo "<li class='assign-search'><div class='input-group input-group-sm'><input type='text' class='form-control' placeholder=''><span class='input-group-addon'><i class='icon-search'></i></span></div></li>";
                    echo "</ul>";
                    echo "</li>";
                }
                echo "</ul></div>";
            }
            echo "<div class='text'>" . $summary . "</div>";
            ?>
            </div>
            <?php $pager->show();?>
          </td>
        </tr>
      </tfoot>
    </table>
  </form>
</div>
<?php js::set('replaceID', 'taskList')?>
<script language='javascript'>
$('#project<?php echo $projectID;?>').addClass('active')
$('#<?php echo $browseType;?>Tab').addClass('active')
statusActive = '<?php echo isset($lang->project->statusSelects[$browseType]);?>';
if(statusActive) $('#statusTab').addClass('active')
</script>
<?php include '../../../common/view/footer.html.php';?>
