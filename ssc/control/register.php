<?php
($uid && ! isset ( $_SESSION ['auid'] )) and header ( "location:index.php" );
$strPageTitle = '注册-'.$_K ['html_title'];
$strPageKeyword = '注册,'.$_K ['html_title'];
$strPageDescription = $kekezu->_sys_config['index_seo_desc'];
$objReg = new keke_register_class ();
$arrApiNames = keke_glob_class::get_open_api ();
if (isset ( $formhash ) && kekezu::submitcheck ( $formhash )) {
	//检测身份
	if ( intval ( $reg_user_type ) != 1 && intval ( $reg_user_type ) != 2) {
		$tips ['errors'] ['reg_user_type'] = '请选择需方或供方身份注册';
		kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
	}
	
	//检测需方身份
	if ( intval ( $reg_user_type ) == '1') {
		if (intval ( $reg_user_type_xf )!=1 && intval ( $reg_user_type_xf ) != 2){
			$tips ['errors'] ['reg_user_type_xf'] = '请选择个人用户或者企业用户';
			kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
		}
	}elseif(intval ( $reg_user_type ) == '2'){
		$reg_user_type_xf = 2;//供方都是企业认证
	}

	if (keke_user_class::user_checkemail ( $email ) != 1) {
		$tips ['errors'] ['email'] = '该email非法或已经被注册';
		kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
	}
	if (strtoupper ( CHARSET ) == 'GBK') {
		$account = kekezu::utftogbk( $account );
	}
	$strNameCheck = keke_user_class::check_username ( $account );
	if ($strNameCheck != 1) {
		$tips ['errors'] ['account'] = $strNameCheck;
		kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
	}
	$strCodeCheck = kekezu::check_secode ( $code );
	if ($strCodeCheck != 1) {
		$tips ['errors'] ['code'] = $strCodeCheck;
		kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
	}
	if (intval ( $agree ) == 0) {
		$tips ['errors'] ['agree'] = '请先同意注册协议';
		kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
	}
	//增加$user_type,
	$intRegUid = $objReg->user_register ( kekezu::escape($account), $password , $email, $code, 1, $password, $reg_user_type, $reg_user_type_xf );
	$arrUserInfo = keke_user_class::get_user_info ( $intRegUid );
	$objReg->register_login ( $arrUserInfo );
}
if (isset ( $check_username ) && ! empty ( $check_username )) {
	$res = keke_user_class::check_username ( $check_username );
	echo $res;
	die ();
}
$_SESSION ['spread'] = 'index.php?do=register';