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
include '../../../common/ext/view/datatable.html.php';
?>
<?php js::set('browseType', $browseType);?>
<div id='featurebar'>
  <ul class='nav'>
    <li id='unclosedTab'>     <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=unclosed"),     $lang->product->unclosed);?></li>
    <li id='allstoryTab'>     <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=allStory"),     $lang->product->allStory);?></li>
    <li id='assignedtomeTab'> <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=assignedtome"), $lang->product->assignedToMe);?></li>
    <li id='openedbymeTab'>   <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=openedByMe"),   $lang->product->openedByMe);?></li>
    <li id='reviewedbymeTab'> <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=reviewedByMe"), $lang->product->reviewedByMe);?></li>
    <li id='closedbymeTab'>   <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=closedByMe"),   $lang->product->closedByMe);?></li>
    <li id='draftstoryTab'>   <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=draftStory"),   $lang->product->draftStory);?></li>
    <li id='activestoryTab'>  <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=activeStory"),  $lang->product->activeStory);?></li>
    <li id='changedstoryTab'> <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=changedStory"), $lang->product->changedStory);?></li>
    <li id='willcloseTab'>    <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=willClose"),    $lang->product->willClose);?></li>
    <li id='closedstoryTab'>  <?php echo html::a($this->inlink('browse', "productID=$productID&browseType=closedStory"),  $lang->product->closedStory);?></li>
    <li id='bysearchTab'><a href='javascript:;'><i class='icon-search icon'></i> <?php echo $lang->product->searchStory;?></a></li>
  </ul>
  <div class='actions'>
    <div class='btn-group'>
      <div class='btn-group'>
        <button type='button' class='btn btn-default dropdown-toggle' data-toggle='dropdown'>
          <i class='icon-download-alt'></i> <?php echo $lang->export ?>
          <span class='caret'></span>
        </button>
        <ul class='dropdown-menu' id='exportActionMenu'>
        <?php 
        $misc = common::hasPriv('story', 'export') ? "class='export'" : "class=disabled";
        $link = common::hasPriv('story', 'export') ?  $this->createLink('story', 'export', "productID=$productID&orderBy=$orderBy") : '#';
        echo "<li>" . html::a($link, $lang->story->export, '', $misc) . "</li>";
        ?>
        </ul>
      </div>
        <?php common::printIcon('story', 'report', "productID=$productID&browseType=$browseType&moduleID=$moduleID", '', 'button', 'bar-chart'); ?>
    </div>
    <div class='btn-group'>
    <?php 
    common::printIcon('story', 'batchCreate', "productID=$productID&moduleID=$moduleID", '', 'button', 'plus-sign');
    common::printIcon('story', 'create', "productID=$productID&moduleID=$moduleID", '', 'button', 'plus'); 
    ?>
    </div>
  </div>
  <div id='querybox' class='<?php if($browseType =='bysearch') echo 'show';?>'></div>
</div>
<div class='side' id='treebox'>
  <a class='side-handle' data-id='productTree'><i class='icon-caret-left'></i></a>
  <div class='side-body'>
    <div class='panel panel-sm'>
      <div class='panel-heading nobr'>
        <?php echo html::icon($lang->icons['product']);?> <strong><?php echo $productName;?></strong>
      </div>
      <div class='panel-body'>
        <?php echo $moduleTree;?>
        <div class='text-right'>
          <?php common::printLink('tree', 'browse', "productID=$productID&view=story", $lang->tree->manage);?>
          <?php common::printLink('tree', 'fix',    "root=$productID&type=story", $lang->tree->fix, 'hiddenwin');?>
        </div>
      </div>
    </div>
  </div>
