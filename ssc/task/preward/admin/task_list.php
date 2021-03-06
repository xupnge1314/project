<?php
defined ( 'ADMIN_KEKE' ) or exit ( 'Access Denied' );
kekezu::admin_check_role ('m34' );
$task_config = unserialize ( $model_info ['config'] );
$model_list = $kekezu->_model_list;
$task_status = preward_task_class::get_task_status ();
$table_obj = keke_table_class::get_instance ( 'witkey_task' );
$page and $page=intval ( $page ) or $page = 1;
$page_size and $page_size=intval($page_size) or $page_size =10;
$wh = "model_id={$model_info['model_id']}";
if ($w ['task_id']) {
	$wh .= " and task_id = " . intval($w ['task_id']);
}
if ($w ['task_title']) {
	$wh .= ' and task_title like ' . '"%' . $w ['task_title'] . '%" ';
}
if ($w ['task_status']) {
	$wh .= " and task_status = " . intval($w ['task_status']);
}
$w ['task_status']==='0' and $wh .= " and task_status = 0" ;
if ($ord['0']&&$ord['1']) {
	$wh .= " order by {$ord['0']} {$ord['1']}";
}else{
	$wh .= " order by task_id desc ";
}
$url_str = "index.php?do=model&model_id=3&view=list&w[task_id]={$w['task_id']}&w[task_title]={$w['task_title']}&w[task_status]={$w['task_status']}&ord[0]={$ord['0']}&ord[1]={$ord['1']}&page=$page&page_size=$page_size";
$table_arr = $table_obj->get_grid ( $wh, $url_str, $page, $page_size, null, 1, 'ajax_dom');
$task_arr = $table_arr ['data'];
$pages = $table_arr ['pages'];
if($task_id){
	$task_audit_arr = get_task_info($task_id);
	$start_time = date("Y-m-d H:i:s",$task_audit_arr['start_time']);
	$end_time = date("Y-m-d H:i:s",$task_audit_arr['end_time']);
	$url = "<a href =\"{$_K['siteurl']}/index.php?do=task&id={$task_audit_arr['task_id']}\" target=\"_blank\" >" . $task_audit_arr['task_title']. "</a>";
}
	switch ($ac) {
		case "del" : 
			$task_title = db_factory::get_count(sprintf("select task_title from %switkey_task where task_id='%d' ",TABLEPRE,$task_id));
			kekezu::admin_system_log($_lang['delete_task'].":{$task_title}(".$_lang['piece_reward'].")");
			$res = keke_task_config::task_del($task_id);
			kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['delete_success'],'success');
			break;
			case "settask":
				require $kekezu->_tpl_obj->template ( 'task/' . $model_info ['model_dir'] . '/admin/tpl/task_reason' );die;
				break;
			case "stoptask":
				$model_info=db_factory::get_one("select * from ".TABLEPRE."witkey_model where model_id=3");
				$config=unserialize($model_info[config]);
				$task_info = get_task_info($task_id);
				$sum=db_factory::get_one("select count(*) as sum from ".TABLEPRE."witkey_task_work where task_id='".intval($task_id)."' and work_status=6");
				if($sum!=$task_info[work_count]){
					$singlecash=number_format($task_info[real_cash]/$task_info[work_count],2);
					$cash=$singlecash*($task_info[work_count]-$sum[sum])*(100-$config[task_fail_rate])/100;
					keke_finance_class::cash_in($task_info['uid'], $cash,'task_fail','','task_fail');
				}
				$arrWorkInfo=db_factory::query("select * from ".TABLEPRE."witkey_task_work where task_id='".intval($task_id)."' and work_status=6 group by uid");
				foreach($arrWorkInfo as $v){
					if($v){
						$objMsgM = new Keke_witkey_msg_class ();
						$objMsgM->setTo_uid ( $v ['uid'] );
						$objMsgM->setTo_username ( $v ['username'] );
						$objMsgM->setTitle ( kekezu::str_filter ( kekezu::escape ( "任务结束" ) ) );
						$objMsgM->setContent ( kekezu::str_filter ( kekezu::escape ( $content ) ) );
						$objMsgM->setOn_time ( time () );
						$objMsgM->create_keke_witkey_msg ();
					}
				}
				db_factory::execute("update ".TABLEPRE."witkey_task set task_status=9 where task_id=".intval($task_id));
				$v_arr = array (
						"模型名称" => $model_info['model_name'],
						"任务标题" => '<a href="'.$kekezu->_sys_config['website_url'].'/index.php?do=task&id='.$task_audit_arr['task_id'].'">'.$task_audit_arr['task_title'].'</a>',
						"理由" =>   kekezu::str_filter ( kekezu::escape ( $content ) )
				);
				keke_msg_class::notify_user($task_audit_arr['uid'], $task_audit_arr['username'], 'task_end_manually', '任务结束通知',$v_arr);
				kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['operate_success'],'success');
				break;
		case "pass" : 
			$res =keke_task_config::task_audit_pass ( $task_id );
			$v_arr = array($_lang['username']=>$task_audit_arr['username'],$_lang['task_link']=>$url,$_lang['start_time']=>$start_time,$_lang['end_time']=>$end_time,$_lang['task_id']=>"#".$task_id);
			keke_msg_class::notify_user($task_audit_arr['uid'], $task_audit_arr['username'], 'task_auth_success', $_lang['task_auth_success'],$v_arr,1);
			kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['audit_success'],'success');
			break;
		case "nopass" : 
			if($is_submit=="1"){
				$res =keke_task_config::task_audit_nopass ( $task_id );
				$v_arr = array($_lang['username']=>"{$task_audit_arr['username']}",$_lang['task_title']=>$url,$_lang['web_name']=>"$kekezu->_sys_config['website_name']","审核原因"=>$reason);
				keke_shop_class::notify_user($task_audit_arr['uid'], $task_audit_arr['username'], 'task_auth_fail', $_lang['task_auth_fail'],$v_arr,1);
				kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['operate_success'],'success');
			}else{
				$strUsername=sreward_task_class::getUsername($_GET['uid']);
				$strTittle=sreward_task_class::getTitle($task_id);
				require keke_tpl_class::template ( 'task/sreward/admin/tpl/admin_user_check');
				die();
			}
			break;
		case "freeze" : 
			$res =keke_task_config::task_freeze ( $task_id );
			kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['freeze_task_success'],'success');
			break;
		case "unfreeze" : 
			$res =keke_task_config::task_unfreeze ( $task_id );
			kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['unfreeze_task_success'],'success');
			break;
		case "recommend":
			$res =keke_task_config::task_recommend($task_id);
			kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['task_recommend_success'],'success');
			break;
		case "unrecommend":
			$res = keke_task_config::task_unrecommend($task_id);
			kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['cancel_recommend_success'],'success');
			break;
	}
