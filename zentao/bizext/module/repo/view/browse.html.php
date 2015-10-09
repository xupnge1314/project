<?php
/**
 * The browse view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: browse.html.php $
 */
?>
<?php include '../../common/view/header.html.php';?>
<div id='featurebar'>
  <strong>
    <?php
    echo html::a(inlink('browse', "repoID=$repoID"), $repo->name);
    if(!empty($path))
    {
        $paths    = explode('/', $path);
        $postPath = '';
        foreach($paths as $pathName)
        {
            $postPath .= $pathName . '/';
            echo '/' . ' ' . html::a(inlink('browse', "repoID=$repoID&path=" . $this->repo->encodePath($postPath) . "&revision=$revision"), trim($pathName, '/'));
        }
    }
    ?>
  </strong>
  <div class='actions'>
    <span><?php echo $lang->repo->notice->lastSyncTime . $cacheTime?></span>
    <?php echo html::a(inlink('browse', "repoID=$repoID&path=" . $this->repo->encodePath($path) . "&revision=$revision&refresh=1"), html::icon('refresh') . $lang->refresh, '', "class='btn'");?>
  </div>
</div>
<div class='side' id='revisionData'>
  <a class="side-handle" data-id="repoSide"><i class="icon-caret-left"></i></a>
  <div class='side-body'>
  <?php include 'ajaxsidelogs.html.php';?>
  </div>
</div>
<div class='main'>
  <table class='table table-fixed block'>
    <thead>
      <tr>
        <th width='30'></th>
        <th width='150'><?php echo $lang->repo->name?></th>
        <th width='80'><?php echo $lang->repo->revisions?></th>
        <th width='80'><?php echo $lang->repo->time?></th>
        <th width='100'><?php echo $lang->repo->committer?></th>
        <th><?php echo $lang->repo->comment?></th>
      </tr>
    </thead>
    <tbody>
      <?php foreach($infos as $info):?>
      <tr>
        <td class="icon">
          <span class="<?php echo $info->kind == 'dir'? 'directory': 'file';?> mini-icon"></span>
        </td>
        <td>
        <?php
        $infoPath = trim($path . '/' . $info->name, '/');
        $link = $info->kind == 'dir' ? inlink('browse', "repoID=$repoID&path=" . $this->repo->encodePath($infoPath)) : inlink('view', "repoID=$repoID&entry=" . $this->repo->encodePath($infoPath));
        echo html::a($link, $info->name);
        ?>
        </td>
        <td align='center'><?php echo $repo->SCM == 'Git' ? substr($info->revision, 0, 10) : $info->revision;?></td>
        <td><?php echo substr($info->date, 0, 10)?></td>
        <td><?php echo $info->committer?></td>
        <?php $comment = htmlspecialchars($info->comment, ENT_QUOTES);?>
        <td class='comment' title='<?php echo $comment?>'><?php echo $comment?></td>
      </tr>
      <?php endforeach;?>
    </tbody>
  </table>
</div>
<?php include '../../common/view/footer.html.php';?>
