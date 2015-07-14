<?php keke_tpl_class::checkrefresh('tpl/default/user/account_index', '1436589867' );?><!DOCTYPE HTML>
<!--[if lt IE 7]> <html dir="ltr" lang="zh-cn" id="ie6"> <![endif]--><!--[if IE 7]>    <html dir="ltr" lang="zh-cn" id="ie7"> <![endif]--><!--[if IE 8]>    <html dir="ltr" lang="zh-cn" id="ie8"> <![endif]-->
<!--[if gt IE 8]><!-->
    <html dir="ltr" lang="zh-cn">
    <!--<![endif]-->
    <head>
        <title><?php echo $strPageTitle;?></title>
        <meta charset="<?php echo CHARSET;?>">
        <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
        <meta name="renderer" content="webkit">
        <meta name="keywords" content="<?php echo $strPageKeyword;?>">
        <meta name="description" content="<?php echo $strPageDescription;?>">
        <meta name="viewport" content="width=device-width,initial-scale=1 ,user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style” content=black" />
        <meta name="copyright" content="<?php echo $basic_config['copyright'];?>" />
<meta property="qc:admins" content="1220311574763007636" />
<meta property="wb:webmaster" content="6b685cd5f06ba5f1" />
        <link rel="shortcut icon" href="favicon.ico" />
        <link rel="apple-touch-icon" href="favicon.ico"/>
<!--[if lt IE 9]>
    <script src="static/js/html5.js" type="text/javascript"></script>
    <script src="static/js/respond.min.js" type="text/javascript"></script>
<![endif]-->

<?php if($do=='index') { ?>
<script src="static/js/jquery.min.1.8.3.js"></script>
<!-- 幻灯片 -->
<script src="static/js/jqplugins/fotorama/fotorama.js"></script>
<!-- 滚动视图 -->
<script src="static/js/jqplugins/jcarousel/jquery.jcarousel.js"></script>
<script src="static/js/jqplugins/jcarousel/jquery.jcarousel.control.js"></script>
<script src="static/js/jqplugins/jcarousel/jquery.jcarousel.autoscroll.js"></script>
<?php } else { ?>
<script src="static/js/jquery.min.js"></script>
<?php } ?>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/jquery.form.js"></script>
<script src="static/js/jquery.lazyload.js"></script>
<script src="static/js/bootstrap-datetimepicker.js"></script>
<script src="static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="static/js/sco.confirm.js"></script>
<script src="static/js/sco.modal.js"></script>
<script src="static/js/sco.valid.js"></script>
<script src="static/js/holder.min.js"></script>
<script src="static/js/model/common/base.js"></script>
<script src="static/js/jquery.bgiframe.pack.js"></script>
<script src="static/js/jqplugins/jscroll/jquery.mousewheel.js"></script>
<script src="static/js/jqplugins/jscroll/jquery.jscrollpane.min.js"></script>
<script src="static/js/jquery.placeholder-enhanced.min.js" type="text/javascript"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=HlkMGAhFgon122p5ucBmnoEG"></script>

<?php include(S_ROOT.'/control/include.php'); ?>

<link href="tpl/default/css/animate.css" rel="stylesheet" type="text/css">

<!--[if IE 7]>
<link rel="stylesheet" href="tpl/default/css/font-awesome-ie7.min.css">
<link href="tpl/default/css/ie7.css" rel="stylesheet" type="text/css">
<![endif]-->

<!--[if IE 8]>
  <link href="tpl/default/css/ie8.css" rel="stylesheet" type="text/css">
  <script src="static/js/IE8.js" type="text/javascript"></script>
<![endif]-->
        <script type="text/javascript">
            var SITEURL = '<?php echo $_K['siteurl'];?>', SKIN_PATH = '<?php echo SKIN_PATH;?>', LANG = '<?php echo $language;?>', INDEX = '<?php echo $do;?>', CHARSET = '<?php echo CHARSET;?>';
            function   closeErrors()   {
              return   true;
            }
            window.onerror=closeErrors;

        </script>


    </head>
    <body id="<?php echo $do;?>">
        <div class="header-top">
