<?php
/**
 * The index view file of ldap module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2010 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     ldap
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../common/view/header.html.php';?>
<?php if(!extension_loaded('ldap')):?>
<div class='box-title'><?php echo $lang->ldap->noldap->header?></div>
<div class='box-content'><?php echo $lang->ldap->noldap->content?></div>
<?php else:?>
<div class='container mw-700px'>
  <div id='titlebar'>
    <div class='heading'>
      <?php echo $lang->ldap->common?>
    </div>
  </div>
<form method='post' target='hiddenwin'>
<table class='table table-form'>
  <tr>
    <th class='text-danger'><?php echo $lang->ldap->base?></th>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th class='w-100px'><?php echo $lang->ldap->turnon?></th>
    <td><?php echo html::select('turnon', $lang->ldap->turnonList, empty($ldapConfig->turnon) ? '' : $ldapConfig->turnon, "class='form-control'")?></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->type?></th>
    <td><?php echo html::select('type', $lang->ldap->typeList, empty($ldapConfig->type) ? '' : $ldapConfig->type, "class='form-control'")?></td>
    <td>
      <?php $checked = isset($ldapConfig->anonymous) ? 'checked' : '';?>
      <label class="checkbox" style='font-weight:normal;'><input type="checkbox" id="anonymous" name="anonymous" value="1" <?php echo $checked?>><?php echo $lang->ldap->anonymous?></label>
    </td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->host?></th>
    <td><?php echo html::input('host', empty($ldapConfig->host) ? '' : $ldapConfig->host, "class='form-control'")?></td>
    <td><?php echo $lang->ldap->example . 'ldap.test.com'?></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->port?></th>
    <td><?php echo html::input('port', empty($ldapConfig->port) ? '389' : $ldapConfig->port, "class='form-control'")?></td>
  </tr>
  <tr class='adshow'>
    <th><?php echo $lang->ldap->admin?></th>
    <td><?php echo html::input('admin', empty($ldapConfig->admin) ? '' : $ldapConfig->admin, "class='form-control'")?></td>
  </tr>
  <tr class='adshow'>
    <th><?php echo $lang->ldap->password?></th>
    <td><?php echo html::password('password', empty($ldapConfig->password) ? '' : $ldapConfig->password, "class='form-control'")?></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->baseDN?></th>
    <td><?php echo html::input('baseDN', empty($ldapConfig->baseDN) ? '' : $ldapConfig->baseDN, "class='form-control'")?></td>
    <td><?php echo $lang->ldap->example . 'dc=test,dc=com'?></td>
  </tr>
  <tr>
    <th class='text-danger'><?php echo $lang->ldap->attr?></th>
    <td></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->account?></th>
    <td><?php echo html::input('account', empty($ldapConfig->account) ? 'samaccountname' : $ldapConfig->account, "class='form-control'")?></td>
    <td><?php echo $lang->ldap->accountPS?></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->realname?></th>
    <td><?php echo html::input('realname', empty($ldapConfig->realname) ? 'name' : $ldapConfig->realname, "class='form-control'")?></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->email?></th>
    <td><?php echo html::input('email', empty($ldapConfig->email) ? 'mail' : $ldapConfig->email, "class='form-control'")?></td>
  </tr>
  <tr>
    <th><?php echo $lang->ldap->phone?></th>
    <td><?php echo html::input('phone', empty($ldapConfig->phone) ? 'telephonenumber' : $ldapConfig->phone, "class='form-control'")?></td>
  </tr>
  <tr>
    <td colspan='3' align='center'><?php echo html::submitButton() . html::backButton() . '&nbsp;&nbsp;' . html::a($this->createLink('user', 'importLDAP'), $lang->ldap->import);?></td>
  </tr>
</table>
</form>
</div>
<?php endif;?>
<?php include '../../common/view/footer.html.php';?>
