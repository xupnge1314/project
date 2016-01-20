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
js::set('browseType', $browseType);
js::set('moduleID', $moduleID);
?>
<div id='featurebar'>
  <ul class='nav'>
    <?php
    echo "<li id='unclosedTab'>"      . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=unclosed&param=0"),      $lang->bug->unclosed)      . "</li>";
    echo "<li id='allTab'>"           . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=all&param=0&orderBy=$orderBy&recTotal=0&recPerPage=200"), $lang->bug->allBugs) . "</li>";
    echo "<li id='assigntomeTab'>"    . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=assignToMe&param=0"),    $lang->bug->assignToMe)    . "</li>";
    echo "<li id='openedbymeTab'>"    . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=openedByMe&param=0"),    $lang->bug->openedByMe)    . "</li>";
    echo "<li id='resolvedbymeTab'>"  . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=resolvedByMe&param=0"),  $lang->bug->resolvedByMe)  . "</li>";
    echo "<li id='assigntonullTab'>"  . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=assignToNull&param=0"),  $lang->bug->assignToNull)  . "</li>";
    echo "<li id='unresolvedTab'>"    . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=unResolved&param=0"),    $lang->bug->unResolved)    . "</li>";
    echo "<li id='toclosedTab'>"      . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=toClosed&param=0"),      $lang->bug->toClosed)      . "</li>";
    echo "<li id='longlifebugsTab'>"  . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=longLifeBugs&param=0"),  $lang->bug->longLifeBugs)  . "</li>";
    echo "<li id='postponedbugsTab'>" . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=postponedBugs&param=0"), $lang->bug->postponedBugs) . "</li>";
    echo "<li id='needconfirmTab'>"   . html::a($this->createLink('bug', 'browse', "productid=$productID&browseType=needconfirm&param=0"), $lang->bug->needConfirm) . "</li>";
    echo "<li id='bysearchTab'><a href='#'><i class='icon-search icon'></i>&nbsp;{$lang->bug->byQuery}</a></li> ";
    ?>
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
          $misc = common::hasPriv('bug', 'export') ? "class='export'" : "class=disabled";
          $link = common::hasPriv('bug', 'export') ?  $this->createLink('bug', 'export', "productID=$productID&orderBy=$orderBy") : '#';
          echo "<li>" . html::a($link, $lang->bug->export, '', $misc) . "</li>";
          ?>
        </ul>
      </div>
      <div class='btn-group'>
        <?php common::printIcon('bug', 'report', "productID=$productID&browseType=$browseType&moduleID=$moduleID"); ?>
      </div>
    </div>
    <div class='btn-group'>
      <?php
      common::printIcon('bug', 'batchCreate', "productID=$productID&projectID=0&moduleID=$moduleID");
      common::printIcon('bug', 'create', "productID=$productID&extra=moduleID=$moduleID");
      ?>
    </div>
  </div>
  <div id='querybox' class='<?php if($browseType =='bysearch') echo 'show';?>'></div>
</div>
<div class='side' id='treebox'>
  <a class='side-handle' data-id='bugTree'><i class='icon-caret-left'></i></a>
  <div class='side-body'>
    <div class='panel panel-sm'>
      <div class='panel-heading nobr'>
        <?php echo html::icon($lang->icons['product']);?> <strong><?php echo $productName;?></strong>
      </div>
      <div class='panel-body'>
        <?php echo $moduleTree;?>
        <div class='text-right'>
          <?php common::printLink('tree', 'browse', "productID=$productID&view=bug", $lang->tree->manage);?>
          <?php common::printLink('tree', 'fix',    "root=$productID&type=bug", $lang->tree->fix, 'hiddenwin');?>
        </div>
      </div>
    </div>
  </div>
