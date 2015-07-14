<?php
	*版本：3.0
	*日期：2010-05-21
	'以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
//创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。
//该页面调试工具请使用写文本函数log_result，该函数已被默认开启，见alipay_notify.php中的函数notify_verify
//TRADE_FINISHED(表示交易已经成功结束，通用即时到帐反馈的交易状态成功标志);
//TRADE_SUCCESS(表示交易已经成功结束，高级即时到帐反馈的交易状态成功标志);
//该通知页面主要功能是：对于返回页面（return_url.php）做补单处理。如果没有收到该页面返回的 success 信息，支付宝会在24小时内按一定的时间策略重发通知
define ( "IN_KEKE", true );
require_once (dirname (dirname ( dirname ( dirname ( __FILE__ ) ) )) . DIRECTORY_SEPARATOR . 'app_comm.php');
require_once("alipay_notify.class.php");
$_input_charset = strtoupper(CHARSET);
$payment_config = kekezu::get_payment_config ( 'alipayjs' );
$payment_config or die ( "支付配置错误，支付无法完成，请联系管理员。" );
$alipay_config['partner']		= $payment_config['seller_id'];
//安全检验码，以数字和字母组成的32位字符
$alipay_config['key']			= $payment_config ['safekey'];
$alipay_config['sign_type']    = strtoupper('MD5');
//字符编码格式 目前支持 gbk 或 utf-8
$alipay_config['input_charset']= strtolower(CHARSET);
//ca证书路径地址，用于curl中ssl校验
//请保证cacert.pem文件在当前文件夹目录中
$alipay_config['cacert']    = getcwd().'\\cacert.pem';
//访问模式,根据自己的服务器是否支持ssl访问，若支持请选择https；若不支持请选择http
$alipay_config['transport']    = 'http';
$alipayNotify = new AlipayNotify($alipay_config);
$verify_result = $alipayNotify->verifyNotify();
KEKE_DEBUG and  file_put_contents (S_ROOT.'data/log/alipayjs_notify_log.txt', var_export ( $_POST, 1 ) , FILE_APPEND ); 
$echomsg = 'fail';
if ($verify_result) {
	if ($_POST ['trade_status'] == 'TRADE_FINISHED' || $_POST ['trade_status'] == 'TRADE_SUCCESS') {
		$out_trade_no = $_POST ['out_trade_no']; //获取订单号
		$total_fee = $_POST ['total_fee']; //获取总价格
		list ( $_, $charge_type, $uid, $obj_id, $order_id, $model_id,$url ) = explode ( '-', $out_trade_no, 6 );
		$fac_obj = new pay_return_fac_class ( $charge_type, $model_id, $uid, $obj_id, $order_id, $total_fee,'alipayjs',$out_trade_no);
		$response = $fac_obj->load ( );
		$echomsg = 'success';
	}
} 
echo $echomsg;
die();