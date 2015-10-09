<?php
/**
 * The view file of my module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2012 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     business(商业软件) 
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     calendar 
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php if(common::hasPriv('user', 'todocalendar')):?>
<script>
$('.sub-featurebar ul.nav').prepend(<?php echo json_encode("<li id='todocalendar'>" . html::a(inlink('todocalendar', "account=$account"), $lang->user->todocalendar) . '<li>');?>);
</script>
<?php endif;?>
