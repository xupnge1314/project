<?php
/**
 * The saveReport view file of report module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2014 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     report
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/header.lite.html.php';?>
<?php include '../../../common/view/chosen.html.php';?>
<form class='form-condensed' method='post' target='hiddenwin'>
  <table class='table table-form'>
    <tr>
      <th class='w-100px'><?php echo $lang->crystal->name?></th>
      <td>
        <ul class='nav nav-tabs'>
          <?php foreach($config->langs as $langKey => $currentLang):?>
          <?php $active = $langKey == $this->app->getClientLang() ? 'active' : ''?>
          <li class='<?php echo $active?>'><?php echo html::a('#'. str_replace('-', '_', $langKey), $currentLang, '', "data-toggle='tab'")?></li>
          <?php endforeach?>
        </ul>
        <div class='tab-content'>
          <?php foreach($config->langs as $langKey => $currentLang):?>
          <?php $active = $langKey == $this->app->getClientLang() ? 'active' : ''?>
          <div class='tab-pane <?php echo $active?>' id='<?php echo str_replace('-', '_', $langKey)?>'>
            <?php echo html::input("name[$langKey]", '', "class='form-control'")?>
          </div>
          <?php endforeach?>
        </div>
      </td>
    </tr>
    <tr>
      <th><?php echo $lang->crystal->code?></th>
      <td><?php echo html::input('code', '', "class='form-control'")?></td>
    </tr>
    <tr>
      <th><?php echo $lang->crystal->module?></th>
      <td><?php echo html::select('module[]', $lang->crystal->moduleList, '', "class='form-control chosen' multiple")?></td>
    </tr>
    <tr>
      <th><?php echo $lang->crystal->desc?></th>
      <td>
        <ul class='nav nav-tabs'>
          <?php foreach($config->langs as $langKey => $currentLang):?>
          <?php $active = $langKey == $this->app->getClientLang() ? 'active' : ''?>
          <li class='<?php echo $active?>'><?php echo html::a('#'. str_replace('-', '_', $langKey), $currentLang, '', "data-toggle='tab'")?></li>
          <?php endforeach?>
        </ul>
        <div class='tab-content'>
          <?php foreach($config->langs as $langKey => $currentLang):?>
          <?php $active = $langKey == $this->app->getClientLang() ? 'active' : ''?>
          <div class='tab-pane <?php echo $active?>' id='<?php echo str_replace('-', '_', $langKey)?>'>
            <textarea name="desc[<?php echo $langKey?>]" id="desc<?php echo $langKey?>" class="form-control" rows="5"></textarea>
          </div>
          <?php endforeach?>
        </div>
      </td>
    </tr>
    <tr>
      <th></th>
      <td><?php echo html::submitButton();?></td>
    </tr>
  </table>
</form>
<?php include '../../../common/view/footer.lite.html.php';?>