</div>
<div class='main'>
  <form method='post'>
    <?php $vars = "productID=$productID&browseType=$browseType&param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?>
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
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed datatable' id='bugList' data-checkable='true' data-fixed-left-width='<?php echo $leftWidth?>' data-fixed-right-width='<?php echo $rightWidth?>' data-custom-menu='true' data-checkbox-name='bugIDList[]'>
      <thead>
        <tr><?php foreach ($setting as $key => $value) $this->bug->printHead($value, $orderBy, $vars);?></tr>
      </thead>
      <tbody>
        <?php foreach($bugs as $bug):?>
        <tr class='text-center' data-id='<?php echo $bug->id?>'>
          <?php foreach ($setting as $key => $value) $this->bug->printCell($value, $bug, $users, $builds);?>
        </tr>
        <?php endforeach;?>
      </tbody>
      <tfoot>
        <tr>
          <?php
          $columns = $this->cookie->windowWidth >= $this->config->wideSize ? 12 : 9;
          if($browseType == 'needconfirm') $columns = $this->cookie->windowWidth >= $this->config->wideSize ? 7 : 6; 
          ?>
          <td colspan='<?php echo $columns;?>'>
            <?php if(!empty($bugs)):?>
            <div class='table-actions clearfix'>
              <div class='btn-group'>
              <?php echo html::selectButton();?>
              </div>
              <div class='btn-group dropup'>
                <?php
                $actionLink = $this->createLink('bug', 'batchEdit', "productID=$productID");
                $misc       = common::hasPriv('bug', 'batchEdit') ? "onclick=\"setFormAction('$actionLink')\"" : "disabled='disabled'";
                echo html::commonButton($lang->edit, $misc);
                ?>
                <button type='button' class='btn dropdown-toggle' data-toggle='dropdown'><span class='caret'></span></button>
                <ul class='dropdown-menu'>
                  <?php 
                  $class = "class='disabled'";
                  $actionLink = $this->createLink('bug', 'batchConfirm');
                  $misc = common::hasPriv('bug', 'batchConfirm') ? "onclick=\"setFormAction('$actionLink','hiddenwin')\"" : $class;
                  if($misc) echo "<li>" . html::a('javascript:;', $lang->bug->confirmBug, '', $misc) . "</li>";

                  $actionLink = $this->createLink('bug', 'batchClose');
                  $misc = common::hasPriv('bug', 'batchClose') ? "onclick=\"setFormAction('$actionLink','hiddenwin')\"" : $class;
                  if($misc) echo "<li>" . html::a('javascript:;', $lang->bug->close, '', $misc) . "</li>";

                  $misc = common::hasPriv('bug', 'batchResolve') ? "id='resolveItem'" : '';
                  if($misc)
                  {
                      echo "<li class='dropdown-submenu'>" . html::a('javascript:;', $lang->bug->resolve,  '', $misc);
                      echo "<ul class='dropdown-menu'>";
                      unset($lang->bug->resolutionList['']);
                      unset($lang->bug->resolutionList['duplicate']);
                      unset($lang->bug->resolutionList['tostory']);
                      foreach($lang->bug->resolutionList as $key => $resolution)
                      {
                          $actionLink = $this->createLink('bug', 'batchResolve', "resolution=$key");
                          if($key == 'fixed')
                          {
                              echo "<li class='dropdown-submenu'>";
                              echo html::a('javascript:;', $resolution, '', "id='fixedItem'");
                              echo "<ul class='dropdown-menu'>";
                              unset($builds['']);
                              foreach($builds as $key => $build)
                              {
                                  $actionLink = $this->createLink('bug', 'batchResolve', "resolution=fixed&resolvedBuild=$key");
                                  echo "<li>";
                                  echo html::a('javascript:;', $build, '', "onclick=\"setFormAction('$actionLink','hiddenwin')\"");
                                  echo "</li>";
                              }
                              echo '</ul></li>';
                          }
                          else
                          {
                              echo '<li>' . html::a('javascript:;', $resolution, '', "onclick=\"setFormAction('$actionLink','hiddenwin')\"") . '</li>';
                          }
                      }
                      echo '</ul></li>';
                  }
                  else
                  {
                      echo "<li>" . html::a('javascript:;', $lang->bug->resolve,  '', $class);
                  }

                  $canBatchAssignTo = common::hasPriv('bug', 'batchAssignTo');
                  if($canBatchAssignTo && count($bugs))
                  {   
                      $withSearch = count($memberPairs) > 10;
                      $actionLink = $this->createLink('bug', 'batchAssignTo', "productID={$productID}&type=product");
                      echo html::select('assignedTo', $memberPairs, '', 'class="hidden"');
                      echo "<li class='dropdown-submenu'>";
                      echo html::a('javascript::', $lang->bug->assignedTo, 'id="assignItem"');
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
                  else
                  {
                      echo "<li>" . html::a('javascript:;', $lang->bug->assignedTo,  '', $class);
                  }
                  ?>
                </ul>
              </div>
            </div>
            <?php endif?>
            <div class='text-right'><?php $pager->show();?></div>
          </td>
        </tr>
      </tfoot>
    </table>
  </form>
</div>
<style>
.assign-menu {min-width: 150px; overflow: hidden; max-height: 305px}
.assign-menu.with-search {padding-bottom: 34px;}
.assign-menu > .assign-search {padding: 0; position: absolute; z-index: 0; bottom: 0; left: 0; right: 0}
.assign-menu > .assign-search .input-group-addon {position: absolute; right: 10px; top: 0; z-index: 10; background: none; border: none; color: #666}
</style>
<script language='javascript'>
$('#module<?php echo $moduleID;?>').addClass('active');
$('#<?php echo $browseType;?>Tab').addClass('active');
$('#submenubug').closest('li').addClass('active');
$(function()
{
    $('.assign-search').click(function(e)
    {
        e.stopPropagation();
        return false;
    }).on('keyup change paste', 'input', function()
    {
        var val = $(this).val().toLowerCase();
        $('.assign-menu > .option').each(function()
        {
            var $option = $(this);
            $option.toggleClass('hide', $option.text().toLowerCase().indexOf(val) < 0 && $option.data('key').toLowerCase().indexOf(val) < 0);
        });
    });
});
</script>
<?php include '../../../common/view/footer.html.php';?>