<?php if($gUserInfo['is_hongbao']==1 && $do=="index") { ?>
        	<div class="show-hb-mask" ></div>
<div class="show-hb-close" id="hb3" style="">
<a href="javascript:colse('index.php?do=user&view=message&op=notice&ajax=1');"><img src="static/img/hb/7.png"></a>
</div>
<div class="show-hb-open" style="display:none;" id='hb1' >
<img src="static/img/hb/1.png" usemap="#show-hb-open-map">
<map name="show-hb-open-map" id="show-hb-open-map">
     	<area shape="rect" coords="230,195,350,235" href ="index.php?do=user&view=message&op=notice" /> 
    </map>
</div>
<div class="show-hb-money" id='hb2'  style="">
<img src="static/img/hb/2.png" usemap="#show-hb-money-map">
<map name="show-hb-money-map" id="show-hb-money-map">
     	<area shape="rect" coords="210,80,362,330" href ="javascript:get_money();" /> 
    </map>
</div>

<script>
function get_money(){
$("#hb1").removeAttr("style");
$("#hb2").attr("style","display:none;");
}
function colse(url){
$("#hb2").attr("style","display:none;");
$("#hb3").attr("style","display:none;");
$(".show-hb-mask").removeClass();
    var url =url;
   $.ajax({
  type: "POST",
  url: url,
});
}
</script>
<style type="text/css">
 .show-hb-close{
    height: 34px;
    left: 96%;
    position: fixed;
    top: 2%;
    width: 36px;
    z-index: 20001;
 	
 	
 }
 .show-hb-mask{
background-color: gray;
    height: 100%;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 20000;
 	opacity:0.3; 
 	filter: alpha(opacity=30); 
 	background-color:#000; 
}
.show-hb-open{
position:absolute;
z-index:20001;
left:50%;
margin-left:-290px;
margin-top:-230px;
top:50%;
width:580px;
height:459px;
}
.show-hb-money{
position:absolute;
z-index:20001;
left:50%;
margin-left:-295px;
margin-top:-230px;
top:50%;
width:591px;
height:459px;
}

</style>
<?php } ?>
            <div class="container">
                <ul class="left-nav">
                    <?php if($do!='index'||!$do) { ?>
                    <li class="nav-item">
                        <a href="index.php?do=index" class="nav-item-link">回到首页</a>
                    </li>
                    <?php } ?>
                    <?php $uid=$_SESSION ['uid']; ?>
                    <?php $username=$_SESSION['username']; ?>
                    
                </ul>

                
                <ul class="right-nav">
                <?php if($uid) { ?>
                    <li class="nav-item nav-static">
                        欢迎您，
                    </li>
                    <li class="nav-item">
                        <a href="index.php?do=user" class="nav-item-link"><?php echo $username;?></a>
                        <a href="index.php?do=user" class="nav-item-link">用户中心</a>
                    </li>
                    <li class="nav-item">
                        <a href="index.php?do=user&view=message&op=notice"> <i class="fa fa-envelope"></i><?php if($messagecount) { ?>(<?php echo $messagecount;?>)<?php } ?></a>
                    </li>
                    <li class="nav-item">
                        <a href="index.php?do=logout" class="nav-item-link active">退出</a>
                    </li>
                <?php } else { ?>
                    <li class="nav-item">
                        欢迎您，<a href="index.php?do=login" class="nav-item-link active">请登录</a>
                    </li>
                    <li class="nav-item">
                        <a href="index.php?do=register" class="nav-item-link active">免费注册</a>
                    </li>
                <?php } ?>

                <?php if($user_type==1) { ?>
                    <li class="nav-item has-sub">
                        <a href="index.php?do=user&view=gz"  class="nav-item-link ">我的测试<span class="caret"></span></a>
<ul class="nav-item-sub nav-sub-list">
                            <li><a href="index.php?do=sellerlist">找服务商</a></li>
                            <li><a href="index.php?do=pubtask">发布需求</a></li>
                            <li><a href="index.php?do=user&view=transaction&op=released&intTaskStatus=0"><span class="badge"><?php echo $intWaitPay['0']['count'];?></span>待付款订单</a></li>
                            <li><a href="index.php?do=user&view=transaction&op=released&intTaskStatus=3"><span class="badge"><?php echo $intChoose['0']['count'];?></span>待选需求</a></li>
                            <li><a href="index.php?do=user&view=transaction&op=orders&strStatus=wait"><span class="badge"><?php echo $intShopPay['0']['count'];?></span>待付款服务</a></li>
                            <li><a href="index.php?do=user&view=gz&op=mark&type=1"><span class="badge"><?php echo $intMarkG;?></span>待评价</a></li>
                        </ul>
                    </li>
                <?php } elseif($user_type==2) { ?>
                    <li class="nav-item has-sub">
                        <a href="index.php?do=user&view=wk" class="nav-item-link ">我的测试<span class="caret"></span></a>
<ul class="nav-item-sub nav-sub-list">
                            <li><a href="index.php?do=pubgoods">发布服务</a></li>
                            <li><a href="index.php?do=seller&id=<?php echo $uid;?>">我的店铺</a></li>
                            <!--
                            <li><a href="index.php?do=user&view=wk&op=gy&s=seller_confirm"><span class="badge"><?php echo $intGy;?></span>新的雇佣</a></li>
                            -->
                            <li><a href="index.php?do=user&view=transaction&op=sold&intModelId=7&strStatus=seller_confirm"><span class="badge"><?php echo $intService;?></span>新服务订单 </a></li>
                            <li><a href="index.php?do=user&view=wk&op=mark&type=1"><span class="badge"><?php echo $intMarkW;?></span>待评价</a></li>
                        </ul>
                    </li>
                <?php } ?>
                <!--
                    <li class="nav-item">
                        <a href="index.php?do=single&id=299" class="nav-item-link">关于我们</a>
                    </li>
                    <li class="nav-item">
                        <a href="index.php?do=help" class="nav-item-link">帮助中心</a>
                    </li>
                    <li class="nav-item has-sub">
                        <a href="javascript:void(0);" class="nav-item-link">分类导航 <span class="caret"></span></a>
                        <div class="nav-item-sub">
                            <dl>
                                <dt>
                                    测试
                                </dt>
                                <dd>
                                    <ul>
                                        <?php if(is_array($indus_task_arr)) { foreach($indus_task_arr as $k => $v) { ?>
                                        <li>
                                            <a href="index.php?do=tasklist&pd=<?php echo $v['indus_id']?>"><?php echo $v['indus_name']?></a>
                                        </li>
                                        <?php } } ?>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="line">
                            </div>
                            <dl>
                                <dt>
                                    服务
                                </dt>
                                <dd>
                                    <ul>
                                        <?php if(is_array($indus_goods_arr)) { foreach($indus_goods_arr as $k => $v) { ?>
                                        <li>
                                            <a href="index.php?do=goodslist&pd=<?php echo $v['indus_id']?>"><?php echo $v['indus_name']?></a>
                                        </li>
                                        <?php } } ?>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li class="nav-item">
                        <a href="javascript:spread(<?php if($do=='article') { ?>true<?php } else { ?>false<?php } ?>);void(0);" class="nav-item-link">推广</a>
                    </li>
                    -->
                </ul>
            </div>
        </div>
