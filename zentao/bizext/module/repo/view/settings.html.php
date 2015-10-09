<?php
/**
 * The settings view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @author      Wang Yidong, Zhu Jinyong 
 * @package     repo
 * @version     $Id: setting.html.php $
 */
?>
<?php include '../../common/view/header.html.php';?>
<div class='container'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->repo->settings;?></strong>
    </div>
  </div>
  <form class='form-condensed' method='post' target='hiddenwin'>
    <table class='table table-form'> 
      <tr>
        <th class='rowhead'><?php echo $lang->repo->SCM;?></th>
        <td class='w-p35-f'><?php echo html::select('SCM', $lang->repo->scmList, $repo->SCM, "class='form-control'");?></td>
      </tr>  
      <tr>
        <th class='rowhead'><?php echo $lang->repo->name;?></th>
        <td><?php echo html::input('name', $repo->name, "class='form-control'");?></td>
      </tr>  
      <tr>
        <th class='rowhead'><?php echo $lang->repo->path;?></th>
        <td><?php echo html::input('path', $repo->path, "class='form-control'")?></td>
        <td><div class='help-block'><?php echo $lang->repo->example->path;?></div></td>
      </tr>  
      <tr>
        <th class='rowhead'><?php echo $lang->repo->encoding;?></th>
        <td><?php echo html::input('encoding', $repo->encoding, "class='form-control'")?></td>
        <td><div class='help-block'><?php $lang->repo->example->encoding;?></div></td>
      </tr> 
      <tr>
        <th class='rowhead'><?php echo $lang->repo->client;?></th>
        <td><?php echo html::input('client', $repo->client, "class='form-control'")?></td>
        <td><div class='help-block'><?php $lang->repo->example->client;?></div></td>
      </tr>
      <tr>
        <th class='rowhead'><?php echo $lang->repo->account;?></th>
        <td><?php echo html::input('account', $repo->account, "class='form-control'");?></td>
      </tr>
      <tr>
        <th class='rowhead'><?php echo $lang->repo->password;?></th>
        <td><?php echo html::password('password', $repo->password, "class='form-control'");?></td>
      </tr>
      <tr>
        <th class='rowhead'><?php echo $lang->repo->acl;?></th>
        <td>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->repo->group?></span>
            <?php echo html::select('acl[groups][]', $groups, empty($repo->acl->groups) ? '' : join(',', $repo->acl->groups), "class='form-control chosen' multiple")?>
          </div>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->repo->user?></span>
            <?php echo html::select('acl[users][]', $users, empty($repo->acl->users) ? '' : join(',', $repo->acl->users), "class='form-control chosen' multiple")?>
          </div>
        </td>
      </tr>  
      <tr>
        <td></td>
        <td class='text-center'><?php echo html::submitButton() . html::backButton();?></td>
      </tr>
    </table>
  </form>
</div>
<?php include '../../common/view/footer.html.php';?>
