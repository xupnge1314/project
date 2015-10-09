<?php include '../../../common/view/header.html.php';?>
<script language='javascript'>
function selectProduct(productID)
{
    link = createLink('report', 'testcase', 'productID=' + productID);
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
      <th><?php echo $lang->report->module;?></th>
      <th><?php echo $lang->report->case->total;?></th>
      <th><?php echo $lang->testcase->resultList['pass'];?></th>
      <th><?php echo $lang->testcase->resultList['fail'];?></th>
      <th><?php echo $lang->testcase->resultList['blocked'];?></th>
      <th><?php echo $lang->report->case->run;?></th>
      <th><?php echo $lang->report->case->passRate;?></th>
    </tr>
    </thead>
    <tbody>
    <?php foreach($modules as $module):?>
      <tr class="text-center">
        <td><?php echo $module->name;?></td>
        <td><?php echo $module->total;?></td>
        <td><?php echo $module->pass;?></td>
        <td><?php echo $module->fail;?></td>
        <td><?php echo $module->blocked;?></td>
        <td><?php echo $module->run;?></td>
        <td><?php echo $module->run ? round(($module->pass / $module->run) * 100, 2) . '%' : 'N/A';?></td>
      </tr>
    <?php endforeach;?>
    </tbody>
  </table> 
</div>
<?php include '../../../common/view/footer.html.php';?>
