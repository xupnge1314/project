<?php
include 'merchantProperties.php';
$reqURL_onLine = "https://www.yeepay.com/app-merchant-proxy/node";
$p0_Cmd = "Buy";
$p9_SAF = "0";
function getReqHmacString($p2_Order, $p3_Amt, $p4_Cur, $p5_Pid, $p6_Pcat, $p7_Pdesc, $p8_Url, $pa_MP, $pd_FrpId, $pr_NeedResponse) {
	global $p0_Cmd;
	global $p9_SAF;
	global $p1_MerId;
	global $merchantKey;
	$sbOld = "";
	$sbOld = $sbOld . $p0_Cmd;
	$sbOld = $sbOld . $p1_MerId;
	$sbOld = $sbOld . $p2_Order;
	$sbOld = $sbOld . $p3_Amt;
	$sbOld = $sbOld . $p4_Cur;
	$sbOld = $sbOld . $p5_Pid;
	$sbOld = $sbOld . $p6_Pcat;
	$sbOld = $sbOld . $p7_Pdesc;
	$sbOld = $sbOld . $p8_Url;
	$sbOld = $sbOld . $p9_SAF;
	$sbOld = $sbOld . $pa_MP;
	$sbOld = $sbOld . $pd_FrpId;
	$sbOld = $sbOld . $pr_NeedResponse;
	logstr ( $p2_Order, $sbOld, HmacMd5 ( $sbOld, $merchantKey ) );
	return HmacMd5 ( $sbOld, $merchantKey );
}
function getCallbackHmacString($r0_Cmd, $r1_Code, $r2_TrxId, $r3_Amt, $r4_Cur, $r5_Pid, $r6_Order, $r7_Uid, $r8_MP, $r9_BType) {
	global $p1_MerId;
	global $merchantKey;
	$sbOld = "";
	$sbOld = $sbOld . $p1_MerId;
	$sbOld = $sbOld . $r0_Cmd;
	$sbOld = $sbOld . $r1_Code;
	$sbOld = $sbOld . $r2_TrxId;
	$sbOld = $sbOld . $r3_Amt;
	$sbOld = $sbOld . $r4_Cur;
	$sbOld = $sbOld . $r5_Pid;
	$sbOld = $sbOld . $r6_Order;
	$sbOld = $sbOld . $r7_Uid;
	$sbOld = $sbOld . $r8_MP;
	$sbOld = $sbOld . $r9_BType;
	logstr ( $r6_Order, $sbOld, HmacMd5 ( $sbOld, $merchantKey ) );
	return HmacMd5 ( $sbOld, $merchantKey );
}
function getCallBackValue(&$r0_Cmd, &$r1_Code, &$r2_TrxId, &$r3_Amt, &$r4_Cur, &$r5_Pid, &$r6_Order, &$r7_Uid, &$r8_MP, &$r9_BType, &$hmac) {
	$r0_Cmd = $_REQUEST ['r0_Cmd'];
	$r1_Code = $_REQUEST ['r1_Code'];
	$r2_TrxId = $_REQUEST ['r2_TrxId'];
	$r3_Amt = $_REQUEST ['r3_Amt'];
	$r4_Cur = $_REQUEST ['r4_Cur'];
	$r5_Pid = $_REQUEST ['r5_Pid'];
	$r6_Order = $_REQUEST ['r6_Order'];
	$r7_Uid = $_REQUEST ['r7_Uid'];
	$r8_MP = $_REQUEST ['r8_MP'];
	$r9_BType = $_REQUEST ['r9_BType'];
	$hmac = $_REQUEST ['hmac'];
	return null;
}
function CheckHmac($r0_Cmd, $r1_Code, $r2_TrxId, $r3_Amt, $r4_Cur, $r5_Pid, $r6_Order, $r7_Uid, $r8_MP, $r9_BType, $hmac) {
	if ($hmac == getCallbackHmacString ( $r0_Cmd, $r1_Code, $r2_TrxId, $r3_Amt, $r4_Cur, $r5_Pid, $r6_Order, $r7_Uid, $r8_MP, $r9_BType ))
		return true;
	else
		return false;
}
function HmacMd5($data, $key) {
	if(CHARSET!='utf-8'){
		$key = iconv ( "GB2312", "UTF-8//IGNORE", $key );
		$data = iconv ( "GB2312", "UTF-8//IGNORE", $data );
	}
	$b = 64; 
	if (strlen ( $key ) > $b) {
		$key = pack ( "H*", md5 ( $key ) );
	}
	$key = str_pad ( $key, $b, chr ( 0x00 ) );
	$ipad = str_pad ( '', $b, chr ( 0x36 ) );
	$opad = str_pad ( '', $b, chr ( 0x5c ) );
	$k_ipad = $key ^ $ipad;
	$k_opad = $key ^ $opad;
	return md5 ( $k_opad . pack ( "H*", md5 ( $k_ipad . $data ) ) );
}
function logstr($orderid, $str, $hmac) {
	KEKE_DEBUG and  file_put_contents (S_ROOT.'data/log/yeepay_log.txt', "\r\n" . date ( "Y-m-d H:i:s" ) . "|orderid[" . $orderid . "]|str[" . $str . "]|hmac[" . $hmac . "]", FILE_APPEND ); 
}