<script src="static/js/model/user/user.js"></script>
<script src="static/js/model/user/transaction.js"></script>
<!-- 首页 start -->
<nav class="top-nav">
<div class="container">
<div class="nav-header">
<a class="nav-brand" href="index.php?do=user&view=account">用户中心</a>
</div>
<!-- nav-header end -->
<ul class="menu">
<li class="line"></li>
<!-- <li><a href="index.php?do=user" <?php if($view=='collect'||$view=='finance'||$view=='focus'||$view=='prom'||$view=='shop'||$view=='transaction'||$view=='index') { ?>class="selected"<?php } ?>><i class="fa fa-tachometer"></i> <span>首页</span></a></li> -->
<li class="line"></li>

<?php if($user_type==1) { ?>
<li>
<a href="index.php?do=user&view=gz" <?php if($view== 'gz') { ?>class="selected"<?php } ?>>
<span>我的测试</span>
</a>
</li>
<?php } elseif($user_type==2) { ?>
<li class="line"></li>
<li>
<a href="index.php?do=user&view=wk" <?php if($view== 'wk') { ?>class="selected"<?php } ?>>
<span>我的测试</span>
</a>
</li>
<?php } else { ?>
<li>
<a href="index.php?do=user&view=gz" <?php if($view== 'gz') { ?>class="selected"<?php } ?>>
<span>我是需方</span>
</a>
</li>
<li class="line"></li>
<li>
<a href="index.php?do=user&view=wk" <?php if($view== 'wk') { ?>class="selected"<?php } ?>>
<span>我是供方</span>
</a>
</li>
<?php } ?>
<li class="line"></li>
<li>
<a href="index.php?do=user&view=account" <?php if($view== 'account' || $view=='finance' || $view=='focus' || $view=='prom') { ?>class="selected"<?php } ?>>
<i class="fa fa-cogs"></i>
<span>帐号设置</span>
</a>
</li>
<li class="line"></li>
<li>
<a href="index.php?do=user&view=message&op=trends" <?php if($view== 'message') { ?>class="selected"<?php } ?>>
<i class="fa fa-envelope"></i>
<span>我的消息</span>
<?php if($messagecount) { ?>
<span class="badge"><?php echo $messagecount;?></span>
<?php } ?>
</a>
</li>
<li class="line"></li>
<!-- 			<li>
<a href="index.php?do=seller&id=<?php echo $gUid;?>" target="_blank">
<i class="fa fa-home"></i>
<span>我的店铺</span>
</a>
</li>
<li class="line"></li> -->
</ul>
<!-- menu end -->
<form action="<?php if($do =='tasklist'||$do =='goodslist'||$do =='sellerlist') { ?><?php echo $strUrl;?><?php } else { ?>index.php?do=tasklist<?php } ?>" class="navbar-form navbar-right" role="search" id="topHeaderSearch" method="post">
<div class="btn-group">
<button type="button" class="btn btn-sm btn-default dropdown-toggle " data-toggle="dropdown" id="searchType">
<?php if($do == 'goodslist') { ?> 测试服务 <?php } elseif($do == 'tasklist') { ?> 测试需求 <?php } elseif($do == 'sellerlist') { ?> 服务商 <?php } else { ?> <?php if($task_open) { ?> 测试需求 <?php } elseif(!$task_open&&$shop_open) { ?> 测试服务 <?php } ?> <?php } ?>
<span class="caret"></span>
</button>
<ul class="dropdown-menu" id="searchOption">
<?php if($task_open) { ?>
<li <?php if($do== 'tasklist'||($do !='goodslist' &&$do !='sellerlist' )) { ?>class="active"<?php } ?>>
<a href="javascript:void(0);" rel="tasklist">测试需求</a>
</li>
<?php } ?> <?php if($shop_open) { ?>
<li <?php if($do== 'goodslist') { ?>class="active"<?php } ?>>
<a href="javascript:void(0);" rel="goodslist">测试服务</a>
</li>
<?php } ?>
<li <?php if($do== 'sellerlist') { ?>class="active"<?php } ?>>
<a href="javascript:void(0);" rel="sellerlist">服务商</a>
</li>
</ul>
</div>
<div class="form-group">
<input type="text" name="ky" onkeydown="searchKeydown(event);" placeholder="<?php if($ky) { ?><?php echo $ky;?><?php } ?>" class="form-control input-sm">
</div>
<button type="submit" class="btn btn-default btn-sm">
<i class="fa fa-search"></i>
</button>
<!-- input-group end -->
</form>
</div>
<!-- container end -->
</nav>
<!-- nav end -->
<div class="container">
    <div class="nav-action">
        <?php if(($view=='account' && !in_array($op,array('report','rights')) )||$view=='finance'||$view=='prom'||$view=='focus') { ?>
<a href="javascript:void(0);" class="nav-toggle"><i class="fa fa-reorder"></i></a>
<dl class="nav-list">
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 基本资料</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=account&op=basic" <?php if($op=='basic'||$op=='contact') { ?>class="selected"<?php } ?> >资料完善</a>
    <a href="index.php?do=user&view=account&op=chooseavatar" <?php if($op=='uploadavatar'||$op=='chooseavatar') { ?>class="selected"<?php } ?> >用户头像</a>
    <!--
    <a href="index.php?do=user&view=account&op=skill" <?php if($op=='skill') { ?>class="selected"<?php } ?> >技能标签</a>
    -->
  </dd>
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 账号安全</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=account&op=password" <?php if($op=='password') { ?>class="selected"<?php } ?> >登录密码</a>
    <a href="index.php?do=user&view=account&op=security" <?php if($op=='security') { ?>class="selected"<?php } ?> >支付密码</a>
    <!--
    <a href="index.php?do=user&view=account&op=binding" <?php if($op=='binding') { ?>class="selected"<?php } ?> >账号绑定</a>
    -->
    <a href="index.php?do=user&view=account&op=auth" <?php if($op=='auth') { ?>class="selected"<?php } ?> >账号认证</a>
    <!-- <a href="index.php?do=user&view=account&op=report" <?php if($op=='report') { ?>class="selected"<?php } ?> >交易维权</a> -->
  </dd>
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 财务管理</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=finance&op=basic" <?php if(in_array($op,array('basic','details','rechargelog','withdrawlog')) &&$view=='finance') { ?>class="selected"<?php } ?>>收支明细</a>
    <!--
    <a href="index.php?do=user&view=finance&op=withdraw"  <?php if($op=='withdraw') { ?>class="selected"<?php } ?>>我要提现</a>
    -->
    <a href="index.php?do=user&view=finance&op=rechargeonline" <?php if(in_array($op,array('rechargeonline','rechargeoffline'))) { ?>class="selected"<?php } ?>>账号充值</a>
  </dd>
<!--
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 我的推广</dt>
  <dd class="nav-list-body">

    <a href="index.php?do=user&view=prom&op=code"  <?php if($op=='code') { ?>class="selected"<?php } ?>>推广代码</a>
    <a href="index.php?do=user&view=prom&op=benefit" <?php if($op=='benefit') { ?>class="selected"<?php } ?>>推广收益</a>
  </dd>
-->
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 我的关注</dt>
  <dd class="nav-list-body">

    <a href="index.php?do=user&view=focus&op=attention"  <?php if($op=='attention') { ?>class="selected"<?php } ?>>全部关注</a>
    <a href="index.php?do=user&view=focus&op=fans"  <?php if($op=='fans') { ?>class="selected"<?php } ?>>我的粉丝</a>
    <a href="index.php?do=user&view=focus&op=each" <?php if($op=='each') { ?>class="selected"<?php } ?>>相互关注</a>
  </dd>
</dl>
<?php } elseif($view=='message'||($view=='account' && in_array($op,array('report','rights')) )) { ?>
<a href="javascript:void(0);" class="nav-toggle"><i class="fa fa-reorder"></i></a>
<dl class="nav-list">
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 我的消息</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=message&op=trends" <?php if($op=='trends') { ?>class="selected"<?php } ?> ><?php if($intCountTrends) { ?><span class="badge"><?php echo $intCountTrends;?></span><?php } ?> 交易动态</a>
    <a href="index.php?do=user&view=message&op=notice" <?php if($op=='notice') { ?>class="selected"<?php } ?> ><?php if($intCountNotice) { ?><span class="badge"><?php echo $intCountNotice;?></span><?php } ?> 系统通知</a>
    <a href="index.php?do=user&view=message&op=private"  <?php if($op=='private') { ?>class="selected"<?php } ?> ><?php if($intCountPrivate) { ?><span class="badge"><?php echo $intCountPrivate;?></span><?php } ?>我的私信</a>
    <a href="index.php?do=user&view=message&op=send"  <?php if($op=='send') { ?>class="selected"<?php } ?> >写消息</a>
    <a href="index.php?do=user&view=message&op=outbox"  <?php if($op=='outbox') { ?>class="selected"<?php } ?> >发件箱</a>

  </dd>
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 交易维权</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=account&op=report"  <?php if($op=='report') { ?>class="selected"<?php } ?> >举报管理</a>
    <a href="index.php?do=user&view=account&op=rights"  <?php if($op=='rights') { ?>class="selected"<?php } ?> >维权管理</a>

  </dd>
</dl>

<?php } elseif($view=='gz'|| ($view=='transaction'&&in_array($op,array('released','orders','gy')))||($view=='collect' && in_array($op,array('goods','work')) )) { ?>
<a href="javascript:void(0);" class="nav-toggle"><i class="fa fa-reorder"></i></a>
<dl class="nav-list">
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 交易管理</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=pubtask" target="pubpage">快速发布需求</a>
    <a href="index.php?do=user&view=transaction&op=released" <?php if($op=='released') { ?> class="selected"<?php } ?>>我发布的需求</a>
    <a href="index.php?do=user&view=transaction&op=orders" <?php if($op=='orders') { ?> class="selected"<?php } ?>>我买入的服务</a>
    <!--
    <a href="index.php?do=user&view=gz&op=gy" <?php if($op=='gy') { ?> class="selected"<?php } ?>>我发起的雇佣</a>
    -->
    <a href="index.php?do=user&view=gz&op=mark" <?php if($op=='mark') { ?> class="selected"<?php } ?>>交易评价</a>
  </dd>
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 我的收藏</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=collect&op=goods" <?php if($op=='goods') { ?>class="selected"<?php } ?>>我收藏的服务</a>
    <a href="index.php?do=user&view=collect&op=work" <?php if($op=='work') { ?>class="selected"<?php } ?>>我收藏的需求</a>
  </dd>
</dl>
<?php } elseif($view=='wk'|| ($view=='transaction'&&in_array($op,array('undertake','sold','bygy','works','service')))||($view=='collect' && in_array($op,array('goods','task','service')) )||($view=='shop' && in_array($op,array('setting','caselist','caseadd')) )) { ?>
<a href="javascript:void(0);" class="nav-toggle"><i class="fa fa-reorder"></i></a>
<dl class="nav-list">
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 交易管理</dt>
  <dd class="nav-list-body">
    <a href="index.php?do=user&view=transaction&op=undertake" <?php if($op=='undertake') { ?>class="selected"<?php } ?>>我承接的订单</a>
    <a href="index.php?do=user&view=transaction&op=sold" <?php if($op=='sold') { ?>class="selected"<?php } ?>>我卖出的服务</a>
    <!--
    <a href="index.php?do=user&view=wk&op=gy" <?php if($op=='gy') { ?>class="selected"<?php } ?>>我接受的雇佣</a>
    -->
    <a href="index.php?do=user&view=transaction&op=works" <?php if($op=='works') { ?>class="selected"<?php } ?>>我的竞标记录</a>
    <a href="index.php?do=user&view=wk&op=mark" <?php if($op=='mark') { ?> class="selected"<?php } ?>>交易评价</a>
  </dd>
  <dt class="nav-list-title"><i class="fa fa-minus"></i> 店铺管理</dt>
  <dd class="nav-list-body">
   <a href="index.php?do=pubgoods" target="pubpage">快速发布测试服务</a>
   <a href="index.php?do=seller&id=<?php echo $gUid;?>" target="_blank">我的店铺</a>
   <a href="index.php?do=user&view=shop&op=setting" <?php if($op=='setting') { ?>class="selected"<?php } ?>>店铺设置</a>
   <a href="index.php?do=user&view=transaction&op=service" <?php if($op=='service') { ?>class="selected"<?php } ?>>服务管理</a>
   <!--<a href="index.php?do=user&view=shop&op=caselist" <?php if($op=='caselist'||$op=='caseadd') { ?>class="selected"<?php } ?>>案例管理</a>-->
 </dd>
 <dt class="nav-list-title"><i class="fa fa-minus"></i> 我的收藏</dt>
 <dd class="nav-list-body">
   <a href="index.php?do=user&view=collect&op=task" <?php if($op=='task') { ?>class="selected"<?php } ?>>收藏的需求</a>
 </dd>
</dl>
<?php } ?>
    </div>
    <div class="content-panel">
        <div class="tab">
            <div class="active">
                <a class="selected" href="index.php?do=user&view=account&op=auth">账号信息</a>
            </div>
        </div>
        <div class="user-short">
            <div class="media info">
                <div class="media-body">
                    <div class="user-info">
                        <div class="media-left">
                            <div class=" photo">
                                <a href="index.php?do=user&view=account&op=chooseavatar"><?php echo  keke_user_class::get_user_pic($gUid,'larger') ?></a>
                            </div>
                            <h2 class="media-heading username"><?php echo $username;?></h2>
                        </div>
                        <div class="media-min">
                            <div class="p-row1">
                                登录账号：<?php echo $gUsername;?><a class="alter" href="index.php?do=user&view=account&op=basic">修改资料</a>
                            </div>
                            <div class="p-row1">
                                注册时间：<?php if($gUserInfo['reg_time']){echo date('Y-m-d H:i:s',$gUserInfo['reg_time']); } ?>
                            </div>
                            <div class="p-row1">
                                绑定手机：<?php if($gUserInfo['mobile']) { ?><?php echo '*********'.substr($gUserInfo['mobile'],-2) ?><?php } else { ?>暂无<?php } ?> 
                                <?php if($gUserInfo['is_perfect']!=1) { ?><span class="warning">请前去<a href="index.php?do=user&view=account&op=basic">完善</a>用户资料</span>
                                <?php } ?>
                            </div>
                            <div class="p-row1">
                                上次登录时间：<?php echo date('Y年m月d日  H:i:s',$gUserInfo['last_login_time']) ?>
                            </div>
                            <div class="p-row1">
                                店铺:<?php if($autoshop==1) { ?>已开张<?php } else { ?>暂无&nbsp;&nbsp;&nbsp;请前去<a href="index.php?do=seller&id=<?php echo $gUid;?>">开张</a><?php } ?>
                            </div>
                        </div>
                        <div class="media-right">
                            <div class="p-row1">
                                现金：<b class="money"><?php  echo keke_curren_class::output(floatval($gUserInfo['balance']),-1);  ?></b>
                            </div>
                            <div class="p-row1">
                                <a href="index.php?do=user&view=finance&op=withdraw" class="btn btn-default btn-xs">提现</a>
                                <a href="index.php?do=user&view=finance&op=rechargeonline" class="btn btn-default btn-xs">充值</a>
                            </div>
                            <div class="p-row1">
                                <b>安全信息</b>
                                <?php if($twoPassword==$gUserInfo['sec_code']) { ?><span class="warning">支付与登录密码相同,建议修改</span>
                                <?php } ?>
                            </div>
                            <div class="p-row1">
                                支付密码：*** <a class="alter" href="index.php?do=user&view=account&op=security">修改</a>
                                <a class="get-back" href="javascript:void(0);" id="zh-zf-pwd">找回</a>
                                <div class="p-row1">
                                    登录密码：*** <a class="alter" href="index.php?do=user&view=account&op=password">修改</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hidden">
                    <div>
                        <h4>协同概况</h4>
                    </div>
                    <div>
                        <p>
                        </p>
                        <p>
                        </p>
                        <p>
                        </p>
                    </div>
                </div>
                <div class="content-panel zh-renzheng">
                    <div class="tab_desc">
                        <div class="table-responsive">
                            <table class="table table-hover ">
                                <thead>
                                    <tr>
                                        <th>
                                            认证信息：
                                        </th>
                                    </tr>
                                </thead>
                                <?php if(is_array($arrAuthItems)) { foreach($arrAuthItems as $v) { ?>
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="media-object" src="<?php echo $v['auth_big_ico'];?>" alt="<?php if(in_array($v['auth_code'],array('realname','enterprise'))) { ?>身份认证<?php } else { ?><?php echo $v['auth_title'];?><?php } ?>">
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right">
                                                    <span class="label mr_10 <?php if($v['auth_pass'] =='1') { ?> label-success <?php } else { ?> label-default <?php } ?>">
                                                    	<?php if($v['auth_pass'] =='1') { ?>
<i class="fa fa-check"></i>已认证
                                                        <?php } else { ?>
未认证
<?php } ?>
</span>
<a href="<?php echo $v['auth_url'];?>" class="btn btn-default btn-xs"><?php if($v['auth_pass'] =='1') { ?>查看认证<?php } else { ?>立即认证<?php } ?></a>
                                                </div>
                                                <strong class="media-heading">
                                                	<?php if(in_array($v['auth_code'],array('realname','enterprise'))) { ?>
                                                    	身份认证
                                                    <?php } else { ?>
                                                    	<?php echo $v['auth_title'];?>
                                                    <?php } ?>
</strong>
                                                <p>
                                                    <?php echo $v['auth_desc']?>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <?php } } ?>
                            </table>
                        </div>
                    </div>
                    <!-- tab_desc end -->
                </div>
                <!-- content-panel end -->
            </div>
            <!-- media end -->
        </div>
        <!-- user-short end -->
        <script type="text/javascript" src="static/js/model/user/account.js">
        </script>
    </div>
    <!-- content-panel end -->
