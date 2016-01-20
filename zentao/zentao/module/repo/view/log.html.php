<?php
/**
 * The log view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: browse.html.php $
 */
?>
<?php include '../../common/view/header.html.php';?>
<div class="repo">
  <h2>
  <?php
  echo html::a(inlink('browse', "repoID=$repoID"), $repo->name);
  $paths= explode('/', $entry);
  $fileName = array_pop($paths);
  $postPath = '';
  foreach($paths as $pathName)
  {
    $postPath .= $pathName . '/';
    echo '/' . ' ' . html::a(inlink('browse', "repoID=$repoID&path=" . $this->repo->encodePath($postPath)), trim($pathName, '/'));
  }
  echo '/' . ' ' . $fileName;
  echo $repo->SCM == 'Git' ? " @ " . substr($revision, 0, 10) : " @ r" . $revision;;
  ?>
  </h2>
  <p>
    <?php 
    $encodeEntry = $this->repo->encodePath($entry);
    echo $lang->repo->log;
    echo ' | ' . html::a(inlink('view', "repoID=$repoID&path=" . $encodeEntry . "&revision=$revision"), $lang->repo->view);
    echo ' | ' . html::a(inlink('blame', "repoID=$repoID&path=" . $encodeEntry . "&revision=$revision"), $lang->repo->blame);
    echo ' | ' . html::a(inlink('download', "repoID=$repoID&path=" . $encodeEntry . "&fromRevision=$revision"), $lang->repo->download, 'hiddenwin');
    ?>
  </p>
  <form id='logForm' action='<?php echo inlink('diff', "repoID=$repoID&entry=" . $this->repo->encodePath($entry))?>' method='post' target='showDiff'>
  <table class='table'>
    <thead>
      <tr>
        <th width='100'><?php echo $lang->repo->revision?></th>
        <th width='150'><?php echo $lang->repo->date?></th>
        <th width='80'><?php echo $lang->repo->committer?></th>
        <th><?php echo $lang->repo->comment?></th>
      </tr>
    </thead>
    <?php foreach($logs as $log):?>
    <tr>
      <td class='versions'>
        <?php
        $linkHtml = html::a(inlink('revision', "repoID=$repoID&revision=" . $log->revision), substr($log->revision, 0, 10));
        echo html::checkbox('revision',array($log->revision => $linkHtml));
        ?>
      </td>
      <td><?php echo $log->time;?></td>
      <td><?php echo $log->committer;?></td>
      <td><?php echo $log->comment;?></td>
    </tr>
    <?php endforeach;?>
    <tfoot>
      <tr>
        <td colspan="4">
          <?php echo html::submitButton($lang->repo->diff)?>
          <?php echo $pager->show();?>
        </td>
      </tr>
    </tfoot>
  </table>
</form>
<div>
<div id='diffModal' class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style='width:95%'>
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"><i class="icon-file-text"></i> <?php echo $lang->repo->diff?></h4>
      </div>
      <div class="modal-body">
        <iframe frameborder="no" allowtransparency="true" scrolling="auto" id='showDiff' name='showDiff' style="width: 100%; height: 100%; left: 0px;"></iframe>
      </div>
    </div>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
