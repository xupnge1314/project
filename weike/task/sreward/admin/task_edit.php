<?php
defined ( 'ADMIN_KEKE' ) or exit ( 'Access Denied' );
intval ( $task_id ) or kekezu::admin_show_msg ( $_lang ['param_error'], 'index.php?do=model&model_id=' . $model_id . '&view=list', 3, '', 'warning' );
$ops = array ('basic', 'work', 'comm', 'agree' );
in_array ( $op, $ops ) or $op = 'basic';
$task_info = db_factory::get_one ( sprintf ( " select * from %switkey_task where task_id='%d'", TABLEPRE, $task_id ) );
if(!in_array($task_info['task_status'],array(6,8,11,13))){
	unset($ops[4]);
}
$task_config = unserialize($model_info['config']);
keke_lang_class::loadlang('task_edit','task');
$task_sub_time = date('Y-m-d',$task_info['sub_time']);
$task_end_time = date('Y-m-d',$task_info['end_time']);
$task_start_time = date('Y-m-d',$task_info['start_time']);
if ($op == 'basic') { 
	if ($sbt_recmmend) {
		$res = db_factory::execute ( sprintf ( "update %switkey_task set is_top=1 where task_id='%d' ", TABLEPRE, $task_id ) );
		$res and kekezu::admin_show_msg ( $_lang ['task_operate_successfully'], "index.php?do=model&model_id=$model_id&view=list", 3, '', 'success' ) or kekezu::admin_show_msg ( $_lang ['task_operate_fail'], "index.php?do=model&model_id=$model_id&view=list", 3, '', 'warning' );
	}
	if ($sbt_edit) { 
		if($ext_fds){
			CustomClass::editExtData($task_id, $model_id, $ext_fds);
		}
		$task_obj = new Keke_witkey_task_class ();
		$task_obj->setWhere ( " task_id ='$task_id'" );
		$task_obj->setTask_title ( kekezu::escape ( $task_title ) );
		if($txt_task_day){
			$task_obj->setSub_time(strtotime($txt_task_day));
			$task_obj->setEnd_time(strtotime($txt_task_day)+$task_config ['choose_time'] * 24 * 3600);
		}
		$task_obj->setIndus_id ( $slt_indus_id );
		$task_obj->setTask_cash ( $task_cash );
		$task_obj->setReal_cash ( $task_cash * (1 - $task_info ['profit_rate'] / 100) ); 
		$task_obj->setTask_desc ( $task_desc );
		$fields=kekezu::escape($fields);
		$task_obj->setSeo_title($fields['seo_title']);
		$task_obj->setSeo_keyword($fields['seo_keyword']);
		$task_obj->setSeo_desc($fields['seo_desc']);
		if ($_FILES ['fle_task_pic'] ['name']) {
			$task_pic = keke_file_class::upload_file ( "fle_task_pic" );
		} else {
			$task_pic = $task_pic_path;
		}
		$task_obj->setTask_pic ( $task_pic );
		$item_ids = array();
		$cash = $task_info['att_cash']?$task_info['att_cash']:0;
		$now_time = time();
		kekezu::admin_system_log ( $_lang ['edit_task'] . ":{$task_title}" ); 
		$res = $task_obj->edit_keke_witkey_task ();
		$v_arr = array($_lang['admin_name']=>$myinfo_arr ['username'],$_lang['time']=>date('Y-m-d H:i:s',time()),$_lang['model_name']=>$model_info['model_name'],$_lang['task_id']=>$task_info ['task_id'],$_lang['task_title']=>$task_info ['task_title']);
		keke_msg_class::notify_user($task_info ['uid'],$task_info ['username'],'task_edit',$_lang['edit_task'],$v_arr,1);
	} elseif ($sbt_act) {
		switch ($sbt_act) {
			case "freeze" : 
				$res = keke_task_config::task_freeze ( $task_id );
				break;
			case "pass" : 
				$res = keke_task_config::task_audit_pass ( array ($task_id ) );
				break;
			case "nopass" : 
				$res = keke_task_config::task_audit_nopass ( $task_id );
				break;
			case "recommend":
				$res = keke_task_config::task_recommend($task_id);
				break;
			case "unrecommend":
				$res = keke_task_config::task_unrecommend($task_id);
				break;
			case "del" : 
				$res = keke_task_config::task_del($task_id);
		}
	} else {
		$process_arr = keke_task_config::can_operate ( $task_info ['task_status'],$task_info['is_top'] );
		$file_list = db_factory::query ( sprintf ( " select * from %switkey_file where task_id='%d'  and obj_type='task' ", TABLEPRE, $task_id ) );
		$status_arr = sreward_task_class::get_task_status ();
		$payitem_list = keke_payitem_class::get_payitem_config ( 'employer' );
		$indus_arr = $kekezu->_indus_arr;
		$temp_arr = array ();
		$indus_option_arr = $indus_arr;
		kekezu::get_tree ( $indus_option_arr, $temp_arr, "option", $task_info ['indus_id'] );
		$indus_option_arr = $temp_arr;
	}
	$task_info['ext_fields'] = CustomClass::getExtDataList($task_id, $task_info['model_id']);
	if($res){
	kekezu::admin_show_msg ( $_lang ['task_operate_successfully'], "index.php?do=model&model_id=$model_id&view=list", 3, '', 'success' );
	}
} else {
	require S_ROOT.'/task/'.$model_info ['model_dir'].'/admin/task_misc.php';
}
require $kekezu->_tpl_obj->template ( 'task/' . $model_info ['model_dir'] . '/admin/tpl/task_edit_' . $op );