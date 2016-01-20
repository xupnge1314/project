<?php
$lang->repo->common          = 'Repo';
$lang->repo->create          = 'Create repo';
$lang->repo->settings        = 'Repo settings';
$lang->repo->browse          = 'Browse';
$lang->repo->delete          = 'Delete repo';
$lang->repo->showSyncComment = 'Display sync schedule';
$lang->repo->ajaxSyncComment = 'Interface: sync comment by ajax';
$lang->repo->download        = 'Download';
$lang->repo->downloadDiff    = 'Download Diff';
$lang->repo->addBug          = 'Add review';
$lang->repo->editBug         = 'Edit review';
$lang->repo->deleteBug       = 'Delete review';
$lang->repo->addComment      = 'Add comment';
$lang->repo->editComment     = 'Edit comment';
$lang->repo->deleteComment   = 'Delete comment';

$lang->repo->submit     = 'Post comment';
$lang->repo->cancel     = 'Cancel';
$lang->repo->addComment = 'Add comment';

$lang->repo->product  = $lang->productCommon;
$lang->repo->module   = 'Module';
$lang->repo->project  = $lang->projectCommon;
$lang->repo->type     = 'Type';
$lang->repo->assign   = 'Assigned To';
$lang->repo->title    = 'Title';
$lang->repo->detile   = 'Detile';
$lang->repo->lines    = 'Code line';
$lang->repo->line     = 'Line';
$lang->repo->expand   = 'Expand';
$lang->repo->collapse = 'Collapse';

$lang->repo->id        = 'ID';
$lang->repo->SCM       = 'Type';
$lang->repo->name      = 'Name';
$lang->repo->path      = 'Path';
$lang->repo->prefix    = 'Prefix';
$lang->repo->config    = 'Config';
$lang->repo->account   = 'Username';
$lang->repo->password  = 'Password';
$lang->repo->encoding  = 'Encoding';
$lang->repo->client    = 'Client';
$lang->repo->size      = 'Size';
$lang->repo->revision  = 'View revision';
$lang->repo->revisionA = 'Revision';
$lang->repo->revisions = 'Revisions';
$lang->repo->time      = 'Time';
$lang->repo->committer = 'Committer';
$lang->repo->commits   = 'Number of commit';
$lang->repo->synced    = 'Initialize sync';
$lang->repo->lastSync  = 'Last sync time';
$lang->repo->deleted   = 'Deleted';
$lang->repo->commit    = 'Commit';
$lang->repo->comment   = 'Comment';
$lang->repo->view      = 'View';
$lang->repo->viewA     = 'View';
$lang->repo->log       = 'Log';
$lang->repo->blame     = 'Blame';
$lang->repo->date      = 'Date';
$lang->repo->diff      = 'Diff';
$lang->repo->diffAB    = 'Diff';
$lang->repo->viewDiff  = 'View diff';
$lang->repo->allLog    = 'All history';
$lang->repo->location  = 'Location';
$lang->repo->file      = 'File';
$lang->repo->action    = 'Action';
$lang->repo->code      = 'Code';
$lang->repo->review    = 'Review';
$lang->repo->acl       = 'Priv';
$lang->repo->group     = 'Group';
$lang->repo->user      = 'User';
$lang->repo->info      = 'Revision info';

$lang->repo->title      = 'Title';
$lang->repo->status     = 'Status';
$lang->repo->openedBy   = 'OpenedBy';
$lang->repo->assignedTo = 'AssignedTo';
$lang->repo->openedDate = 'OpenedDate';

$lang->repo->latestRevision = 'The latest revision';
$lang->repo->actionInfo     = "Add by %s in %s";
$lang->repo->changes        = "Change Log";
$lang->repo->reviewLocation = "file:%s@%s, line:%s - %s";
$lang->repo->commentEdit    = '<i class="icon-pencil"></i>';
$lang->repo->commentDelete  = '<i class="icon-remove"></i>';
$lang->repo->allChanges     = "Other changes";
$lang->repo->commitTitle    = "The %s submission";

$lang->repo->viewDiffList['inline'] = 'Inline';
$lang->repo->viewDiffList['appose'] = 'Appose';

$lang->repo->logStyles['A'] = 'Add';
$lang->repo->logStyles['M'] = 'Modification';
$lang->repo->logStyles['D'] = 'Delete';

$lang->repo->encodingList['utf_8'] = 'UTF-8';
$lang->repo->encodingList['gbk']   = 'GBK';

$lang->repo->scmList['Subversion'] = 'Subverion';
$lang->repo->scmList['Git']        = 'Git';

$lang->repo->notice                 = new stdclass();
$lang->repo->notice->syncing        = 'Synchronizing, please wait ...';
$lang->repo->notice->syncComplete   = 'The synchronization is complete, are jump ...';
$lang->repo->notice->delete         = 'Are you sure delete this version library?';
$lang->repo->notice->successDelete  = 'Has been successfully removed the repository.';
$lang->repo->notice->commentContent = 'Leave a comment';
$lang->repo->notice->deleteBug      = 'Are you sure to delete this bug?';
$lang->repo->notice->deleteComment  = 'Are you sure to delete this comment?';
$lang->repo->notice->lastSyncTime   = 'Last synchronization at:';

$lang->repo->error               = new stdclass();
$lang->repo->error->useless      = 'Your server to disable exec, shell_exec method, can not use this function';
$lang->repo->error->connect      = 'Connect version library failed, please fill in the correct username, password and repo address!';
$lang->repo->error->version      = 'https and svn protocol need version 1.6 or later, please update to latest version! visit:http://subversion.apache.org/';
$lang->repo->error->path         = 'Address the repository fill in the file path, e.g. /home/test.';
$lang->repo->error->cmd          = 'Please fill correct client!';
$lang->repo->error->diff         = 'Must choose two version';
$lang->repo->error->product      = "Please select {$lang->productCommon}!";
$lang->repo->error->commentText  = 'Please input content!';
$lang->repo->error->comment      = 'Please input content!';
$lang->repo->error->title        = 'Please input title!';
$lang->repo->error->accessDenied = 'You do not have permission to access the repository';
$lang->repo->error->noFile       = '%s does not exist';
$lang->repo->error->noPriv       = 'The program does not have permission to switch to %s';

$lang->repo->example           = new stdclass();
$lang->repo->example->client   = "For example: /usr/bin/svn, C:\subversion\svn.exe, /usr/bin/git";
$lang->repo->example->path     = "For example: SVN: http://example.googlecode.com/svn/, GIT: /home/test";
$lang->repo->example->config   = "https need config dir, use '--config-dir' to generate config dir";
$lang->repo->example->encoding = "input encoding of files";

$lang->repo->typeList['standard']    = 'Standard';
$lang->repo->typeList['performance'] = 'Performance';
$lang->repo->typeList['security']    = 'Security';
$lang->repo->typeList['redundancy']  = 'Redundancy';
$lang->repo->typeList['logicError']  = 'Logic error';
