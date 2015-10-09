<?php
/* get last review info in this file. */
$lastReview  = $this->repo->getLastReviewInfo($file);
$repoModule  = isset($lastReview) && isset($lastReview->module) ? $lastReview->module : '';

/* get product by cookie or last review in this file. */
$repoProduct = isset($_COOKIE['repo' . $repoID]) ? $_COOKIE['repo' . $repoID] : '';
$repoProduct = isset($lastReview) && isset($lastReview->product) ? $lastReview->product : $repoProduct;
$products    = $this->loadModel('product')->getPairs();
$projects    = $this->repo->getProjectPairs($repoProduct);
$modules     = $this->loadModel('tree')->getOptionMenu($repoProduct, $viewType = 'bug', $startModuleID = 0);
$users       = $this->loadModel('user')->getPairs('nodeleted,devfirst');
$products    = array('' => '') + $products;
$projects    = array('' => '') + $projects;

$cwd         = getcwd();
$commiters   = $this->user->getCommiters();
$blames      = $this->scm->blame($entry, $info->revision);
$blamePairs  = array();
foreach($blames as $line => $blame)
{
    if(!isset($blame['committer']))
    {
        $blamePairs[$line] = $blamePairs[$line - 1];
        continue;
    }
    $blamePairs[$line] = zget($commiters, $blame['committer'], $blame['committer']);
}
chdir($cwd);

$reviews       = $this->repo->getReview($repoID, $file, $info->revision);
$v1            = isset($oldRevision) ? $oldRevision : 0;
$bugUrl        = $this->createLink('repo', 'addBug',    "repoID=$repoID&file=$file&v1=$v1&v2={$info->revision}");
$commentUrl    = $this->createLink('repo', 'addComment');
$productSelect = html::select('product', $products, $repoProduct, 'class="product form-control chosen" onchange="changeProduct(this)"');
$moduleSelect  = html::select('module', $modules, $repoModule, 'class="form-control chosen"');
$projectSelect = html::select('project', $projects, '', 'class="form-control chosen"');
$typeSelect    = html::select('repoType', $lang->repo->typeList, '', 'class="form-control chosen"');
$userSelect    = html::select('assignedTo', $users, '', 'class="form-control chosen assignedTo"');
$addCommentFoot =<<<EOT
<div class="comment-actions"><button class="btn btn-sm addComment" type="button">{$lang->repo->addComment}</button></div>
EOT;
$bugBoard =<<<EOT
<div class="bugContainer panel panel-sm">
  <div class="panel-heading">
    <strong>%s</strong> %s
    <div class="pull-right panel-actions">
      <span class="commentHeaderBug"><a href="%s" class="view-bug">Bug#%s</a></span> %s %s
    </div>
  </div>
  <div class="panel-body"><pre class="article-content">%s</pre></div>
</div>
EOT;
$commentBoard = <<<EOT
<div class="commentContainer panel panel-sm" data-comment="%s">
  <div class="panel-heading">
    <strong>%s</strong> %s
    <div class="pull-right panel-actions">
      %s
    </div>
  </div>
  <div class="panel-body"><pre class="article-content">%s</pre></div>
</div>
EOT;
$bugs = array();
foreach($reviews as $line => $lineReview)
{
    $lineBugs = array();
    foreach ($lineReview['bugs'] as $bugID => $bug)
    {
        $lineBug                            = array();
        $lineBug['id']                      = $bugID;
        $lineBug['line']                    = $line;
        $lineBug['title']                   = $bug->title;
        $lineBug['steps']                   = $bug->steps;
        $lineBug['realname']                = $bug->realname;
        $lineBug['openedDate']              = substr($bug->openedDate, 5, 11);
        $lineBug['lines']                   = $bug->lines;
        if($bug->edit) $lineBug['edit']     = true;
        if($bug->delete) $lineBug['delete'] = true;

        if(isset($lineReview['comments']))
        {
            $comments = $lineReview['comments'][$bugID];
            if(isset($comments))
            {
                $bugComments = array();
                foreach ($comments as $commentID => $comment)
                {
                    $bugComment = array(
                        'id' => $comment->id,
                        'edit' => $comment->edit,
                        'realname' => $comment->realname,
                        'date' => substr($comment->date, 5, 11),
                        'comment' => $comment->comment,
                    );
                    $bugComments[] = $bugComment;
                }
                $lineBug['comments'] = $bugComments;
            }
        }
        $lineBugs[] = $lineBug;
    }

    $bugs[$line] = $lineBugs;
}