if ($sbt_action==$_lang['mulit_delete']&&!empty($ckb)) {
	keke_task_config::task_del($ckb);
	kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['mulit_delete_success'],'success');
}
if ($sbt_action==$_lang['mulit_pass']&&!empty($ckb)) {
	keke_task_config::task_audit_pass($ckb);
	kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['mulit_pass_success'],'success');
}
if ($sbt_action==$_lang['mulit_nopass']&&!empty($ckb)) {
	keke_task_config::task_audit_nopass($ckb);
	kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['mulit_nopass_success'],'success');
}
if ($sbt_action==$_lang['mulit_freeze']&&!empty($ckb)) {
	keke_task_config::task_freeze($ckb);
	kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['mulit_freeze_success'],'success');
}
if ($sbt_action==$_lang['mulit_unfreeze']&&!empty($ckb)) {
	keke_task_config::task_unfreeze($ckb);
	kekezu::admin_show_msg($_lang['operate_notice'],$url_str,2,$_lang['mulit_unfreeze_success'],'success');
}
function get_task_info($task_id){
	$task_obj = new Keke_witkey_task_class();
	$task_obj->setWhere("task_id = $task_id");
	$task_info = $task_obj->query_keke_witkey_task();
	$task_info = $task_info ['0'];
	return $task_info;
}
require $kekezu->_tpl_obj->template ( 'task/' . $model_info ['model_dir'] . '/admin/tpl/task_' . $view );