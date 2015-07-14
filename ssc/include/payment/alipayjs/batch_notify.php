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
require_once (dirname ( dirname ( dirname ( __FILE__ ) ) ) . DIRECTORY_SEPARATOR . 'app_comm.php');
require_once ("alipay_notify.php");
$_input_charset = strtoupper ( CHARSET );
$payment_config = kekezu::get_payment_config ( 'alipayjs' );
$payment_config or die ( "支付配置错误，支付无法完成，请联系管理员。" );
$seller_id = $payment_config ['seller_id'];
$security_code = $payment_config ['safekey'];
$seller_email = $payment_config ['account']; //签约支付宝账号或卖家支付宝帐户
$sign_type = "MD5";
$transport = "http";
$alipay = new alipay_notify ( $seller_id, $security_code, $sign_type, $_input_charset, $transport );
$verify_result = $alipay->notify_verify ();
$notify_type = $_POST ['notify_type']; //消息提示类型 trade_status_sync即时、batch_trans_notify 批量
$success_details = $_POST ['success_details']; //获取批量付款数据中转账成功的详细信息
$fail_details = $_POST ['fail_details']; //获取批量付款数据中转账失败的详细信息
KEKE_DEBUG and $fp = file_put_contents ( 'log.txt', var_export ( $_POST, 1 ), FILE_APPEND );
if ($verify_result) {
	echo "success";
	if ($notify_type == 'batch_trans_notify') {
		$batch_obj = pay_batch_fac_class::get_instance ( 'alipayjs' );
		$batch_obj->success_notify ( $success_details, $fail_details );
	}
} else {
	echo "error";
}