</div>
<!-- container end -->
<!--
<div class="home-footer">
  <div class="container">
    <dl class="item">
      <dt>关于我们</dt>
      <dd>
      <a href="">公司简介</a>
        <a href="">发展历程</a>
        <a href="">平台公告</a>
        <a href="">联系方式</a>
      </dd>
    </dl>
    <dl class="item">
      <dt>诚信保障</dt>
      <dd>
        <a href="">实名认证</a>
        <a href="">银行认证</a>
        <a href="">身份认证</a>
        <a href="">邮箱认证</a>
      </dd>
    </dl>
    <dl class="item">
      <dt>交易保障</dt>
      <dd>
        <a href="">支付方式</a>
        <a href="">担保交易</a>
        <a href="">交易维权</a>
        <a href="">违规处理</a>
      </dd>
    </dl>
    <dl class="item">
      <dt>关注我们</dt>
      <dd>
        <a href="#">新浪微博</a>
        <a href="#">腾讯微博</a>
        <a href="#">投诉建议</a>
      </dd>
    </dl>
    <dl class="item">
      <dt>微信二维码</dt>
      <dd>
        <a href="" target="_blank">
          <img src="" width="85" height="85"></a>
        </dd>
      </dl>

      <div class="item">
        <p><strong class="phone-num">0755-400000</strong></p>
        <div class="line"></div>
        <p class="ontime">周一至周日9:00 - 23:00</p>

        <p><button class="btn">
          <i class="fa fa-headphones"> </i>
          <a target="_blank" href=""> 联系在线客服</a></button>
        </p>
      </div>
      
      <ul class="friend-link">
        <li><strong>友情链接</strong></li>
        <?php if(is_array($arrFlink)) { foreach($arrFlink as $k => $v) { ?>
            <li><a href="<?php echo $v['link_url'];?>" target="_blank"><?php echo $v['link_name'];?></a></li>
        <?php } } ?>
      </ul>

      <!-- 只在首页显示 friend-link end  -->
      <!--
  </div>
