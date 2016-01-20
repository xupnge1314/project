<?php
/**
 * The custom view file of report module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2014 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     report
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../../common/view/header.html.php';?>
<!-- SQL查询 -->
<?php include 'blocksql.html.php'?>
<?php if(!empty($dataList)):?>
<!-- 报表条件 -->
<?php include 'blockcondition.html.php'?>
<?php endif;?>
<?php if(!empty($dataList)):?>
<!-- 显示结果 -->
<?php include 'blockdata.html.php'?>
<?php else:?>
<div class='panel'>
  <div class='panel-heading'><strong><?php echo $lang->crystal->result?></strong></div>
  <div class='panel-body'><?php echo $lang->crystal->notResult?></div>
<?php endif;?>
<?php js::set('reportID', $reportID)?>
<?php include '../../../common/view/footer.html.php';?>
