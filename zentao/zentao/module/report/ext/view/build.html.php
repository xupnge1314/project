<?php include '../../../common/view/header.html.php';?>
<script language='javascript'>
function selectProduct(productID)
{
    link = createLink('report', 'build', 'productID=' + productID);
    location.href=link;
}
</script>
<div id='titlebar'>
  <div class='heading'>    
    <span class='prefix'><?php echo html::icon($lang->icons['report-file']);?></span>
    <strong> <?php echo $title;?></strong>
  </div>
</div>
<div class='side'>
  <?php include '../../view/blockreportlist.html.php';?>
</div>
<div class='main'>
  <div class='input-group w-200px'>
    <?php echo html::select('product', $products, $productID, 'onchange="selectProduct(this.value);" class="form-control chosen"')?>
  </div>
  <table class='table table-condensed table-striped table-bordered tablesorter table-fixed active-disabled' id="bug">
  <thead>
    <tr class='colhead'>
      <th width="100" rowspan="2"><?php echo $lang->report->project;?></th>
      <th width="150" rowspan="2"><?php echo $lang->report->buildTitle;?></th>
      <th width="100" colspan="4"><?php echo $lang->report->severity;?></th>
      <th colspan="9"><?php echo $lang->report->bugType;?></th>
      <th width="150" colspan="3"><?php echo $lang->report->bugStatus;?></th>
    </tr>
    <tr class="text-center colhead">
      <td><?php echo $lang->bug->severityList[1];?></td>
      <td><?php echo $lang->bug->severityList[2];?></td>
      <td><?php echo $lang->bug->severityList[3];?></td>
      <td><?php echo $lang->bug->severityList[4];?></td>
      <td><?php echo $lang->report->bugTypeList['codeerror'];?></td>
      <td><?php echo $lang->report->bugTypeList['interface'];?></td>
      <td><?php echo $lang->report->bugTypeList['config'];?></td>
      <td><?php echo $lang->report->bugTypeList['install'];?></td>
      <td><?php echo $lang->report->bugTypeList['security'];?></td>
      <td><?php echo $lang->report->bugTypeList['performance'];?></td>
      <td><?php echo $lang->report->bugTypeList['standard'];?></td>
      <td><?php echo $lang->report->bugTypeList['automation'];?></td>
      <td><?php echo $lang->report->bugTypeList['others'];?></td>
      <td><?php echo $lang->bug->statusList['active'];?></td>
      <td><?php echo $lang->bug->statusList['resolved'];?></td>
      <td><?php echo $lang->bug->statusList['closed'];?></td>
    </tr>
  </thead>
  <tbody>
    <?php foreach($bugs as $key =>$projectBuilds):?>
      <tr class="text-center">
        <?php $count = count($projectBuilds);?>
        <td align="left" rowspan="<?php echo $count;?>" title="<?php echo $projects[$key];?>"><?php echo $projects[$key];?></td>
        <?php foreach($projectBuilds as $buildId => $build):?>
        <td align="left" title="<?php echo $builds[$buildId];?>"><?php echo $builds[$buildId];?></td>
        <td><?php echo isset($build['severity'][1])? $build['severity'][1] : 0;?></td>
        <td><?php echo isset($build['severity'][2])? $build['severity'][2] : 0;?></td>
        <td><?php echo isset($build['severity'][3])? $build['severity'][3] : 0;?></td>
        <td><?php echo isset($build['severity'][4])? $build['severity'][4] : 0;?></td>
        <td><?php echo isset($build['type']['codeerror'])? $build['type']['codeerror'] : 0;?></td>
        <td><?php echo isset($build['type']['interface'])? $build['type']['interface'] : 0;?></td>
        <td><?php echo isset($build['type']['config'])? $build['type']['config'] : 0;?></td>
        <td><?php echo isset($build['type']['install'])? $build['type']['install'] : 0;?></td>
        <td><?php echo isset($build['type']['security'])? $build['type']['security'] : 0;?></td>
        <td><?php echo isset($build['type']['performance'])? $build['type']['performance'] : 0;?></td>
        <td><?php echo isset($build['type']['standard'])? $build['type']['standard'] : 0;?></td>
        <td><?php echo isset($build['type']['automation'])? $build['type']['automation'] : 0;?></td>
        <td><?php echo isset($build['type']['others'])? $build['type']['others'] : 0;?></td>
        <td><?php echo isset($build['status']['active'])? $build['status']['active'] : 0;?></td>
        <td><?php echo isset($build['status']['resolved'])? $build['status']['resolved'] : 0;?></td>
        <td><?php echo isset($build['status']['closed'])? $build['status']['closed'] : 0;?></td>
      </tr>
      <?php 
        if($count != 1) echo '<tr class="text-center">';
        $count --;
      ?>
      <?php endforeach;?>
    <?php endforeach;?>
  </tbody>
  </table> 
</div>
<?php include '../../../common/view/footer.html.php';?>
