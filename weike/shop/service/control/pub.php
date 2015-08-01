	<?php defined ( 'IN_KEKE' ) or exit ( 'Access Denied' );
$stdCacheName = 'service_cache_'.$id.'_' . substr ( md5 ( $gUid ), 0, 6 );
$objRelease = service_release_class::get_instance ($id);
$objRelease->get_service_obj ( $stdCacheName ); 
$arrPubInfo = $objRelease->_std_obj->_release_info; 
$arrConfig = $objRelease->_service_config; 
$userInfo=db_factory::get_one("select * from ".TABLEPRE."witkey_space where uid=".intval($gUid));
$province=$userInfo['province'];
$city=$userInfo['city'];
$area=$userInfo['area'];
if($arrPubInfo['onecity']){
    $province=$arrPubInfo['onecity'];
}
if($arrPubInfo['twocity']){
    $city=$arrPubInfo['twocity'];
}
if($arrPubInfo['threecity']){
    $area=$arrPubInfo['threecity'];
}
$arrPubInfo['indus_pid'] and $arrAllIndustrys = CommonClass::getIndustryByPid($arrPubInfo['indus_pid'],'indus_id,indus_pid,indus_name');
switch ($step) {
	case 'step1':
$regionCfg =  keke_glob_class::getRegionConfig();
		$objRelease->check_access ( $step, $id, $arrPubInfo );
		$strExtTypes   = kekezu::get_ext_type (); 
		$arrPriceUnit = $objRelease->get_price_unit (); 
		$arrServiceUnit = $objRelease->get_service_unit();
		$floatPrice = floatval($txt_price);
		$strDate = $arrPubInfo['txt_exist_day']?$arrPubInfo['txt_exist_day']:null;
		if (isset($formhash)&&kekezu::submitcheck($formhash)) {
			$floatMinCash = floatval($arrConfig['min_cash']);
			$strExistDate = strval(trim($txt_exist_day));
			$intExistDate = strtotime($strExistDate);
			$intMinDate = time();
			if ($floatPrice < $floatMinCash) {
				$tips['errors']['txt_price'] = '你的服务价格不能少于￥'.$floatMinCash.'元';
				kekezu::show_msg($tips,NULL,NULL,NULL,'error');
			}
			if($arrConfig[overdue_type]=='custom'){
				if ($intExistDate < $intMinDate) {
					$tips['errors']['txt_exist_day'] = '有效期不能小于当前日期';
					kekezu::show_msg($tips,NULL,NULL,NULL,'error');
				}
			}
			$content=kekezu::escape($tar_content);
			if(empty($content)){
				$tips['errors']['tar_content'] = '内容不能为空！';
				kekezu::show_msg($tips,NULL,NULL,NULL,'error');
			}
			if (!htmlspecialchars($_POST['tar_content'])) {
				$tips['errors']['tar_content'] = '请输入作品描述';
				kekezu::show_msg($tips,NULL,NULL,NULL,'error');
			}
			if (strtoupper ( CHARSET ) == 'GBK') {
				$_POST = kekezu::utftogbk($_POST );
			}
			$arrPubInfo and $_POST = array_merge ( $arrPubInfo, $_POST );
			$_POST['txt_price'] = keke_curren_class::convert($_POST['txt_price'],0,true);
			$objRelease->save_service_obj ( $_POST, $stdCacheName ); 
			kekezu::show_msg($tips,$strUrl.'&step=step2',NULL,NULL,'ok');
		}
		$arrImageLists = CommonClass::getFileArrayByPath(',', $arrPubInfo['fileid1']);
		if($action == 'delete_image'){
			$fileid = intval($fileid);
			$strSql = sprintf("select file_id,file_name,save_name from %switkey_file where file_id in(%s)",TABLEPRE,$fileid);
			$arrFileInfo = db_factory::get_one($strSql);
			$resText = CommonClass::delFileByFileId($fileid);
			if($resText){
				$array = explode(',', $arrPubInfo['file_ids']);
				$newArr = CommonClass::returnNewArr($arrFileInfo['save_name'], $array);
				$_POST['file_ids'] = implode(",", $newArr);
				$arrPubInfo and $_POST = array_merge ( $arrPubInfo, $_POST);
				$objRelease->save_service_obj ($_POST, $stdCacheName ); 
				kekezu::echojson('删除成功',1,array('fileid'=>$fileid,'save_name'=>$arrFileInfo['save_name']));die;
			}
		}
		break;
	case 'step2':
		if (isset($formhash)&&kekezu::submitcheck($formhash)) {
			$arrPayitems = array(
					'goodstop'=>intval($txt_goodstop)&&intval($text_goodstop) ?intval($text_goodstop):0,
			);
			$arrPayitems = array_filter($arrPayitems);
			PayitemClass::validPayitemCosts($hdn_total_costs);
			$arrPubInfo['payitem'] = $arrPayitems;
			$arrPubInfo and $_POST = array_merge ( $arrPubInfo, $_POST );
			$objRelease->save_service_obj ( $_POST, $stdCacheName ); 
			$intSid = $objRelease->pub_service (); 
			$objRelease->update_service_info ( $intSid, $stdCacheName ); 
			kekezu::show_msg($tips,$strUrl.'&step=step3&serviceId='.$intSid,NULL,NULL,'ok');
		}else{
			!$_SESSION[$stdCacheName] and kekezu::show_msg($_lang ['friendly_notice'],"index.php?do=pubgoods&id=$id",2,"该商品已提交，不可再返回修改！","warning");
			$objRelease->check_access($step, $id, $arrPubInfo);
			$strTarComment=kekezu::cutstr(htmlspecialchars_decode($arrPubInfo['tar_content']),1000);
			$strCommentLen = strlen($strTarComment);
			if($strCommentLen > 500){
				$strPartComment = kekezu::cutstr($strTarComment, 500);
			}
		}
		break;
	case 'step3':
		$serviceId = intval($serviceId);
		if(0 === $serviceId){
			kekezu::show_msg('无权访问',$strUrl,3,NULL,'warning');
		}
		$objRelease->del_service_obj ( $stdCacheName ); 
		$objRelease->check_access($step, $id, $arrPubInfo,$serviceId);
		break;
	case 'step4':
		$serviceId = intval($serviceId);
		if(0 === $serviceId){
			kekezu::show_msg('无权访问',$strUrl,3,NULL,'warning');
		}
		$arrPayInfo = $objRelease->checkWhetherToPay($serviceId,'service');
		$boolValue = $arrPayInfo['balance_pay'];
		$floatPayCash = $arrPayInfo['total_cash'];
		break;		
}
require keke_tpl_class::template ( 'pubgoods' );
die();