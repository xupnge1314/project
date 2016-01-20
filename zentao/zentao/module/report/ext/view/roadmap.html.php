<?php include '../../../common/view/header.html.php';?>
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
  <div id='conditions'>
    <strong><?php echo $lang->report->conditions?></strong>
    <label for='closedProduct'>
    <input type='checkbox' value='closedProduct' name='closedProduct' id='closedProduct' <?php if(strpos($conditions, 'closedProduct') !== false) echo "checked='checked'"?>/>
      <?php echo $lang->report->closedProduct?>
    </label>
  </div>
  <div class='roadmap-wrap'>
    <table id="roadmap" class='table table-condensed table-striped table-bordered table-fixed active-disabled'>
      <thead>
        <tr class='colhead'>
          <th class="w-200px"><?php echo $lang->report->product;?></th>
          <th><?php echo $lang->report->plan;?></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($products as $productID => $product):?>
        <tr class="text-center">
          <td><?php echo $product?></td>
          <td>
            <?php if(!empty($plans[$productID])):?>
            <?php foreach($plans[$productID] as $plan):?>
            <div class='plan'>
              <div><?php echo $plan->title?></div>
              <div><?php echo $plan->begin . ' ~ ' . $plan->end?></div>
            </div>
            <?php endforeach;?>
            <?php endif;?>
          </td>
        </tr>
        <?php endforeach;?>
      </tbody>
    </table> 
  </div>
</div>
<?php include '../../../common/view/footer.html.php';?>
