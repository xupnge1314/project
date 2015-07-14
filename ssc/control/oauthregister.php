<?php
$type = strval(trim($type));
$arrOauthType = UserCenter::getOauthType();
$strPageTitle = 'oauth注册-'.$_K ['html_title'];
$strPageKeyword = 'oauth注册,'.$_K ['html_title'];
$strPageDescription = $kekezu->_sys_config['index_seo_desc'];
if($ac=='checkname'){
	$strNameCheck =  keke_user_class::check_username ( $account );
	if ($strNameCheck!=1) {
		kekezu::show_msg ( $strNameCheck, NULL, NULL, NULL, 'error' );
	}else{
		kekezu::show_msg ( "用户名可用", NULL, NULL, NULL, 'ok' );
	}
}
$arrOauthInfo =$_SESSION[$type.'_oauthInfo'];
$memberOauthInfo=$arrOauthInfo;
if (strtoupper ( CHARSET ) == 'GBK') {
	$arrOauthInfo = kekezu::utftogbk($arrOauthInfo);
}
$objReg = new keke_register_class();
$objLogin = new keke_user_login_class();
$arrBindInfo = keke_register_class::is_oauth_bind ( $type, $arrOauthInfo ['account'] );
$account=$arrBindInfo['username'];
if ($_SESSION[$type.'_oauthInfo'] && $arrBindInfo && !$to_bind) {
	$_SESSION[$type.'_oauthInfo'] = null;
	setcookie($type.'uid',1, time()-1);
	$arrUserInfo = kekezu::get_user_info ( $arrBindInfo ['uid'] );
	$loginUserInfo = $objLogin->oauth_user_login ( $arrUserInfo ['username'], $arrUserInfo ['password'], null, 1 );
	$objLogin->save_user_info ( $loginUserInfo, 1 );
}elseif($_SESSION[$type.'_oauthInfo'] && !$arrBindInfo && !$formhash && !$to_bind){
	$password = kekezu::randomkeys(6);
	$account=kekezu::escape($arrOauthInfo ['nickname']);
	$is_nameExist=1;
	while($is_nameExist){
		$hasUser=db_factory::get_one("select * from ".TABLEPRE."witkey_space where username='".$account."'");
		if($hasUser){
			$is_nameExist=1;
			$code=kekezu::randomkeys(6);
			$account=$account.$code;
		}else{
			$is_nameExist=0;
		}
	}
	$intRegUid=$objReg->user_register ( $account, $password , $email, $code, false, $password,1 );
	$arrUserInfo = keke_user_class::get_user_info($intRegUid);
	UserCenter::bindingAccount($arrUserInfo['uid'], $arrUserInfo['username'], $arrOauthInfo);
	$_SESSION ['uid'] = $arrUserInfo ['uid'];
	$_SESSION ['username'] = $arrUserInfo ['username'];
	$_SESSION['last_login_time'] = $arrUserInfo['last_login_time'];
	setcookie($type.'uid',1, time()+3600*24);
}
$arrApiNames = keke_glob_class::get_open_api();
if (isset($formhash)){
	if($email){
		if (keke_user_class::user_checkemail ( $email )!=1) {
			$tips['errors']['email'] = '该email非法或已经被注册';
			kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
		}
	}
	if (strtoupper ( CHARSET ) == 'GBK') {
		$account = kekezu::utftogbk( $account );
	}
		$strNameCheck =  keke_user_class::check_username ( $account );
		if ($strNameCheck!=1 && $account!=$_SESSION['username']) {
			$tips['errors']['account'] = $strNameCheck;
			kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
		}
	if(!$password){
		$password = kekezu::randomkeys(6);
	}
	if (intval($agree)==0) {
		$tips['errors']['agree'] = '请先同意注册协议';
		kekezu::show_msg ( $tips, NULL, NULL, NULL, 'error' );
	}
	if($arrBindInfo){
		global $_K;
		$_K['refer']='';
		db_factory::execute("update ".TABLEPRE."witkey_member_oauth set username='".$account."' where oauth_id='".$arrBindInfo['oauth_id']."' and uid=".intval($arrBindInfo['uid']));
		db_factory::execute("update ".TABLEPRE."witkey_space set username='".$account."',password='".md5($password)."',email='".$email."' where uid=".intval($arrBindInfo['uid']));
		db_factory::execute("update ".TABLEPRE."witkey_member set username='".$account."',password='".md5($password)."',email='".$email."' where uid=".intval($arrBindInfo['uid']));
		db_factory::execute("update ".TABLEPRE."witkey_shop set username='".$account."',shop_name='".$account."' where uid=".intval($arrBindInfo['uid']));
		$arrUserInfo = keke_user_class::get_user_info($arrBindInfo[uid]);
		$_SESSION[$type.'_oauthInfo'] = null;
		$objReg->register_login($arrUserInfo,1);
	}
}
