<?php
$strNavActive ='case';
in_array($t,array(1,2)) and $t = intval($t) or $t = 0;
$strUrl = "index.php?do=case";
$t and $strUrl .="&t=".$t;
$intPage and $strUrl .="&intPage=".intval($intPage);
$intPagesize and $strUrl .="&intPagesize=".intval($intPagesize);
$page and $intPage = intval($page);
$intPage = intval ( $intPage ) ? $intPage : 1;
$intPagesize = intval ( $intPagesize ) ? $intPagesize : 20;
if(isset($btnSearch)){
    $strWhere = "case_title like'%".$searchkey."%'";
    $intCount = db_factory::get_count(' select count(case_id) as c from '.TABLEPRE.'witkey_case where '.$strWhere,0,null,3600);
    $strPages = $kekezu->_page_obj->getPages ( $intCount, $intPagesize, $intPage, $strUrl );
    $strSql = "select * from ".TABLEPRE."witkey_case where ".$strWhere;
    $arrCaseLists = db_factory::query($strSql.' order by on_time desc '.$strPages['where']);
}else{
    $strSql = 'select * from '.TABLEPRE.'witkey_case where ';
    $strWhere = ' 1=1 ';
    if($t=='1'){
    	$strWhere .=' and obj_type="task" ';
    }else if($t=='2'){
    	$strWhere .=' and obj_type="service" ';
    }
    $intCount = db_factory::get_count(' select count(case_id) as c from '.TABLEPRE.'witkey_case where '.$strWhere,0,null,3600);
    $strPages = $kekezu->_page_obj->getPages ( $intCount, $intPagesize, $intPage, $strUrl );
    $arrCaseLists = db_factory::query($strSql.$strWhere.' order by on_time desc '.$strPages['where']);
}
$arrModelLabel = array(	0 =>'未知',1=>'单人',	2=>'多人',	3=>'计件',	4=>'招标',	5=>'订金',	6=>'文件',	7=>'服务');
$arrCaseType = array('0'=>'全部','1'=>'任务案例','2'=>'商品案例');
list($strPageTitle,$strPageKeyword,$strPageDescription) =  keke_seo_class::getListSEO(0, 0, array('案例类型'=>$arrCaseType[$t]),'case',true);
foreach ($arrCaseLists as $caseK=>$caseV){
	if($caseV['obj_type'] == 'task'){
		$arrTaskSql = 'select model_id,task_id,task_title,work_num,uid,username,task_pic,focus_num from '.TABLEPRE.'witkey_task where task_id = '.$caseV['obj_id'];
		$arrTaskInfo =  db_factory::get_one($arrTaskSql);
		$arrCaseLists[$caseK]['labelstyle'] = 'marked-task';
		$arrCaseLists[$caseK]['text'] 		= '投稿';
		$arrCaseLists[$caseK]['quantifier'] = '个';
		$arrCaseLists[$caseK]['focus_num'] = $arrTaskInfo['focus_num'];
		$arrCaseLists[$caseK]['from'] 		= '发布者';
		$arrCaseLists[$caseK]['num'] 	= intval($arrTaskInfo['work_num']);
		$arrCaseLists[$caseK]['objurl'] 	= $arrTaskInfo['task_id']?'index.php?do=task&id='.$arrTaskInfo['task_id']:"javascript:tipsOp('该项目的源不存在,无法访问','warning')";
		$arrCaseLists[$caseK]['label'] 		= $arrModelLabel[intval($arrTaskInfo['model_id'])];
		$arrCaseLists[$caseK]['fromurl'] 	= $arrTaskInfo['uid']?'index.php?do=seller&id='.$arrTaskInfo['uid']:"javascript:tipsOp('该项目的源不存在,无法访问','warning')";
		$arrCaseLists[$caseK]['username'] 	= $arrTaskInfo['username']?$arrTaskInfo['username']:'未知';
		unset($arrTaskInfo);
	}
	if($caseV['obj_type'] == 'service'){
		$arrServiceSql = 'select model_id,service_id,title,sale_num,uid,username,pic,focus_num from '.TABLEPRE.'witkey_service where service_id = '.$caseV['obj_id'];
		$arrServiceInfo =  db_factory::get_one($arrServiceSql);
		$arrCaseLists[$caseK]['labelstyle'] = 'marked-shop';
		$arrCaseLists[$caseK]['text'] 		= '售出';
		$arrCaseLists[$caseK]['from'] 		= '出售者';
		$arrCaseLists[$caseK]['quantifier'] = '次';
		$arrCaseLists[$caseK]['focus_num'] = $arrServiceInfo['focus_num'];
		$arrCaseLists[$caseK]['num'] 	= intval($arrServiceInfo['sale_num']);
		$arrCaseLists[$caseK]['objurl'] 	= $arrServiceInfo['service_id']?'index.php?do=goods&id='.$arrServiceInfo['service_id']:"javascript:tipsOp('该项目的源不存在,无法访问','warning')";
		$arrCaseLists[$caseK]['label'] 		= $arrModelLabel[intval($arrServiceInfo['model_id'])];
		$arrCaseLists[$caseK]['fromurl'] 	= $arrServiceInfo['uid']?'index.php?do=seller&id='.$arrServiceInfo['uid']:"javascript:tipsOp('该项目的源不存在,无法访问','warning')";
		$arrCaseLists[$caseK]['username'] 	= $arrServiceInfo['username']?$arrServiceInfo['username']:'未知';
		unset($arrServiceInfo);
	}
	if($caseV['case_img'] == null || $caseV['case_img'] == ''){
		$arrCaseLists[$caseK]['case_img'] = 'resource/img/system/shop_default_big.jpg';
	}
}
$sql = "SELECT uid,username,area,count(*) as sum FROM ".TABLEPRE."witkey_task_bid GROUP BY username ORDER BY sum DESC LIMIT 0,5";
$arrBid = db_factory::query($sql);
$_SESSION['spread'] = 'index.php?do=case';