</div>-->

<div class="footer">
  <div class="container">
      <ul class="footer-link">
      <?php if(is_array($_footerAbouts)) { foreach($_footerAbouts as $k => $v) { ?>
        <li><a href="<?php if($v['art_source']) { ?><?php echo $v['art_source'];?><?php } else { ?>index.php?do=single&id=<?php echo $v['art_id'];?><?php } ?>" target="_blank"><?php echo $v['art_title'];?></a></li>
        <?php } } ?>
<li><a href="index.php?do=map" target="_blank">网站地图</a></li>
<li><a href="index.php?do=rss" target="_blank">RSS订阅</a></li>
      </ul>
      <!-- footer-link end -->
      <div class="footer-copyright">
        <p><?php if($basic_config['company']) { ?> <?php echo $basic_config['company'];?><?php } ?> <?php if($basic_config['address']) { ?>地址:<?php echo $basic_config['address'];?><?php } ?> <?php if($basic_config['phone']) { ?>电话:<?php echo $basic_config['phone'];?><?php } ?></p>
        <p><?php if($basic_config['copyright']) { ?>Powered by 时时测 <?php echo $basic_config['copyright'];?><?php } ?> <?php if($basic_config['filing']) { ?> <a href="http://icp.valu.cn/" target="_blank"><?php echo $basic_config['filing'];?></a><?php } ?></p>
        <p><?php if($basic_config['stats_code']) { ?><?php echo stripslashes(stripslashes($basic_config['stats_code'])); ?><?php } ?></p>
      </div>
      <!-- footer-copyright end -->
  </div><!-- container end -->
