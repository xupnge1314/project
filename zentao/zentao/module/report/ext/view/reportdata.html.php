<?php
/**
 * The reportData view file of report module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2014 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     report
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/tablesorter.html.php';?>
<?php
$sqlLangs   = json_decode($this->session->sqlLangs, true);
$clientLang = $this->app->getClientLang();
?>
<table class='reportData table table-bordered table-fixed <?php echo empty($condition['group2']) ? 'tablesorter' : ''?>' style='width: auto; min-width: 100%'>
  <thead>
    <tr>
      <th><?php echo $fields[$condition['group1']]?></th>
      <?php if($condition['group2']):?>
      <th><?php echo $fields[$condition['group2']]?></th>
      <?php endif;?>
      <?php
      /* Set dataCols. */
      $dataCols = array();
      foreach($headers as $i => $reportFields)
      {
          $showed[$i] = false;
          foreach($reportFields as $reportField)
          {
              if(isset($headerNames[$i]))
              {
                  foreach($headerNames[$i] as $key => $headerName)
                  {
                      echo '<th>' . (empty($headerName) ? 'NULL' : $headerName) . '</th>';
                      $percentKey = (empty($key) ? 'null' : $key) . 'Percent';
                      if(isset($condition['percent'][$i]) and isset($condition['showAlone'][$i]) and $condition['contrast'][$i] != 'crystalTotal') echo "<th>" . (isset($sqlLangs[$percentKey][$clientLang]) ? $sqlLangs[$percentKey][$clientLang] : $lang->crystal->percentAB) . "</th>";
                      $dataCols[$i][] = $key;
                  }
                  $showed[$i] = true;
              }
              elseif(isset($condition['isUser']['reportField'][$i]))
              {
                  $user = zget($users, $reportField, $reportField);
                  echo '<th>' . (empty($user) ? 'NULL' : $user) . '</th>';
                  $dataCols[$i][] = $reportField;
              }
              else
              {
                  echo '<th>' . zget($fields, $reportField, $reportField) . '</th>';
                  $dataCols[$i][] = $reportField;
              }
              if($showed[$i]) break;
              $percentKey = $reportField . 'Percent';
              if(isset($condition['percent'][$i]) and isset($condition['showAlone'][$i]) and $condition['contrast'][$i] != 'crystalTotal') echo "<th>" . (isset($sqlLangs[$percentKey][$clientLang]) ? $sqlLangs[$percentKey][$clientLang] : $lang->crystal->percentAB) . "</th>";
          }
          if(isset($condition['reportTotal'][$i])) echo "<th>{$lang->crystal->total}</th>";
          $percentKey = $reportField . 'Percent';
          if(isset($condition['percent'][$i]) and isset($condition['showAlone'][$i]) and $condition['contrast'][$i] == 'crystalTotal') echo "<th>" . (isset($sqlLangs[$percentKey][$clientLang]) ? $sqlLangs[$percentKey][$clientLang] : $lang->crystal->percentAB) . "</th>";
      }
      ?>
    </tr>
  </thead>
  <tbody>
    <?php if($condition['group2']):?>
    <?php foreach($reportData as $group1 => $group1Data):?>
    <?php $group2Num = 0;?>
    <?php foreach($group1Data as $group2 => $data):?>
    <?php $group2Num++;?>
    <tr class='text-center'>
      <?php if($group2Num == 1):?>
      <td <?php if(count($group1Data) > 1) echo 'rowspan=' . count($group1Data)?>>
        <?php
        if(!empty($condition['isUser']['group1']))
        {
            $group1Name = zget($users, $group1, $group1);
        }
        elseif($groupLang['group1'])
        {
            $group1Name = zget($groupLang['group1'], $group1, $group1);
        }
        else
        {
            $group1Name = $group1;
        }
        echo empty($group1Name) ? 'NULL' : $group1Name;
        ?>
      </td>
      <?php endif;?>
      <td>
        <?php
        if(!empty($condition['isUser']['group2']))
        {
            $group2Name = zget($users, $group2, $group2);
        }
        elseif($groupLang['group2'])
        {
            $group2Name = zget($groupLang['group2'], $group2, $group2);
        }
        else
        {
            $group2Name = $group2;
        }
        echo empty($group2Name) ? 'NULL' : $group2Name;
        ?>
      </td>
      <?php
      $data         = $this->report->getCellData($data, $dataCols, $condition);
      $allTotal     = $data['allTotal'];
      $cellDataList = $data['cellData'];
      foreach($cellDataList as $i => $cellData) echo "<td>{$cellData}</td>";
      ?>
    </tr>
    <?php endforeach;?>
    <?php endforeach;?>
    <?php else:?>
    <?php foreach($reportData as $group1 => $data):?>
    <tr class='text-center'>
      <td>
        <?php
        if(!empty($condition['isUser']['group1']))
        {
            $group1Name = zget($users, $group1, $group1);
        }
        elseif($groupLang['group1'])
        {
            $group1Name = zget($groupLang['group1'], $group1, $group1);
        }
        else
        {
            $group1Name = $group1;
        }
        echo empty($group1Name) ? 'NULL' : $group1Name;
        ?>
      </td>
      <?php
      $data         = $this->report->getCellData($data, $dataCols, $condition);
      $allTotal     = $data['allTotal'];
      $cellDataList = $data['cellData'];
      foreach($cellDataList as $i => $cellData) echo "<td>{$cellData}</td>";
      ?>
    </tr>
    <?php endforeach;?>
    <?php endif;?>
  </tbody>
  <tfoot>
    <tr class='text-center'>
      <td class='text-right' <?php if($condition['group2']) echo 'colspan=2'?>><?php echo $lang->crystal->total?></td>
      <?php ksort($allTotal);?>
      <?php foreach($allTotal as $total):?>
      <td><?php echo $total?></td>
      <?php endforeach;?>
    </tr>
  </tfoot>
</table>
