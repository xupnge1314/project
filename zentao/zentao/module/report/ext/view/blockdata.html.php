<div class='panel'>
  <div class='panel-heading'>
    <strong><?php echo $lang->crystal->result?></strong>
    <?php if(common::hasPriv('report', 'crystalExport') and !empty($dataList)):?>
    <div class='panel-actions pull-right'><?php echo html::a(inlink('crystalExport', "step=$step&reportID=$reportID"), $lang->export, '', "class='export btn btn-sm btn-primary'")?></div>
    <?php endif;?>
  </div>
  <?php if($step == 2 and $reportData):?>
  <?php include('reportdata.html.php');?>
  <?php else:?>
  <div class='panel-body scroll-table'>
    <table class='table'>
      <tr>
        <?php foreach($fields as $field):?>
        <th><nobr><?php echo $field;?></nobr></th>
        <?php endforeach;?>
      </tr>
      <?php $i = 1;?>
      <?php foreach($dataList as $data):?>
      <tr>
        <?php foreach($data as $field => $value):?>
        <td><?php echo $value?></td>
        <?php endforeach;?>
      </tr>
      <?php $i++;?>
      <?php if($i >= 11) break;?>
      <?php endforeach;?>
    </table>
  </div>
  <div class='panel-footer'><?php printf($lang->crystal->noticeResult, count($dataList), $i >= 11 ? 10 : count($dataList))?></div>
  <?php endif;?>
</div>