</div>
<div class='main'>
  <form method='post' id='productStoryForm'>
    <?php $vars = "productID=$productID&browseType=$browseType&param=$moduleID&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?>
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
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed datatable' id='storyList' data-checkable='true' data-fixed-left-width='<?php echo $leftWidth?>' data-fixed-right-width='<?php echo $rightWidth?>' data-custom-menu='true' data-checkbox-name='storyIDList[]'>
      <thead>
        <tr><?php foreach($setting as $key => $value) $this->story->printHead($value, $orderBy, $vars);?></tr>
      </thead>
      <tbody>
        <?php foreach($stories as $story):?>
        <tr class='text-center' data-id='<?php echo $story->id?>'>
          <?php foreach($setting as $key => $value) $this->story->printCell($value, $story, $users);?>
        </tr>
        <?php endforeach;?>
      </tbody>
      <tfoot>
      <tr>
        <td colspan='11'>
          <div class='table-actions clearfix'>
            <?php if(count($stories)):?>
            <div class='btn-group'><?php echo html::selectButton();?></div>
            <?php
            $canBatchEdit  = common::hasPriv('story', 'batchEdit');
            $disabled   = $canBatchEdit ? '' : "disabled='disabled'";
            $actionLink = $this->createLink('story', 'batchEdit', "productID=$productID&projectID=0");
            ?>
            <div class='btn-group dropup'>
              <?php echo html::commonButton($lang->edit, "onclick=\"setFormAction('$actionLink')\" $disabled");?>
              <button type='button' class='btn dropdown-toggle' data-toggle='dropdown'><span class='caret'></span></button>
              <ul class='dropdown-menu'>
                <?php 
                $class = "class='disabled'";

                $canBatchClose = common::hasPriv('story', 'batchClose') && strtolower($browseType) != 'closedbyme' && strtolower($browseType) != 'closedstory';
                $actionLink    = $this->createLink('story', 'batchClose', "productID=$productID&projectID=0");
                $misc = $canBatchClose ? "onclick=\"setFormAction('$actionLink')\"" : $class;
                echo "<li>" . html::a('#', $lang->close, '', $misc) . "</li>";

                if(common::hasPriv('story', 'batchReview'))
                {
                    echo "<li class='dropdown-submenu'>";
                    echo html::a('javascript:;', $lang->story->review, '', "id='reviewItem'");
                    echo "<ul class='dropdown-menu'>";
                    unset($lang->story->reviewResultList['']);
                    unset($lang->story->reviewResultList['revert']);
                    foreach($lang->story->reviewResultList as $key => $result)
                    {
                        $actionLink = $this->createLink('story', 'batchReview', "result=$key");
                        if($key == 'reject')
                        {
                            echo "<li class='dropdown-submenu'>";
                            echo html::a('#', $result, '', "id='rejectItem'");
                            echo "<ul class='dropdown-menu'>";
                            unset($lang->story->reasonList['']);
                            unset($lang->story->reasonList['subdivided']);
                            unset($lang->story->reasonList['duplicate']);

                            foreach($lang->story->reasonList as $key => $reason)
                            {
                                $actionLink = $this->createLink('story', 'batchReview', "result=reject&reason=$key");
                                echo "<li>";
                                echo html::a('#', $reason, '', "onclick=\"setFormAction('$actionLink','hiddenwin')\"");
                                echo "</li>";
                            }
                            echo '</ul></li>';
                        }
                        else
                        {
                          echo '<li>' . html::a('#', $result, '', "onclick=\"setFormAction('$actionLink','hiddenwin')\"") . '</li>';
                        }
                    }
                    echo '</ul></li>';
                }
                else
                {
                    echo '<li>' . html::a('javascript:;', $lang->story->review,  '', $class) . '</li>';
                }

                if(common::hasPriv('story', 'batchChangePlan'))
                {
                    echo "<li class='dropdown-submenu'>";
                    echo html::a('javascript:;', $lang->story->planAB, '', "id='planItem'");
                    echo "<ul class='dropdown-menu'>";
                    unset($plans['']);
                    $plans = array(0 => $lang->null) + $plans;
                    foreach($plans as $planID => $plan)
                    {
                        $actionLink = $this->createLink('story', 'batchChangePlan', "planID=$planID");
                        echo "<li>" . html::a('#', $plan, '', "onclick=\"setFormAction('$actionLink','hiddenwin')\"") . "</li>";
                    }
                    echo '</ul></li>';
                }
                else
                {
                    echo '<li>' . html::a('javascript:;', $lang->story->planAB, '', $class) . '</li>';
                }

                if(common::hasPriv('story', 'batchChangeStage'))
                {
                    echo "<li class='dropdown-submenu'>";
                    echo html::a('javascript:;', $lang->story->stageAB, '', "id='stageItem'");
                    echo "<ul class='dropdown-menu'>";
                    $lang->story->stageList[''] = $lang->null;
                    foreach($lang->story->stageList as $key => $stage)
                    {
                        $actionLink = $this->createLink('story', 'batchChangeStage', "stage=$key");
                        echo "<li>" . html::a('#', $stage, '', "onclick=\"setFormAction('$actionLink','hiddenwin')\"") . "</li>";
                    }
                    echo '</ul></li>';
                }
                else
                {
                    echo '<li>' . html::a('javascript:;', $lang->story->stageAB, '', $class) . '</li>';
                }

                if(common::hasPriv('story', 'batchAssignTo'))
                {
                      $withSearch = count($users) > 10;
                      $actionLink = $this->createLink('story', 'batchAssignTo', "productID=$productID");
                      echo html::select('assignedTo', $users, '', 'class="hidden"');
                      echo "<li class='dropdown-submenu'>";
                      echo html::a('javascript::', $lang->story->assignedTo, 'id="assignItem"');
                      echo "<ul class='dropdown-menu assign-menu" . ($withSearch ? ' with-search':'') . "'>";
                      foreach ($users as $key => $value)
                      {
                          if(empty($key)) continue;
                          echo "<li class='option' data-key='$key'>" . html::a("javascript:$(\".table-actions #assignedTo\").val(\"$key\");setFormAction(\"$actionLink\")", $value, '', '') . '</li>';
                      }
                      if($withSearch) echo "<li class='assign-search'><div class='input-group input-group-sm'><input type='text' class='form-control' placeholder=''><span class='input-group-addon'><i class='icon-search'></i></span></div></li>";
                      echo "</ul>";
                      echo "</li>";
                }
                else
                {
                    echo '<li>' . html::a('javascript:;', $lang->story->assignedTo, '', $class) . '</li>';
                }
                ?>
              </ul>
            </div>
            <?php endif; ?>
            <div class='text'><?php echo $summary;?></div>
          </div>
          <?php $pager->show();?>
        </td>
      </tr>
      </tfoot>
    </table>
  </form>
</div>
<script language='javascript'>
$('#module<?php echo $moduleID;?>').addClass('active');
$('#<?php echo $browseType;?>Tab').addClass('active');
</script>
<?php include '../../../common/view/footer.html.php';?>
