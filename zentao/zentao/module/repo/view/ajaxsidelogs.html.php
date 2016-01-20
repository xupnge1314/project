<?php
/**
 * The side logs view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2014 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     repo
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<div class='panel'>
  <div class='panel-heading nobr'><strong><?php echo $lang->repo->log?></strong></div>
  <form id='logForm' action='<?php echo inlink('diff', "repoID=$repoID&entry=" . $this->repo->encodePath($path))?>' method='post' target='showDiff'>
    <table class='table table-fixed block mg-0'>
      <thead>
        <tr class="grey-head">
          <th width='30'></th>
          <th width='80'><?php echo $lang->repo->revisionA?></th>
          <?php if($repo->SCM == 'Git'):?>
          <th width='50'><?php echo $lang->repo->commit?></th>
          <?php endif;?>
          <th width='80'><?php echo $lang->repo->time?></th>
          <th width='100'><?php echo $lang->repo->committer?></th>
          <th><?php echo $lang->repo->comment?></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($revisions as $log):?>
        <tr>
          <td><input type='checkbox' name='revision[]' value="<?php echo $log->revision?>" /></td>
          <td class='versions'><span class="revision"><?php echo html::a(inlink('revision', "repoID=$repoID&revision={$log->revision}"), $repo->SCM == 'Git' ? substr($log->revision, 0, 10) : $log->revision)?></span></td>
          <?php if($repo->SCM == 'Git'):?>
          <td><?php echo $log->commit?></td>
          <?php endif;?>
          <td><?php echo substr($log->time, 0, 10)?></td>
          <td><?php echo $log->committer?></td>
          <?php $comment = htmlspecialchars($log->comment, ENT_QUOTES);?>
          <td title='<?php echo $comment?>'><?php echo $log->comment?></td>
        </tr>
        <?php endforeach;?>
      </tbody>
    </table>
    <div class='panel-footer'>
      <?php if(common::hasPriv('repo', 'diff')) echo html::submitButton($lang->repo->diff, '', count($revisions) < 2 ? 'disabled btn-primary' : 'btn-primary')?>
      <?php // echo html::a(inlink('log', "repoID=$repoID&entry=" . $this->repo->encodePath($path)), $lang->repo->allLog);?>
      <div class='pull-right'>
        <div class='btn-group'>
          <?php
          $prePage  = $pager->pageID == 1 ? 1 : $pager->pageID - 1;
          $nextPage = $pager->pageID == $pager->pageTotal ? $pager->pageID : $pager->pageID + 1;
          $params   = "repoID=$repoID&path=" . $this->repo->encodePath($path) . "&type=$logType&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";
          $preLink  = inlink('ajaxSideLogs', "$params&pageID=$prePage");
          $nextLink = inlink('ajaxSideLogs', "$params&pageID=$nextPage");
          echo html::a($preLink, $lang->pager->pre, '', "class='ajaxPager btn" . ($prePage == $pager->pageID ? ' disabled' : '') . "'");
          echo html::a($nextLink, $lang->pager->next, '', "class='ajaxPager btn" . ($nextPage == $pager->pageID ? ' disabled' : '') . "'");
          ?>
        </div>
      </div>
    </div>
  </form>
</div>
<div id='diffModal' class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-iframe" style='width:95%'>
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"><i class="icon-file-text"></i> <?php echo $lang->repo->diff . ' ./' . $path;?> <span class='revisions'></span></h4>
      </div>
      <div class="modal-body">
        <iframe frameborder="no" allowtransparency="true" scrolling="auto" id='showDiff' name='showDiff' style="width: 100%; height: 100%; left: 0px;"></iframe>
      </div>
    </div>
  </div>
</div>
<script>
if($("input:checkbox[name='revision[]']:checked").length < 2)
{
    $("input:checkbox[name='revision[]']:lt(2)").attr('checked', 'checked');
}
$("input:checkbox[name='revision[]']").each(function(){ if(!$(this).is(':checked')) $(this).attr("disabled","disabled")});
$("input:checkbox[name='revision[]']").click(function(){
    var checkNum = $("input:checkbox[name='revision[]']:checked").length;
    if (checkNum >= 2) 
    {
        $("input:checkbox[name='revision[]']").each(function(){ if(!$(this).is(':checked')) $(this).attr("disabled","disabled")});
    } 
    else
    {
        $('#diffRepo').remove();
        $("input:checkbox[name='revision[]']").each(function(){$(this).attr("disabled", false)});
    }
});

var $diffModal = $('#diffModal');
var $diffBody = $diffModal.find('.modal-body');

$('#logForm').submit(function(e)
{
    $diffModal.modal('show');
    $('#showDiff').load(function()
    {
        var iframe$ = window.frames['showDiff'].$;
        var $iframeBody = iframe$('body').addClass('body-modal');
        $diffBody.height($iframeBody.height() + 40);
        $iframeBody.resize(function()
        {
            $diffBody.height($iframeBody.height() + 40);
            $.ajustModalPosition('fit', $diffModal.find('.modal-dialog'));
        });
    });
})
</script>
