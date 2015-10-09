<?php
/**
 * The create view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: create.html.php $
 */
?>
<?php 
include '../../common/view/header.html.php';
include '../../common/view/form.html.php';
include '../../common/view/kindeditor.html.php';
include 'header.review.html.php';
js::import($jsRoot  . 'misc/highlight/highlight.pack.js');
css::import($jsRoot . 'misc/highlight/styles/github.css');
$encodePath = $this->repo->encodePath($entry);
$version = " <span class=\"label label-info\">$revisionName</span>";
?>
<?php if(!isonlybody()):?>
<div id='featurebar'>
  <strong>
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
    echo $version;
    ?>
    <span class='btn-group'>
      <?php if(!empty($preAndNext->pre))  echo html::a(inlink('view', "repoID=$repoID&path=$encodePath&revision={$preAndNext->pre}&showBug=$showBug", 'html', isonlybody()), "<i class='icon-pre icon-chevron-left'></i>", '', "id='pre' class='btn btn-sm transparent' title='{$preAndNext->pre}'")?>
      <?php if(!empty($preAndNext->next)) echo html::a(inlink('view', "repoID=$repoID&path=$encodePath&revision={$preAndNext->next}&showBug=$showBug", 'html', isonlybody()), "<i class='icon-pre icon-chevron-right'></i>", '', "id='next' class='btn btn-sm transparent' title='{$preAndNext->next}'")?>
    </span>
  </strong>
  <div class="actions revision">
    <?php echo html::a(inlink('revision', "repoID=$repoID&revision=$revision"), $lang->repo->allChanges, '', "class='btn'")?>
  </div>
</div>
<div class='side' id='revisionData'>
  <a class="side-handle" data-id="repoSide"><i class="icon-caret-left"></i></a>
  <div class='side-body'>
  <?php include 'ajaxsidelogs.html.php';?>
  </div>
</div>
<?php endif;?>
<div class="repoCode main">
  <div class="content panel">
    <div class='panel-heading'>
      <strong class='text-14px'><?php echo $entry?></strong>
      <div class='panel-actions'>
        <?php if($suffix != 'binary' and strpos($config->repo->images, "|$suffix|") === false):?>
        <?php 
        if(common::hasPriv('repo', 'blame')) echo html::a(inlink('blame', "repoID=$repoID&path=$encodePath&revision=$revision&encoding=$encoding"), html::icon('random') . $lang->repo->blame, '', "data-toggle='modal' data-type='iframe' data-width='95%' data-title='{$lang->repo->blame} ./$entry $version' class='btn btn-sm btn-primary'");
        if(common::hasPriv('repo', 'download')) echo html::a(inlink('download', "repoID=$repoID&path=$encodePath&fromRevision=$revision"), html::icon('download-alt') . $lang->repo->download, 'hiddenwin', "class='btn btn-sm btn-primary'");
        ?>
        <?php endif;?>
        <div class='btn-group'>
          <?php echo html::commonButton(zget($lang->repo->encodingList, $encoding, $lang->repo->encoding) . "<span class='caret'></span>", "id='encoding' data-toggle='dropdown'", 'btn btn-sm btn-primary dropdown-toggle')?>
          <ul class='dropdown-menu' role='menu' aria-labelledby='encoding'>
            <?php foreach($lang->repo->encodingList as $key => $val):?>
            <li><?php echo html::a(inlink('view', "repoID=$repoID&path=$encodePath&revision=$revision&showBug=$showBug&encoding=$key", 'html', isonlybody()), $val)?></li>
            <?php endforeach;?>
          </ul>
        </div>
      </div>
    </div>
    <?php if(strpos($config->repo->images, "|$suffix|") !== false):?>
    <div class='image'><img src='data:image/<?php echo $suffix?>;base64,<?php echo $content?>' /></div>
    <?php elseif($suffix == 'binary'):?>
    <div class='binary'><?php echo html::a(inlink('download', "repoID=$repoID&path=" . $this->repo->encodePath($entry) . "&fromRevision=$revision"), "<i class='icon-download'></i>", 'hiddenwin', "title='{$lang->repo->download}'"); ?></div>
    <?php else:?>
    <pre class="<?php echo $config->program->suffix[$suffix];?>"><?php echo trim(htmlspecialchars($content, defined('ENT_SUBSTITUTE') ? ENT_QUOTES | ENT_SUBSTITUTE : ENT_QUOTES));?></pre>
    <?php endif;?>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
