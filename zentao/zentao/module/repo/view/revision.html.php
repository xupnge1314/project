<?php
/**
 * The revision view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: revision.html.php $
 */
?>
<?php include '../../common/view/header.html.php';?>
<div id='titlebar'>
  <div class='heading'>
    <?php echo $lang->repo->revisionA . ' ' . ($repo->SCM == 'Git' ? $this->repo->getGitRevisionName($revision, $log->commit) : $revision);?>
  </div>
  <div class='actions'>
    <?php echo html::backButton()?>
  </div>
</div>
<div class="repo row">
  <div class='col-sm-8'>
    <div class='panel'>
      <div class='panel-heading'>
        <strong>
          <?php
          echo $lang->repo->changes;
          if(common::hasPriv('repo', 'diff')) echo " (" . html::a(inlink('diff', "repoID=$repoID&entry=&fromRevision=$oldRevision&toRevision=$revision"), $lang->repo->diffAB, '', "data-toggle='modal' data-type='iframe' data-width='95%' data-title='{$lang->repo->diff} <span></span>'") . ")";
          ?>
        </strong>
      </div>
      <table class='table'>
        <tr>
          <th><?php echo $lang->repo->location;?></th>
          <th class='w-80px text-center'><?php echo $lang->repo->action;?></th>
        </tr>
        <?php foreach($changes as $path => $change):?>
        <tr>
          <td><?php echo "<span class='label label-info label-badge'>" . $change['action'] . '</span> ' . $path?></td>
          <td><?php echo zget($change, 'view', '') . zget($change, 'diff', '')?></td>
        </tr>
        <?php endforeach;?>
      </table>
    </div>
  </div>
  <div class='col-sm-4'>
    <div class='panel'>
      <div class='panel-heading'><strong><?php echo $lang->repo->info?></strong></div>
      <table class='table table-data'>
        <tr>
          <th class='w-80px'><?php echo $lang->repo->committer?></th>
          <td><?php echo $log->committer?></td>
        </tr>
        <tr>
          <th><?php echo $lang->repo->revisionA?></th>
          <td><?php echo $log->revision?></td>
        </tr>
        <?php if($repo->SCM == 'Git'):?>
        <tr>
          <th><?php echo $lang->repo->commit?></th>
          <td><?php echo $log->commit?></td>
        </tr>
        <?php endif;?>
        <tr>
          <th><?php echo $lang->repo->comment?></th>
          <td><?php echo $log->comment?></td>
        </tr>
        <tr>
          <th><?php echo $lang->repo->time?></th>
          <td><?php echo $log->time?></td>
        </tr>
      </table>
    </div>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
