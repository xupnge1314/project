<?php
/**
 * The control file of effort module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     effort
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../common/view/header.html.php';?>
<div class='container mw-700px'>
  <div id='titlebar'>
    <div class='heading'>
      <span class='prefix'><strong><?php echo $effort->id;?></strong></span>
      <strong><?php echo $lang->effort->view;?></strong>
    </div>
  </div>
  <div class='main'>
    <div class="container">
      <table class='table table-form' id='effort'> 
      <tbody>
        <tr>
          <th class='w-80px'><?php echo $lang->effort->account;?></th>
          <td><?php echo $users[$effort->account];?></td>
        </tr>  
        <tr>
          <th class='rowhead'><?php echo $lang->effort->date;?></th>
          <td><?php echo date(DT_DATE1, strtotime($effort->date));?></td>
        </tr>  
        <tr>
          <th class='rowhead'><?php echo $lang->effort->consumed;?></th>
          <td>
            <?php
            if(isset($effort->consumed)) echo $effort->consumed . ' ' . $lang->effort->hour;
            ?>
          </td>
        </tr>  
        <?php if($effort->objectType == 'task'):?>
        <tr>
          <th class='rowhead'><?php echo $lang->effort->left;?></th>
          <td>
            <?php
            if(isset($effort->consumed)) echo $effort->left . ' ' . $lang->effort->hour;
            ?>
          </td>
        </tr>
        <?php endif;?>
        <tr>
          <th class='rowhead'><?php echo $lang->effort->objectType;?></th>
          <td><?php echo $lang->effort->objectTypeList[$effort->objectType];?></td>
        </tr>  
        <tr>
          <th class='rowhead'><?php echo $lang->effort->work;?></th>
          <td>
            <?php echo $effort->work;?>
          </td>
        </tr>  
      </tbody>
      </table>
      <?php include '../../common/view/action.html.php';?>
    </div>
    <div class='actions'>
      <div class='btn-group'>
      <?php
      if($this->session->effortList)
      {
          $browseLink = $this->session->effortList;
      }
      elseif($effort->account == $app->user->account)
      {
          $browseLink = $this->createLink('my', 'effort');
      }
      else
      {
          $browseLink = $this->createLink('user', 'effort', "account=$effort->account");
      }
      if($effort->account == $app->user->account)
      {
          common::printIcon('effort', 'edit', "effortID=$effort->id");
          common::printIcon('effort', 'delete', "effortID=$effort->id", '', 'button', '', 'hiddenwin');
      }
      ?>
      </div>
      <div class='btn-group'>
        <?php common::printRPN($browseLink);?>
      </div>
    </div>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
