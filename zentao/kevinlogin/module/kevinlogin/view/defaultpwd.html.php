<?php
/**
 * The browse view file of product module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2013 青岛易软天创网络科技有限公司 (QingDao Nature Easy Soft Network Technology Co,LTD www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     product
 * @version     $Id: browse.html.php 4909 2013-06-26 07:23:50Z chencongzhi520@gmail.com $
 * @link        http://www.zentao.net
 */
?>
<?php include '../../common/view/header.html.php'; ?>
<div id='featurebar'>
	<ul class='nav'>
		<li id='defaultpwd'><?php echo html::a(helper::createLink('kevinlogin', 'defaultpwd'), $lang->kevinlogin->defaultpwd); ?></li>
		<li id='managepriv'><?php echo html::a(helper::createLink('kevinlogin', 'managepriv'), $lang->kevinlogin->managepriv); ?></li>
		<?php echo "<script>$('#$controlType') . addClass('active');</script>"; ?>
	</ul>
</div>
<div class="text-left">
<div class='mw-500px text-left'>
	<form class='form-condensed' method='post' target='hiddenwin'>
		<table align='center' class='table table-form' id='pwdList'>
			<thead>
				<tr class='text-center'>
					<th class='w-id'><?php echo $lang->idAB;?></th>
					<th><?php echo $lang->user->password; ?></th>
					<th class='w-id'><?php echo $lang->actions; ?></th>
				</tr>
			</thead>
			<tbody>
				<?php
				$i = -10;$index=0;
				foreach ($passwords as $tempId => $pwd):$i+=1;$index+=1;
					?>
					<tr class='text-center'>
						<td class='text-left'><?php echo $index;?></td>
						<td class='text-left'>
							<?php echo html::input("password[$tempId]", $pwd, "class='form-control'") . html::hidden("pwdList[$tempId]", $tempId); ?>
						</td>
						<td class='text-left'>
							<?php common::printIcon('kevinlogin', 'delete', "id=$tempId", '', 'list', 'remove', 'hiddenwin'); ?>
						</td>
					</tr>
				<?php endforeach; ?>
				<?php for($j=-10;$j<-6;$j++){$index+=1;?>
				<tr class='text-center'>
					<td class='text-left'><?php echo $index;?></td>
					<td class='text-left'>
						<?php
						echo html::input("password[$j]", '', "class='form-control'") . html::hidden("pwdList[$j]", $j);
						?>
					</td>
				</tr>
				<?php }?>
				<tr class='text-center'>
					<td colspan="3"><?php echo html::submitButton('', '', 'btn-primary') . html::backButton(); ?></td>
				</tr>
			</tbody>
<?php if (count($passwords)): ?>
				<tfoot>
					<tr>
						<td colspan='2' align='left'>
	<?php $pager->show(); ?>
							</div>
						</td>
					</tr>
				</tfoot>
<?php endif; ?>
		</table>
	</form>
</div>
</div>
<?php include '../../common/view/footer.html.php'; ?>