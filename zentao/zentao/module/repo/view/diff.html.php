<?php
/**
 * The diff view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: browse.html.php $
 */
?>
<?php include '../../common/view/header.lite.html.php';?>
<?php include '../../common/view/form.html.php';?>
<?php include '../../common/view/kindeditor.html.php';?>
<?php include '../../common/view/chosen.html.php';?>
<?php include 'header.review.html.php';?>
<div class="repo panel">
  <div class='panel-heading'>
    <form method='post'>
      <div class='btn-group pull-right'>
        <?php echo html::commonButton($lang->repo->viewDiffList['inline'], "id='inline'", $arrange == 'inline' ? 'active btn-sm' : 'btn-sm')?>
        <?php echo html::commonButton($lang->repo->viewDiffList['appose'], "id='appose'", $arrange == 'appose' ? 'active btn-sm' : 'btn-sm')?>
      </div>
      <div class='btn-toolbar'>
        <div class='btn-group'>
          <?php if(common::hasPriv('repo', 'download')) echo html::a(inlink('download', "repoID=$repoID&entry=" . $this->repo->encodePath($entry) . "&fromRevison=$oldRevision&toRevision=$newRevision&type=path"), $lang->repo->downloadDiff, 'hiddenwin', "class='btn btn-sm'");?>
          <div class='btn-group'>
            <?php echo html::commonButton(zget($lang->repo->encodingList, $encoding, $lang->repo->encoding) . "<span class='caret'></span>", "data-toggle='dropdown'", 'btn dropdown-toggle btn-sm')?>
            <ul class='dropdown-menu' role='menu'>
              <?php foreach($lang->repo->encodingList as $key => $val):?>
              <li><?php echo html::a('javascript:changeEncoding("'. $key . '")', $val)?></li>
              <?php endforeach;?>
            </ul>
          </div>
        </div>
      </div>
      <?php echo html::hidden('arrange', $arrange) . html::hidden('encoding', $encoding) . html::hidden('revision[]', $newRevision) . html::hidden('revision[]', $oldRevision)?>
    </form>
  </div>
  <?php foreach($diffs as $diffFile):?>
  <div class="repoCode">
    <table class='table diff' id='diff'>
      <caption><?php echo $diffFile->fileName;?></caption>
      <?php foreach($diffFile->contents as $content):?>
      <?php
      $oldCurrentLine = $content->oldStartLine;
      $newCurrentLine = $content->newStartLine;
      ?>
      <?php if(!in_array($oldCurrentLine, array('0', '1')) and !in_array($newCurrentLine, array('0', '1'))):?>
      <tr data-line='<?php echo $newCurrentLine ?>' class='empty'>
        <th class='w-num text-center'>...</th>
        <?php if($arrange == 'appose'):?>
        <td class='none code'></td>
        <?php endif;?>
        <th class='w-num text-center'>...</th>
        <td class='none code'></td>
      </tr>
      <?php endif?>
      <?php if($arrange == 'inline'):?>
      <?php foreach($content->lines as $line):?>
      <tr data-line='<?php echo $line->newlc ?>'>
        <th class='w-num text-right'><?php if($line->type != 'new') echo $line->oldlc?></th>
        <th class='w-num text-left'><?php if($line->type != 'old') echo $line->newlc?></th>
        <td class='line-<?php echo $line->type?> code'><?php
        $line->line = $repo->SCM == 'Subversion' ? htmlspecialchars($line->line) : $line->line;
        echo $line->type == 'old' ? preg_replace('/^\-/', '&ndash;', $line->line) : ($line->type == 'new' ? $line->line : ' ' . $line->line);
        ?></td>
      </tr>
      <?php endforeach;?>
      <?php else:?>
      <?php foreach($content->lines as $line):?>
      <tr data-line='<?php echo $line->newlc ?>'>
        <?php
        if($line->type == 'old')
        {
            $oldlc = $line->oldlc;
            $newlc = '';
            if(isset($content->new[$oldlc]))
            {
                $newlc = $line->oldlc;
                $line->type = 'custom';
            } 
        }
        else
        {
            $oldlc = $line->oldlc;
            $newlc = $line->newlc;
            if(!isset($content->new[$newlc])) continue;
        }
        ?>
        <th class='w-num text-right'><?php echo $oldlc?></th>
        <td class='w-code line-<?php if($line->type != 'new')echo $line->type?> <?php if($line->type == 'custom') echo "line-old"?> code'><?php
        $content->old[$oldlc] = $repo->SCM == 'Subversion' ? htmlspecialchars($content->old[$oldlc]) : $content->old[$oldlc];
        if(!empty($oldlc)) echo $line->type != 'all' ? preg_replace('/^\-/', '&ndash;', $content->old[$oldlc]) : ' ' . $content->old[$oldlc];
        ?></td>
        <th class='w-num text-right'><?php echo $newlc?></th>
        <td class='w-code line-<?php if($line->type != 'old') echo $line->type?> <?php if($line->type == 'custom') echo "line-new"?> code'><?php
        $content->new[$newlc] = $repo->SCM == 'Subversion' ? htmlspecialchars($content->new[$newlc]) : $content->new[$newlc];
        if(!empty($newlc)) echo $line->type != 'all' ? $content->new[$newlc] : ' ' . $content->new[$newlc];
        ?></td>
        <?php
        if(isset($content->old[$oldlc])) unset($content->old[$oldlc]);
        if(isset($content->new[$newlc])) unset($content->new[$newlc]);
        ?>
      </tr>
      <?php endforeach;?>
      <?php endif;?>
      <?php endforeach;?>
    </table>
  </div>
  <?php endforeach?>
</div>
<div class='revisions hidden'>
  <?php
  if($repo->SCM == 'Git')
  {
      $oldRevision = $oldRevision == '^' ? "$newRevision" : $oldRevision;
      echo " <span class='label label-info'>" . substr($oldRevision, 0, 10) . " : " . substr($newRevision, 0, 10) . ' (' . $historys[$oldRevision] . ' : ' . $historys[$newRevision] . ')</span>';
  }
  else
  {
      $oldRevision = $oldRevision == '^' ? $newRevision - 1 : $oldRevision;
      echo " <span class='label label-info'>$oldRevision : $newRevision</span>";
  }
  ?>
</div>
<?php include '../../common/view/footer.lite.html.php';?>
