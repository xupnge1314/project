<?php include '../../common/view/header.html.php';?>
<?php js::set('browseType', $browseType);?>
<div id='featurebar'>
  <ul class='nav'>
    <?php
    echo "<li id='allTab'>"           . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=all"), $lang->bug->allBugs) . "</li>";
    echo "<li id='assigntomeTab'>"    . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=assignToMe"),    $lang->bug->assignToMe)    . "</li>";
    echo "<li id='openedbymeTab'>"    . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=openedByMe"),    $lang->bug->openedByMe)    . "</li>";
    echo "<li id='resolvedbymeTab'>"  . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=resolvedByMe"),  $lang->bug->resolvedByMe)  . "</li>";
    echo "<li id='assigntonullTab'>"  . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=assignToNull"),  $lang->bug->assignToNull)  . "</li>";
    echo "<li id='unresolvedTab'>"    . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=unResolved"),    $lang->bug->unResolved)    . "</li>";
    echo "<li id='unclosedTab'>"      . html::a($this->createLink('repo', 'review', "repoID=$repoID&rowseType=unclosed"),      $lang->bug->unclosed)      . "</li>";
    ?>
  </ul>
</div>
<table class='table tablesorter datatable table-fixed' id='bugList'>
  <thead>
    <tr class="colhead">
    <th class="w-id"><?php echo 'ID';?></th>
    <th><?php echo $lang->repo->title?></th>
    <th><?php echo $lang->repo->file . '/' . $lang->repo->location?></th>
    <th class='w-80px'><?php echo $lang->repo->revisionA?></th>
    <th class="w-100px"><?php echo $lang->repo->type?></th>
    <th class="w-80px"><?php echo $lang->repo->status?></th>
    <th class="w-100px"><?php echo $lang->repo->openedBy?></th>
    <th class="w-100px"><?php echo $lang->repo->assignedTo?></th>
    <th class="w-120px"><?php echo $lang->repo->openedDate?></th>
    </tr>
  </thead>
  <tbody>
  <?php foreach($bugs as $bug):?>
  <tr class='text-center'>
    <td><?php echo $bug->id?></td>
    <?php $lines = explode(',', trim($bug->lines, ','));?>
    <td class='text-left'><?php echo html::a($this->createLink('bug', 'view', "bugID={$bug->id}"), $bug->title)?></td>
    <td class='text-left'>
      <?php
      $entry = $repo->name . '/' . $this->repo->decodePath($bug->entry);
      if(empty($bug->v1))
      {
          $revision = $repo->SCM == 'Git' ? $this->repo->getGitRevisionName($bug->v2, $historys[$bug->v2]) : $bug->v2;
          $link     = inlink('view', "repoID=$repoID&entry={$bug->entry}&revision={$bug->v2}") . ($config->requestType == 'GET' ? '&onlybody=yes' : '?onlybody=yes') . "#L$lines[0]";
      }
      else
      {
          $revision  = $repo->SCM == 'Git' ? substr($bug->v1, 0, 10) : $bug->v1;
          $revision .= ' : ';
          $revision .= $repo->SCM == 'Git' ? substr($bug->v2, 0, 10) : $bug->v2;
          if($repo->SCM == 'Git') $revision .= ' (' . $historys[$bug->v1] . ' : ' . $historys[$bug->v2] . ')';
          $link = inlink('diff', "repoID=$repoID&entry={$bug->entry}&oldRevision={$bug->v1}&newRevision={$bug->v2}") . "#L$lines[0]";
      }
      echo html::a($link, $entry, '', "data-toggle='modal' data-type='iframe' data-width='95%' data-title='$entry <span class=\"label label-info\">$revision</span>'");
      echo "<span class='label label-info'>$bug->lines</span>";
      ?>
    </td>
    <td><?php echo $repo->SCM == 'Git' ? substr($bug->v2, 0, 10) : $bug->v2?></td>
    <td><?php echo isset($lang->repo->typeList[$bug->repoType]) ? $lang->repo->typeList[$bug->repoType] : ''?></td>
    <td class='bug-<?php echo $bug->status?>'><?php echo $lang->bug->statusList[$bug->status]?></td>
    <td><?php echo $users[$bug->openedBy]?></td>
    <td><?php echo $users[$bug->assignedTo]?></td>
    <td><?php echo substr($bug->openedDate, 2, 14)?></td>
  </tr>
  <?php endforeach;?>
  </tbody>
  <tfoot>
    <tr><td colspan="9"><div class='a-right'><?php $pager->show();?></div></td></tr>
  </tfoot>
</table>
<?php include '../../common/view/footer.html.php';?>
