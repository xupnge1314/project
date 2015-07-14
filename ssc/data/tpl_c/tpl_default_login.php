<?php keke_tpl_class::checkrefresh('tpl/default/login', '1436586371' );?><!DOCTYPE HTML>
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

<header class="header">
    <div class="container">
        <div class="header-website">
            <div class="brand-logo">
                <a href="<?php echo SITEURL;?>"><img src="<?php echo $strWebLogo;?>" alt="时时测"></a>
            </div><!-- brand-logo end--><!--<div class="header-location">
            全国站
            <div class="localtion-layer">
            <a href="javascript:void(0);" data-toggle="dropdown">[切换城市<span class="caret"></span>]</a>
            <ul class="dropdown-menu for-city" role="menu" aria-labelledby="dLabel">
            <?php if(is_array($arrDisplaypro)) { foreach($arrDisplaypro as $k => $v) { ?>
            <li><a href="javascript:void(0);" role="menuitem" tabindex="-1"><?php echo $v['name']?></a></li>
            <?php } } ?>
            </ul>
            </div>--><!-- localtion-layer end--><!--</div>--><!-- header-location end-->
        </div>
        <div class="header-function">
            <div class="header-search">
                <form action="<?php if($do =='tasklist'||$do =='goodslist'||$do =='sellerlist') { ?><?php echo $strUrl;?><?php } else { ?>index.php?do=tasklist<?php } ?>" role="search" id="topHeaderSearch" method="post">
                    <div class="btn-group">
                        <button type="button" id="searchType" class="btn btn-default dropdown-toggle " data-toggle="dropdown">
                            <?php if($do == 'goodslist') { ?>测试服务
                            <?php } elseif($do == 'tasklist') { ?>测试需求
                            <?php } elseif($do == 'sellerlist') { ?>服务商
                            <?php } else { ?>
                            <?php if($task_open) { ?>测试需求
                            <?php } elseif(!$task_open&&$shop_open) { ?>测试服务
                            <?php } ?>
                            <?php } ?><span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" id="searchOption">
                            <?php if($task_open) { ?>
                            <li <?php if($do  == 'tasklist'||($do !=  'goodslist'&&$do !=  'sellerlist')) { ?>class="active"<?php } ?>>
                                <a href="javascript:void(0);" rel="tasklist">测试需求</a>
                            </li>
                            <?php } ?>
                            <?php if($shop_open) { ?>
                            <li <?php if($do  == 'goodslist') { ?>class="active"<?php } ?>>
                                <a href="javascript:void(0);" rel="goodslist">测试服务</a>
                            </li>
                            <?php } ?>
                            <li <?php if($do  == 'sellerlist') { ?>class="active"<?php } ?>>
                                <a href="javascript:void(0);" rel="sellerlist">服务商</a>
                            </li>
                        </ul>
                    </div>

                    <div class="form-group search-input po_re" id="div_search_input">
                        <input type="text" name="ky" id="search"  class="form-control" placeholder="请输入关键词" value="<?php if($ky) { ?><?php echo $ky;?><?php } ?>" onkeyup="searchlist();" onfocus="searchlist();" data-toggle="dropdown"  x-webkit-speech="" x-webkit-grammar="bUIltin:search" lang="zh-CN"  aria-haspopup="true" aria-expanded="false" autocomplete="off">
                        <ul class="dropdown-menu" role="menu" id="hotsearch" aria-labelledby="dLabel" style="display:none">

                        </ul>
                    </div>
                    <button type="submit" class="btn btn-primary">
                        搜索
                    </button>
                </form>
            </div>
            <!-- header-search end-->
            <?php if($arrTopIndus && $indus_arr) { ?>
            <div class="header-keywords">
                热门搜索：
                <?php if(is_array($arrTopIndus)) { foreach($arrTopIndus as $k => $v) { ?>
                	<?php if($indus_arr[$v['indus_id']]['indus_name']) { ?>
                		<a href="index.php?do=tasklist&i=<?php echo $v['indus_id']?>" class="marked marked-tags"><?php echo $indus_arr[$v['indus_id']]['indus_name'];?></a>
                	<?php } ?>
                <?php } } ?>
            </div>
            <?php } ?>
            <!-- header-keywords end-->
        </div>
        <!-- header-function end-->
    </div>
    <script type="text/javascript">
    function searchlist(){
   		var ky=$("#search").val();
   		var searchvalue1=$("#searchOption li:first").hasClass('active');
   		var searchvalue2=$("#searchOption li:eq(1)").hasClass('active');
    	var searchvalue3=$("#searchOption li:eq(2)").hasClass('active');
    	var ky=$("#search").val();
    	if(searchvalue2==true){
   			search='2';
   		}else if(searchvalue3==true){
   			search='3';
   		}else{
    		search = '1';
    	}
$.post("index.php?do=searchlist&ky="+ky,{search:search},function(data){
if(data){
$("#hotsearch").replaceWith(data);
    $("#div_search_input").addClass('open');
}else{
$("#hotsearch").hide();
}

    	})
         $("#searchOption>li").click(function(){
   			if($(this).hasClass('active')==true){
   				if($(this).text().contains('服务')){
   					$.post("index.php?do=searchlist&ky="+ky,{search:2},function(data){
   						$("#hotsearch").replaceWith(data);
    				})
    			}else if($(this).text().contains('服务商')){
    				$.post("index.php?do=searchlist&ky="+ky,{search:3},function(data){
    					$("#hotsearch").replaceWith(data);
    				})
    			}else{
   					$.post("index.php?do=searchlist&ky="+ky,{search:1},function(data){
   						$("#hotsearch").replaceWith(data);
   					})
   				}
    		}
    	});
    }
    </script>
