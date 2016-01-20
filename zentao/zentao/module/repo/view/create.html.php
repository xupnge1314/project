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
<?php include '../../common/view/header.html.php';?>
<div class='container'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->repo->create?></strong>
    </div>
  </div>
  <form class='form-condensed' method='post' target='hiddenwin'>
    <table class='table table-form'> 
      <tr>
        <th class='w-100px'><?php echo $lang->repo->SCM;?></th>
        <td class='w-p35-f'><?php echo html::select('SCM', $lang->repo->scmList, 'Subversion', "class='form-control'");?></td>
      </tr>
      <tr>
        <th class='rowhead'><?php echo $lang->repo->name;?></th>
        <td><?php echo html::input('name', '', "class='form-control'");?></td>
      </tr>
      <tr>
        <th class='rowhead'><?php echo $lang->repo->path;?></th>
        <td><?php echo html::input('path', '', "class='form-control'")?></td>
        <td><div class='help-block'><?php echo $lang->repo->example->path;?></div></td>
      </tr>  
      <tr>
        <th class='rowhead'><?php echo $lang->repo->encoding;?></th>
        <td><?php echo html::input('encoding', 'utf-8', "class='form-control'");?></td>
      </tr> 
      <tr>
        <th class='rowhead'><?php echo $lang->repo->client;?></th>
        <td><?php echo html::input('client', '', "class='form-control'")?></td>
        <td><div class='help-block'><?php echo $lang->repo->example->client;?></div></td>
      </tr>
      <tr>
        <th class='rowhead'><?php echo $lang->repo->account;?></th>
        <td><?php echo html::input('account', '', "class='form-control'");?></td>
      </tr>  
      <tr>
        <th class='rowhead'><?php echo $lang->repo->password;?></th>
        <td><?php echo html::password('password', '', "class='form-control'");?></td>
      </tr>  
      <tr>
        <th class='rowhead'><?php echo $lang->repo->acl;?></th>
        <td>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->repo->group?></span>
            <?php echo html::select('acl[groups][]', $groups, '', "class='form-control chosen' multiple")?>
          </div>
          <div class='input-group'>
            <span class='input-group-addon'><?php echo $lang->repo->user?></span>
            <?php echo html::select('acl[users][]', $users, '', "class='form-control chosen' multiple")?>
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