</div><!-- footer end -->


<div id="fix-box" style="display:none;">
  <a id="top" href="javascript:void(0);"><i class="fa fa-angle-up"></i></a>
</div>
<!-- #fix-box end -->





<?php if($uid) { ?>
   
    
<?php kekezu::update_oltime($uid,$username) ?>


<?php } ?>



<script type="text/javascript">
$(function(){
  $('.color-selected .nav-sub-list a').click(function() {
    var css = $(this).attr('data-css');
    var color = $(this).attr('data-rel');
    $('.nav-item-link span.style-color').removeClass().addClass('style-color '+ color);
    $('#active-style').attr('href', 'tpl/default/'+ css +'/style.css');
    $('#active-style-user').attr('href', 'tpl/default/'+ css +'/user.css');
    $('#active-style-store').attr('href', 'tpl/default/'+ css +'/store.css');
    $('#active-style-home').attr('href', 'tpl/default/'+ css +'/home.css');
  });
})
  
</script>


<script type="text/javascript">
var uid='<?php echo $uid;?>';
var UseIm= false;
var actionDo = '<?php echo $do;?>';
var username='<?php echo $username;?>';
var auid = '<?php echo $oauth_user_info['account'];?>';
var atype ='<?php echo $wb_type;?>';
var sessionId = "<?php echo session_id(); ?>";

$(function(){
    $("img.lazy").lazyload({
        effect: "fadeIn"
    });
});

<?php if($exec_time_traver) { ?>
$(function(){
   $.get('js.php?op=time&r='+Math.random());
})
<?php } ?>
</script>
</body>
</html>
<?php keke_tpl_class::ob_out();?>