</header>
<!-- header end-->

<nav class="site-nav">
<div class="container">
  <div role="navigation" class="navbar navbar-primary">
    <div class="navbar-header">
      <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
        <span class="sr-only">切换导航</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <span class="navbar-actived">网站导航</span>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav nav-primary">
      		<?php if(is_array($nav_arr)) { foreach($nav_arr as $k => $v) { ?>
 <li <?php if($v['nav_style']==$do ||$v['nav_style']==$strNavActive) { ?>class="active"<?php } ?> ><a href="<?php echo $v['nav_url'];?>" <?php if($v['newwindow']) { ?>target="_blank"<?php } ?>><span><?php echo $v['nav_title'];?></span></a></li>
              <li class="line"></li>
<?php } } ?>
      </ul>
      <!--<ul class="nav navbar-nav navbar-right">
        <li><a href="#">诚信保障</a></li>
        <li><a href="#">VIP特权</a></li>
        <li><a href="#">增值工具</a></li>
      </ul>-->
    </div><!--/.nav-collapse -->
  </div>
</div>
</nav>

<div class="container">

<div class="col-sm-7 hidden-xs">
  <div class="welcome-img">
    <div class="thumbnail">
 <?php keke_loaddata_class::ad_show('LOGIN_LEFT','login','') ?>
    </div><!-- thumbnail end-->
    <div class="caption">
      <h3>注册用户的特色功能</h3>


      <ul class="list-inline">
        <li><p class="text-muted"><i class="fa fa-check-square"></i> 实名认证后，交易保障。</p></li>
        <li><p class="text-muted"><i class="fa fa-check-square"></i> 订单记录保存，随时随地查看</p></li>
<li><p class="text-muted"><i class="fa fa-check-square"></i> 关键位置推荐，惊喜不断</p></li>
      </ul>

    </div>
  </div><!-- welcome-img end -->
</div>
<div class="col-sm-5 col-xs-12">
<div class="login-and-register-container">

  <div class="login-box">
    <div class="page-header">
      <div class="pull-right">或 <a id="register-link" href="index.php?do=register" rel="show-register">注册账户</a></div>
      <h1>登录 </h1>
    </div>

    <form action="index.php?do=login" role="form"  name="loginForm" id="loginForm" method="post">
    	<input type="hidden" name="formhash" id="formhash" value="<?php echo FORMHASH;?>">
<input type="hidden" name="hdn_refer" id="hdn_refer" value="<?php echo $_K['refer'];?>">
      <div class="form-group">
        <label class="sr-only" for="account">帐号</label>
        <input type="text" class="form-control" id="account" name="account" placeholder="帐号">
      </div>
      <div class="form-group">
        <label class="sr-only" for="password">密码</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="请填写登录密码">
      </div>
 <?php if($intLoginTimes) { ?>
    <input type="hidden" name="logins" id="logins" value='0'>
      <div class="form-group clearfix code-group">
        <label class="sr-only" for="code">验证码</label>
        <div class="col-xs-3">
          <input type="text" class="form-control" id="code" name="code" placeholder="验证码">
        </div>
        <div class="col-xs-9 code-img">
          <img id="secode_img" src="index.php?do=ajax&view=captcha" onclick="change();document.getElementById('secode_img').src='index.php?do=ajax&view=captcha&sid='+Math.random(); return false;">
           <a  href="javascript:change();javascript:document.getElementById('secode_img').src='index.php?do=ajax&view=captcha&sid='+Math.random(); void(0);"  >换一组</a>
        </div>
      </div>
  <?php } ?>
      <div class="form-group clearfix">
        <div class="checkbox pull-left">
        <label>
          <input type="checkbox"  name="autoLogin" value="1"> 记住我
        </label>
        </div>
        <a href="index.php?do=retrieve" class="pull-right mt_10">忘记密码？</a>
      </div>
      <div class="form-group text-center">
        <button type="submit" class="btn btn-primary btn-block">登录</button>
      </div>
    </form>
  </div><!-- login-box end -->

</div><!-- login-and-register-container end -->

<?php if($api_open) { ?>
<div class="login-and-register-footer">
  <p>第三方登录：
  <?php if(is_array($api_open)) { foreach($api_open as $k => $v) { ?>
<?php if($weibo_list[$k.'_app_id']) { ?>
    <a href="control/oauth_request.php?type=<?php echo $k;?>" title="<?php echo $api_name[$k]['name'];?>"><img src="static/img/ico/<?php echo $k;?>_t.gif" alt="<?php echo $api_name[$k]['name'];?>"></a>
<?php } ?>
<?php } } ?>
  </p>
</div>

<?php } ?>
<script type="text/javascript">
function change(){
$("#code").val("");
}
</script>
<!-- modal-footer end -->
</div><!-- col-xs-5 end -->

</div>
<script type="text/javascript" src="static/js/model/register/register.js"></script>
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