js::set('bugs', $bugs);
js::set('productError', $lang->repo->error->product);
js::set('contentError', $lang->repo->error->commentText);
js::set('titleError', $lang->repo->error->title);
js::set('commentError', $lang->repo->error->comment);
js::set('submit', $lang->repo->submit);
js::set('cancel', $lang->repo->cancel);
js::set('addCommentFoot', $addCommentFoot);
js::set('confirmDelete', $lang->repo->notice->deleteBug);
js::set('confirmDeleteComment', $lang->repo->notice->deleteComment);
js::set('repoID', $repoID);
js::set('revision', $info->revision);
js::set('file', $file);
js::set('blamePairs', $blamePairs);
?>
<form id="bugForm" class="bugForm form form-condensed hide" method="post" action="<?php echo $bugUrl?>">
<div class="bugFormContainer">
  <table class='table table-form'>
    <tr><th><?php echo $lang->repo->product?></th><td style="width:40%"><?php echo $productSelect?></td><th><?php echo $lang->repo->module?></th><td><?php echo $moduleSelect?></td></tr>
    <tr><th><?php echo $lang->repo->project?></th><td><?php echo $projectSelect?></td><th><?php echo $lang->repo->type?></th><td><?php echo $typeSelect?></td></tr>
    <tr>
      <th><?php echo $lang->repo->assign?></th><td><?php echo $userSelect?></td><th><?php echo $lang->repo->lines?></th>
      <td class='lines'><div class="input-group"><input class="line form-control" type="number" min="1" name="begin"><span class="input-group-addon fix-border">-</span><input class="line form-control" type="number" min="1" name="end"></div></td>
    </tr>
    <tr><th><?php echo $lang->repo->title?></th><td colspan='3'><input id="title" name="title" class="form-control" /></td></tr>
    <tr><th><?php echo $lang->repo->detile?></th><td colspan='3'><textarea id="commentText" name="commentText" class="commentInput form-control" spellcheck="false"></textarea></td></tr>
    <tr><th></th><td colspan="3"><input class="bugSubmit btn btn-primary" type="submit" value="<?php echo $lang->repo->submit?>"><input class="bugCancel btn" type="button" value="<?php echo $lang->repo->cancel?>"></td></tr>
  </table>
  <div class="optional"></div>
</div>
</form>
<div class='panel panel-sm hide panel-bug' id='bugPanel'>
  <div class='panel-heading'>
    <div class='panel-actions pull-right'>
      <a href='javascript:;' class='view-bug'>Bug#<span class='bugid'></span></a>
      <a href='javascript:;' class='edit bugEdit'><i class='icon-pencil'></i></a>
      <a href='javascript:;' class='delete bugDelete'><i class='icon-remove'></i></a>
      <a href="javascript:;"><i class='icon-chevron-sign-down'></i></a>
    </div>
    <i class='icon-bug text-muted'></i> <strong class='title'></strong>
  </div>
  <div class='panel-body'>
    <p><?php echo $lang->repo->lines?> <strong class='code-lines'></strong> &nbsp; <i class='icon-user text-muted'></i> <strong class='realname'></strong> &nbsp;<span class='text-muted bug-date'><i class='icon-time'></i> <span class='openedDate'></span></span></p>
    <form method='post' class='bug-edit-form' action>
      <input type='text' name='commentText' class='commentInput form-control mgb-10'>
      <button type='submit' class='btn btn-sm btn-primary bugEditSubmit'><?php echo $lang->repo->submit?></button>
      <button type='button' class='btn btn-sm bugEditCancel'><?php echo $lang->repo->cancel?></button>
    </form>
    <p class='steps text-content'></p>
    <div class='comments'></div>
    <button class='btn btn-sm addComment' type='button'><?php echo $lang->repo->addComment?></button>
    <form class='commentForm' method='post' action='<?php echo $commentUrl?>' id='commentForm'>
      <textarea name='comment' class='commentText form-control mgb-10' spellcheck='false' placeholder='<?php echo $lang->repo->notice->commentContent?>'></textarea>
      <input class='commentSubmit btn btn-sm btn-primary' type='submit' value='<?php echo $lang->repo->submit?>'>
      <input class='commentCancel btn btn-sm' type='button' value='<?php echo $lang->repo->cancel?>'>
      <input type='hidden' name='objectID' value=''>
      <div class='optional'></div>
    </form>
  </div>
</div>
<div class='comment hide' id='commentCell'>
  <i class='icon-user text-muted'></i> <strong class='realname'></strong>: <span class='comment-content text-content'></span> <span class='text-muted comment-date'>&nbsp;<i class='icon-time'></i> <span class='date'></span></span> &nbsp;<a href='javascript:;' class='edit commentEdit pull-right'><i class='icon-pencil'></i></a>
  <form method='post' class='comment-edit-form' action=''>
    <textarea name='commentText' class='commentInput form-control mgb-10'></textarea>
    <button type='submit' class='btn btn-sm btn-primary commentEditSubmit'><?php echo $lang->repo->submit?></button>
    <button type='button' class='btn btn-sm commentEditCancel'><?php echo $lang->repo->cancel?></button>
  </form>
</div>
<div class='dropdown' id="bugsPreview">
  <ul class='dropdown-menu fade'>
    <li class='dropdown-header'><?php echo $lang->repo->line?><strong class='code-line'></strong> &nbsp; <i class='icon-bug'></i> <strong class='bug-count'>0</strong> &nbsp; <i class='icon-comments-alt'></i> <strong class='comment-count'>0</strong></li>
  </ul>
</div>
<div id='rowTip' class='hide'><div class='row-tip'><i class='icon-chat-dot preview-icon'></i><div class='on-expand tip'><span><?php echo $lang->repo->expand?> </span><i class='icon-chevron-down'></i></div><div class='on-collapse tip'><span><?php echo $lang->repo->collapse?> </span><i class='icon-chevron-up'></i></div></div></div>
