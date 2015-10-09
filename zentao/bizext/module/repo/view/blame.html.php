<?php
/**
 * The create view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: blame.html.php $
 */
?>
<?php 
include '../../common/view/header.lite.html.php';
js::import($jsRoot  . 'misc/highlight/highlight.pack.js');
css::import($jsRoot . 'misc/highlight/styles/github.css');
?>
<div class="code panel">
  <div class='panel-heading'>
    <strong class='text-14px'><?php echo $entry;?></strong>
    <?php $encodePath = $this->repo->encodePath($entry);?>
    <div class='panel-actions'>
      <div class='btn-group'>
        <?php echo html::commonButton(zget($lang->repo->encodingList, $encoding, $lang->repo->encoding) . "<span class='caret'></span>", "id='encoding' data-toggle='dropdown'", 'btn dropdown-toggle')?>
        <ul class='dropdown-menu' role='menu' aria-labelledby='encoding'>
          <?php foreach($lang->repo->encodingList as $key => $val):?>
          <li><?php echo html::a(inlink('blame', "repoID=$repoID&path=$encodePath&revision=$revision&encoding=$key"), $val)?></li>
          <?php endforeach;?>
        </ul>
      </div>
    </div>
  </div>
  <div class="content">
    <table width="100%" class="blame table-fixed">
      <thead>
        <tr>
          <td class='w-70px'><?php echo $lang->repo->revision?></td>
          <?php if($repo->SCM == 'Git'):?>
          <td class='w-50px'><?php echo $lang->repo->commit?></td>
          <?php endif;?>
          <td class='w-100px'><?php echo $lang->repo->committer?></td>
          <td class="w-40px"><?php echo $lang->repo->line?></td>
          <td><?php echo $lang->repo->code?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach($blames as $blame):?>
        <tr<?php if(isset($blame['lines'])) echo " class='topLine'";?>>
          <?php 
          if(isset($blame['lines']))
          {
              echo '<td rowspan="' . $blame['lines'] . '" class="info">';
              echo $repo->SCM == 'Git' ? substr($blame['revision'], 0, 10) : $blame['revision'];
              echo '</td>';
              if($repo->SCM == 'Git') echo '<td rowspan="' . $blame['lines'] . '" class="info">' . zget($historys, $blame['revision']) . '</td>';
              echo '<td rowspan="' . $blame['lines'] . '" class="info">' . $blame['committer'] . '</td>'; 
          }
          ?>
          <td class="line"><?php echo $blame['line'];?></td>
          <td><pre><?php echo htmlspecialchars($blame['content']);?></pre></td>
        </tr>
        <?php endforeach?>
      </tbody> 
    </table>
  </div>
</div>
<?php include '../../common/view/footer.lite.html.php';?>
