/*
Navicat MySQL Data Transfer

Source Server         : 【演示站】115.29.236.26
Source Server Version : 50528
Source Host           : 115.29.236.26:3306
Source Database       : keke_kppw_demo

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-06-16 15:55:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for keke_witkey_ad
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_ad`;
CREATE TABLE `keke_witkey_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告编号',
  `target_id` int(11) DEFAULT NULL COMMENT '广告位编号',
  `ad_type` char(20) DEFAULT NULL COMMENT '广告文件',
  `ad_position` char(20) DEFAULT NULL COMMENT '位置',
  `ad_name` varchar(300) DEFAULT NULL COMMENT '链接名称',
  `ad_file` varchar(300) DEFAULT NULL COMMENT '广告文件',
  `ad_content` text COMMENT '广告内容',
  `ad_url` varchar(100) DEFAULT NULL COMMENT '广告URL',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `listorder` int(11) DEFAULT NULL COMMENT '排序',
  `width` varchar(15) DEFAULT NULL COMMENT '广告宽',
  `height` varchar(15) DEFAULT NULL COMMENT '广告高',
  `tpl_type` char(20) DEFAULT NULL COMMENT '''置顶模板'' 模板名称如：default,red,多个用”,”隔开。',
  `is_allow` tinyint(1) DEFAULT NULL COMMENT '''是否开启'' 1开启，0关闭。',
  `on_time` int(10) DEFAULT '0' COMMENT '''发布时间'' 每十分钟判断一次end_time,并更新on_time',
  PRIMARY KEY (`ad_id`),
  KEY `index_1` (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_ad
-- ----------------------------
INSERT INTO `keke_witkey_ad` VALUES ('292', '21', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', 'default', '1', '1434340497');
INSERT INTO `keke_witkey_ad` VALUES ('236', '3', 'image', 'global', 'KPPW', 'data/uploads/sys/ad/banner_4.jpg', '0', 'http://www.renwuyi.com', '0', '0', '0', '0', '3', '950', '400', 'default', '1', '1421915916');
INSERT INTO `keke_witkey_ad` VALUES ('291', '20', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '1190', 'default', '1', '1434014042');
INSERT INTO `keke_witkey_ad` VALUES ('290', '19', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434016385');
INSERT INTO `keke_witkey_ad` VALUES ('288', '17', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', '<img src=\"data/uploads/sys/ad/adv.jpg\" />', 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', 'default', '1', '1434341025');
INSERT INTO `keke_witkey_ad` VALUES ('289', '18', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434341025');
INSERT INTO `keke_witkey_ad` VALUES ('287', '16', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_3.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434009691');
INSERT INTO `keke_witkey_ad` VALUES ('286', '15', 'image', '', '任务易', '', null, 'http://www.renwuyi.com', '0', '0', null, '', null, '', '', 'default', '1', '1395625510');
INSERT INTO `keke_witkey_ad` VALUES ('240', '3', 'image', 'global', 'KPPW2.5震撼上市', 'data/uploads/sys/ad/banner_5.jpg', '0', 'http://www.kppw.cn/zt/znq.html', '0', '0', '0', '0', '2', '1920', '620', '0', '1', '1399686314');
INSERT INTO `keke_witkey_ad` VALUES ('285', '14', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_2.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434009691');
INSERT INTO `keke_witkey_ad` VALUES ('284', '13', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434015945');
INSERT INTO `keke_witkey_ad` VALUES ('283', '12', 'image', '', '任务易', '', null, 'http://www.renwuyi.com', '0', '0', null, '', null, '', '', 'default', '1', '1395625505');
INSERT INTO `keke_witkey_ad` VALUES ('282', '11', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_3.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', 'default', '1', '1434015945');
INSERT INTO `keke_witkey_ad` VALUES ('281', '10', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_2.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434015935');
INSERT INTO `keke_witkey_ad` VALUES ('280', '9', 'code', '', '任务易', '', '<java src=\"text/ja<x>vasc<x>ript\">000000</java>', 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1395309405');
INSERT INTO `keke_witkey_ad` VALUES ('279', '8', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434015935');
INSERT INTO `keke_witkey_ad` VALUES ('261', '3', 'image', 'global', 'KPPW2.5震撼上市', 'data/uploads/sys/ad/banner_6.jpg', '0', 'http://www.kee.im', '0', '0', '0', '0', '1', '950', '400', '0', '1', '1399630236');
INSERT INTO `keke_witkey_ad` VALUES ('277', '6', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_3.jpg', '<img src=\"data/uploads/sys/ad/adv.jpg\" />', 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', 'default', '1', '1434440828');
INSERT INTO `keke_witkey_ad` VALUES ('276', '5', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_2.jpg', '<sc<x>ript type=\"text/ja<x>vasc<x>ript\"> ', null, '0', '0', null, null, null, null, null, null, null, '0');
INSERT INTO `keke_witkey_ad` VALUES ('275', '4', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', '<img src=\"data/uploads/sys/ad/adv.jpg\" />', 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', 'default', '0', '1400550069');
INSERT INTO `keke_witkey_ad` VALUES ('293', '22', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', '<B>000000000000000000000000000000000000000000000000000000000000</B>', 'http://www.renwuyi.com', '0', '0', null, '', '0', '', '', 'default', '1', '1434340497');
INSERT INTO `keke_witkey_ad` VALUES ('296', '1523', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', '', '1', '1434016385');
INSERT INTO `keke_witkey_ad` VALUES ('297', '1522', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '950', '50', '', '1', '1434014042');
INSERT INTO `keke_witkey_ad` VALUES ('298', '1524', 'image', '', '任务易', 'data/uploads/sys/ad/950x80_1.jpg', null, 'http://www.renwuyi.com', '0', '0', null, '', '0', '485', '245', '', '1', '1434340450');
INSERT INTO `keke_witkey_ad` VALUES ('301', '3', 'image', 'global', 'KPPW', 'data/uploads/sys/ad/banner_7.jpg', '0', 'http://www.renwuyi.com', '0', '0', '0', '0', '4', '950', '400', 'default', '1', '1421915916');
INSERT INTO `keke_witkey_ad` VALUES ('300', '3', 'image', 'global', 'KPPW2.5震撼上市', 'data/uploads/sys/ad/banner_8.jpg', '0', 'http://www.renwuyi.com', '0', '0', '0', '0', '5', '1920', '620', '0', '1', '1399686314');

-- ----------------------------
-- Table structure for keke_witkey_ad_target
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_ad_target`;
CREATE TABLE `keke_witkey_ad_target` (
  `target_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告位编号',
  `name` char(20) DEFAULT NULL COMMENT '广告位名称',
  `code` char(50) DEFAULT NULL COMMENT '广告位标签',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `targets` varchar(255) DEFAULT '' COMMENT '广告标签',
  `position` varchar(150) DEFAULT NULL COMMENT '位置',
  `ad_size` varchar(255) DEFAULT NULL COMMENT '广告位大小',
  `ad_num` int(11) DEFAULT NULL COMMENT '广告位个数',
  `sample_pic` varchar(100) DEFAULT NULL COMMENT '广告位图片',
  `is_allow` tinyint(1) DEFAULT NULL COMMENT '''是否开启'' 1开启，0关闭。',
  `content` text,
  PRIMARY KEY (`target_id`),
  KEY `target_id` (`target_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_ad_target
-- ----------------------------
INSERT INTO `keke_witkey_ad_target` VALUES ('4', '首页_中部一栏广告', 'HOME_CENTAL_ONE', '首页_中部一栏广告', '', '', '', '1', 'data/adpic/home_cental_one.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('5', '首页_中部二栏广告', 'HOME_CENTAL_TWO', '首页_中部二栏广告', '', '', '', '1', 'data/adpic/home_cental_two.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('6', '首页_中部三栏广告', 'HOME_CENTAL_THREE', '首页_中部三栏广告', '', '', '', '1', 'data/adpic/home_cental_three.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('8', '任务大厅_头部广告', 'TASKLIST_HEAD', '任务大厅_头部广告', '', '', '', '1', 'data/adpic/tasklist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('10', '任务大厅_底部广告', 'TASKLIST_BOTTOM', '任务大厅_底部广告', '', '', '', '1', 'data/adpic/tasklist_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('11', '威客商城_头部广告', 'SHOPLIST_HEAD', '威客商城_头部广告', '', '', '', '1', 'data/adpic/tasklist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('13', '威客商城_底部广告', 'SHOPLIST_BOTTOM', '威客商城_底部广告', '', '', '', '1', 'data/adpic/tasklist_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('14', '服务商_头部广告', 'SELLERLIST_HEAD', '服务商_头部广告', '', '', '', '1', 'data/adpic/tasklist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('16', '服务商_底部广告', 'SELLERLIST_BOTTOM', '服务商_底部广告', '', '', '', '1', 'data/adpic/tasklist_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('17', '资讯中心_头部广告', 'NEWSLIST_HEAD', '资讯中心_头部广告', '', '', '', '1', 'data/adpic/newslist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('18', '资讯中心_底部广告', 'NEWSLIST_BOTTOM', '资讯中心_底部广告', '', '', '', '1', 'data/adpic/newslist_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('19', '任务详情_底部广告', 'TASKINFO_BOTTOM', '任务详情_底部广告', '', '', '', '1', 'data/adpic/taskinfo_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('20', '商品详情_底部广告', 'GOODINFO_BOTTOM', '商品详情_底部广告', '', '', '', '1', 'data/adpic/taskinfo_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('21', '资讯详情_头部广告', 'NEWSINFO_HEAD', '资讯详情_头部广告', '', '', '', '1', 'data/adpic/newslist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('22', '资讯详情_底部广告', 'NEWSINFO_BOTTOM', '资讯详情_底部广告', '', '', '', '1', 'data/adpic/newslist_bottom.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('3', '首页_顶部幻灯广告', 'HOME_TOP_SLIDE', '首页_顶部幻灯广告', '', '', '', '6', 'data/adpic/home_top_slide.jpg', '1', '{loop $datalist $k $v}<div data-img=\"{$v[ad_file]}\"><a href=\"{$v[ad_url]}\" data-video=\"false\" target=\"_blank\" title=\"{$v[ad_name]}\"></a></div>{/loop}');
INSERT INTO `keke_witkey_ad_target` VALUES ('1522', '商品详情_头部广告', 'GOODINFO_HEAD', '商品详情_头部广告', '', '', '', '1', 'data/adpic/tasklist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('1523', '任务详情_头部广告', 'TASKINFO_HEAD', '任务详情_头部广告', '', '', '', '1', 'data/adpic/tasklist_head.jpg', '1', null);
INSERT INTO `keke_witkey_ad_target` VALUES ('1524', '登录注册_左侧广告', 'LOGIN_LEFT', '登录注册_左侧广告', '', '', '', '1', 'data/adpic/tasklist_head.jpg', '1', null);

-- ----------------------------
-- Table structure for keke_witkey_agreement
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_agreement`;
CREATE TABLE `keke_witkey_agreement` (
  `agree_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '协议编号',
  `agree_status` int(11) DEFAULT NULL COMMENT '''协议状态'' "1"=>"待确认","2"=>"签署完成","3"=>"交易完成"。',
  `model_id` int(11) DEFAULT NULL COMMENT '模型编号',
  `task_id` int(11) DEFAULT NULL COMMENT '任务编号',
  `work_id` int(11) DEFAULT NULL COMMENT '稿件编号',
  `buyer_uid` int(11) DEFAULT NULL COMMENT '买家编号',
  `buyer_status` int(11) DEFAULT NULL COMMENT ' ''买家状态'' "1"=>"待确认","2"=>"已确认","3"=>"附件上传","4"=>"互评完成","5"=>"交付完成"。',
  `buyer_accepttime` int(11) DEFAULT NULL COMMENT '买家同意时间',
  `buyer_confirmtime` int(11) DEFAULT NULL COMMENT '买家确认时间',
  `seller_uid` int(11) DEFAULT NULL COMMENT '卖家编号',
  `seller_status` int(11) DEFAULT NULL COMMENT '''卖家状态'' "1"=>"待确认","2"=>"已确认","3"=>"附件确认","4"=>"互评完成","5"=>"交付完成"',
  `seller_accepttime` int(11) DEFAULT NULL COMMENT '卖家同意时间',
  `seller_confirmtime` int(11) DEFAULT NULL COMMENT '卖家确认时间',
  `agree_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `file_ids` varchar(50) DEFAULT NULL COMMENT '文件编号',
  `on_time` int(11) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`agree_id`),
  KEY `agree_id` (`agree_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_agreement
-- ----------------------------
INSERT INTO `keke_witkey_agreement` VALUES ('1', '3', '1', '1', '1', '2', '4', '1433917222', '1433917332', '3', '4', '1433917316', '1433917321', '婚纱摄影网站，有原型，有HTML，套后台-1', '', '1433916994');
INSERT INTO `keke_witkey_agreement` VALUES ('2', '5', '1', '2', '2', '2', '1', null, null, '3', '2', '1433917238', null, 'destoon程序做的网站，解决占用CPU高-2', null, '1433917102');
INSERT INTO `keke_witkey_agreement` VALUES ('3', '5', '1', '5', '10', '2', '1', null, null, '1', '1', null, null, '需要通过货运单号采集当月客户信息的软件-10', null, '1433991946');

-- ----------------------------
-- Table structure for keke_witkey_article
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_article`;
CREATE TABLE `keke_witkey_article` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章标号',
  `art_cat_id` int(11) DEFAULT '0' COMMENT '文章分类编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `art_title` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `cat_type` char(20) DEFAULT NULL COMMENT '文章类型',
  `art_source` varchar(200) DEFAULT NULL COMMENT '文章来源',
  `art_pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `content` longtext COMMENT '内容',
  `is_recommend` int(11) DEFAULT '0' COMMENT '是否推荐',
  `seo_title` varchar(500) DEFAULT NULL COMMENT 'SEO的title',
  `seo_keyword` varchar(500) DEFAULT NULL COMMENT 'SEO的关键字',
  `seo_desc` varchar(500) DEFAULT NULL COMMENT 'SEO的描述',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `is_show` int(11) DEFAULT '1' COMMENT '是否显示',
  `is_delineas` int(11) DEFAULT '0' COMMENT '是否幻灯',
  `pub_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  PRIMARY KEY (`art_id`),
  KEY `index_2` (`art_cat_id`),
  KEY `index_3` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_article
-- ----------------------------
INSERT INTO `keke_witkey_article` VALUES ('13', '217', '0', 'admin', '广告位招租', '', 'yertyetry', 'data/uploads/2011/09/13/89244e6f0512d32b3.gif', '广告位招租', '0', '广告位招租', '广告位招租', '广告位招租', '0', '1', '0', '1200758400', '103');
INSERT INTO `keke_witkey_article` VALUES ('14', '367', '0', 'ert112121', '注册协议', '', 'yertyetry', 'data/uploads/2012/01/14/276764f10f578bada0.png', '注册协议注册协议注册协议注册协议注册协议注册协议注册协议注册协议', '0', '筷子爱情wss', '筷子爱情wss', '有人说，爱情像水，温柔明亮；也有人说，爱情像酒，越久越醇；还有人说，爱情像风，来去无踪...我说，爱情像一双筷子。男人是一根筷子，女人是一根筷子，两根筷子有缘握在一起，成为一双筷子，那就是爱情。  一双筷子，心往一处想，力往一处使，才能把美好的日子夹起来，送进我们的口中。男人和女人，少了哪一个都不行，一', '1', '1', '0', '1326511480', '136');
INSERT INTO `keke_witkey_article` VALUES ('246', '5', '0', '匿名', '威客营销的成功之路及潜在危机分析', 'article', '', '', '&lt;p&gt;现在威客网也算是比较火的一个网赚平台，只要大家有一定的特长都能够找到合适的兼职，就算是你只会风水，起名测字往往都能够找到不错的任务，而且这方面的任务还是比较多的，但是这上面的任务要么价格低廉的惊人，要么是价格很具有诱惑力，对于价格低的，往往会成为搅乱市场的罪魁祸首，因为会有整体降低行业的价值趋势，比如发帖子，现在有的人就出一毛钱发一个帖子，实在是荒唐，连五毛都胜率了，还有那些价格非常诱人的，往往都不会让一个人中标，实在有点欺诈之嫌，当然这些都不是威客网的过错，实在是很多人的蓄意所为!&lt;/p&gt;&lt;p&gt;　　正是越来越多的人参与到威客当中，威客网的发展也迎来的极大的机遇，那么威客网本身如何进行营销呢?我们知道猪八戒威客网营销的非常成功，有&lt;a href=\"http://www.0202010.com/\"&gt;网络推广&lt;/a&gt;，甚至央视也来做报道，这些营销也算是堪称经典，迅速的让猪八戒的知名度串升了很多!而且威客的市场也是十分巨大的，现在互联网人口也达到四五亿了，这些人其实都能够成为威客，只要你有知识，有经验，都能够通过威客的平台转化为实际收益，那么威客网的成功之路自然要从发展威客开始!&lt;/p&gt;&lt;p&gt;　　第一步自然是把人变成威客，首先就是利用威客能够赚钱的效应，能够让你在家上上网就把钱挣了这样的广告词肯定是非常吸引人的，而注册成为一名威客自然是非常简单的过程，同时威客网本身还可以给你提供推广的机会，推广一个人参加威客就能够给你积分，提成，发布任务甚至也会给你提成，成功完成任务也能够给你提成，这些都能够有效的转化为收益，自然就能够把很多人改变成为威客!&lt;/p&gt;&lt;p&gt;　　第二步那就是让企业也成为威客，现在很多在威客网上发布任务的大多数都来自于企业，毕竟企业还是财大气粗嘛，几万的项目随便就能够推出来，而对于个人来说推出的任务超过几千元，那就是大手笔了，大部分还是停留在一稿两贴一元的阶段，大大降低了发帖的成本，却苦了很多发帖手，赚的钱越来越少，长期以往肯定会对威客的发展不利，所以威客营销要想办法改变这个局面，那么最好的方法自然就是打开企业这个缺口，从而获得大量的任务来源，提高任务的门槛!从而让威客网走到正确的轨道上来!&lt;/p&gt;&lt;p&gt;　　其实威客营销也是一把双刃剑，可能也会给自己造成毁灭的打击，假如上面的营销不成功，那么威客的赚钱效应就会大大降低，甚至还会遭到&lt;a href=\"http://www.36job.com/\"&gt;行业&lt;/a&gt;的抵制，毕竟&lt;a href=\"http://www.nfrencai.com/trade.shtml\"&gt;行业&lt;/a&gt;价值会被某些个人的低价而毁掉了，另外威客网也存在着巨大的竞争力，威客网的监管系统不一定面面俱到，当出现纠纷的时候，或者欺骗的时候，威客网总会成为风口浪尖上的第一个受害者，所以威客网的诞生之初就带着一把双刃剑来的，只有真正懂得运营威客网，才能够真正取得成功!&lt;/p&gt;', '0', '', '', '', '0', '1', '0', '1365664413', '47');
INSERT INTO `keke_witkey_article` VALUES ('346', '358', '0', '', 'KPPW2.6来啦 刷新你的建站体验', 'article', '', '', '&lt;p&gt;　　相信很多站长对于KPPW都不会陌生，KPPW是客客团队主打的开源威客系统，同类开源建站产品的领跑者!近期，全新KPPW2.6正式版发布了，借助客客团队近5年来威客行业的开源产品和商业项目的成熟经验，对前端功能进行了深入改进，主要应用于威客模式的在线服务交易平台搭建。&lt;/p&gt;&lt;p&gt;　　自2010年推出以来，KPPW历经了版本上的多次升级。而每一次升级，都是对于广大用户最真诚的反馈。&lt;/p&gt;&lt;p&gt;　　增长逻辑清晰，打造带有客客标识的行业领先品牌&lt;/p&gt;&lt;p&gt;　　经过团队技术不断的沉淀和创新，2012年6月，KPPW2.0完成了以“基础框架+任务模型+商品模型”为基本的产品理念，提供了更多符合创意型、知识型、经验型产品特性，并深入行业垂直化发展的威客交易模式。&lt;/p&gt;&lt;p&gt;　　2014年6月KPPW2.5发布，该版本的KPPW对前端功能进行了深入改进，从产品规划、UI设计、程序开发多个环节进行了优化，在未做框架重构情况下对程序进行更优秀的改进。&lt;/p&gt;&lt;p&gt;　　而在近期发布的KPPW2.6，则从客户与用户的角度出发，深入的挖掘每一个场景的流程与体验，确保带来全面极致的使用享受。&lt;/p&gt;&lt;p&gt;　　每一次成长，都为夯实品牌提供了良好的基础。&lt;/p&gt;&lt;p&gt;　　响应一线需求，做真正了解消费者的产品&lt;/p&gt;&lt;p&gt;　　用户体验一直是产品开发中的重要命题，对于一向精益求精的KPPW也不例外。伴随着版本的不断更新，客客也越来越多的意识到交互体验在产品优化中的重要性。&lt;/p&gt;&lt;p&gt;　　在KPPW2.6筹备阶段，客客团队便利用官方论坛开展了面向所有用户的意见征集活动。各位用户可以根据切身体验提出各种意见或建议，只要提出的想法被官方启用，便能获得客客送出的丰厚好礼。&lt;/p&gt;&lt;p&gt;　　这种和消费者的真诚互动让KPPW实现了某种意义上的“取之于民而用之于民”，也让各位消费者看到了KPPW在产品体验上的用心与贴心。&lt;/p&gt;&lt;p&gt;　　顺应市场变革，在求索中寻突破&lt;/p&gt;&lt;p&gt;　　伴随着KPPW的不断优化升级，各种人性化的工具与服务也在不断被推陈出新。无论是顺应移动互联网发展潮流的KPPW微信客户端还是移动客户端，都体现出了KPPW在顺应市场变革中的灵敏性。&lt;/p&gt;&lt;p&gt;　　通过产品让客户走在时代的前面，发展的前头，也是KPPW作为开源产品领跑者的使命和决心。如今，KPPW2.6正式发布，不仅如此，KPPW目前已和国内最大的站长网A5达成初步合作，将为目前最有影响力的站长平台提供专业的技术支持。&lt;/p&gt;&lt;p&gt;　　新突破也是新机遇，KPPW定将不辱使命!&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '', '', '', '0', '1', '0', '1427272279', '0');
INSERT INTO `keke_witkey_article` VALUES ('38', '100', '0', 'ert', '如果您有创意服务需求', 'help', 'yertyetry', '0', '<h6>这里是一个创意人才库，他们竞相为您提供卓越的创意服务<br />他们各自提交自己的方案供您挑选，被您相中的方案将会得到您提供的报酬。 </h6><br />时间财富汇聚了来自世界各地区、各行各业不同职业领域的专业人才数十万人（每天都以上千人递增）。<br />他们可为您提供各类平面设计、网站建设、软件开发、编程制作、动漫创作、多媒体制作、创意策划、文字创作、企划文案、起名构思、编撰翻译、作词谱曲、宣传推广、线索征集、市场调查、出谋划策等服务，为您提供最及时、最全面的解决办法。<br />如果您有创意需求，您只需发布您的项目需求，再将悬赏酬金托管到时间财富，您的需求就将出现在时间财富悬赏中心，那些世界各地的创意人才就开始为您提供创意服务了！<br />接下来，他们各自会把自己的创意方案提交到您的项目下，任您挑选！<br /><p>只有您最终选中了谁的方案，他便拿到您的赏金！</p><p>目前已有近万家企业和个人发布项目，悬赏解决他们面临的创意难题。<br />如果您有创意能力，您只需前往<a title=\"这里有成百上千的项目！\" href=\"http://www.vikecn.com/Task/List/\"></a>，寻找自己感兴趣的项目，在项目期结束前递交自己的方案，就可以了。<br />接下来，您的方案如果被项目发布者选中，您将因此而获得该项目的赏金！<br />这里是一个公平的能力竞技场，不需要看您的学历、职业经历，更不需要看上司的脸色，没有办公室政治的烦扰，一切凭作品说话！<br />一些人提交创意方案并非全为了中标，他们在竞争当中学习、成长。<br />时间财富还提供了全方位的能力展示系统，这有助于手握赏金的企业更准确地主动找到您。1<br /></p><br />', '0', '如果您有创意服务需求', '如果您有创意服务需求', '这里是一个创意人才库，他们竞相为您提供卓越的创意服务他们各自提交自己的方案供您挑选，被您相中的方案将会得到您提供的报酬。 时间财富汇聚了来自世界各地区、各行各业不同职业领域的专业人才数十万人（每天都以上千人递增）。他们可为您提供各类平面设计、网站建设、软件开发、编程制作、动漫创作、多媒体制作、创意策', '0', '1', '0', '1325903242', '2');
INSERT INTO `keke_witkey_article` VALUES ('131', '100', '0', '', '时间财富', 'help', '', 'data/uploads/2012/01/07/624f081ec7d15c6.jpg', '&nbsp;&nbsp;&nbsp; 1、注册成为时间财富网会员。&nbsp; &lt;a class=\"ta\" href=\"http://www.vikecn.com/reg.asp\" target=\"_blank\"&gt;&lt;/a&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;2、填写有效的联系方式，联系方式可自行选择公开或者保密。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;3、进入发布悬赏项目页面。 &lt;a class=\"ta\" href=\"http://user.vikecn.com/vkitem_add.asp\" target=\"_blank\"&gt;&lt;/a&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;4、按要求选择分类、确定悬赏金、悬赏周期、中标模式，简明扼要地填写项目要求。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;5、有附件请上传附件，如果附件超过5M，请使用威客网盘上传或者联系时间财富客服协助上传。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;6、预付悬赏金，时间财富支持支付宝、财付通、快钱、网上银行、银行汇款、自动取款机转账、预充值余额等支付悬赏。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;7、时间财富审核通过、悬赏正式进行。&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;二、项目评标规则 &lt;/strong&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;1、发布者在项目发布后应及时查看项目成果，项目截止后发布方有7天评标期。在7天时间内确定中标结果或作出加价、延期决定。如在项目结束前就产生了满意作品也可提前评标。 &lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;2、如果有特殊原因不能按时评标，请提前向时间财富网项目管理中心申请备案，可适当延长评标时间。 &lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;3、若项目到期不按时评标，项目发布方又无合理原因提前告知时间财富网备案，项目管理中心将按客户提供的联系方式一周内发出两次评标通知，若15日内客户仍未做出任何选择或合理处理办法，将视为客户自动放弃评标权利，时间财富网将按照产生中标结果，并支付中标报酬。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;4、项目发布方应本着诚信、公平的态度，尊重威客工作者的劳动成果权益，不得以任何方式选择产生出不公平、不公正、不诚信的中标结果。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;5、项目发布方若有评标不诚信行为（指与项目发布者有直接关连的人员参与了该项目且获得中标的行为），时间财富网有权取消其项目评标资格，该项目将作为废标项目进行相应处理。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;6、时间财富网始终坚持不懈地保护知识产权，坚定中立公信原则维护项目发布方利益和威客工作者劳动成果权益，坚决反对作品抄袭侵权行为，坚决反对套取中标金及剽窃作品成果行为，坚决反对发布者以任何作弊方式影响中标结果的公平产生。&lt;br /&gt;', '0', '时间财富', '时间财富', '&#160;&#160;&#160; 1、注册成为时间财富网会员。&#160; &#160;&#160;&#160;&#160;2、填写有效的联系方式，联系方式可自行选择公开或者保密。&#160;&#160;&#160;&#160;3、进入发布悬赏项目页面。 &#160;&#160;&#160;&#160;4、按要求选择分类、确定悬赏金', '0', '1', '0', '1365665362', '4');
INSERT INTO `keke_witkey_article` VALUES ('66', '100', '0', '', '为什么要有交付协议?', 'help', '', '', '协议能够对发布者和中标者双方提供公平公正的依据，倘若引起任何版权或者利益双方有分歧，此文件将作为评判依据。此文件居有《中华人民共和国劳动法》的法律效益。一经签订即日生效。<br />', '0', '为什么要有交付协议?', '为什么要有交付协议?', '协议能够对发布者和中标者双方提供公平公正的依据，倘若引起任何版权或者利益双方有分歧，此文件将作为评判依据。此文件居有《中华人民共和国劳动法》的法律效益。一经签订即日生效。', '0', '1', '0', '1326184206', '6');
INSERT INTO `keke_witkey_article` VALUES ('67', '100', '0', '', '对协议的内容有异议', 'help', '', '', '本协议符合最基本的行业规范，通用性比较强，倘若有附加条件请与我们联系<!--{eval echo $_K[\'phone\']}-->。此协议不得做任何更改或修改，增加附加协议将会以系统消息的形式告知双方，具体内容将在线下双方互相告知，但此附加协议只限于发布者与中标者两者之间，与本平台无关<br />', '0', '', '', '', '0', '1', '0', '1326185007', '5');
INSERT INTO `keke_witkey_article` VALUES ('342', '5', '0', '', '任务易垂直搜索服务 强势登陆', 'article', '', '', '&lt;p&gt;　　伴随着威客行业近十年的蓬勃发展，知识网络化的传递模式和效益增收模式被越来越多人所了解和认同。然而纵观当前的行业现状，威客模式虽然经历了较长时期的孕育和发展，却始终无法达到全民化的拓展和延伸，挣脱行业发展桎梏的求索之路注定漫长而艰辛。&lt;/p&gt;&lt;p&gt;　　这样的大环境也催生了客客团队对于威客全民化进程的“好奇心”和“求知欲”。&lt;br/&gt;&lt;/p&gt;&lt;p style=\"text-align:center\"&gt;&lt;img alt=\"任务易垂直搜索服务 强势登陆.jpg\" src=\"data/upload/image/20150325/1427268671438810.jpg\" title=\"1427268671438810.jpg\"/&gt;&lt;/p&gt;&lt;p style=\"text-align: center;\"&gt;　　(配图：任务易新版页面即将来袭，敬请期待!)&lt;/p&gt;&lt;p&gt;　　那么问题来了，任务易到底是如何履行其作为垂直搜索引擎的职能特点的呢?&lt;/p&gt;&lt;p&gt;　　正如大家所知，垂直搜索引擎是针对某一个行业的专业搜索引擎，是搜索引擎的细分和延伸，其特点就是“专、精、深”，且具有行业色彩，相比较通用搜索引擎的海量信息无序化，垂直搜索引擎则显得更加专注、具体和深入。任务易所具备的的全面收录、实时更新、科学分析、完善保障等功能特点很好的满足了威客群体对专业性、准确性、功能性、个性化的信息需求，这种全能化的功能设定恰恰就是垂直搜索服务立足的根本。&lt;/p&gt;&lt;p&gt;　　而且，任务易所提供的搜索服务远不止上文所列举的“专、精、深”，力图打造行业标志性搜索品牌的任务易在功能定位上也有了全新的尝试：&lt;/p&gt;&lt;p&gt;　　新：行业突破的大胆尝试，一站式搜索，在实践中开辟威客发展新格局。&lt;/p&gt;&lt;p&gt;　　广：全网覆盖式搜索布局，以高广度的知识内核推动威客文化传播。&lt;/p&gt;&lt;p&gt;　　专：为威客行业提供专业化搜索服务，打造行业标志性搜索品牌。&lt;/p&gt;&lt;p&gt;　　精：海量信息，精准定位，优质任务，高效对接，确保信息传递准确性。&lt;/p&gt;&lt;p&gt;　　深：深度剖析威客群体需求，提供完善具体的行业周边搜索服务。&lt;/p&gt;&lt;p&gt;　　日前，任务易垂直搜索服务蓄势待发，更有双重好礼欢乐来袭。话费免费拿，红包任性送，新年有福到，根本停不下来。赶快搜索“任务易”参与吧!&lt;/p&gt;&lt;p&gt;　　任务易——找任务，接任务，很容易!&lt;/p&gt;&lt;p&gt;　　新闻来源：&lt;/p&gt;&lt;p&gt;　　飞象网 http://www.cctime.com/html/2015-2-12/2015212111638862.htm&lt;/p&gt;&lt;p&gt;　　凤凰网 \r\nhttp://sn.ifeng.com/gongyi/newswire/detail_2015_02/12/3559342_0.shtml&lt;/p&gt;&lt;p&gt;　　齐鲁网 http://caijing.iqilu.com/cjzx/2015/0212/2310069.shtml&lt;/p&gt;&lt;p&gt;　　来源：威客百科本文地址：&lt;a target=\"_self\" href=\"http://baike.renwuyi.com/2015-02/7778.html\"&gt;baike.renwuyi.com/2015-02/7778.html&lt;/a&gt; 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '任务易垂直搜索服务 强势登陆', '任务易垂直搜索服务 强势登陆', '任务易垂直搜索服务 强势登陆', '0', '1', '0', '1427269781', '4');
INSERT INTO `keke_witkey_article` VALUES ('224', '100', '0', '客客小记', '认证中心', 'help', '客客族', '', '&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;亲爱的用户朋友们：&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;许多用户对客客实名认证的审核规则不了解，经常会出现认证审核不能通过的情况。现将认证审核规则告知用户，希望能给大家的认证申请带来帮助。&lt;br /&gt;规则如下：&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:14pt;\"&gt;&lt;strong&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;实名认证：&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、上传的图片必须是身份证的有效图片&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;若上传的图片为身份证无关的图片，将不能通过认证。并且这种无效的申请会影响其他用户的认证速度，所以会限制该用户一个月内不能再重新提交认证信息。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、图片清晰&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;图片模糊不清，无法辨认证件信息的，将无法通过认证。必须使用清晰的身份证原件的扫描件或彩色数码照，复印件的照片无效。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;3&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、身份证信息需与注册信息相符&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;若身份证上的信息与用户提交的信息不符，将无法通过验证。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;如果您提交的证件是护照，请您查看证件上是否有证件号码，如果没有则无法核实您的身份，不可以通过。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、身份证有效期大于90&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;天&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;证件有效期小于&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;90&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;天、临时身份证或无效的证件都是不能用来认证的。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、需年满&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;18&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;周岁&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;未满&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;18周岁是无法通过身份认证的。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6、上传的证件图片显示完整&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;使用数码相机拍证件时，要将整个证件拍下来进行上传，如果上传的证件图片显示不完整将不予通过。&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、第二代身份证需要提供双面的图片，第一代身份证需要提供含有个人信息那一面的图片。&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;第一代身份证只需要提供身份证正面的图片，即含有个人信息那一面。而第二代身份证需要提供双面的图片。否则，将不能通过认证审核。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8、与公安机关的认证一致&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;身份证信息与公安系统认证不一致的，将不能通过猪八戒网认证审核。&lt;br /&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=\"font-size:14pt;\"&gt;&lt;strong&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;企业认证：&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、上传的图片必须是营业执照的有效图片&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;若上传的图片为营业执照无关的图片，将不能通过认证。并且这种无效的申请会影响其他用户的认证速度，所以会限制该用户一个月内不能再重新提交。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、图片清晰&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;图片模糊不清，无法辨认证件信息的，将无法通过认证。必须使用清晰的营业执照原件的扫描件或彩色数码照，复印件的照片无效。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;、营业执照信息需与注册信息相符&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若营业执照上的信息与用户提交的信息不符，将无法通过验证。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、证件有效期大于90&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;天&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;证件有效期小于&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;90&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-size:12pt;\"&gt;&lt;span style=\"font-family:Microsoft YaHei;\"&gt;天或无效的证件都是不能用来认证的。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、上传的证件图片显示完整&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用数码相机拍证件时，要将整个证件拍下来进行上传，如果上传的证件图片显示不完整将不予通过。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6、与工商机关的认证一致&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;营业执照信息与工商系统认证不一致的，将不能通过客客认证审核。&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;', '1', '认证中心', '认证中心', '', '0', '1', '0', '1365665328', '0');
INSERT INTO `keke_witkey_article` VALUES ('229', '17', '0', '', '如何做一个网络推手', 'article', '', '', '&lt;span style=\"font-family:Verdana;\"&gt;&lt;span style=\"font-family:Verdana;\"&gt; 一、首先要求具备每天长时间在线的条件,拥有个人电脑或在单位具备干私活的条件,在网吧的就&lt;/span&gt;&lt;span style=\"font-family:Verdana;\"&gt;不推荐了,毕竟在网吧上网不合适.其次就是网络的选择,最好是宽带,可以拨号的那种,不管是电信&lt;/span&gt;&lt;span style=\"font-family:Verdana;\"&gt;网通还是铁通,有了较快的网络,工作效率才会高,当然了,局域网的也可以,就怕速度不好,还有就&lt;/span&gt;&lt;span style=\"font-family:Verdana;\"&gt;是有的时候需要换IP的话就不方便了.无线网卡或3G上网的还是别做了,无线网卡那真是无限卡啊,&lt;/span&gt;&lt;span style=\"font-family:Verdana;\"&gt;慢的要命,3G上网呢速度还可以,但是费用就有点贵了,不合适的.&lt;/span&gt;&lt;/span&gt;&lt;span style=\"font-family:Verdana;\"&gt;&lt;/span&gt;&lt;p&gt;&nbsp;&lt;/p&gt;&lt;span style=\"font-family:Verdana;\"&gt;&lt;/span&gt;&lt;p&gt;&lt;span style=\"font-family:Verdana;\"&gt;&lt;span style=\"font-family:Verdana;\"&gt;&lt;span style=\"font-family:Verdana;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/span&gt;二、工具：工具是网络推手的必备，就跟军人一样，没有枪就不能上战场，想要挣钱，还得工具齐全。推手的工具简单说就是ID，各大论坛ID，而且ID注册时间尽量早，带头像，ID注册时尽量与人名相似，尽量在2~3个汉字之间最好，这样才有质量。&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;span style=\"font-family:Verdana;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/span&gt;三、执行：在推广过程中，执行是需要重要把关，就拿发帖、顶贴来说：质量得到保证才能对推广有所效果。而不仅仅是把信息发布、回复完就完事！发帖－需要找正确论坛、版块，而且在操作过程中，需要根据雇主提供实际要求而发帖！这样才能容易通过。顶贴－顶贴不是一味顶，不仅回复信息内容要有质量，而且在回复过程中需要扮演各种角色，并且不要一面倒、同一种语气、并能提取一些网友信息来做应答；同时顶贴尽量间隔时间回复，而不要一口气回复完，这样容易导致帖子被锁、被封、被删，同时回帖的作用也没有得到发挥；实事求是，诚实是最好的美德！自己回复多少帖子就是多少帖，而不要将网民回复的都算在自己头上，这点往往是很多推手都是不在意，其实只要有经验的推手仔细观察就能发现哪些是推手回的哪些是网民回的！&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;span style=\"font-family:Verdana;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/span&gt;四、资源：做推手仅仅有ID是不够的！还得发展其他资源，如不仅是论坛ID，还有一些广告信息网站ID，同时最好能养ID，发展ID好友、空间好友、博客好友社区好友、博客、SNS社区等等，有了这些资源才能保证推手的活能源源不断。&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;span style=\"font-family:Verdana;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/span&gt;五、学习：不管你现在处于什么地位、不管你现在身在何处、不管你做的是什么工作，想要不断成长都离不开对知识的充实。只想到做任务挣钱是远远不够的，更多时候还要学习新兴的推广方式、新兴的推广技术、以及一些推广理论知识、推广经验等等。如：SEO，名人推广经验等。&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;span style=\"font-family:Verdana;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/span&gt;六、目标：有目标才有前进的方向，把自己的事情当成事业来做，做推手，给自己定一个目标！即便是每个月挣多少钱为目标！不要以为谈到钱就显得俗，这个社会离开了钱还能活吗？这是现实，我们离不开，只能面对！有了目标做起事来才有方向，同时也更能激励自己&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1329459503', '3');
INSERT INTO `keke_witkey_article` VALUES ('69', '298', '0', '', '怎么注册成为威客会员？', 'help', '', '', '<p>1、点击首页的免费注册按钮，进入注册页面。</p><p>2、按要求填写相关注册信息。比如：用户名、邮箱、密码等</p><p>3、点击“注册”按钮提交，提示注册成功。</p><br />', '0', '怎么注册成为威客会员？', '怎么注册成为威客会员？', '1、点击首页的免费注册按钮，进入注册页面。2、按要求填写相关注册信息。比如：用户名、邮箱、密码等3、点击“注册”按钮提交，提示注册成功。', '0', '1', '0', '1325901897', '2');
INSERT INTO `keke_witkey_article` VALUES ('70', '298', '0', '', '用户注册时应注意哪些问题？', 'help', '', '', '1、考虑好用户名。因为注册后将不可更改。<br />2、填写真实信息。以便管理员在确认评标与中标通知时联系。<br />3、密码设置。为保证用户名安全，请设置一个复杂的密码。<br />4、注册时请仔细阅读《注册条款》，详细了解威客中国的相关规则，使您更准确的了解您所拥有的权利。<br />', '0', '用户注册时应注意哪些问题？', '用户注册时应注意哪些问题？', '1、考虑好用户名。因为注册后将不可更改。2、填写真实信息。以便管理员在确认评标与中标通知时联系。3、密码设置。为保证用户名安全，请设置一个复杂的密码。4、注册时请仔细阅读《注册条款》，详细了解威客中国的相关规则，使您更准确的了解您所拥有的权利。', '0', '1', '0', '1322120479', '2');
INSERT INTO `keke_witkey_article` VALUES ('71', '328', '0', '', '注册时需要注意哪些问题？', 'help', '', '', '<p>1、会员名：5-15个字符，英文、数字、下划线，注册成功将不能修改。不能使用中文用户名。 </p><p>2、密码：6-16位组成，建议使用英文字母加数字或符号的组合提高密码安全度。详见“如何设置安全密码”。 </p><p>3、邮箱：邮箱认证是可以用来取回密码的，完成注册后请点击进行邮箱认证。 </p><p>4、验证码：请参照右边的验证码，将数字填入左侧输入框中，不分大小写。如填写错误需重新填写正确才能顺利注册。 </p><br />', '0', '注册时需要注意哪些问题？', '注册时需要注意哪些问题？', '1、会员名：5-15个字符，英文、数字、下划线，注册成功将不能修改。不能使用中文用户名。 2、密码：6-16位组成，建议使用英文字母加数字或符号的组合提高密码安全度。详见“如何设置安全密码”。 3、邮箱：邮箱认证是可以用来取回密码的，完成注册后请点击进行邮箱认证。 4、验证码：请参照右边的验证码，将数字填入左侧输', '0', '1', '0', '1322120640', '2');
INSERT INTO `keke_witkey_article` VALUES ('72', '298', '0', '', '什么是验证码？', 'help', '', '', '1、注册时填写的验证码均是阿拉伯数字。 <br />2、看不到验证码，有可能是您的IE没有启用“活动脚本”、安全级别设置的过高。 <br />您可以如下处理： <br />点击“工具”—“Internet选项”—“安全”—“默认级别”—“确定” <br />同时还请您删除一下您电脑上的临时文件，方法如下： <br />IE6.0版本的处理方法： <br />1、打开浏览器，点击“工具”菜单，打开“INTERNET选项”的对话框 。<br />2、点击“常规”选项卡，选择“删除COOKIES”，在弹出的对话框内按确定；然后点击“删除文件”，在删除所有脱机内容前打上钩，再按确定。 <br />3、点击“安全”选项卡，点击右下角的“默认级别”，如果是灰色的不可按的按钮，则跳过此步骤即可。 <br />4、点击“隐私”选项卡，选择右下角的“默认”，如果是灰色的不可按的按钮，则跳过此步骤即可。点击“高级”，在弹出的页面上把“覆盖自动cookie处理”选中。下面的第一方cookie 和第三方cookie选择“接受”，再点击“确定”。 <br />5、点击“高级”选项卡，然后选择右下角的“还原默认设置”按钮，然后点击最下面的“确定”按钮 。<br />6、关闭所有的浏览器，然后打开，重新进入本站，看一下问题是否已经解决。                <br />', '0', '什么是验证码？', '什么是验证码？', '1、注册时填写的验证码均是阿拉伯数字。 2、看不到验证码，有可能是您的IE没有启用“活动脚本”、安全级别设置的过高。 您可以如下处理： 点击“工具”—“Internet选项”—“安全”—“默认级别”—“确定” 同时还请您删除一下您电脑上的临时文件，方法如下： IE6.0版本的处理方法： 1、打开浏览器，点击“工具”菜单，打', '0', '1', '0', '1322120818', '3');
INSERT INTO `keke_witkey_article` VALUES ('73', '299', '0', '', '忘记用户名怎么办？', '', '', '', '<span style=\"font-family:Times New Roman;font-size:13px;\">请联系客服，并尽可能的提供您当时注册时留下的信息，包括注册邮箱、真实姓名、身份证号、银行卡号。如果有以上信息有注册记录，客服会帮您找回用户名。</span><br />', '0', '忘记用户名怎么办？', '忘记用户名怎么办？', '请联系客服，并尽可能的提供您当时注册时留下的信息，包括注册邮箱、真实姓名、身份证号、银行卡号。如果有以上信息有注册记录，客服会帮您找回用户名。', '0', '1', '0', '1322121583', '1');
INSERT INTO `keke_witkey_article` VALUES ('74', '299', '0', '', '忘记登录密码怎么办？', '', '', '', '忘记密码可在“登录”页面，（图1）<p><br /></p><p>点击“忘记密码？” 即可以看到输入您的用户名和您已经绑定邮箱地址，然后点击“请立即发送密码重置邮件”按钮，系统会发一个密码重置邮件到您的认证邮箱。<br />&nbsp;收到邮件后，请立即点击邮件内的链接至专属页面并重新设置您的新登录密码。<br /></p>                        <br />', '0', '忘记登录密码怎么办？', '忘记登录密码怎么办？', '忘记密码可在“登录”页面，（图1）点击“忘记密码？” 即可以看到输入您的用户名和您已经绑定邮箱地址，然后点击“请立即发送密码重置邮件”按钮，系统会发一个密码重置邮件到您的认证邮箱。&nbsp;收到邮件后，请立即点击邮件内的链接至专属页面并重新设置您的新登录密码。', '0', '1', '0', '1322121745', '1');
INSERT INTO `keke_witkey_article` VALUES ('75', '329', '0', '', '在线下单交易有什么好处？', 'help', '', '', '&lt;p&gt;1、如果您是在线下单，并选择在线托管款项交易，一旦服务发生纠纷，您可以发起退款申请。&lt;/p&gt;&lt;p&gt;2、如果您是在线下单，选择的服务商是诚信会员或已加入交易保障服务，一旦服务发生纠纷并给您造成损失，您可以申请先行赔付。&lt;/p&gt;&lt;p&gt;3、如果您是在线下单，您还可以对服务商提供的服务进行全面评价，掌握服务商信用的主动权，促使服务商提供满意服务。&lt;/p&gt;&lt;br /&gt;', '0', '在线下单交易有什么好处？', '在线下单交易有什么好处？', '1、如果您是在线下单，并选择在线托管款项交易，一旦服务发生纠纷，您可以发起退款申请。2、如果您是在线下单，选择的服务商是诚信会员或已加入交易保障服务，一旦服务发生纠纷并给您造成损失，您可以申请先行赔付。3、如果您是在线下单，您还可以对服务商提供的服务进行全面评价，掌握服务商信用的主动权，促使服务商提供', '2', '1', '0', '1364981299', '1');
INSERT INTO `keke_witkey_article` VALUES ('76', '298', '0', '', '注册流程', 'help', '', '', '<p>1、登录XX网，点击页面右上方的“免费注册”； </p><p>&nbsp;</p><p>2、进入填写“用户资料”页面，根据页面提示，填写您的用户资料； <span class=\"Wbt547\"></span></p><p>&nbsp;&nbsp;&nbsp; </p><p>3、在确认信息无误，并阅读过用户使用条款后，点击“同意以下使用条款，提交注册信息”按钮；即可成功注册成为XX用户。</p>                        <br />', '0', '注册流程', '注册流程', '1、登录XX网，点击页面右上方的“免费注册”； &#160;2、进入填写“用户资料”页面，根据页面提示，填写您的用户资料； &#160;&#160;&#160; 3、在确认信息无误，并阅读过用户使用条款后，点击“同意以下使用条款，提交注册信息”按钮；即可成功注册成为XX用户。', '0', '1', '0', '1325902035', '3');
INSERT INTO `keke_witkey_article` VALUES ('77', '297', '0', '', '提现流程', 'help', '', '', '&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;登录XX网后，进入“我的XX网”页面后，页面左侧下方“财务管理”专区点击“提现申请” &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&nbsp;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;或点击页面最上方“会员中心”后，在“账务管理”栏目下的“提现申请”。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&nbsp;&lt;/p&gt;&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 首先需要设置一个银行账号，或支付宝或是财付通帐号用来将您在XXX网中的金额转入您指定的帐户中，这样您才可以通过银行提取到现金。 &lt;/p&gt;&lt;p&gt;&nbsp;&lt;/p&gt;&lt;p&gt;&nbsp;输入提现金额后，点立即提现后。XXX网财务管理人员会在1-2个工作日提现到您指定的帐号！&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;/p&gt;                        &lt;br /&gt;', '1', '提现流程', '提现流程', '登录XX网后，进入“我的XX网”页面后，页面左侧下方“财务管理”专区点击“提现申请” &#160;或点击页面最上方“会员中心”后，在“账务管理”栏目下的“提现申请”。 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 首先需要设置一个银行账号，或支付宝或是财付通帐号用来将您在', '2', '1', '0', '1365665850', '2');
INSERT INTO `keke_witkey_article` VALUES ('78', '297', '0', '', '充值流程', 'help', '', '', '&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;1、登录“XXX网”进入“我的XXX网”然后点左侧“财务管理”页面：点击“在线充值”按钮；&nbsp;&lt;br /&gt;&nbsp;&nbsp; &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&nbsp;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;&nbsp;&nbsp;&nbsp;&nbsp; 或者登录“万能网”进入“我的XXX网”，点击中间的“我的账户”—“立即充值” ； &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;&lt;br /&gt;&nbsp; &lt;br /&gt;&nbsp;&lt;br /&gt;&nbsp; &lt;br /&gt;2、进入到充值页面 ；输入您想冲入个人账户的金额，并选择支付方式，然后点“去充值”&lt;br /&gt;点击“下一步”按钮； &lt;br /&gt;&nbsp;&lt;br /&gt;&nbsp;&nbsp; &lt;br /&gt;3、自动为您转入到您选择的支付方式页面进行转账充值操作。&lt;/span&gt;&lt;/p&gt;                        &lt;br /&gt;', '0', '充值流程', '充值流程', '1、登录“XXX网”进入“我的XXX网”然后点左侧“财务管理”页面：点击“在线充值”按钮；&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; 或者登录“万能网”进入“我的XXX网”，点击中间的“我的账户”—“立即充值” ； &#160; &#160;&#160; 2、进入到充值页面 ；输入您', '1', '1', '0', '1362793024', '4');
INSERT INTO `keke_witkey_article` VALUES ('79', '310', '0', '', '认证流程', 'help', '', '', '<p><span style=\"font-family:Arial;\">登录“XX网”进入“我的万能网”然后点左侧“认证中心”页面。</span></p><p><span style=\"font-family:Arial;\">万能网现在提供的认证有：实名认证，银行认证，企业认证，邮箱认证，VIP会员认证；</span></p><p><span style=\"font-family:Arial;\">按您自己的实际情况要进行哪个认证，只要点“立即认证”按提示操作就行！</span></p>                        <br />', '0', '认证流程', '认证流程', '登录“XX网”进入“我的万能网”然后点左侧“认证中心”页面。万能网现在提供的认证有：实名认证，银行认证，企业认证，邮箱认证，VIP会员认证；按您自己的实际情况要进行哪个认证，只要点“立即认证”按提示操作就行！', '0', '1', '0', '1322122540', '2');
INSERT INTO `keke_witkey_article` VALUES ('80', '329', '0', '', '招标任务流程', 'help', '', '', '&lt;span style=\"font-family:Arial;\"&gt;雇主选择发布招标任务；为了杜绝发布恶意信息，招标任务象征性收费10元，招标任务发布后，威客进行投标，经协商后，雇主选定具体的威客执行任务，招标任务自动跳转到“指定承接”任务进行。&lt;/span&gt;&lt;br /&gt;', '0', '招标任务流程', '招标任务流程', '雇主选择发布招标任务；为了杜绝发布恶意信息，招标任务象征性收费10元，招标任务发布后，威客进行投标，经协商后，雇主选定具体的威客执行任务，招标任务自动跳转到“指定承接”任务进行。', '1', '1', '0', '1364981283', '1');
INSERT INTO `keke_witkey_article` VALUES ('81', '301', '0', '', '全款悬赏任务流程', 'help', '', '', '&lt;span style=\"font-family:Arial;\"&gt;一、雇主发布全款悬赏任务（原威客任务）后，等待其他威客来参加该全款悬赏任务。&lt;br /&gt;二、XXX网威客可以通过搜索查看到该全款悬赏任务，并依据任务雇主的需求，提交作品。&lt;br /&gt;三、雇主查看到最合适最优秀的作品后，即可将此威客设置为中标者，并为其发放任务赏金后，全款悬赏任务成功结束。&lt;/span&gt;&lt;br /&gt;', '0', '全款悬赏任务流程', '全款悬赏任务流程', '一、雇主发布全款悬赏任务（原威客任务）后，等待其他威客来参加该全款悬赏任务。二、XXX网威客可以通过搜索查看到该全款悬赏任务，并依据任务雇主的需求，提交作品。三、雇主查看到最合适最优秀的作品后，即可将此威客设置为中标者，并为其发放任务赏金后，全款悬赏任务成功结束。', '4', '1', '0', '1364981451', '2');
INSERT INTO `keke_witkey_article` VALUES ('82', '312', '0', '', '如何赚钱？', 'help', '', '', '<span style=\"font-family:Arial;\">目前XX网上一共有四种赚钱途径。在将来还会有更多的赚钱方法开放出来。<br />a) 主要途径：完成任务。买家的所有需求都是通过“任务”的形式发布的，完成任务后，被买家选择为中标就可以获得报酬。现在就去【任务列表】挑选任务吧<br />b) 出售服务/作品，如果您在您的【人才铺】出售服务或作品案例，被买家购买后，您也有些收入。<br />c) 参加推广员联盟，获得提成。您可以介绍朋友来注册万能、发“悬赏任务”，也可以介绍朋友加入万能网完成任务。详情了解【推广员】<br />d) 直接交易。您只需要和买家谈好需求和价钱，就可以和他建立起直接交易，更方便更快捷的获得报酬。</span>                        <br />', '0', '如何赚钱？', '如何赚钱？', '目前XX网上一共有四种赚钱途径。在将来还会有更多的赚钱方法开放出来。a) 主要途径：完成任务。买家的所有需求都是通过“任务”的形式发布的，完成任务后，被买家选择为中标就可以获得报酬。现在就去【任务列表】挑选任务吧b) 出售服务/作品，如果您在您的【人才铺】出售服务或作品案例，被买家购买后，您也有些收入。c) 参', '0', '1', '0', '1322122817', '1');
INSERT INTO `keke_witkey_article` VALUES ('83', '301', '0', '', '如何知道自己中标了？', 'help', '', '', '&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;a) 登录XXX网，进入“我的XXX网”后台&lt;br /&gt;b) 进入“我是威客”——我参加的悬赏任务&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-family:Arial;\"&gt;c) 点击“中标任务”便可查看自己参与的任务是否中标&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&nbsp;&lt;span style=\"font-family:Arial;\"&gt;d) 任务中标后，便会生成一个订单，在上方：交易订单管理---“我收到的交易”中可以查看到。&lt;/span&gt;&lt;/p&gt;                        &lt;br /&gt;', '0', '如何知道自己中标了？', '如何知道自己中标了？', 'a) 登录XXX网，进入“我的XXX网”后台b) 进入“我是威客”——我参加的悬赏任务c) 点击“中标任务”便可查看自己参与的任务是否中标&#160;d) 任务中标后，便会生成一个订单，在上方：交易订单管理---“我收到的交易”中可以查看到。', '3', '1', '0', '1364981432', '1');
INSERT INTO `keke_witkey_article` VALUES ('84', '301', '0', '', 'XX威客网用户全款悬赏任务使用规则', 'help', '', '', '&nbsp; 本着保护雇主和威客权益的宗旨，本着公开、公平、公正和诚实信用的原则，致力于打造中国最大的外包项目交易平台。请在您使用前仔细阅读以下全款悬赏任务（威客任务）规则。&lt;br /&gt;&nbsp;&lt;br /&gt;一、XXX威客网雇主发布规则&lt;br /&gt;&lt;br /&gt;　　1、雇主可自由定价，自由确定全款悬赏任务的时间、任务描述及联系电话，雇主自主确定中标工作者和中标方案。&lt;br /&gt;&nbsp;&lt;br /&gt;　　2、全额悬赏任务款100%托管在万能威客网，以向威客们表达充分诚意。托管款项可通过您在万能威客网的个人账户余额、网上银行付款、银行转帐、支付宝转帐方式支付。其中80%分给中标威客，20%作为网站运营的手续费。&lt;br /&gt;&lt;br /&gt;　　3、每个全额悬赏任务至少有一个威客/作品中标，除任务无人参加或作品无效的情况外，一般不得撤销任务及退款。&lt;br /&gt;&lt;br /&gt;　　4、雇主自己所在组织及关联方的任何人均不能以任何形式参加自己所发布的任务。一经查实，万能威客网将有权自行处理，包括并不限于通过法律等各种途径，确保交易双方的合法权益。&lt;br /&gt;&lt;br /&gt;　　5、当所发布任务的金额不多于100元时，该任务的期限最多为7天。&lt;br /&gt;&lt;br /&gt;　　6、任务提交并托管款项后，万能威客网客服将在30分钟内（工作时间）审核发布到网站，如遇非工作时间将顺延。对不合理的任务需求，可在审核驳回后将任务款退回您的帐户。&lt;br /&gt;&nbsp;&lt;br /&gt;　　7、采用银行汇款为任务预付费的用户，在汇款成功后请在用户管理后台的账务申诉内为任务发起账务申诉，申诉时请注明[任务编号]等相关信息 ，万能威客网财务人员将尽快对申诉进行处理，以确保任务及时发布。对于提交的任务如一周内未收到托管到平台的任务款，则所提交任务信息将被自动删除，不做保留。&lt;br /&gt;&lt;br /&gt;　　8、如遇任务结果不满意，雇主可选择加价延期任务。金额在100元以上（含100元）的任务有3次加价延期机会，第1次加价不得低于任务金额的10%，第2次加价不得低于任务总金额的20%，第3次不得低于任务总金额的50%。金额在100元以下的任务如需加价延期，则至少加价100元。每次延期不能超过10天，特殊任务可以适当加长。&lt;br /&gt;&lt;br /&gt;　　9、 雇主可在任务进行期间任意时刻选标结束任务，最晚在公示期结束后3天进行选标，最终中标的威客作品及其一切知识产权（包括但不限于版权、著作权）均归雇主所有。如万能威客网在3日内电话通知2次后仍不选稿或不加价，将视为雇主委托万能威客网选稿。&lt;br /&gt;&lt;br /&gt;　　10、雇主选标48小时后万能威客网客服将审核中标作品。此48小时将留给所有应征者查看该任务是否有抄袭作弊的情况。&lt;br /&gt;&lt;br /&gt;　　11、如遇任务在中标后被举报作品涉嫌抄袭，经过调查核实，将取消中标人中标资格。同时将免费为此任务延期1次，不超过7天。&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp; 12、充入用户账户的资金未用于悬赏任务，在账户余额不少于100元的条件下才可以申请提现（提现最小金额为100元），提现时完全免费。&lt;br /&gt;&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;br /&gt;二、提取现金的规则&lt;br /&gt;&lt;br /&gt;　　1、提取现金的最小额度为50元。&lt;br /&gt;&lt;br /&gt;　　2、申请提取现金在审核通过后，即可在2-5个工作日内收到款项，目前不收取任何手续费。&lt;br /&gt;&lt;br /&gt;三、任务撤销的规则&lt;br /&gt;&nbsp;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以下几种情况可以撤消任务并退款：&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、任务进行中撤消：任务不适合在万能威客网发布，违反了任务发布规则，任务取消后任务款100%返还雇主帐户中。&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、任务结束后撤消，又分为以下几种处理方式：&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a、任务无威客提交结果，雇主可申请任务撤销，任务款100%返还雇主帐户中；&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b、任务有1人以上（含1人）威客提交结果，经万能威客网客服判定后认为此结果为无效作品、非原创作品或垃圾广告等，雇主可申请任务撤消，撤消时如果威客没有异议，任务款100%返还雇主帐户中；&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c、任务有1人以上（含1人）威客提交结果，经万能威客网客服判定后认为此结果为无效作品、非原创作品或垃圾广告等，雇主可申请任务撤消，撤消时如果威客持有异议，需雇主和威客互相向万能威客网客服举证，以证明自己的立场：如威客拿不出有力证据证明自己作品为有效作品，且雇主理由充分的情况下，任务款100%返还雇主帐户中；&lt;br /&gt;&lt;br /&gt;&nbsp;&lt;br /&gt;&lt;br /&gt;四、公示的规则&lt;br /&gt;&lt;br /&gt;　　在默认情况下，每个威客任务都会有公示期，下面我们对公示进行说明。&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公示是指在某一时间内，万能威客网会将公开本任务的所有作品供用户查阅监督。不论购买雇主保障服务的威客是否设置了作品保密，万能威客网会员可以对作品进行评论。通过实名认证的会员还可对作品进行“顶”和“踩”的操作。&lt;br /&gt;&nbsp;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公示目的在于促进威客间的交流和学习，同时对任务结果进行群众监督，质量良好的任务作品通过大众的投票及评论予以肯定和鼓励。若公示时任务尚未结束，那么雇主可以通过作品被“顶”和“踩”的情况来优先看到这些良好的作品，起到一定的作品筛选作用。&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一旦公示开始，一日不选出中标作品，公示就不结束。在选出中标作品（客服通过雇主中标申请，任务结束）那一刻，还要公示10天。&lt;br /&gt;&lt;br /&gt;', '0', 'XX威客网用户全款悬赏任务使用规则', 'XX威客网用户全款悬赏任务使用规则', '&#160; 本着保护雇主和威客权益的宗旨，本着公开、公平、公正和诚实信用的原则，致力于打造中国最大的外包项目交易平台。请在您使用前仔细阅读以下全款悬赏任务（威客任务）规则。&#160;一、XXX威客网雇主发布规则　　1、雇主可自由定价，自由确定全款悬赏任务的时间、任务描述及联系电话，雇主自主确定中标工作者', '2', '1', '0', '1364981418', '0');
INSERT INTO `keke_witkey_article` VALUES ('85', '301', '0', '', 'XXX威客网用户参加招标任务规则', 'help', '', '', '此版招标任务参加规则将从2011年1月1日起开始执行&lt;br /&gt;&lt;br /&gt;参加招标任务规则&lt;br /&gt;&lt;br /&gt;1）、为提高招标任务的方案质量，认真阅读发布者的要求后，才可以提交任务方案。&lt;br /&gt;&lt;br /&gt;2）、对于已参加的尚在招标期的招标任务，您可以提交任务方案，并可多次对方案作出修改。一旦招标期结束将不能提交及修改方案。&lt;br /&gt;&lt;br /&gt;3）、招标任务整个生命周期中，所有参加者提交的方案均处于保密状态，除发布者及方案对应的提交者之外，其他用户均不可见。&lt;br /&gt;&lt;br /&gt;4）、发布者会选择满意的方案，并邀请其提交者书写任务执行合同。&lt;br /&gt;&nbsp;&lt;br /&gt;5）、执行合同经发布者审核通过且发布者充入不少于执行合同中第一期任务款的金额到任务上后，任务进入到执行中（对于直接交易任务在发布者审核通过执行计划后直接结束）。同时该执行计划的书写者成为该任务的承接者，且已中标。&lt;br /&gt;&lt;br /&gt;6）、承接者需按照所写的执行合同进行工作，执行中承接者可修改任务合同，但修改任务合同后需经发布者审核通过后方能生效。&lt;br /&gt;&lt;br /&gt;7）、承接者通过工作按顺序完成任务合同所写的用于验收的关键指标后，将成果提交给发布人后，可申请发放对应期的任务款，发布人同意后该期任务款将直接发放进入承接者的账户。&lt;br /&gt;&lt;br /&gt;8）、承接者逐一完成任务合同的各期并得到发放的任务款后任务结束。&lt;br /&gt;&nbsp;&lt;br /&gt;9）、任务结束后发布者将对承接者进行评价，该评价将体现在承接者用户的信用页面，同时承接者用户的信用值将随着获得的任务款而增加。&lt;br /&gt;&lt;br /&gt;10）、若在任务执行中双方出现无法调解的分歧，则承接者和发布者任一方可提出仲裁申请，仲裁将根据实际情况对已充入任务但尚未发放的任务款进行分配并导致任务结束（仲裁结束）&lt;br /&gt;&lt;br /&gt;11）、任务在结束后承接者可在“已中标”页面中查看中标任务，参看自己提交的方案，查看所写的任务执行计划，查看来自发布人的评价。&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;', '0', 'XXX威客网用户参加招标任务规则', 'XXX威客网用户参加招标任务规则', '此版招标任务参加规则将从2011年1月1日起开始执行参加招标任务规则1）、为提高招标任务的方案质量，认真阅读发布者的要求后，才可以提交任务方案。2）、对于已参加的尚在招标期的招标任务，您可以提交任务方案，并可多次对方案作出修改。一旦招标期结束将不能提交及修改方案。3）、招标任务整个生命周期中，所有参加者提交', '1', '1', '0', '1364981397', '0');
INSERT INTO `keke_witkey_article` VALUES ('86', '300', '0', '', 'XXX威客网用户参加威客任务规则', 'help', '', '', '此版全款悬赏任务参加规则将从2011年1月1日起开始执行<br /><br />参加全款悬赏任务规则<br /><br />1）、万能威客网为保证公平，所有网站上发布的任务全部采用预付款方式，竞标人可放心参与。<br />&nbsp;<br />2）、为保证公平，万能威客网员工将不参加任何一个任务的竞标。<br /><br />3）、对于状态在进行中的任务，参加者可自由参加并提交自己的作品来参与竞标。<br /><br />4）、参加竞标作品并且提交任务附件的时候，附件最大不能超过2M容量。<br /><br />5）、竞标期间工作者可以提交及多次修改作品进行竞标，任务截止则不可提交和修改作品。在任务规定期限内提交符合任务需求的解决结果，不得提交与任务要求无关的、非原创涉嫌抄袭的提交结果，此类情况将将视其情况删除提交结果或作出相应的处理。<br /><br />6）、竞标成功后，本站将根据任务性质向竞标成功的工作者支付任务额80%的悬赏金额（如遇网站举办活动则以活动内的规则为准）<br /><br />7）、如果任务发布者违规进行作弊行为，万能威客网将通过投票形式选出中标者，并向投票中标者发放任务款。对于作弊的发布者，万能威客网将以网站公告的形式公布其资料。<br /><br /><br />', '0', 'XXX威客网用户参加威客任务规则', 'XXX威客网用户参加威客任务规则', '此版全款悬赏任务参加规则将从2011年1月1日起开始执行参加全款悬赏任务规则1）、万能威客网为保证公平，所有网站上发布的任务全部采用预付款方式，竞标人可放心参与。&nbsp;2）、为保证公平，万能威客网员工将不参加任何一个任务的竞标。3）、对于状态在进行中的任务，参加者可自由参加并提交自己的作品来参与竞标。4）', '0', '1', '0', '1322123040', '4');
INSERT INTO `keke_witkey_article` VALUES ('87', '300', '0', '', 'XXX网用户参加威客任务规则', 'help', '', '', '参加全款悬赏任务规则<br />1）、XXX网为保证公平，所有网站上发布的任务全部采用预付款方式，竞标人可放心参与。<br />2）、为保证公平，XXX网员工将不参加任何一个任务的竞标。<br />3）、对于状态在进行中的任务，参加者可自由参加并提交自己的作品来参与竞标。<br />4）、参加竞标作品并且提交任务附件的时候，附件最大不能超过2M容量。<br />5）、竞标期间工作者可以提交及多次修改作品进行竞标，任务截止则不可提交和修改作品。在任务规定期限内提交符合任务需求的解决结果，不得提交与任务要求无关的、非原创涉嫌抄袭的提交结果，此类情况将将视其情况删除提交结果或作出相应的处理。<br />6）、竞标成功后，本站将根据任务性质向竞标成功的工作者支付任务额80%的悬赏金额（如遇网站举办活动则以活动内的规则为准）<br />7）、如果任务发布者违规进行作弊行为，XXX网将通过投票形式选出中标者，并向投票中标者发放任务款。对于作弊的发布者，XXX网将以网站公告的形式公布其资料。<br /><br />此版全款悬赏任务参加规则将从2011年1月1日起开始执行<br /><br /><br />', '0', 'XXX网用户参加威客任务规则', 'XXX网用户参加威客任务规则', '参加全款悬赏任务规则1）、XXX网为保证公平，所有网站上发布的任务全部采用预付款方式，竞标人可放心参与。2）、为保证公平，XXX网员工将不参加任何一个任务的竞标。3）、对于状态在进行中的任务，参加者可自由参加并提交自己的作品来参与竞标。4）、参加竞标作品并且提交任务附件的时候，附件最大不能超过2M容量。5）、竞', '0', '1', '0', '1322123151', '3');
INSERT INTO `keke_witkey_article` VALUES ('88', '300', '0', '', '我发布的任务可以退款吗？', 'help', '', '', '<span style=\"font-family:Verdana;\">答：发布任务需先托管赏金，且不能退款。只有这样，威客才坚信你的诚意，并提交最佳创意作品。如出现没有竞标稿件的特殊情况，网站个案处理，双方协商。</span>                         <br />', '0', '我发布的任务可以退款吗？', '我发布的任务可以退款吗？', '答：发布任务需先托管赏金，且不能退款。只有这样，威客才坚信你的诚意，并提交最佳创意作品。如出现没有竞标稿件的特殊情况，网站个案处理，双方协商。', '0', '1', '0', '1322123196', '3');
INSERT INTO `keke_witkey_article` VALUES ('89', '300', '0', '', '任务发布后，雇主能不能修改任务？', 'help', '', '', '<span style=\"font-family:Verdana;\">答：任务进行期间，可以联系您的专属客服为您修改。您也可以增加补充说明，修改仅限于任务描述本身，不涉及到加重任务量。</span>                         <br />', '0', '任务发布后，雇主能不能修改任务？', '任务发布后，雇主能不能修改任务？', '答：任务进行期间，可以联系您的专属客服为您修改。您也可以增加补充说明，修改仅限于任务描述本身，不涉及到加重任务量。', '0', '1', '0', '1322123229', '3');
INSERT INTO `keke_witkey_article` VALUES ('90', '296', '0', '', '如何保障自己帐户的安全', 'help', '', '', '如果您通过了实名认证，当您忘记密码或帐号被盗时，只要提供相关的有效证件到XXX网进行申诉，您就可以重新拿回您的帐号密码：<br />　申请实名认证的方法：<br />　１,登录XXX网。<br />　２,进入认证中心<br />　３,点击实名认证下面的“申请实名认证”<br />　４,填写您的身份信息<br />&nbsp;&nbsp;&nbsp; ５,填写好正确的信息后，提交认证，我们的工作人员将在一个工作日内给您回复 <br /><br />', '0', '如何保障自己帐户的安全', '如何保障自己帐户的安全', '如果您通过了实名认证，当您忘记密码或帐号被盗时，只要提供相关的有效证件到XXX网进行申诉，您就可以重新拿回您的帐号密码：　申请实名认证的方法：　１,登录XXX网。　２,进入认证中心　３,点击实名认证下面的“申请实名认证”　４,填写您的身份信息&nbsp;&nbsp;&nbsp; ５,填写好正确的信息后，提交认证，我们', '0', '1', '0', '1322123315', '2');
INSERT INTO `keke_witkey_article` VALUES ('91', '296', '0', '', '帐号被盗或者忘记用户名密码怎么办', 'help', '', '', '如果你注册时填写了邮箱或您通过了邮箱认证，您可以通过找回密码功能来重新得到您的帐号。<br />使用方法：<br />１,进入登录页面<br />２,点击“ 忘记密码了？”链接，进入找回密码程序。<br />３,填写您的用户名，点击下一步<br />４,填写您的邮箱地，点击“取回密码”按钮<br />５,您会看到如下消息：<br />取回密码的方法已经通过 Email 发送到您的信箱中，<br />请在 3 天之内修改您的密码。<br />６,请按系统提示操作即可取回您的密码。 <br /><br />', '0', '帐号被盗或者忘记用户名密码怎么办', '帐号被盗或者忘记用户名密码怎么办', '如果你注册时填写了邮箱或您通过了邮箱认证，您可以通过找回密码功能来重新得到您的帐号。使用方法：１,进入登录页面２,点击“ 忘记密码了？”链接，进入找回密码程序。３,填写您的用户名，点击下一步４,填写您的邮箱地，点击“取回密码”按钮５,您会看到如下消息：取回密码的方法已经通过 Email 发送到您的信箱中，请在 3', '0', '1', '0', '1322123351', '1');
INSERT INTO `keke_witkey_article` VALUES ('92', '328', '0', '', '怎样发布悬赏项目？', 'help', '', '', '1、&nbsp; 登录状态下，点击发布任务按钮；<br /><br />2、&nbsp; 选择发布任务类型：悬赏任务<br /><br />3、&nbsp; 按要求填写相关任务信息，如：任务金额、任务周期、任务分类、任务标题、任务内容、任务附件；<br /><br />4、&nbsp; 根据任务情况可填写高级选项，任务高级模式可选择多人中标和计件中标或单人中标；任务宣传可选择用户推广此任务；<br /><br />5、&nbsp; 任务确认，并付款。如账户有余额（包含代金券）点击确认付款后会自动扣款，如账户无余额会跳转到支付页面。<br /><br /><br />', '0', '怎样发布悬赏项目？', '怎样发布悬赏项目？', '1、&nbsp; 登录状态下，点击发布任务按钮；2、&nbsp; 选择发布任务类型：悬赏任务3、&nbsp; 按要求填写相关任务信息，如：任务金额、任务周期、任务分类、任务标题、任务内容、任务附件；4、&nbsp; 根据任务情况可填写高级选项，任务高级模式可选择多人中标和计件中标或单人中标；任务宣传可选择用户推广此', '0', '1', '0', '1322123441', '2');
INSERT INTO `keke_witkey_article` VALUES ('93', '328', '0', '', '悬赏任务发布有周期限制？', 'help', '', '', '<p>悬赏任务发布周期限制为了保证本系统内悬赏任务有效性，做出的适当控制。目前对悬赏任务的周期限制与任务金额形成一定的比例，如:</p><p>100元以上任务，可以持续7天</p><p>500元以上任务，可以持续15天</p><p>1500元以上任务，可以持续30天</p><p>具体时间是根据您的任务量判断的！</p><br />', '0', '悬赏任务发布有周期限制？', '悬赏任务发布有周期限制？', '悬赏任务发布周期限制为了保证本系统内悬赏任务有效性，做出的适当控制。目前对悬赏任务的周期限制与任务金额形成一定的比例，如:100元以上任务，可以持续7天500元以上任务，可以持续15天1500元以上任务，可以持续30天具体时间是根据您的任务量判断的！', '0', '1', '0', '1322123496', '2');
INSERT INTO `keke_witkey_article` VALUES ('94', '328', '0', '', '什么是多人中标任务？', 'help', '', '', '<p>雇主选择多人中标模式，说明此次任务需要多人来完成。即雇主可选择两个以上的作品中标。</p><p>多人中标模式，雇主可以自行设计奖项个数（最多可设三个奖项），每个奖项相应的人数和赏金。如雇主悬赏1000元，设置以下三个奖项：</p><p>一等奖&nbsp;&nbsp; 若1人&nbsp;&nbsp; 平均分配&nbsp; 若干300钱</p><p>二等奖&nbsp;&nbsp; 若2人&nbsp;&nbsp; 平均分配&nbsp; 若干400钱</p><p>三等奖&nbsp;&nbsp; 若3人&nbsp;&nbsp; 平均分配&nbsp; 若干300元钱</p>                        <br />', '0', '什么是多人中标任务？', '什么是多人中标任务？', '雇主选择多人中标模式，说明此次任务需要多人来完成。即雇主可选择两个以上的作品中标。多人中标模式，雇主可以自行设计奖项个数（最多可设三个奖项），每个奖项相应的人数和赏金。如雇主悬赏1000元，设置以下三个奖项：一等奖&nbsp;&nbsp; 若1人&nbsp;&nbsp; 平均分配&nbsp; 若干300钱二等奖&nbs', '0', '1', '0', '1322123538', '2');
INSERT INTO `keke_witkey_article` VALUES ('95', '328', '0', '', '什么是计件任务？', 'help', '', '', '<p>计件任务是多人中标模式的一种延伸，由于计件任务要求合格稿件达到一定的量，因此只要威客所提稿件符合雇主要求，即可中标。雇主在发布任务时先确定任务的总赏金及要求稿件的数目，系统会据此算出每个稿件的赏金。威客参与计件任务，每达标一个即可获得单个稿件金额。</p>                        <br />', '0', '什么是计件任务？', '什么是计件任务？', '计件任务是多人中标模式的一种延伸，由于计件任务要求合格稿件达到一定的量，因此只要威客所提稿件符合雇主要求，即可中标。雇主在发布任务时先确定任务的总赏金及要求稿件的数目，系统会据此算出每个稿件的赏金。威客参与计件任务，每达标一个即可获得单个稿件金额。', '0', '1', '0', '1322123563', '2');
INSERT INTO `keke_witkey_article` VALUES ('96', '304', '0', '', '选稿评标有期限吗？', 'help', '', '', '<p>任务选稿的期限是根据悬赏金额来计算判断的。</p><p>雇主的项目都有选稿评标期限，尽可能最大限度的保障威客会员的劳动成果权益。 </p><p>因项目无满意作品的情况，很大程度上是悬赏酬金价格不合理原因所致，建议发布者将任务进行加价延期，已确保任务能够顺利完成。</p>                        <br />', '0', '选稿评标有期限吗？', '选稿评标有期限吗？', '任务选稿的期限是根据悬赏金额来计算判断的。雇主的项目都有选稿评标期限，尽可能最大限度的保障威客会员的劳动成果权益。 因项目无满意作品的情况，很大程度上是悬赏酬金价格不合理原因所致，建议发布者将任务进行加价延期，已确保任务能够顺利完成。', '0', '1', '0', '1322123608', '3');
INSERT INTO `keke_witkey_article` VALUES ('97', '304', '0', '', '怎样参与项目？', 'help', '', '', '<p>1、注册成为会员。</p><p>2、浏览项目，点击参与。(已经结束的或处于评标状态的项目不能再参与)。<br />3、方案完成后，进入管理中心，找到我参与的项目，上传即可（分为文字及附件形式的方案，文字方案可直接写在方案说明里）。<br />4、在未评标之前可以修改方案。<br />5、等待客户评标。<br />6、客户选定中标作品后，系统将发出中标通知，并公布中标者及其作品。</p>                        <br />', '0', '怎样参与项目？', '怎样参与项目？', '1、注册成为会员。2、浏览项目，点击参与。(已经结束的或处于评标状态的项目不能再参与)。3、方案完成后，进入管理中心，找到我参与的项目，上传即可（分为文字及附件形式的方案，文字方案可直接写在方案说明里）。4、在未评标之前可以修改方案。5、等待客户评标。6、客户选定中标作品后，系统将发出中标通知，并公布中标者', '0', '1', '0', '1322123648', '2');
INSERT INTO `keke_witkey_article` VALUES ('98', '304', '0', '', '项目失败退款', 'help', '', '', '<p>1、项目如无人承接或进行失败后，系统会扣除任务发布费用后，将剩余款项以代金券方式返还到用户账户。用户代金券可以作为用户站内余额，用于下次任务发布使用。</p><p>2、推广任务失败，系统不收取佣金。</p>                        <br />', '0', '项目失败退款', '项目失败退款', '1、项目如无人承接或进行失败后，系统会扣除任务发布费用后，将剩余款项以代金券方式返还到用户账户。用户代金券可以作为用户站内余额，用于下次任务发布使用。2、推广任务失败，系统不收取佣金。', '0', '1', '0', '1322123697', '2');
INSERT INTO `keke_witkey_article` VALUES ('99', '218', '0', '', '延期或加价流程', '', '', '', '<p>1、&nbsp; 客户发布项目后应及时查看项目成果，项目截止后发布方有7天评标期。在7天时间内确定中标结果或作出加价、延期决定。 </p><p>2、&nbsp; 项目首次悬赏无人参与的项目，可享有一次免费延期，延期时间不超过7天。</p><p>3、&nbsp; 延期任务只有3次加价机会，第1次加价不得低于任务金额的10%，第2次加价不得低于任务总金额的20%，第3次不得低于任务总金额的50%。每次延期不能超过10天，加价金额不低于50元</p>                        <br />', '0', '延期或加价流程', '延期或加价流程', '1、&nbsp; 客户发布项目后应及时查看项目成果，项目截止后发布方有7天评标期。在7天时间内确定中标结果或作出加价、延期决定。 2、&nbsp; 项目首次悬赏无人参与的项目，可享有一次免费延期，延期时间不超过7天。3、&nbsp; 延期任务只有3次加价机会，第1次加价不得低于任务金额的10%，第2次加价不得低于任务总金', '0', '1', '0', '1322123727', '0');
INSERT INTO `keke_witkey_article` VALUES ('100', '311', '0', '', '怎样发布招标任务？', 'help', '', '', '<p>1、&nbsp; 登录状态下，点击发布任务按钮；</p><p>2、&nbsp; 选择发布任务类型：招标任务</p><p>3、&nbsp; 按要求填写相关任务信息，如：任务金额、任务周期、任务分类、任务标题、任务内容、任务附件；</p><p>4、&nbsp; 任务确认，并付款。如账户有余额（包含代金券）点击确认付款后会自动扣款，如账户无余额会跳转到支付页面。招标任务仅扣除固定的任务发布费用。</p>                        <br />', '0', '怎样发布招标任务？', '怎样发布招标任务？', '1、&nbsp; 登录状态下，点击发布任务按钮；2、&nbsp; 选择发布任务类型：招标任务3、&nbsp; 按要求填写相关任务信息，如：任务金额、任务周期、任务分类、任务标题、任务内容、任务附件；4、&nbsp; 任务确认，并付款。如账户有余额（包含代金券）点击确认付款后会自动扣款，如账户无余额会跳转到支付页面。', '0', '1', '0', '1322123771', '1');
INSERT INTO `keke_witkey_article` VALUES ('101', '312', '0', '', '我们有哪些支付方式？', 'help', '', '', '<span style=\"font-size:16px;\">支付宝账户余额支付、易宝账户余额支付、快钱账户余额支付、各个银行网营支付、信用卡支付。<br />                        </span><br />', '0', '我们有哪些支付方式？', '我们有哪些支付方式？', '支付宝账户余额支付、易宝账户余额支付、快钱账户余额支付、各个银行网营支付、信用卡支付。', '0', '1', '0', '1322123831', '0');
INSERT INTO `keke_witkey_article` VALUES ('102', '260', '0', '', '如何发布自己的服务需求？', '', '', '', '在人中心，中击发布服务<br />', '0', '如何发布自己的服务需求？', '如何发布自己的服务需求？', '在人中心，中击发布服务', '0', '1', '0', '1322123870', '0');
INSERT INTO `keke_witkey_article` VALUES ('103', '260', '0', '', '什么是个人服务店铺？', '', '', '', '个人店铺是威客商城专为个人服务商开发的店铺产品，该产品可以充分体现个人服务商的服务价值，以吸引客户光顾。您注册开通后就相当于自己的免费个人网站，可以自己编辑、管理、发布、报价。个人服务店铺为免费产品，您可以完全免费使用该产品。                                                <br />', '0', '什么是个人服务店铺？', '什么是个人服务店铺？', '个人店铺是威客商城专为个人服务商开发的店铺产品，该产品可以充分体现个人服务商的服务价值，以吸引客户光顾。您注册开通后就相当于自己的免费个人网站，可以自己编辑、管理、发布、报价。个人服务店铺为免费产品，您可以完全免费使用该产品。', '0', '1', '0', '1322123902', '0');
INSERT INTO `keke_witkey_article` VALUES ('104', '260', '0', '', '如何开通个人店铺?', '', '', '', '<p>开通店铺仅需三步：注册 &#187; 填写必填资料 &#187; 发布服务</p>                        <br />', '0', '如何开通个人店铺?', '如何开通个人店铺?', '开通店铺仅需三步：注册 &#187; 填写必填资料 &#187; 发布服务', '0', '1', '0', '1322123931', '0');
INSERT INTO `keke_witkey_article` VALUES ('105', '239', '0', '', '怎样查看我参与的项目？', '', '', '', '<p>1、登录状态下进管理中心<br />2、点击我参与的项目，就会显示您所参与的所有项目，如有中标项目，会显示“中标”字样，未提交方案的项目有“上传字样”。</p>                        <br />', '0', '怎样查看我参与的项目？', '怎样查看我参与的项目？', '1、登录状态下进管理中心2、点击我参与的项目，就会显示您所参与的所有项目，如有中标项目，会显示“中标”字样，未提交方案的项目有“上传字样”。', '0', '1', '0', '1322123962', '0');
INSERT INTO `keke_witkey_article` VALUES ('106', '260', '0', '', '什么是团队服务店铺？', '', '', '', '<p class=\"text02\">团队店铺是威客商城专为服务型企业与团队型工作室用户开发的店铺产品，该产品可以充分体现团队服务商的服务价值，其主要有以下几点优点：</p><p class=\"text03\">(1)企业级站点，树立团队品牌形象；<br />(2)全方位展示，精确体现服务价值；<br />(3)置身大商圈，免费获更多得客户；<br />(4)适合企业、多人工作室等团队用户。</p>                        <br />', '0', '什么是团队服务店铺？', '什么是团队服务店铺？', '团队店铺是威客商城专为服务型企业与团队型工作室用户开发的店铺产品，该产品可以充分体现团队服务商的服务价值，其主要有以下几点优点：(1)企业级站点，树立团队品牌形象；(2)全方位展示，精确体现服务价值；(3)置身大商圈，免费获更多得客户；(4)适合企业、多人工作室等团队用户。', '0', '1', '0', '1322123986', '0');
INSERT INTO `keke_witkey_article` VALUES ('107', '237', '0', '', '如何知道自己的作品中标？', '', '', '', '<p>1、&nbsp; 网站上会发出中标通知的。</p><p>2、&nbsp; 在管理中心，我参与的项目处会显示“中标”字样。</p><p>3、在个人消息中心，可以收到中标的系统消息。</p>                        4、本站会以邮件的形式发送到你注册的邮箱里去。<br />', '0', '如何知道自己的作品中标？', '如何知道自己的作品中标？', '1、&nbsp; 网站上会发出中标通知的。2、&nbsp; 在管理中心，我参与的项目处会显示“中标”字样。3、在个人消息中心，可以收到中标的系统消息。                        4、本站会以邮件的形式发送到你注册的邮箱里去。', '0', '1', '0', '1322124066', '0');
INSERT INTO `keke_witkey_article` VALUES ('108', '265', '0', '', '退款注意事项', '', '', '', '<p>1、客户提出申请退款时，请详细告知相关内容（包括交易内容、沟通记录、聊天记录等）证明服务不符合要求的证据。</p><p>2、 威客商城收到客户退款申请，会在24小时内联系服务提供商，以第三方名义了解核实情况，协商调解并作出合理的仲裁，请双方给予配合！</p><p>3、最高退款金额不高于客户在威客商城托管的交易金额。</p>                        <br />', '0', '退款注意事项', '退款注意事项', '1、客户提出申请退款时，请详细告知相关内容（包括交易内容、沟通记录、聊天记录等）证明服务不符合要求的证据。2、 威客商城收到客户退款申请，会在24小时内联系服务提供商，以第三方名义了解核实情况，协商调解并作出合理的仲裁，请双方给予配合！3、最高退款金额不高于客户在威客商城托管的交易金额。', '0', '1', '0', '1322124097', '0');
INSERT INTO `keke_witkey_article` VALUES ('109', '312', '0', '', '如何付款/付款方式', 'help', '', '', '&lt;p&gt;在线下单，在线托管交易付款方式&lt;/p&gt;&lt;p class=\"text02\"&gt;1、用帐户余额支付&lt;/p&gt;&lt;p class=\"text02\"&gt;2、用网上银行充值到帐户支付&lt;/p&gt;&lt;p class=\"text02\"&gt;3、用支付宝充值到帐户支付&lt;/p&gt;&lt;p class=\"text02\"&gt;4、用财付通充值到帐户支付&lt;/p&gt;&lt;p class=\"text02\"&gt;5、线下去银行汇款，汇款打电话通知客服为你帐号充值。&lt;/p&gt;&lt;p class=\"text02\"&gt;&nbsp;&lt;/p&gt;                        &lt;br /&gt;', '0', '如何付款/付款方式', '如何付款/付款方式', '在线下单，在线托管交易付款方式1、用帐户余额支付2、用网上银行充值到帐户支付3、用支付宝充值到帐户支付4、用财付通充值到帐户支付5、线下去银行汇款，汇款打电话通知客服为你帐号充值。&#160;', '0', '1', '0', '1365665443', '0');
INSERT INTO `keke_witkey_article` VALUES ('110', '313', '0', '', '什么是威客？', '', '', '', '<p>&nbsp;&nbsp;&nbsp; 威客是英文Witkey（wit智慧、key钥匙）的音译。威客是指在网络时代凭借自己的能力（智慧和创意），在互联网上出售自己的富裕工作时间和劳动成果而获得报酬的人。通俗地讲，威客就是在网络平台上出售自己无形资产成果价值的工作者群体。&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;在新经济（商业）环境中做威客的人，种类各式各样，除了各个行业、各个领域之外，还包括掌握各类创新理论（经济和管理）的人。在这些掌握各类创新理论（经济和管理）的人中，有经济威客、管理威客和网络威客等各个领域的威客。甚至可以夸张地说，在互联网威客这平台上，没有所谓的经济学家、管理学家等各式各样的专家学者，只有威客。而威客类网站的出现，为有知识生产加工能力的个人创造了一个销售知识产品的商业平台和机会。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;总而言之，威客模式的出现，为个人的知识（资源）买卖带来商机。随着威客时代的来临，每一个威客都可以将自己的知识、经验和学术研究成果作为一种无形的“知识商品”和服务在网络上来销售。威客通过威客网站这个平台买卖“知识产品”，让自己的知识、经验和学术研究成果逐步转化成个人财富。在威客模式下，个人的知识（资源）不但是力量，而且又是个人的财富。在以知识资源应用开发的新经济（商业）时代，无论是个人或组织拥有知识就拥有财富。</p>                        <br />', '0', '什么是威客？', '什么是威客？', '&nbsp;&nbsp;&nbsp; 威客是英文Witkey（wit智慧、key钥匙）的音译。威客是指在网络时代凭借自己的能力（智慧和创意），在互联网上出售自己的富裕工作时间和劳动成果而获得报酬的人。通俗地讲，威客就是在网络平台上出售自己无形资产成果价值的工作者群体。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;', '0', '1', '0', '1322124296', '0');
INSERT INTO `keke_witkey_article` VALUES ('111', '313', '0', '', '什么是雇主？', '', '', '', '<span style=\"font-family:Arial;\">雇主</span>：均是指在本网站上发布任务的会员。', '0', '什么是雇主？', '什么是雇主？', '雇主：均是指在本网站上发布任务的会员。', '0', '1', '0', '1322124385', '0');
INSERT INTO `keke_witkey_article` VALUES ('112', '294', '0', '', '作为推手需要什么条件', 'help', '', '', '1、没有专业、学历的限制，只要自己感兴趣，能完成相应的任务，就可参与。&lt;br /&gt;&lt;br /&gt;2、XXX网是一个网上工作平台，只要注册为XXX网会员就能成为了一名推手。&lt;br /&gt;&lt;br /&gt;3、XXX网提倡竞争、成长与学习。&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;', '0', '作为推手需要什么条件', '作为推手需要什么条件', '1、没有专业、学历的限制，只要自己感兴趣，能完成相应的任务，就可参与。2、XXX网是一个网上工作平台，只要注册为XXX网会员就能成为了一名推手。3、XXX网提倡竞争、成长与学习。', '0', '1', '0', '1365665459', '0');
INSERT INTO `keke_witkey_article` VALUES ('113', '346', '0', '', '点击推广代码之后，重新进入XX网注册，是算我推广的客户吗', 'help', '', '', '答：算的，点击推广代码之后浏览器会自动作记录，只要不清除浏览器Cookie记录的情况下15天内注册会员都算成功推广。                        &lt;br /&gt;', '1', '点击推广代码之后，重新进入XX网注册，是算我推广的客户吗', '点击推广代码之后，重新进入XX网注册，是算我推广的客户吗', '答：算的，点击推广代码之后浏览器会自动作记录，只要不清除浏览器Cookie记录的情况下15天内注册会员都算成功推广。', '0', '1', '0', '1365665659', '0');
INSERT INTO `keke_witkey_article` VALUES ('114', '311', '0', '', '我做推广员能得到什么？', 'help', '', '', '&nbsp;                                                        答：在实践推广过程中不仅能学习许多网络营销知识锻炼自己的意志，同时能结交许多志同道合的朋友，当然在有效推广之后还可以获得非常丰厚的现金报酬。                                                &lt;br /&gt;', '0', '我做推广员能得到什么？', '我做推广员能得到什么？', '&#160;                                                        答：在实践推广过程中不仅能学习许多网络营销知识锻炼自己的意志，同时能结交许多志同道合的朋友，当然在有效推广之后还可以获得非常丰厚的现金报酬。', '0', '1', '0', '1365665422', '0');
INSERT INTO `keke_witkey_article` VALUES ('115', '294', '0', '', '什么是推广链接？', 'help', '', '', '&lt;span style=\"font-family:Arial;\"&gt;答：推广链接也是用于记录推广成绩的工具，由于是链接形式因此能通过浏览器地址访问。&lt;/span&gt;&lt;br /&gt;', '0', '什么是推广链接？', '什么是推广链接？', '答：推广链接也是用于记录推广成绩的工具，由于是链接形式因此能通过浏览器地址访问。', '0', '1', '0', '1365665409', '1');
INSERT INTO `keke_witkey_article` VALUES ('227', '203', '0', '匿名', '警惕交易诈骗，注意帐户安全', 'article', '', 'data/uploads/2015/03/25/213881242455127ef6ad0be.jpg', '&lt;p&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;网络交易骗术不断升级，客客网提醒所有用户：万变不离其宗。只要注意防范，任何骗术都无法得逞。&nbsp;以下展现几种常见的安全隐患和骗术，请所有会员注意！&lt;/p&gt;&lt;p&gt;【&lt;strong&gt;设置复杂密码，注意保管账户&lt;/strong&gt;】&lt;br/&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前网站提供的是双重密码的安全保障，对于登录等基本操作需要验证登录密码，对于提现、打款等涉及到资金的操作，需要验证安全密码。从近期资金被盗的几起案例中，发现了这些用户的密码都过于简单，有的甚至未设置安全密码，以致于密码很容易被猜中破解。&lt;br/&gt;&lt;strong&gt;安全提示：&lt;/strong&gt;&lt;br/&gt;&nbsp;&nbsp;&nbsp;&nbsp;广大会员应当注意设置并妥善保管密码，采取以下措施，防止密码被盗：&lt;br/&gt;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;&nbsp;&nbsp;设置较为复杂的密码，不要使用与用户名一致、简单的数字组合等密码；&lt;br/&gt;&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;&nbsp;&nbsp;设置不同的登录密码和安全密码；&lt;br/&gt;&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;&nbsp;&nbsp;保管好账号密码，尽量不要在公共场所的电脑上登录使用。&lt;br/&gt;&lt;br/&gt;&lt;br/&gt;&lt;/p&gt;', '1', '警惕交易诈骗，注意帐户安全', '警惕交易诈骗，注意帐户安全', '警惕交易诈骗，注意帐户安全', '0', '1', '0', '1427275516', '74');
INSERT INTO `keke_witkey_article` VALUES ('126', '100', '0', '', '网站公告5', 'help', '', '', '&lt;p&gt;作品是以文件付费下载的形式出售的；提供服务是以消耗劳动力和时间作为出售条件的。作品版权归作者所有，购买者只享有使用权和修改权；提供服务版权归购买者所有。作品相同的购买者只需要进行一次性消费就可以永久下载；提供服务相同的购买者根据需求次数付费。&lt;/p&gt;&lt;br /&gt;', '0', '网站公告5', '网站公告5', '&lt;p&gt;作品是以文件付费下载的形式出售的；提供服务是以消耗劳动力和时间作为出售条件的。作品版权归作者所有，购买者只享有使用权和修改权；提供服务版权归购买者所有。作品相同的购买者只需要进行一次性消费就可以永久下载；提供服务相同的购买者根据需求次数付费。&lt;/p&gt;', '0', '1', '0', '1365665369', '2');
INSERT INTO `keke_witkey_article` VALUES ('243', '17', '0', '', '威客必看：发帖任务参与须知', 'article', '', '', '&lt;h1&gt;&lt;strong&gt;1、威客如何参加发帖任务赚钱？&lt;/strong&gt;&lt;br /&gt;点击进入具体的发帖任务页面(&lt;a href=\"http://jijian.taskcn.com/list/index/\" target=\"_blank\"&gt;所有发帖任务列表&lt;/a&gt;)，&lt;u&gt;下载&lt;/u&gt;任务页面附件中的txt文章，把文章内容全部&lt;u&gt;复制&lt;/u&gt;后，&lt;u&gt;粘贴&lt;/u&gt;到雇主指定的网站中(如果雇主没有指定，则表示可以发到其他任意的网站上面)，然后点击任务页面“参加任务”的按钮，把发好的URL&lt;u&gt;链接地址&lt;/u&gt;在提交一下即可。如果推广的链接提交后，保持24小时有效(即可以正常访问，不被删除)，那么就可以直接获得相应的任务款奖励了。&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;2、发帖任务一般周期多久呢？&lt;/strong&gt;&lt;br /&gt;发帖类任务默认进行时间为30天，系统会自动延期征集有效作品，直到任务金额消耗完毕后，该任务将自动停止征集。&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;3、如何判断我提交的链接是否有效？&lt;/strong&gt;&lt;br /&gt;发帖任务采用先进的智能抓取技术来判别各个作品是否为有效的提交，默认情况下系统将会在某个作品提交后的24小时内完成自动抓取，并判断该作品链接是否存在及信息是否正确，正确无误的作品将自动获得任务赏金，已不存在的作品链接或信息有误将不会得到任务赏金。&lt;br /&gt;&lt;strong&gt;&lt;span style=\"color:red;\"&gt;以下提交为无效提交：&lt;br /&gt;&lt;/span&gt;&lt;/strong&gt;a. 没有提交到雇主指定的网站（雇主未指定除外）；&lt;br /&gt;b. 威客原创的内容(即与雇主附件中的推广文章无关的内容)；&lt;br /&gt;c. 将雇主提供的文章进行二次创作（增删、修改）；&lt;br /&gt;d. 登录会员后方可见的网站链接。&lt;br /&gt;e. 无人气的新建博客；&lt;br /&gt;f. 同一博客下重复发帖2篇以上（含2篇）。&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;4、我能无限参加某个发帖任务吗？&lt;/strong&gt;&lt;br /&gt;&lt;a href=\"http://my.taskcn.com/audite\" target=\"_blank\"&gt;实名认证&lt;/a&gt;的威客参加每个任务提交推广链接的上限为10个网址，且每个域名不得提交3次以上，多出部分系统将自动丢弃不作处理；非实名认证威客不能参加发帖任务。&lt;/h1&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1365664421', '13');
INSERT INTO `keke_witkey_article` VALUES ('241', '4', '0', '', '免责声明', 'article', '', '', '1、本网站发布悬赏任务、技术项目转让，其版权均归原作者所有，内容必须真实合法，本网站不负任何责任。&lt;br /&gt;&lt;br /&gt;2、其他任何媒体、网站或个人从本网下载使用，须自负版权等法律责任，本网站不负任何责任。&lt;br /&gt;&lt;br /&gt;3、本网站刊发、转载文章，版权归原作者所有，仅代表本人的观点和看法，文责自负，本网站不负任何责任。&lt;br /&gt;&lt;br /&gt;4、当本网站以链接形式推荐其他网站内容时，本网站不保证这些网站或资源的可用性负责、真实性、合法性。&lt;br /&gt;&lt;br /&gt;5、对于任何因使用链接的其他网站所造成之个人资料泄露及由此而导致的任何法律争议和后果，本网站不负任何责任。&lt;br /&gt;&lt;br /&gt;6、由于与本网站链接的其它网站所造成之个人资料泄露及由此而导致的任何法律争议和后果，本网站不负任何责任。&lt;br /&gt;&lt;br /&gt;7、任何单位或个人认为通过本站的内容可能涉嫌侵犯其合法权益，应该及时向本站管理员书面反馈，并提供身份证明、权属证明及详细侵权情况证明，我们在收到上述法律文件后，将会尽快安排处理。&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1365664407', '1');
INSERT INTO `keke_witkey_article` VALUES ('242', '203', '0', '', '支付方式', 'article', '', '', '&lt;p&gt;&lt;strong&gt;&lt;span style=\"font-size:16px;color:#ff0000;\"&gt;支付方式一：银行汇款&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;开 户 行：XXXXXXX银行　　帐 号：000-000-000-000&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;注：开户行所在城市为：xxxxx&nbsp; .....&lt;/p&gt;&lt;p&gt;在线QQ：xxxxxxxx、xxxxxxx&lt;/p&gt;&lt;p&gt;联系电话：027-0000000、00000000、000000、000000&lt;/p&gt;&lt;p&gt;付款后请及时通知我们，请注明所汇银行、金额、您在威客的用户名或者所发项目名称。&lt;/p&gt;&lt;p&gt;企业如需开据发票，请把公司名称、地址、邮编等相关信息发至邮箱（&lt;a href=\"mailto:xxxx@xxx.com\"&gt;xxxx@xxx.com&lt;/a&gt;）,费用另计。 &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;&lt;span style=\"font-size:16px;color:#ff0000;\"&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=\"font-size:16px;color:#ff0000;\"&gt;支付方式二：通过财付通付款&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-family:Verdana;\"&gt;&lt;strong&gt;如何通过财付通预付赏金？&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1365664429', '7');
INSERT INTO `keke_witkey_article` VALUES ('248', '4', '0', '', '诚信体系之诚信保障', 'article', '', '', '&lt;p&gt;&lt;span style=\"font-family:simsun;\"&gt;&lt;span style=\"FONT-SIZE: 10pt\"&gt;诚信保障金是加入&lt;span style=\"TEXT-DECORATION: underline\"&gt;诚信保障服务&lt;/span&gt;的卖家向阿里巴巴自缴的&lt;span style=\"color:red;\"&gt;诚信保证金&lt;/span&gt;及/或阿里巴巴授予的&lt;span style=\"color:red;\"&gt;诚信保障额度&lt;/span&gt;的总和。诚信保证金是指加入诚信保障服务的卖家自主向阿里巴巴预缴的诚信保障资金，用于确保交易中的买家合法权益能得到切实保障，在发生贸易争议且买家赔付申请成立时，将相应的保障资金赔付给买家，最大程度降低买家的合理损失。一定条件下，卖家可以支取、申请退回诚信保障金，并授权阿里巴巴冻结、处置诚信保障金。诚信保障额度是指阿里巴巴根据买家的需求，通过一定的评估模型，对加入诚信保障服务的卖家，授予一定额度的诚信保障金。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-family:simsun;\"&gt;&lt;span style=\"FONT-SIZE: 10pt\"&gt;诚信保障金是卖家为交易预交的一笔先行赔付金。可以有多种方式来展示&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1365664384', '5');
INSERT INTO `keke_witkey_article` VALUES ('249', '5', '0', '', '依法诚信纳税共建和谐社会', 'article', '', '', '&lt;span style=\"FONT-SIZE: 14px; LINE-HEIGHT: 25px\"&gt; 依法诚信纳税是社会主义和谐社会建设的客观要求，是广大纳税人共建共享和谐社会的具体体现。&nbsp;&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&lt;strong&gt;一、依法诚信纳税是社会主义和谐社会建设的重要物质保障&lt;/strong&gt; &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;税收是国家参与国民收入分配最主要、最规范的形式，筹集财政收入稳定可靠。我国的税收收入已占财政收入的95%左右，是财政收入最主要的来源。我国实行社会主义制度，国家、集体和个人之间的根本利益是一致的，税收的性质是“取之于民，用之于民”。国家运用税收筹集财政收入，通过预算安排用于财政支出，提供公共产品和公共服务，进行交通、水利等基础设施和城市公共建设，支持“三农”发展，用于环境保护和生态建设，促进教育、科学、文化、卫生等社会事业发展，用于社会保障和社会福利，促进地区协调发展，进行国防建设，维护社会治安，用于政府行政管理，开展外交活动，保障国家安全，促进经济社会发展，满足人民群众日益增长的物质文化等方面的需要。 &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;近年来，我国税收收入保持持续快速增长势头。2006年达到37636亿元，比上年增长21.9%。这是国民经济快速增长和企业效益大幅提高的反映，是各级党委政府、社会各界对税收工作的支持和全国税务系统推进依法治税、加强税收征管的结果，也是广大纳税人依法诚信纳税为国家作出的贡献。国家税收较快增长，大大增强了财政实力，为增加公共产品和服务，改善民生提供了财力保障。要构建社会主义和谐社会，需要着力解决我国存在的经济社会、城乡发展不平衡等问题，支持农村发展和农民增收，发展医疗卫生、教育、文化等社会事业，促进就业和社会保障，进一步改善民生。这些都需要国家有强大的财力作保证。这就要求税收随着经济发展保持平稳增长，依法筹集更多的财政收入。&nbsp;&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&lt;strong&gt;二、依法诚信纳税是构建社会主义和谐社会的重要内容&lt;/strong&gt; &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;诚信友爱就是全社会互帮互助、诚实守信，全体人民平等友爱、融洽相处。法制是社会和谐的重要保障，诚信是社会和谐的重要标志。这实际上就是要求坚持依法治国与以德治国相结合，推进社会主义和谐社会建设。 &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;依法诚信纳税从法律和道德两个方面规范、约束税务机关和纳税人的行为，是构建社会主义和谐社会的题中应有之义。我国宪法明确规定，中华人民共和国公民有依照法律纳税的义务。任何不依法纳税的行为，都要受到法律的惩处。依法诚信纳税也是纳税人最好的信用证明。诚信不仅是一种品行，更是一种责任；不仅是一种道义，更是一种准则；不仅是一种声誉，更是一种资源。就个人而言，诚信是高尚的人格力量；就企业而言，诚信是宝贵的无形资产。“人无信不立，商无信不兴。”失去了信用就难以在市场竞争中立足。只有坚持守法经营、诚信纳税，才能树立良好的商业信誉和形象，实现长远发展。广大纳税人必须依法诚信纳税，才能推动形成全社会诚实守信、文明守法的良好风气。&nbsp;&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&lt;strong&gt;三、依法诚信纳税、共建和谐社会需要征纳双方共同努力&lt;/strong&gt; &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;税收征管法及其实施细则明确规定了税务机关和纳税人的权利与义务。就税务机关而言，就是要严格执法，文明服务。就纳税人而言，就是要自觉履行纳税义务，依照法律、行政法规的规定及时足额缴纳税款。同时，纳税人还享有依法申请减免缓税、行政复议、选择申报方式、检举、控告税务人员的违法行为等权利。实现依法诚信纳税，促进和谐社会建设，是纳税人与税务机关的共同责任。 &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;加大税法宣传力度，增强全社会依法诚信纳税意识。要进一步改进宣传方式，切实提高税法宣传的效果，广泛、及时、准确地向纳税人宣传税收法律、法规和政策，普及纳税知识；要加强办税服务、政策咨询和纳税操作实务知识的宣传培训，既要使纳税人明确纳税义务，又要使纳税人掌握如何履行纳税义务，为纳税人学法、用法和守法创造条件；要加强税收职能作用、税收取之于民、用之于民的宣传，使广大群众了解税收为各级政府社会管理和公共服务提供财力保障，调节经济和调节分配，促进国家经济建设和社会事业发展的重要作用，从而进一步增强依法诚信纳税的荣誉感和自觉性。 &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;改进和优化纳税服务，构建和谐的税收征纳关系。和谐的税收征纳关系是促进国家税收事业发展，发挥税收职能作用的重要条件，也是和谐社会的重要组成部分。要以提高税法遵从度和方便纳税人及时足额纳税为目标，加强和改进纳税服务工作，切实维护纳税人合法权益，构建和谐的税收征纳关系。在税收征管中要注意减轻纳税人办税负担，下大力气清理、简并要求纳税人报送的各种报表资料，避免纳税人重复报送。国、地税局要进一步做好联合办理税务登记、开展税法宣传、评定纳税信用等级以及加强税务检查协调等方面工作。 &lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;大力推进依法治税，创造公平竞争的税收环境。认真落实依法征税，应收尽收，坚决不收过头税，坚决防止和制止越权减免税的组织收入原则，正确处理依法征税与支持经济发展、依法征税与完成税收计划、依法征税与纳税服务、依法征税与完善税制之间的关系，做到依法治税、依法征管。要强化税收执法监督。深入推行税收执法责任制，推广税收执法管理信息系统，严格执法过错责任追究。扎实开展税收执法检查，大力整顿和规范税收秩序。加强税务稽查，坚决打击涉税违法行为，继续严厉打击虚开和故意接受虚开增值税专用发票和其他可抵扣票，骗取出口退税，以及利用做假账、两套账、账外经营偷税等行为。对房地产、建筑安装、餐饮娱乐、食品药品生产、连锁经营超市等行业纳税情况以及高收入行业个人所得税缴纳情况开展专项检查，对一些税收秩序比较混乱、征管基础比较薄弱的地区进行税收专项整治。&lt;/span&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1365664375', '7');
INSERT INTO `keke_witkey_article` VALUES ('250', '358', '0', '匿名', '中金香港直销Facebook股权：初定100万股门槛', 'article', '21世纪经济报道', '', '&lt;p&gt;&nbsp; 　上帝关上了一扇门，也会开启一扇窗。&lt;/p&gt;&lt;p&gt;　　与平安信托“QDII股权挂钩结构性产品-脸谱(Facebook)未上市股权信托产品”失之交臂数天后(2011年1月6日、2月10日23版《高盛被指转手Facebook股权 平安信托密售内地富人》、《平安信托折戟Facebook 中国富豪梦碎IPO盛宴》曾予报道)，国内一家大型民营企业负责人王刚(化名)意外接到来自中金公司(香港)的电话，再度点燃他淘金Facebook上市盛宴的希望。&lt;/p&gt;&lt;p&gt;　　尽管Facebook一纸上市申请书已递进美国证券交易委员会(SEC)办公室，看似股权大局已定，但中金公司(香港)私人银行部依旧悄然为中国高端投资客，提供了一条投资Facebook未上市股权的“捷径”。&lt;/p&gt;&lt;p&gt;　　“相比平安信托由于赶不上Facebook上市进度被迫暂停信托产品销售，高端投资者可以通过中金(香港)引荐，直接与Facebook股权卖出方签订股权转让协议，并通过代持等手法避开Facebook(由于递交IPO申请)被冻结的限制。”一位接近中金(香港)人士透露，但中金(香港)并不参与具体的投资条款协商，仅仅作为交易撮合方。&lt;/p&gt;&lt;p&gt;　　然而，对境外公司股权投资经验并不多的王刚而言，这无疑是摸着石头过河。变数究竟有多少？&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;3700万美元门槛的诱惑&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　中金香港推介的Facebook未上市股权初定每股37美元，转让条款需投资者与卖方面谈商定。&lt;/p&gt;&lt;p&gt;　　相比此前“夭折”的平安信托QDII产品1000万元人民币投资门槛，中金(香港)暂定的投资门槛必须满足一次性投资100万股Facebook未上市股票。按中金(香港)暂定的每股37美元测算，每位参与者的投资门槛至少在3700万美元(约2.3亿人民币)。目前，准入门槛等细节还存在变数。&lt;/p&gt;&lt;p&gt;　　“其实中金(香港)只会精选几位有资金实力的高端投资者，参与投资Facebook未上市股权，主要面向境内。”一位接近中金(香港)的人士透露，目前中金(香港)给到潜在投资者的，只有一份Facebook招股说明书，具体的股权转让条款需要境内投资者与卖方面谈商定。&lt;/p&gt;&lt;p&gt;　　王刚迫切想了解的，是为何中金(香港)方面给出的Facebook收购价格要比平安信托高出2美元/股。&lt;/p&gt;&lt;p&gt;　　“因为中金(香港)的Facebook未上市股权转出方，与平安信托是截然不同的。”上述接近中金(香港)人士透露，“这也决定双方给境内高端投资者提供两种不同的投资路径。”&lt;/p&gt;&lt;p&gt;　　相比平安信托通过发行一款QDII股权挂钩结构性产品认购Facebook未上市股权，中金(香港)交易中，高端投资者则直接与买方签订股权转让协议。记者了解到，中金(香港)仅作为交易中介，股权转让的条款由买卖双方自主协商确定。&lt;/p&gt;&lt;p&gt;　　国内私人银行发起一款海外信托产品架构申请投资移民的阅历，让王刚对境外信托架构或结构性票据在避税与规避法规监管方面的比较优势有所了解。以平安信托“夭折”的信托产品为例，通过将Facebook未上市股权、境内出资人、股权转出方与投资收益分配条款共同设计成一款结构性票据，基于投资主体借鉴离岸信托产品架构，既能规避境内按自然人或公司法人纳税的监管规定，还能通过海外信托架构绕开美国金融投资的监管法规。&lt;/p&gt;&lt;p&gt;　　记者了解到，平安信托这一产品只需承担10%利息税，无需缴资本利得税。“但如果在中金(香港)通过转让方式得到Facebook未上市股权，能否避税及避开境外金融监管，却是未知数。”王刚说。&lt;/p&gt;&lt;p&gt;　　他更担心的是，由中金(香港)推荐的Facebook股权转让投资是否存在“代持”行为。&lt;/p&gt;&lt;p&gt;　　由于Facebook已递交上市申请且股权转让全部被冻结，此时投资其未上市股权，似乎只剩下“代持”路径。即投资者购买的股票Facebook可能先被原股东或某个特定机构代持，待股票解禁后，才通过特定方式划拨到他们的境外账户。一旦如此，代持期间投资者本身不属于上述Facebook股权的实际控制人，存在投资风险。&lt;/p&gt;&lt;p&gt;　　为此，王刚专门向某些了解境外代持架构的涉外律师咨询，却被告知代持往往涉及内幕交易等问题，可能面临当地监管部门调查。此外，代持交易本身的信息不透明问题，也容易引发股权转让条款纠纷。&lt;/p&gt;&lt;p&gt;　　王刚无奈表示，目前他对中金(香港)所推荐Facebook未上市股权转让的了解，仅局限在知道股份存在6个月禁售期，且由于Facebook已递交上市申请，代持行为似乎难以避免。&lt;/p&gt;&lt;p&gt;　　“条条大路通罗马。”一位了解境外代持架构的律师事务所合伙人透露，最常见的解决办案，是类似前述平安信托产品先采取某种离岸信托产品架构，将Facebook未上市股权、境内出资人、股权转出方、股票代持及划拨条款、投资收益分配条款共同设计在一个离岸信托产品中，然后将离岸信托产品注册在开曼群岛等金融监管相对宽松的“避税天堂”，“或者是通过一个特定的壳投资公司(SPV，如由王刚控制)，通过签订某些条款绑定Facebook未上市股权投资归属权，间接代持Facebook未上市股权。但这类代持行为通常是悄悄进行。”&lt;/p&gt;&lt;p&gt;　　“如果一定通过代持方式投资Facebook未上市股权，其中必有玄机。”王刚的直觉是，当Facebook上市步步临近时，一批原始股东急切向美国海外高端投资客抛售Facebook未上市股权，或许暗藏着某种不能说的“秘密”。&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;股份来源：Facebook管理层？&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　令王刚不解的是，谁愿意在Facebook上市只差临门一脚时，宁可割舍IPO投资收益，也要抛售Facebook股权？&lt;/p&gt;&lt;p&gt;　　他很快找到答案——个别Facebook管理团队成员正暗中抛售Facebook未上市股权；而平安信托“夭折”信托产品所认购的Facebook未上市股权，极有可能来自高盛集团去年初发行的一款用于购买Facebook约2%股权的14亿美元规模特殊投资工具。目前，特殊投资工具以Facebook单一股东Glodman Sachs Clients的名义显示。&lt;/p&gt;&lt;p&gt;　　“巧合的是，特别投资工具的某些利益分成条款，和平安信托此前宣传的QDII产品类似。”王刚进行对比后发现，一是高盛所发行的特别投资工具约定“当海外投资者套现时，还需要向高盛缴纳5%投资收益”，平安信托也要求投资者的投资收益一旦超过20%，平安信托有权分享5%佣金提成；其次是平安信托这款QDII产品条款明确一旦Facebook上市，信托产品所投资结构性票据将自动转为100%参与Facebook股价波动的业绩挂钩票据，但这部分股权持有人仍将显示“海外投行”，似乎与“Glodman Sachs Clients”的代持方式不谋而合。&lt;/p&gt;&lt;p&gt;　　而且，王刚发现高盛这款特别投资工具出资人也有IPO前提前套现的动机。高盛发行特别投资工具目的之一，是通过设定某些条款将全球投资者“限定”为Facebook单一股东，但随着当前SEC着手调查Facebook登记在册的股东实际人数，个别“不合规”出资人可能需要提前套现，规避金融监管，“也不排除个别投资者自己想套现。”&lt;/p&gt;&lt;p&gt;　　不过，记者致电高盛方面求证时，其明确否认平安信托曾欲购买的Facebook未上市股权来自高盛。&lt;/p&gt;&lt;p&gt;　　相比而言，中金(香港)所推荐的Facebook未上市股权卖方背景更单纯。“据说Facebook个别高层管理人员打算趁IPO被热捧期间套现一部分股权，暂定的37美元/股转让定价，较Facebook内部讨论的上市发行价预期要低15%-20%。”&lt;/p&gt;&lt;p&gt;　　记者多方了解到，在Facebook内部，关于公司是否需要IPO仍存在争议，部分管理层认为公司上市主要是受到投行“逼迫”，而产生提前套现所持Facebook股权转而自主创业的打算。&lt;/p&gt;&lt;p&gt;　　“目前中金(香港)主要是寻找潜在的境内高端投资人，还没落实到邀请他们与Facebook股权卖方(或委托律师)协商具体投资条款的环节。但卖方希望一次性投资的100万Facebook股票最好不要分拆出售，避免出资人数过多而影响到代持架构的设立。”前述接近中金香港的人士强调，转让方式基本确定为股权直接转让，“代持”仅仅是Facebook上市申请期间相关股票被冻结的“过渡产物”，卖方愿意协助境内高端投资者完成“相关股票划转”。&lt;/p&gt;', '0', '中金香港直销Facebook股权：初定100万股门槛', '中金香港直销Facebook股权：初定100万股门槛', '中金香港直销Facebook股权：初定100万股门槛', '0', '1', '0', '1365664369', '10');
INSERT INTO `keke_witkey_article` VALUES ('226', '17', '0', '', '浪漫情人节专题活动：亲爱的，我们约会吧！', 'article', '', '', '&lt;div&gt;&lt;span style=\"font-size:16px;\"&gt;痴情的你和你爱的人有哪些感人爱情故事呢？&lt;/span&gt;&lt;br /&gt;&lt;span style=\"font-size:16px;\"&gt;&lt;/span&gt;&lt;/div&gt;&lt;span style=\"font-size:16px;\"&gt; &lt;/span&gt;&lt;div&gt;&lt;br /&gt;今天，你最想对爱的人送出怎么样的话语呢？&lt;/div&gt;&lt;span style=\"font-size:16px;\"&gt;&lt;span style=\"font-size:16px;\"&gt;请将你的真情、真心、真爱留在我们的社区平台吧！祝愿天下所有有情人珍惜爱情的分分秒秒，携手共度美好生活！&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:16px;\"&gt;&nbsp;&lt;span style=\"color:#e53333;\"&gt;要求：&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:16px;color:#e53333;\"&gt;1.可以讲述一个发生在你身上的感人爱情故事；&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span style=\"font-size:16px;color:#e53333;\"&gt;2.可以写一些对你爱的人最想说的话；&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1329459290', '3');
INSERT INTO `keke_witkey_article` VALUES ('203', '100', '0', '', '资讯测试', 'help', '', 'data/uploads/2011/12/19/133474eeeb5f4d626c.png', '你比发生大幅度是&lt;img src=\"data/uploads/2011/12/19/228664eeeb5f262e6f.gif\" alt=\"\" /&gt;&lt;br /&gt;', '0', '资讯测试', '资讯测试', '333333333333333333333333333333333333', '0', '2', '0', '1365665334', '63');
INSERT INTO `keke_witkey_article` VALUES ('218', '200', '0', '', '登录协议', '', '', '', '这里是登录协议内容这里<img alt=\"微笑\" src=\"resource/js/xheditor/xheditor_emot/default/smile.gif\" /><img alt=\"生气\" src=\"resource/js/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"敲打\" src=\"resource/js/xheditor/xheditor_emot/default/knock.gif\" /><img alt=\"抓狂\" src=\"resource/js/xheditor/xheditor_emot/default/crazy.gif\" />，这里是登录协议，这里是登录协议<br />', '0', '', '', '', '0', '1', '0', '1326704236', '0');
INSERT INTO `keke_witkey_article` VALUES ('219', '200', '0', '', '注册协议', '', '', '', '<p>这里是注册协议内容</p><p>内容自定啊啊啊<img alt=\"微笑\" src=\"resource/js/xheditor/xheditor_emot/default/smile.gif\" /><img alt=\"大哭\" src=\"resource/js/xheditor/xheditor_emot/default/wail.gif\" /><img alt=\"尴尬\" src=\"resource/js/xheditor/xheditor_emot/default/awkward.gif\" /><img alt=\"疑问\" src=\"resource/js/xheditor/xheditor_emot/default/doubt.gif\" />，哈呛楏堙压顶无可奈何花落去楏堙在<br /></p><br />', '0', '', '', '', '0', '1', '0', '1326704927', '0');
INSERT INTO `keke_witkey_article` VALUES ('220', '200', '0', '', '任务发布协议', '', '', '', '<p>任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议</p><p>任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议</p><p>任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议任务发布协议<br /></p><br />', '0', '', '', '', '0', '1', '0', '1326704968', '0');
INSERT INTO `keke_witkey_article` VALUES ('221', '200', '0', '', '商品出售协议', '', '', '', '<p><span class=\"font14\" style=\"text-indent: 2em;\">此协议是关于交易双方发布者于中标者所设计作品的知识产权移交的。</span></p><p><span class=\"font14\" style=\"text-indent:2em\"></span> <span class=\"font14 block\" style=\"text-indent: 2em;\">买</span><span class=\"font14 block\" style=\"text-indent: 2em;\">成品商店购买一个设计的时候，发布者和中标者就会被视为订立了一项具有法律约束力的协议。</span></p><p><span class=\"font14 block\" style=\"text-indent:2em\"></span> <span class=\"font14 block\" style=\"text-indent: 2em;\">除非买家和卖家分别以书面形式同意此协议的条款。 一旦参加一个设计悬赏（不论以买家还是卖家的身份）</span></p><p><span class=\"font14 block\" style=\"text-indent: 2em;\">，就默认为同意此协议的条款。当事人此协议的当事人为买家和其在悬赏中选定的中标卖家，或在设</span></p><p><span class=\"font14 block\" style=\"text-indent:2em\">计成品商店购买的作品的设计者，这种情况下称作“卖方卖家”。</span><span class=\"font14 block\" style=\"text-indent: 2em;\">如果不止一个卖方卖家，那么买家将被</span></p><p><span class=\"font14 block\" style=\"text-indent:2em\">视为跟卖方卖家单独订立了协议。协议日期以买家选定悬赏中的相关设计（转让的设计）或购买设计成品商店里转让的设计的日期为准。</span></p>', '0', '', '', '', '0', '1', '0', '1326764543', '0');
INSERT INTO `keke_witkey_article` VALUES ('225', '358', '0', '新浪科技', '唯冠召开iPad维权发布会：起诉苹果是维权', 'article', '新浪科技', '', '&lt;p&gt;新浪科技讯 2月17日午间消息，深圳唯冠今日联合和君创业总裁李肃、国浩伙律师马东晓在北京召开发布会，说明唯冠与苹果之间的iPad商标权纠纷。唯冠创始人杨荣山表示，苹果公司当年购买iPad在全球多个国家商标权时存在欺诈行为，现在起诉苹果是维护权益。&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;唯冠iPad的前世今生&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　深圳唯冠今天召开的维权发布会引来极大关注，在国浩律师事务所北京办公室的一间会议室里，60多家媒体挤满了整个会议室，很多最后赶到的媒体只能站在参与会议。&lt;/p&gt;&lt;p&gt;　　唯冠创始人杨荣山开场介绍了唯冠生产的iPad产品。据他介绍，iPad是一款产品名称(全称是internet Personal Access Device)，同是也是一个商标。唯冠公司在1998年下半年开始设计iPad产品，研发投入超过3000万美金。&lt;/p&gt;&lt;p&gt;　　杨荣山指出，iPad是唯冠iFamily系列产品之一，2000年正式对外发布。“这在当时是一款概念性产品。”2003年，唯冠研发新一代iPad产品。由于唯冠并不拥有iPad在美国的商标，iPad只能以OEM方式卖给惠普&lt;a href=\"http://weibo.com/hpchina?zw=tech\" target=\"_blank\" __sina1329459174687=\"7\"&gt;(微博)&lt;/a&gt;。&lt;/p&gt;&lt;p&gt;　　在今天的发布会上，唯冠公司向现场媒体散发了唯冠iPad的介绍资料。根据提供的材料，唯冠iPad是一款有鼠标、键盘、显示器的小型台式机，与苹果公司现在出售的iPad平板电脑完全不同。另外，唯冠iFamily系列产品还包括iNote、iPDA、iDVD、iClient等。&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;苹果购买iPad商标过程存在欺诈&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　据杨荣山回忆，在iPad商标上唯冠与苹果曾有过“交火”。2003年，苹果曾在欧洲注册iPod商标，因为iPod与iPad有很大的相似性，唯冠花了很多精力阻止苹果，但最后选择放弃。&lt;/p&gt;&lt;p&gt;　　杨荣山说，2008年苹果公司经过“精心设计”，在英国成立了一家名称为IP Application Development的公司(简称“英国IP公司”)，主动与唯冠联系，说公司简称与iPad商标很相似，要求购买。双方最初商谈的只是iPad在欧洲地区的商标权。&lt;/p&gt;&lt;p&gt;　　杨荣山说，英国IP公司最初出价是2万英镑，“这还不够注册费用，所以最初没有同意出售。”不过，后来英国IP公司向唯冠公司发了一封邮件，称这一价格合适，同时表示“如果不卖，就会发起法律诉讼。”&lt;/p&gt;&lt;p&gt;　　杨荣山表示，2009年唯冠出现财务危机，公司正在打算收缩海外业务，唯冠台北公司主张卖掉iPad商标，因为如果诉讼，公司要花很多律师费。&lt;/p&gt;&lt;p&gt;　　于是，2009年12月，杨荣山授权员工麦世宏签署相关协议，将10个商标的全部权益以3.5万英镑的价格转让给英国IP公司。&lt;/p&gt;&lt;p&gt;　　因为双方签订的协议附件中提到包括中国内地的iPad商标转让协议，于是这也成为了苹果与唯冠公司双方产生纠纷的根源所在。&lt;/p&gt;&lt;p&gt;　　杨荣山认为，苹果在这一过程中存在欺诈行为。&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;唯冠没有提出具体赔偿&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　针对网络上流传的100亿元索赔，杨荣山也做出回应。他表示，虽然唯冠现在存在财务危机，但我们现在还没有公开要求具体赔偿数字。&lt;/p&gt;&lt;p&gt;　　“我们现在是根据中国法律，维护权益。网络上流传的索赔100亿元，并不是唯冠的要求，那是专业人士的看法。”杨荣山表示。&lt;/p&gt;&lt;p&gt;　　他还表示，苹果确实把iPad做到尽善尽美，受到全球用户喜欢，但他们确实没有商标就进入中国，唯冠现在的行为就是为了维护权益。&lt;/p&gt;&lt;p&gt;　　他还表示，“很多人认为我们抢注商标，但实际上，iPad从1998年就伴着唯冠到今天。唯冠现在很委屈。”&lt;/p&gt;&lt;p&gt;　　他透露，唯冠正在寻求新的机会重新站起来，并表示现在已经有了重组计划和投资人。(罗亮)&lt;/p&gt;&lt;!-- publish_helper_end --&gt;&lt;!-- 分享到 begin --&gt;', '1', '唯冠召开iPad维权发布会：起诉苹果是维权', '唯冠召开iPad维权发布会：起诉苹果是维权', '唯冠召开iPad维权发布会：起诉苹果是维权', '0', '1', '0', '1329459262', '18');
INSERT INTO `keke_witkey_article` VALUES ('230', '203', '0', '匿名', '客户如何保障帐户安全', 'article', '客客', '', '&lt;div class=\"con clearfix\"&gt;网上交易，安全第一。&lt;br /&gt;&lt;br /&gt;大家都比较关心交易过程中的安全问题，而往往疏忽了第一道安全防线，哪就是自己的帐号密码！&nbsp;&lt;br /&gt;比较安全的密码至少应该符合下面的条件：&lt;br /&gt;&lt;br /&gt;1,组成部分：字母，数字，特殊字符。&lt;br /&gt;2,长度：密码的长度应该在6至18位之间。&lt;br /&gt;&lt;br /&gt;示例：&lt;br /&gt;&nbsp;just@1108556&lt;br /&gt;&nbsp;hellococo#38324&lt;br /&gt;&nbsp;3638&amp;heyjude&lt;br /&gt;&lt;br /&gt;如果您的密码符合以下条件，您的帐号现在正在面临安全威胁！&lt;br /&gt;&lt;br /&gt;1,密码中包含用户名。&lt;br /&gt;2,密码中包含简单的数字串（如12345）、字符串(如abcd,asdf)。&lt;br /&gt;3,密码中包含您常用的信息，如电话号码、生日、邮编、区号等。 &nbsp;&lt;/div&gt;', '0', '客户如何保障帐户安全', '客户如何保障帐户安全', '客户如何保障帐户安全', '5', '1', '0', '1364866260', '8');
INSERT INTO `keke_witkey_article` VALUES ('231', '17', '0', '', '提现公告申明', 'article', '', '', '&lt;span style=\"font-family:Verdana;\"&gt;提现打款申明：我们是在每周二统一处理对推手上周的提现。因为现在每周提现的推手人数较多，当天处理提现的时间将会受影响，届时将会延后继续处理推手的提现。对于推手提出已收到款，但后台的提现未处理问题，我们在这里作出以下说明，我们是在全部打完款之后，再进行统一处理。&lt;/span&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1329459594', '2');
INSERT INTO `keke_witkey_article` VALUES ('232', '17', '0', '', '关于推手抄袭他人作品交稿的处罚规定', 'article', '', '', '&lt;span style=\"font-family:Verdana;\"&gt;近来，网站接到举报，有推手通过抄袭他人作品来交稿，侵犯他人知识产权，严重违反了网站的规定。&lt;/span&gt;&lt;p&gt;&lt;span style=\"font-family:Verdana;\"&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为此，网站对抄袭他人作品的，情节轻微的进行警告处理（抄袭稿件做废），情节严重的进行ID禁封处理。&lt;/span&gt;&lt;/p&gt;&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1329459681', '5');
INSERT INTO `keke_witkey_article` VALUES ('234', '203', '0', '', '客服真实性验证', 'article', '', '', '请根据网站的联系电话致电本公司验证。&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1329459878', '4');
INSERT INTO `keke_witkey_article` VALUES ('235', '358', '0', '人民网', '国际权威组织称中国手机网速排全球倒数第二', 'article', '人民网', '', '&lt;p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\" align=\"justify\"&gt;继国内固网宽带被爆价格高、网速慢后，再有国际权威组织报告显示，国内手机互联网连接速度排在世界末端，仅比印度好。有分析显示，手机互联网速度慢制约了国内手机视频网站发展。&lt;/p&gt;&lt;p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\" align=\"justify\"&gt;根 据GSMA(全球移动通信协会)近日公布的报告，手机宽带连接速度最慢的两个国家分别是印度和中国。相反地、韩国、澳大利亚、新西兰等亚太地区和国家，手 机网速均较快。截至2010年，印度和中国平均连接速度分别仅为19 kbps和50 kpbs。而日本和韩国，平均速度已达1400 kbps。&lt;/p&gt;&lt;p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\" align=\"justify\"&gt;不 过由于中印两国手机互联网发展迅速，GSMA也给予乐观的估计。GSMA认为，按照现在的发展速度，到2015年，印度运营商的移动宽带平均速度将达到 1037 Kbps，中国可达到1384 Kbps。但这仍然大大落后于其他国家——因为届时韩国将达到4984 Kbps，澳大利亚和新西兰将达到5194 Kbps。&lt;/p&gt;&lt;p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\" align=\"justify\"&gt;对于GSMA的报告，有业内人士分析认为，中国2009年才发3G牌，3G用户人数直到2011年才出现突飞猛进。因此，GSMA的报告引用2010年的数据进行比较有失偏颇。&lt;/p&gt;&lt;p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\" align=\"justify\"&gt;“目前国内手机网速对手机视频业务影响最大。”国内某视频网站一高管向表示，国内手机视频网站发展缓慢，很大程度上源于手机上网速度普遍不快，而且资费价格相对高。因此，尽管手机视频业务普遍被视为“黄金业务”，但短期内仍难有重大突破。&lt;/p&gt;', '0', '国际权威组织称中国手机网速排全球倒数第二', '国际权威组织称中国手机网速排全球倒数第二', '国际权威组织称中国手机网速排全球倒数第二', '0', '1', '0', '1329460032', '3');
INSERT INTO `keke_witkey_article` VALUES ('236', '203', '0', '', '为什么采用“实名认证”？', 'article', '', '', '&lt;strong&gt;&lt;/strong&gt; 为确保所有用户的权益能得到有效保护，保障会员帐户资金的安全。用户在申请会员帐户资金提现时，为使你能及时、准确的收到汇款，我们采取了 实名认证措施，以防止冒领或密码遗失等意外原因而导致你的损失。&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1329460211', '4');
INSERT INTO `keke_witkey_article` VALUES ('238', '5', '0', '新京报', '威客国内人数超3000万：部分欺诈行为仍难控制', 'article', '新京报', '', '&lt;h1 id=\"artibodyTitle\" fid=\"1554\" did=\"11352678\" tid=\"1\" pid=\"31\"&gt;&lt;p&gt;&lt;span style=\"font-family:KaiTi_GB2312, KaiTi;\"&gt;&lt;/span&gt;&lt;h1 id=\"artibodyTitle\" fid=\"1554\" did=\"11319103\" tid=\"1\" pid=\"31\"&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　目前大多威客会通过各种威客网站来寻找任务，完成交易。有些热门行业竞争激烈，一开始未必能够中标，准备做威客要多学习并有自己的专项技能。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　威客，一般指那些通过互联网把自己的知识、智慧、经验、技能转换成实际收益的人。这一概念最早于2005年出现，后来经过媒体的宣传报道，威客群体不断发展壮大，国内人数如今已经超过3000万。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　而且由于威客与网络息息相关，工作形式灵活自由，所以备受年轻人的青睐，更有机构在去年将威客评为“90后”最为推崇的十大时尚职业之一。有专家以及资深威客提醒，虽然现在专职做威客的人越来越多，但兼职仍然是主流。专职做威客挑战较大，需谨慎。兼职做威客也需调整好与本职工作的关系。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　IT、设计、网站建设、网络营销等任务最热门&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　威客(witkey)模式即人的知识、智慧、经验、技能通过互联网转换成实际收益的互联网新模式。主要应用包括解决科学、技术、工作、生活、学习等领域的问题，体现了互联网按劳取酬和以人为中心的新理念。这一理论最早由国人刘锋于2005年提出。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　“其实，威客最初的定义并不算一项职业，只算是一种互联网现象，但渐渐地互联网帮助‘回答问题’成为一种职业。”威客理论首创者、威客网创始人刘锋解释，“威客的产生就是鼓励知识是值钱的：知识和技能越多，财富才会越多。”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　记者了解到，目前大多威客会通过各种威客网站来寻找任务，完成交易。而任务的门类则会有几百项之多，除了设计、建筑、法律、翻译等较专业的任务外，还有如爱情表白、道歉短信、捧场、排队、宝宝取名等非常生活化的任务。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　据国内最大的威客网站猪八戒网&lt;a href=\"http://weibo.com/zhubajiewang?zw=finance\" target=\"_blank\"&gt;(微博)&lt;/a&gt;副总裁刘川郁介绍，目前IT、设计、网站建设、网络营销等门类的任务是最热门的。威客寻找任务的方式一般有两种，现在较多的是客户发布悬赏任务，威客拿出自己的方案来竞标，另一种是一对一速配，客户直接寻找威客来完成任务。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　好的威客要有独当一面的专业技能&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　“威客工作的最大优点是公平：在这里没有人会去看一个人的学历、毕业于什么学校、家庭背景等等，威客凭的是真刀真枪的实干能力。而且随着电子商务不断向服务业发展，威客的发展前景将会很好。”刘川郁指出，“现在大部分的威客仍然是兼职，但也呈现出专职威客越来越多的趋势。有的威客有了一定的知名度之后，还会成立自己的工作室或者建立公司，进行创业。而从年龄段来讲，80后、90后的威客占大多数，超过了60%。”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　高旭是河南建筑职业技术学院的一名大三学生，去年3月份他开始利用课余时间做威客，主要完成一些网络营销的任务，如帮人发广告信息等等。“刚开始做时比较难，有时一天就挣几毛钱、几块钱，后来慢慢开发出市场之后，平均一天能挣50块钱。但网络营销门槛低，竞争比较激烈，现在也不太好做。”高旭坦言，作为学生，难的任务做不好，简单的任务又没前途，威客也不是那么好当的。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　“一名好的威客一定要有某方面的专业技能，能够独当一面。”向阳生涯管理咨询集团首席职业规划师洪向阳指出，“从综合角度看，威客还需要具有项目管理的能力、时间管理的能力、与客户的沟通能力。同时，还需要一定的自我约束能力。”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　威客要有满足客户需求的能力&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　资深威客刘羽也认为，做威客需要耐心，尤其专职威客很可能会天天对着电脑工作，不能三天打鱼两天晒网。几年前从事平面广告设计工作的刘羽兼职做威客，后来他辞去工作成为专职威客，现在月收入基本稳定在两万多。他建议，刚做威客时要多收集、多研究别人的案例，可以从兼职做起，等到技术过硬、收入稳定之后，如有需要可以考虑专职来做。他同时表示，专职做威客肯定会有一定的压力。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　“其实，我们网站注册的威客大概也就60%左右可以挣到钱，当然有些注册用户可能只是看，并没有真正参与。但确实有些威客在开始的几个月里是挣不到钱的。”刘川郁评价，“在这个平台上，威客要有能满足客户需求的能力。很多年轻人喜欢这个平台，因为一个人的能力在这里可以得到真正的检验。”&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　■ 威客说&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　兴趣为先并分辨行业的整体水平&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　●武烨，专职威客&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　以前我在一家事业单位上班，在上班之余做威客，主要做网页设计。刚开始做的时候我不知道自己是什么水平，也没有什么案例，只是做悬赏任务，幸运的是我交的第一个稿子就中标了。后来我做的东西逐渐被人们所认可，加上我喜欢自己支配时间，所以去年就辞职专职做威客了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　我觉得做威客首先要自己感兴趣，至少要能让自己在工作中得到满足，这样才能坚持下去。其次对行业的整体水平要有所分辨，不能妄自尊大。可以试着先做一做，如果自己的东西能被人认可，或者自己提高得很快，一次比一次完成得好，中标的把握越来越大，甚至有客户主动来找你，就可以考虑继续做下去。否则，就要想想自己是否真的适合威客的工作。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　一些欺诈行为还没有好的机制去控制&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　●罗萌，兼职威客&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　两年前，我看到周围有人在做威客，我觉得好玩也兼职做起平面设计的威客。威客的能力要求和具体岗位的要求是差不多的，你必须要有某项特殊的技能。刚开始的时候我一个月的收入也就一千多，后来慢慢做好之后一个月可以挣到三四千。我现在一天大概做四、五个任务，不会觉得累。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　我个人建议人们不要做专职威客，那样会很累。像平面设计的门槛并不高，竞争很激烈。要想挣得多一些，就要每天完成很多任务。当然有些行业可能完成任务的钱会多一些。有时能否中标不光靠实力，也要看运气好不好。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　值得注意的是，做威客有时也会遇到欺诈行为，造成经济损失，但目前威客网站也还没有特别好的机制去控制。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　■ 业内建议&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　线下交易隐患大保障少&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　●刘川郁，猪八戒网副总裁&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　现在的威客网站有很多，良莠不齐。如果想做威客一定要选择大的、知名的正规威客网站，这样才能获得更好的平台保障。如今部分威客还选择进行线下交易，这样隐患也很大，双方都得不到保障。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　我认为虽然术业有专攻，但威客最好也不要把自己局限在很窄的范围内。在平台上，很多都是真实的案例，比如从设计来讲，你可以看到某家公司中标的标志，可以看看其他威客是怎样按照客户的要求来完成设计的，这些都是可以学习的。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　最好能促进本职工作&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　●洪向阳，向阳生涯管理咨询集团首席职业规划师&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　目前来看，威客达到职业化的人并不是太多，大部分人还是把它当作一份兼职来做。我认为，以学习的、参与的态度来做威客是一个比较好的对待方式，尤其对很多年轻的学生和职场人来讲，这是一种很好的学习方式，参与进来也比较容易，而且自身的能力也可以得到检验。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;　　但是兼职做威客一定要避免跟自己的本职工作有冲突，要调整好与本职工作的关系，毕竟一个人的精力是有限的。同时也要注意是否对本职工作会有促进作用，最好选择能给本职工作带来正面影响的兼职工作。&lt;/span&gt;&lt;/p&gt;&lt;span style=\"font-size:16px;font-weight: normal;\"&gt;&lt;br /&gt;&lt;/span&gt;&lt;/h1&gt;&lt;br /&gt;&lt;/p&gt;&lt;/h1&gt;', '0', '威客国内人数超3000万：部分欺诈行为仍难控制', '威客国内人数超3000万：部分欺诈行为仍难控制', '威客国内人数超3000万：部分欺诈行为仍难控制', '0', '1', '0', '1329460459', '11');
INSERT INTO `keke_witkey_article` VALUES ('299', '0', '0', '客客族', '关于我们', 'about', 'http://www.kekezu.com', '', '&lt;span style=\"font-family:\'Lucida Sans Unicode\', \'Lucida Grande\', sans-serif;color:#555555;font-size: 14px; line-height: 30px; \"&gt;&lt;/span&gt;&lt;h1 style=\"border-top-width: 0px; border-right-width: 0px; border-bottom-width: 2px; border-left-width: 0px; border-style: initial; border-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; font-size: 24px; font: normal normal normal 24px/30px \'Microsoft Yahei\'; color: rgb(51, 51, 51); border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); \"&gt;武汉客客信息技术有限公司&lt;/h1&gt;&lt;p style=\"border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 14px; \"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;武汉客客信息技术有限公司是中国领先的客文化交易平台解决方案提供商，扎根于高校林立的学府之都武汉，是一家拥有自主知识产权的高科技软件企业。&lt;/p&gt;&lt;p style=\"border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 14px; \"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客客以互联网急速发展的客文化现象为背景，积极创新深度分析用户社区行为和传统电子商务交易模式，客客团队新电子商务模式和互联网前沿开发技术的研究得到了更广泛的站长和用户群的支持。&lt;/p&gt;&lt;p style=\"border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 14px; \"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客客团队由产品策划、文档撰写、UI设计、WEB前端、程序开发、售前/售后支持等各方面富有激情和创造力的专业人才组成，团队成员均有长期的互联网产品研发和运营经验。&lt;/p&gt;&lt;p style=\"border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 14px; \"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2010年07月，客客团队正式推出了客客出品专业威客系统(KPPW)，很快成为了国内最知名使用站长最多的威客系统。且经过团队技术不断的沉淀和创新，新的KPPW2.0完成了以“基础框架+任务模型+商品模型”为基本的产品理念，提供了更多符合创意型、知识型、经验型产品特性，并深入行业垂直化发展的威客交易模式，成为了威客行业发展新的方向标。&lt;/p&gt;&lt;br /&gt;&lt;p style=\"border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 14px; \"&gt;企业使命：垂直专业威客交易解决方案提供商，网络客文化推广！&lt;br /&gt;企业文化：快乐 专注 创新 分享&lt;/p&gt;', '0', '武汉客客信息技术有限公司是中国领先的客文化交易平台解决方案提供商，扎根于高校林立的学府之都武汉，是一家拥有自主知识产权的高科技软件企业。\r\n企业文化：快乐 专注 创新 分享', '武汉客客信息技术有限公司是中国领先的客文化交易平台解决方案提供商，扎根于高校林立的学府之都武汉，是一家拥有自主知识产权的高科技软件企业。\r\n企业文化：快乐 专注 创新 分享', '武汉客客信息技术有限公司是中国领先的客文化交易平台解决方案提供商，扎根于高校林立的学府之都武汉，是一家拥有自主知识产权的高科技软件企业。\r\n企业文化：快乐 专注 创新 分享', '1', '1', '0', '1397628522', '44');
INSERT INTO `keke_witkey_article` VALUES ('308', '0', '0', '客客族', 'KPPW2.2震撼上线1', 'bulletin', 'http://www.kekezu.com', '', 'KPPW2.2震撼上线1', '0', 'KPPW2.2震撼上线1', 'KPPW2.2震撼上线1', 'KPPW2.2震撼上线1', '1', '1', '0', '1365663816', '10');
INSERT INTO `keke_witkey_article` VALUES ('302', '0', '0', '客客族', 'KPPW2.2震撼上线2', 'bulletin', 'http://www.kekezu.com', '', 'KPPW2.1震撼上线2', '0', 'KPPW2.2震撼上线2', 'KPPW2.2震撼上线2', 'KPPW2.2震撼上线2', '2', '1', '0', '1365663829', '5');
INSERT INTO `keke_witkey_article` VALUES ('303', '0', '0', '客客族', 'KPPW2.2震撼上线3', 'bulletin', 'http://www.kekezu.com', '', '&lt;span style=\"font-family:Verdana, Arial, Helvetica, sans-serif;color:#666666;line-height: 25px; \"&gt;&lt;a href=\"http://localhost/kppw21/control/admin/index.php?do=article&amp;view=edit&amp;art_id=302&amp;type=bulletin&amp;page=1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 2px; padding-right: 5px; padding-bottom: 2px; padding-left: 5px; list-style-type: none; -webkit-transition-property: background; -webkit-transition-duration: 0.1s; -webkit-transition-timing-function: ease-out; -webkit-transition-delay: 0s; text-decoration: none; border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px; color: rgb(102, 153, 204); \"&gt;KPPW2.1震撼上线3&lt;/a&gt;&lt;/span&gt;', '0', 'KPPW2.2震撼上线3', 'KPPW2.2震撼上线3', 'KPPW2.2震撼上线3', '3', '1', '0', '1365663840', '6');
INSERT INTO `keke_witkey_article` VALUES ('304', '0', '0', '客客族', 'KPPW2.2震撼上线4', 'bulletin', 'http://www.kekezu.com', '', 'KPPW2.2震撼上线4', '1', 'KPPW2.2震撼上线4', 'KPPW2.2震撼上线4', 'KPPW2.2震撼上线4', '4', '1', '0', '1365664147', '13');
INSERT INTO `keke_witkey_article` VALUES ('300', '0', '0', '客客族', '联系我们', 'about', 'http://www.kekezu.com', '', '&lt;a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1552193416&amp;site=qq&amp;menu=yes\" target=\"_blank\"&gt;&lt;img title=\"点击这里给我发消息\" alt=\"点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:1552193416:41 &amp;r=0.2431360476765686\" border=\"0\" /&gt;&lt;/a&gt;&lt;a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1552193416&amp;site=qq&amp;menu=yes\" target=\"_blank\"&gt;&lt;img title=\"点击这里给我发消息\" alt=\"点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:1552193416:41 &amp;r=0.2431360476765686\" border=\"0\" /&gt;&lt;/a&gt;&lt;h1 style=\"border-width: 0px 0px 2px;\" normal=\"\" none=\"\" solid=\"\" 204=\"\" rgb=\"\" 51=\"\" 0px=\"\" 5px=\"\" 10px=\"\" yahei=\"\" microsoft=\"\"&gt;联系我们吧&lt;/h1&gt;&lt;div class=\"col2\" style=\"border-width: 0px; margin: 0px; padding: 0px; width: 454px; height: 312px; font-size: 14px; float: left;\"&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;公司地址：武汉市洪山区雄楚大街御景名门3号楼1005室&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;咨询热线：027 87733922&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;客服QQ：&lt;span style=\"color:#ff660;font: 15px/normal 微软雅黑, 宋体; text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; float: none; display: inline !important; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;\"&gt;&lt;span style=\"color:#000000;\"&gt;&lt;a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=293459571&amp;site=qq&amp;menu=yes\" target=\"_blank\"&gt;293459571&lt;/a&gt;&lt;span style=\"font: 15px/normal 微软雅黑, 宋体; text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; float: none; display: inline !important; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;\"&gt;&lt;/span&gt;,&lt;a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1552193416&amp;site=qq&amp;menu=yes\" target=\"_blank\"&gt;1552193416&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;固定电话:18971533922&lt;/p&gt;&lt;/div&gt;&lt;div class=\"col2\" style=\"border-width: 0px; margin: 0px; padding: 0px; width: 454px; font-size: 14px; float: left;\"&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;&lt;img style=\"border-width: 0px; margin: 15px auto; padding: 0px; color: transparent; clear: both; font-size: 0px; vertical-align: middle; display: block; max-width: 100%;\" alt=\"武汉市洪山区雄楚大街御景名门3号楼1005室\" src=\"http://www.kekezu.com/tpl/default/img/map.gif\" /&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=\"col3\" style=\"border-width: 0px; margin: 0px; padding: 0px; width: 299px; font-size: 14px; float: left;\"&gt;&lt;h2 style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;售前咨询&lt;/h2&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;如果您欲成为客客出品系统商业授权用户或项目定制开发，请进入官网右侧网上客服系统，直接与工作人员进行在线咨询。&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;受理时间【5×8小时】：09:00~18:00（午餐：12:00~13:00；周六、日视情况而定）&lt;/p&gt;&lt;/div&gt;&lt;div class=\"col3\" style=\"border-width: 0px; margin: 0px; padding: 0px; width: 299px; font-size: 14px; float: left;\"&gt;&lt;h2 style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;售后咨询&lt;/h2&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;如果您欲成为客客出品系统商业授权用户或项目定制开发，请进入官网右侧网上客服系统，直接与工作人员进行在线咨询。&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;受理时间【5×8小时】：09:00~18:00（午餐：12:00~13:00；周六、日视情况而定）&lt;/p&gt;&lt;/div&gt;&lt;div class=\"col3\" style=\"border-width: 0px; margin: 0px; padding: 0px; width: 299px; font-size: 14px; float: left;\"&gt;&lt;h2 style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;技术协助&lt;/h2&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;我们特别为企业授权及项目定制开发用户提供了即时在线技术支持快速通道，如果您在使用过程中遇到技术问题，请直接与您技术支持取得联系，或通过客客官网论坛商业用户服务区留言，我们会即时与您取得联系。&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;受理时间【5×8小时】：09:00~18:00（午餐：12:00~13:00；周六、日不予受理）&lt;/p&gt;&lt;/div&gt;&lt;div class=\"col3\" style=\"border-width: 0px; margin: 0px; padding: 0px; width: 299px; font-size: 14px; float: left;\"&gt;&lt;h2 style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;战略合作&lt;/h2&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;如果您欲与武汉客客信息技术有限公司建立战略合作关系，请发邮件至&lt;a style=\"border-width: 0px; margin: 0px; padding: 0px; color: rgb(25, 77, 176); font-size: 14px; text-decoration: none;\" href=\"mailto:293459571@qq.com\"&gt;293459571@qq.com&lt;/a&gt;&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;为了能及时与您取得联系，请留下有效的联系方式（如：手机号码或QQ、MSN）及合作意向内容&lt;/p&gt;&lt;p style=\"border-width: 0px; margin: 0px; padding: 0px; font-size: 14px;\"&gt;受理时间：工作人员会正常收取邮件后24小时内给予回复（周末及节假日受理时间顺延）&lt;/p&gt;&lt;/div&gt;&lt;div style=\"top: 0px;\"&gt;﻿﻿&lt;/div&gt;&lt;div style=\"top: 0px;\"&gt;﻿﻿&lt;/div&gt;', '0', '联系我们\r\n公司地址：武汉市洪山区雄楚大街御景名门3号楼1005室\r\n咨询热线：027 87733922', '联系我们\r\n公司地址：武汉市洪山区雄楚大街御景名门3号楼1005室\r\n咨询热线：027 87733922', '联系我们\r\n公司地址：武汉市洪山区雄楚大街御景名门3号楼1005室\r\n咨询热线：027 87733922', '3', '1', '0', '1407462120', '30');
INSERT INTO `keke_witkey_article` VALUES ('310', '325', '0', '发生地方', '生生世世', 'help', '放松放松', '', 'ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooollbcghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '0', '放到沙发上的', '发生地方是否', '分公司发送', '0', '1', '0', '1365665323', '0');
INSERT INTO `keke_witkey_article` VALUES ('312', '0', '0', '', '服务条款', 'about', '', '', '&lt;p&gt;&lt;span style=\\\"text-decoration: none;\\\"&gt;本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。 &lt;br/&gt;您确认本服务协议后，本服务协议&lt;em&gt;&lt;span style=\\\"text-decoration: none;\\\"&gt;即在您和本网站之间产生法律效力。&lt;/span&gt;&lt;/em&gt;请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。 &lt;br/&gt;无论您事实上是否在注册之前认真阅读了本服务协议，&lt;span style=\\\"text-decoration: none;\\\"&gt;只要您点击协议正本下方的&quot;注册&quot;按钮并按照本网&lt;/span&gt;站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。&nbsp; &lt;br/&gt;1．本网站服&lt;span style=\\\"text-decoration: none;\\\"&gt;务条款的确认和接纳&nbsp; &lt;br/&gt;本网站各项服务的所有权和运作权归本网站拥有。本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。 &lt;br/&gt;您确认本服务协议后，本服务协议即在您和本网&lt;/span&gt;站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。 &lt;br/&gt;无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的&quot;注&lt;span style=\\\"text-decoration: none;\\\"&gt;&lt;em&gt;册&quot;按钮并按照本网站注册程序&lt;/em&gt;&lt;/span&gt;成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。&nbsp; &lt;br/&gt;&lt;span style=\\\"text-decoration: none;\\\"&gt;1&lt;em&gt;．本网站服务条款的确认和接纳&nbsp; &lt;br/&gt;本网站各项服务的所有权和运作权归本网站拥有。发&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '0', '', '', '', '2', '1', '0', '1434340472', '24');
INSERT INTO `keke_witkey_article` VALUES ('315', '17', '0', '', '什么是威客？', 'article', '', '', '威客是英文Witkey（wit智慧、key钥匙）的音译。威客是指在网络时代凭借自己的能力（智慧和创意），在互联网上出售自己的富裕工作时间和劳动成果而获得报酬的人。通俗地讲，威客就是在网络平台上出售自己无形资产成果价值的工作者群体。&nbsp;&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;在新经济（商业）环境中做威客的人，种类各式各样，除了各个行业、各个领域之外，还包括掌握各类创新理论（经济和管理）的人。在这些掌握各类创新理论（经济和管理）的人中，有经济威客、管理威客和网络威客等各个领域的威客。甚至可以夸张地说，在互联网威客这平台上，没有所谓的经济学家、管理学家等各式各样的专家学者，只有威客。而威客类网站的出现，为有知识生产加工能力的个人创造了一个销售知识产品的商业平台和机会。&lt;br /&gt;&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;总而言之，威客模式的出现，为个人的知识（资源）买卖带来商机。随着威客时代的来临，每一个威客都可以将自己的知识、经验和学术研究成果作为一种无形的“知识商品”和服务在网络上来销售。威客通过威客网站这个平台买卖“知识产品”，让自己的知识、经验和学术研究成果逐步转化成个人财富。在威客模式下，个人的知识（资源）不但是力量，而且又是个人的财富。在以知识资源应用开发的新经济（商业）时代，无论是个人或组织拥有知识就拥有财富。&lt;br /&gt;', '0', '', '', '', '0', '1', '0', '1365664401', '8');
INSERT INTO `keke_witkey_article` VALUES ('349', '7', '0', '', '任务易：实现威客、雇主、平台的三方共赢', 'article', '', '', '&lt;p&gt;　　目前，国内共有近百家的威客网站，威客人数超过3000万人，并呈现逐年递增的趋势。在市场快速增长的同时，越来越多的威客也开始面临僧多粥少的窘境。对于部分平台来说，威客群体服务意识的缺失也导致了部分威客人才的出走，威客平台也面临着人才管理上的全新挑战。&lt;/p&gt;&lt;p&gt;　　完善现有的运营体制，为威客们创造更丰富的盈利模式和良好的发展渠道成为了威客网站建设中的大势所趋。任务易(renwuyi.com)就是一个这样的平台，一改传统威客网站单线式的运营模式，利用大数据完成对任务资源的宏观把控和精准定位，让每一位威客找到适合自己的任务，从而促进威客与雇主的交易达成，保证平台的用户活性。&lt;/p&gt;&lt;p&gt;　　各取所需的建站变革 大数据时代的厚积薄发&lt;/p&gt;&lt;p&gt;　　经过多年的发展，威客模式已经初步构建了一个理论框架，包括威客模式的定义，理论基础，运营流程，应用领域等，但是从威客模式的深度和广度看，已有的理论框架还需要进一步完善，衍生的新领域也需要进一步研究。在这样的大前提下，任务易网站所提出的“威客会员综合服务”新概念无疑是一次全新的探索和实践。&lt;/p&gt;&lt;p&gt;　　不仅是服务对象上的大胆转换，2015，任务易垂直搜索服务强势登陆。面向威客行业的垂直搜索引擎打造为威客群体提供了更精准化、专业化、个性化的信息交互体验，从而避免了行业资源在无序化传递时的不必要浪费。&lt;/p&gt;&lt;p&gt;　　一改传统威客网站单线式运营模式 加深威客平台服务意识&lt;/p&gt;&lt;p&gt;　　传统的威客网站在交易过程中扮演的更多的是第三方的交易督导角色，其建站的最终目的是以市场占有额为导向的实际收益。这样的网站定位必然会造成在威客群体服务意识上的淡化，从而导致部分威客的利益受损。&lt;/p&gt;&lt;p&gt;　　认识到这一点的任务易深谙“授之以鱼，不如授之以渔”的道理，不仅仅为威客提供各类优质任务资源，还将威客群体生态文明建设放在了很高的位置。威客圈子，百科站点的打造无疑为威客们提供了更丰富的信息源和社交渠道。而网站所提供的个性化档案打造、诚信保障等功能也为威客们创造了更后顾无忧的职业发展环境。&lt;/p&gt;&lt;p&gt;　　以点带面推进威客全民化进程 实现交易三方共赢&lt;/p&gt;&lt;p&gt;　　上文主要说到的是任务易能为威客群体带来什么，无论是实现优质资源的高效对接还是服务意识的不断深化带来的最终结果都是威客个体经济的增长，只有实现了个体繁荣才能实现市场的整体繁荣。&lt;/p&gt;&lt;p&gt;　　不仅如此，通过任务易网站的依托主体——武汉客客信息技术有限公司与外部资源建立合作，如中科院威客创始人刘峰、湖北省标准研究院的行业科研支持，华中科技大学、武汉理工大学的优秀人才支持，以及中国最大的站长网A5和中国最大的在线交易服务平台厦门一品威客网的专业资源支持，来以点带面的将传统威客模式的认知浅薄性进行纵深化普及。从项目质量、项目效率及项目效益上深度完善威客模式的真正影响力，促进全民化的威客进程，这种大环境的改善对于各威客平台的建设绝对是百益而无一害的。&lt;/p&gt;&lt;p&gt;　　新闻来源：&lt;/p&gt;&lt;p&gt;　　A5：http://www.admin5.com/article/20150318/589504.shtml&lt;/p&gt;&lt;p&gt;　　来源：威客百科 本文地址：baike.renwuyi.com/2015-03/8456.html 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '任务易：实现威客、雇主、平台的三方共赢', '任务易：实现威客、雇主、平台的三方共赢', '任务易：实现威客、雇主、平台的三方共赢', '0', '1', '0', '1427275016', '0');
INSERT INTO `keke_witkey_article` VALUES ('348', '5', '0', '', '用亮剑精神 直面高价任务', 'article', '', '', '&lt;p&gt;　　忘了是从什么时候开始接触威客，自然而然的存在总是不容易让人察觉。就像每天呼吸的空气，上班下班都会见到的绿化带，到家后热腾腾的饭菜……这些都已然融入我的生命中，而“威客”这个词，早就在不知不觉间，成为了我的另一种身份。仔细想想，到底最初的契机是什么，都有种恍如隔世感觉。若真要说的话，走到今天的原动力，应该是一颗不甘平庸的心吧。&lt;/p&gt;&lt;p&gt;　　经过年轻时的奋斗，在不错的公司有了自己的一席之地。虽算不上举足轻重，但也不可或缺。那个时候，争强好胜的自己完全不满足现有的状态，一心想着怎样可以让自己更加突出，急于向所有人证明自己的能力。思维激进，形式莽撞，认为撞了南墙不死心是一种积极向上的工作态度。现在想来，果然还是年少轻狂。在多次的耗尽心力却是做无用功的情况下，心中那股冲劲开始消退。那段时间的自己完全是陷入了低谷，开始自我否定，开始怨天尤人，就像处于一片混沌的黑暗之中，不知道身在何处，不知道路在何方。&lt;/p&gt;&lt;p&gt;　　转折点的出现，是无意中上网浏览到威客的网站。当时还只是对这个群体比较好奇，便开始试着了解一下。然后发现一般网站的任务种类虽然很多，但高价任务主要还是集中在软件开发与网站开发上面，而我从事的正好是软件开发相关的工作。即使处于工作的瓶颈期，骨子里的不甘与倔强还是让我直接将目标锁定在软件开发类的高价任务上。可能是因为自己只在工作之余尝试着接任务，所以“威客”这个身份更能让我感到舒心自在，对待任务的态度也更加从容。更令人高兴的是，在威客的圈子里可以结交到许多志同道合的朋友。毕竟个人的力量有限，再怎么厉害的单打独斗都不及一个团队协作的战斗力。专业基础让我相对一般的威客有较大的优势，然而要实现高价任务的中标也并非那么容易。我开始静下心来研究如何能在团队配合中发挥自己的作用，最终实现团队利益的最大化。在这个过程中，不仅我的专业技能得到了提升，重要的是，心态得到了调整。与战友并肩作战也是充满乐趣，工作上，便开始慢慢找回自己的节奏。&lt;/p&gt;&lt;p&gt;　　在浏览过多家威客网站之后，不难发现大多网站对于任务资源的整合分类还不是很完善。像我这种目标明确地威客群体要想找到自己感兴趣的任务仍需要下番功夫挑选。最后还是威客朋友推荐的“任务易”网站解决了难题，让我有更多的时间专心攻下高价任务。&lt;/p&gt;&lt;p&gt;　　我想，我应该是跟“威客”这个身份很投机。成为一名威客于我而言，是人生的投契而不是草率的决定。专注于高价任务的狩猎是升华自我，亦非急功近利。在威客这个世界里，我依旧可以做当初那个激情四射的自己，只是多了一份沉稳与淡定。立足本职，挑战极限才是我一贯的作风。&lt;/p&gt;&lt;p&gt;　　时至今日，作为一名威客，我已经能够得心应手地配合团队完成软件开发类的高价任务。但我的目标并不仅仅如此，学习网站开发相关的知识是下一步计划。不给自己设限的人生才会充满意义，不断挑战自我的生活才会更加精彩。面对高价任务，只有勇于亮剑，才能剑锋所指，所向披靡。在收割高价任务这条路上，我还会越走越远，越走越广!&lt;/p&gt;&lt;p&gt;　　来源：威客百科 本文地址：baike.renwuyi.com/2015-03/8465.html 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '用亮剑精神 直面高价任务', '用亮剑精神 直面高价任务', '用亮剑精神 直面高价任务', '0', '1', '0', '1427274930', '0');
INSERT INTO `keke_witkey_article` VALUES ('345', '358', '0', '', '中国威客理论创始人——刘锋', 'article', '', '', '&lt;p&gt;　　刘锋：中国科学院虚拟经济与数据科学研究中心客座研究员，威客理论和互联网进化论创始人，著有《互联网进化论》。&lt;/p&gt;&lt;p style=\"text-align:center\"&gt;&lt;img alt=\"中国威客理论创始人——刘锋.jpg\" src=\"data/uploads/bdattachment/image/20150325/1427272062737946.jpg\" title=\"1427272062737946.jpg\"/&gt;&lt;/p&gt;&lt;p&gt;　　2005年，刘锋开始建立一个互联网网站，将中国科学院的专家资源、科技成果与企业的科技难题对接起来。在建设网站的过程中，刘锋发现通过互联网解决问题并让解决者获取报酬是互联网一个全新的领域。在研究的过程中，刘锋提出三个相互关联的观点：第一，从20世纪70年代开始，电子公告牌地功能不断分离，产生出博客，维基百科等互联网新应用。智力互动问答功能从21世纪初也开始从电子公告牌中分离出去。第二，随着互联网支付手段的不断成熟，信息完全免费共享的互联网时代已经过去。知识，智慧，经验，技能也具备商业价值，可以商品进行买卖。第三，知识，智慧，经验，技能的价值化是促进人参与到智力互动问答的催化剂，基于上述三个观点，提出了威客概念，之后并将其扩充完善成一套“威客理论”。&lt;/p&gt;&lt;p&gt;　　来源：威客百科本文地址：baike.renwuyi.com/2015-03/260.html 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '', '', '', '0', '1', '0', '1427272066', '2');
INSERT INTO `keke_witkey_article` VALUES ('347', '7', '0', '', '触电A5 任务易不得不说的事', 'article', '', '', '&lt;p&gt;　　近期，A5站长网上一篇名为《任务易：实现威客、雇主、平台的三方共赢》的文章引起了很多业内人士的关注，作为提出“威客综合服务”意识的先锋型网站，任务易是凭借什么登上A5首页，获得重点推送的。今天，编者就来和大家聊聊任务易的那些事儿。&lt;/p&gt;&lt;p style=\"text-align:center\"&gt;&lt;img alt=\"触电A5 任务易不得不说的事1.jpg\" src=\"data/uploads/bdattachment/image/20150325/1427274821866393.jpg\" title=\"1427274821866393.jpg\"/&gt;&lt;/p&gt;&lt;p&gt;　　任务易(www.renwuyi.com)是隶属于武汉客客信息技术有限公司独家运营的威客网站。作为全球唯一一个为威客会员打造的综合性服务平台，在建站之初，任务易便得到了众多的关注。相信大家对于武汉客客信息技术有限公司都不会陌生，作为威客开源领域元老级的“悍将”，其开发的KPPW一直领跑威客开源市场，是30000+站长的首选产品。&lt;/p&gt;&lt;p&gt;　　作为客客旗下又一重量级的产品，任务易的出现在某种程度上深化客客团队对于威客行业的一片赤诚之心。从产品到服务，从面向站长到面向整个行业的市场格局，客客的每一次出击，都是为了更好的服务威客行业。&lt;/p&gt;&lt;p style=\"text-align:center\"&gt;&lt;img alt=\"触电A5 任务易不得不说的事2.jpg\" src=\"data/uploads/bdattachment/image/20150325/1427274748704517.jpg\" title=\"1427274748704517.jpg\"/&gt;&lt;/p&gt;&lt;p&gt;　　2015年的任务易，在客客团队的指引下再次出发，任务易垂直搜索重磅登场。&lt;/p&gt;&lt;p&gt;　　何为垂直搜索?即为针对某一特定领域的专业性信息搜索引擎，其具备的“专、精、深”的特点为信息的高效化传递提供了很好的基础。任务易的垂直搜索便是立足于客客团队对于大数据专业的调控能力，为威客群体所提供的更高效个性化的信息服务。不只是“专、精、深”，更有行业突破的大胆创“新”和推动威客文化传播的高“广”度知识内核。这，就是全新的任务易。&lt;/p&gt;&lt;p style=\"text-align:center\"&gt;&lt;img alt=\"触电A5 任务易不得不说的事3.png\" src=\"data/uploads/bdattachment/image/20150325/1427274769908430.png\" title=\"1427274769908430.png\"/&gt;&lt;/p&gt;&lt;p&gt;　　A5作为目前国内最大的站长网站，知名度和影响力都是首屈一指的。而任务易这次在A5上的曝光也让更多人认识任务易并试图了解任务易。两个平台的首次触电便小有声势，相信与两者在站长扶持意识上的共通点不无关系。&lt;/p&gt;&lt;p&gt;　　A5服务于各大站长，任务易其实也是通过交易的促进达成在扶持各威客平台。通过个性化搜索服务的打造实现优质资源和人才的对接，从而保证智慧型产品的高效输出，优化现有的市场环境，而市场环境的改善为各威客平台创造了更多的机会和行业延展性。&lt;/p&gt;&lt;p&gt;　　对于任务易来说，路漫漫其修远，必将为威客行业之繁荣而求索。&lt;/p&gt;&lt;p&gt;　　新闻来源：&lt;/p&gt;&lt;p&gt;　　飞象网： http://software.it168.com/a2015/0320/1713/000001713108.shtml&lt;/p&gt;&lt;p&gt;　　IT168： http://software.it168.com/a2015/0320/1713/000001713108.shtml&lt;/p&gt;&lt;p&gt;　　来源：威客百科 本文地址：baike.renwuyi.com/2015-03/8463.html 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '触电A5 任务易不得不说的事', '触电A5 任务易不得不说的事', '触电A5 任务易不得不说的事', '0', '1', '0', '1427274823', '3');
INSERT INTO `keke_witkey_article` VALUES ('350', '7', '0', '', '任务易圈子：归还威客的话语权', 'article', '', '', '&lt;p&gt;　　2015，任务易全新改版，重磅推出威客行业垂直搜索服务。不仅如此，新版任务易借助客客团队多年的项目经验和行业前瞻性在板块设置和功能布局上进行了进一步的优化，力图为威客会员们提供更贴心便捷的全方位服务。&lt;/p&gt;&lt;p&gt;　　改版后的任务易，拥有任务、导航、百科、圈子四大功能模块。“任务”即任务大厅，即所有平台任务资源的集散地，威客可借助任务易的垂直搜索功能，精准定位自己所需的任务资源。“导航”则实现了主流威客网站收录，热门威客应用普及的引导性功能。“百科”囊括了包括行业动态、任务攻略、经验分享在内的各类信息，行业百态，一网便可打尽。今天要着重讲到的，便是任务易的圈子功能，画地为圈，说你所想，你的圈子，本该你说了算!&lt;/p&gt;&lt;p&gt;　　突破传统威客网站桎梏，给予威客更多自由度&lt;/p&gt;&lt;p&gt;　　任务易圈子(quan.renwuyi.com)是任务易基于威客圈生态文明建设的创新之举，任务易希望能够借助自己的品牌优势和行业影响力为广大威客会员创建一个畅所欲言，分享互动的多元化平台。威客可自行选择加入各类圈子，通过交流互动结交有意思的威客好友，获取有价值的行业信息。无论是行业黑幕起底还是成功案例分析，威客们都能畅所欲言，一吐为快。突破传统威客网站在言语管制上的多方桎梏，任务易圈子，给予了威客们更多的自由与支持。&lt;/p&gt;&lt;p&gt;　　理性挖掘威客群体需求，归还威客的话语权&lt;/p&gt;&lt;p&gt;　　作为全球唯一一个为威客会员打造的综合性服务平台，任务易一直将威客圈的生态文明建设放在很高的位置。有别于传统威客网站以市场占有额为目的的建站目标，任务易并不直接产生交易。这种与众不同的网站定位在某种程度上也规避了传统网站在威客群体服务意识上的缺失。很多威客都有过被恶意骗稿，无故弃标的经历，在遭受到不公平对待时，第一反应便是向对应网站反映，得到的却是千篇一律的官方声明。这种对于威客群体声量的漠视甚至是无视会逐渐消磨掉威客对于行业的信心，最终导致部分优质威客的淡出和出走。&lt;/p&gt;&lt;p&gt;　　意识到这个问题的任务易利用全新的服务理念帮助威客会员重新建立行业发展的自信心，利用威客圈子的打造重新夺回威客群体的话语权。行业黑幕，各类意见，只要是言之有物，任务易圈子必将力挺到底!&lt;/p&gt;&lt;p&gt;　　个性化圈子打造，威客群体逐渐走向社交化&lt;/p&gt;&lt;p&gt;　　作为以个人或团队为单位的自由工作者，大部分人概念中的威客似乎更似一个独立于网络中的存在，其实不然。作为互联网智慧型产品物流中重要的组成部分，威客们也有着自己的社交身份和社交圈子。任务易威客圈子，便是为这种专属于威客的社交行为提供了赖以生存的土壤。同一行业，同种爱好，在你喜欢的圈子，遇见惺惺相惜的人，这种美好的感觉，是任务易圈子一直想传达给各位威客会员的。个性化威客圈子打造，使威客群体逐渐走向社交化，这种社交化，也会催生出更强大的威客和更优质的智慧产品产出，对于整个行业来说，都是大有裨益的。&lt;/p&gt;&lt;p&gt;　　新闻来源：&lt;/p&gt;&lt;p&gt;　　中国创新网 http://www.chinahightech.com/html/692/2015/0310/10482889.html&lt;/p&gt;&lt;p&gt;　　中国城市网 http://www.citure.net/info/2015310/2015310110236.shtml&lt;/p&gt;&lt;p&gt;　　来源：威客百科 本文地址：baike.renwuyi.com/2015-03/8269.html 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '任务易圈子：归还威客的话语权', '任务易圈子：归还威客的话语权', '任务易圈子：归还威客的话语权', '0', '1', '0', '1427275098', '0');
INSERT INTO `keke_witkey_article` VALUES ('343', '7', '0', '', '威客与平台 通过任务易来一次公平对话', 'article', '', '', '&lt;p&gt;　　威客模式的参与者由三方构成：威客平台、雇主和威客。在交易中，这三者是怎样的功能构成，作为全球唯一一个为威客打造的综合性服务平台，任务易又在这其中扮演着怎样的角色，是我们今天要探讨的主要话题。&lt;/p&gt;&lt;p&gt;　　威客在三方交易中的身份定位，威客平台拥有主导权&lt;/p&gt;&lt;p&gt;　　威客模式与与传统C2C模式相比较，提供的产品形式不一样，但网络服务商的盈利模式有相似之处：即通过向交易一方或双方收取服务费来实现收益。可以说，与传统C2C相比，由于在威客网站交易的是服务性产品和无支出成本的服务，所以威客平台的服务性就更加重要，收费自然更加容易，这是二者的区别所在。&lt;/p&gt;&lt;p&gt;　　但是就目前的市场现状来看，威客平台主要的服务对象都局限于雇主。而威客群体作为输出智慧型产品的生力军，更类似服务于平台的“打工族”角色。这种身份定位上的不对等也让威客群体失去了部分属于自己的主导权和话语权，长此以往，必将导致部分优质威客人才的流失。如何改善目前的三方格局，让威客与各平台来一次公平的对话，成为任务易建站工作中的重中之重。&lt;/p&gt;&lt;p&gt;　　实现保障机制的全面对等，任务易为威客谋福利&lt;/p&gt;&lt;p&gt;　　众所周知，经过近十年的发展，威客模式已经日趋成熟。但是诚信保障，智慧型产品合理定价等问题却一直未得到圆满的解决。被无故弃标却投诉无门?利益申诉却总是不了了之?传统威客网站保障机制似乎总是更倾向于需求的产出者——雇主一方，而淡化了创意输出方的基本诉求。&lt;/p&gt;&lt;p&gt;　　察觉到这一点的任务易(renwuyi.com)，履行着其作为威客群体综合性服务平台的职能特点，通过制定完善的威客利益保障政策，尤其是项目评价、佣金结算及纠纷问题解决等多项环节，从大众化的群体角度妥善制定相关政策;而另一方面施行了口碑化的政策试行制度，将雇主评判的依据从个人主观角度向方案实用效益角度调整，以口碑化促进威客及雇主利益保障，成为业内第一家创新化解决安全效益问题的专业威客网站。&lt;/p&gt;&lt;p&gt;　　顺势而行，新版任务易给予威客群体更多主动权&lt;/p&gt;&lt;p&gt;　　2015，任务易全新改版，重磅推出威客行业垂直搜索服务。面向整个行业的垂直搜索引擎给予了威客群体更多的选择性和主动权。&lt;/p&gt;&lt;p&gt;　　通过将优质资源全面归整、合理配置高效的对接到威客群体，让威客们更自主的选择任务，而不是一味的被选择。主动权的转移不仅能够调动威客们的积极性更能刺激优质智慧型产品的输出。而威客圈子的打造则是一次对威客交友社交化的推进。同为躬耕互联网的威客族，可以通过任务易圈子自由交流，无阻沟通、切磋成长、资源互换。任务易圈子的桥梁作用为威客生态圈文明建设提供了一个不错的范本。&lt;/p&gt;&lt;p&gt;　　新闻来源：&lt;/p&gt;&lt;p&gt;　　飞象网 http://www.cctime.com/html/2015-3-24/2015324142012613.htm&lt;/p&gt;&lt;p&gt;　　来源：威客百科 本文地址：baike.renwuyi.com/2015-03/8491.html 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '威客与平台 通过任务易来一次公平对话', '威客与平台 通过任务易来一次公平对话', '威客与平台 通过任务易来一次公平对话', '0', '1', '0', '1427271764', '0');
INSERT INTO `keke_witkey_article` VALUES ('344', '7', '0', '', '任务易 以威客为本 走一条可持续发展之路', 'article', '', '', '&lt;p&gt;　　在以科学发展观统领经济社会发展全局的今天，“以人为本”作为科学发展观的本质和核心更是备受重视。细化到威客行业，威客作为行业的主体，他们的声音不容忽视。任务易，着眼于威客行业的长远发展，坚持“以威客为本”，尊重威客的意见，理解威客的需求，保障威客的权利，为威客提供一个展示自我能力与知识成果的绝妙舞台。&lt;/p&gt;&lt;p&gt;　　在任务易，威客扮演怎样的角色?&lt;/p&gt;&lt;p&gt;　　激烈的市场竞争之下，众多的威客网站为了角逐市场份额，提高交易量，获取盈利而煞费苦心。诚然，网站追求利益的最大化本是无可厚非的事情。但在这样的氛围之下，必将导致威客这一主体得不到应有的重视。而任务易却是剑走偏锋，突破传统威客网站的经营模式，任务易并不直接产生交易。如此一来，将网站服务的重点转移到威客的身上。在任务易，每一位威客都是主人公!威客可以尽情挥毫泼墨，激扬文字，书写他们自己的故事，缔造专属的威客传奇。“威客的地盘，威客做主”，任务易尊重每一位威客!&lt;/p&gt;&lt;p&gt;　　在任务易，威客能做什么?&lt;/p&gt;&lt;p&gt;　　随着知识经济时代的到来，创新人才成为最重要的战略资源，并成为经济和技术竞争的焦点。威客这样一个独特的群体，更是藏龙卧虎高手云集。任务易细致分析威客的需求，对海量任务的整合归类，可以满足不同威客的各种需求。“有了任务易，妈妈再也不用担心我的任务”。此外，任务易主张营造一种轻松和谐，积极向上的氛围。威客可以在任务易上结交志(chou)同(wei)道(xiang)合(tou)的朋友，从攻略心得谈到个人经历，从诗词歌赋谈到人生理想，畅所欲言，就在任务易!小编相信，只有充分发挥威客的主观能动性，才能吸引威客自主参与网站建设，增强威客的成就感，让威客更享受完成任务的过程。&lt;/p&gt;&lt;p&gt;　　在任务易，威客能得到什么?&lt;/p&gt;&lt;p&gt;　　威客是威客行业每一笔财富的创造者，是威客行业每一步发展的见证者。没有威客的付出与奋斗，威客行业不会实现一个个跨越，更不会有现今的成绩。“水能载舟，亦能覆舟”，如果网站的发展以忽略威客的利益为代价的话，那么网站这个小舟迟早会被一个浪给打翻。&lt;/p&gt;&lt;p&gt;　　任务易充分意识到威客群体的重要性，注重“以威客为本”，从威客的利益出发，以优质资源及完善保障为各位民间高手提供坚实的后盾。强效有力的监督配合科学规范的管制，让交易风险降至最低。只要你有真才实学，任务易绝不会让你空手而归!&lt;/p&gt;&lt;p&gt;　　现在，威客行业的发展仍在曲折中前进，虽然道路是曲折的，但前途更是光明的。只要坚持以威客为本，必能促进威客行业的可持续发展。而任务易，正是这条道路上的苦行者。&lt;/p&gt;&lt;p&gt;　　来源：威客百科 本文地址：&lt;a target=\"_self\" href=\"http://baike.renwuyi.com/2015-03/8487.html\"&gt;baike.renwuyi.com/2015-03/8487.html&lt;/a&gt; 转载请注明出处。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '任务易 以威客为本 走一条可持续发展之路', '任务易 以威客为本 走一条可持续发展之路', '任务易 以威客为本 走一条可持续发展之路', '0', '1', '0', '1427271827', '0');

-- ----------------------------
-- Table structure for keke_witkey_article_category
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_article_category`;
CREATE TABLE `keke_witkey_article_category` (
  `art_cat_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类编号',
  `art_cat_pid` int(11) DEFAULT '0' COMMENT '文章分类父编号',
  `cat_name` varchar(100) DEFAULT NULL COMMENT '文章分类名称',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `is_show` int(11) DEFAULT '0' COMMENT '文章分类状态',
  `on_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `cat_type` char(10) DEFAULT '0' COMMENT '分类类型',
  `art_index` varchar(100) DEFAULT NULL COMMENT '索引',
  `seo_title` varchar(50) DEFAULT NULL COMMENT 'SEO标题',
  `seo_keyword` varchar(50) DEFAULT NULL COMMENT 'SEO关键字',
  `seo_desc` text COMMENT 'SEO描述',
  PRIMARY KEY (`art_cat_id`),
  KEY `index_1` (`art_cat_id`),
  KEY `index_2` (`art_cat_pid`)
) ENGINE=MyISAM AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_article_category
-- ----------------------------
INSERT INTO `keke_witkey_article_category` VALUES ('1', '0', '客客资讯1', '10', '1', '1372152435', 'article', '{1}{1}{1}{1}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('5', '1', '行业动态', '2', '1', '1366186082', 'article', '{1}{1}{1}{5}', '本行业的动态度恶劣', '是风格撒的，撒的发，说法士大夫，撒反对', '的是法国的师傅给的是法国的是法国的风格和法国恢复到工会发的规划的法国恢复规划的是法国是大法官上的风格的师傅告诉对方过得舒服过的是法国的师傅给的是法国的师傅告诉对方');
INSERT INTO `keke_witkey_article_category` VALUES ('7', '1', '媒体报导', '4', '1', '1365665081', 'article', '{1}{1}{1}{7}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('17', '1', '网站公告', '5', '1', '1365665089', 'article', '{1}{1}{1}{17}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('4', '1', '政策法规', '3', '1', '1365665065', 'article', '{1}{1}{1}{4}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('203', '1', '安全交易', '1', '0', '1365665106', 'article', '{1}{1}{1}{203}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('328', '290', '我是买家', '11', '0', '1323165361', 'help', '{100}{290}{328}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('358', '1', '新闻列表', '6', '0', '1365665114', 'article', '{1}{1}{1}{358}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('345', '294', '名词解答', '5', '0', '1325746402', 'help', '{100}{294}{345}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('290', '100', '任务大厅', '8', '0', '1404100301', 'help', '{100}{100}{290}', '任务大厅', '任务大厅', '任务大厅');
INSERT INTO `keke_witkey_article_category` VALUES ('298', '294', '注册登陆', '1', '0', '1323158406', 'help', '{100}{294}{298}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('300', '290', '任务中标', '1', '0', '1323158451', 'help', '{100}{290}{300}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('304', '290', '雇佣任务', '5', '0', '1323158531', 'help', '{100}{290}{304}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('291', '100', '威客商城', '2', '0', '1365666128', 'help', '{100}{100}{291}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('100', '0', '帮助中心', '1', '1', '1404101091', 'help', '{100}{100}{100}', '帮助中心', '帮助中心', '帮助中心');
INSERT INTO `keke_witkey_article_category` VALUES ('310', '294', '相关认证', '1', '0', '1323158633', 'help', '{100}{294}{310}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('316', '292', '推广注册', '1', '0', '1323158833', 'help', '{100}{292}{316}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('329', '290', '我是服务商', '12', '0', '1323165371', 'help', '{100}{290}{329}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('327', '294', '账号管理', '3', '0', '1323165351', 'help', '{100}{327}{294}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('296', '294', '账号安全', '1', '0', '1323158348', 'help', '{100}{294}{296}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('312', '294', '如何支付', '1', '0', '1323158707', 'help', '{100}{294}{312}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('311', '294', '如何赚钱', '1', '0', '1323158698', 'help', '{100}{294}{311}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('315', '292', '推广规则', '1', '0', '1323158822', 'help', '{100}{292}{315}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('297', '294', '提现充值', '1', '0', '1323158368', 'help', '{100}{294}{297}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('346', '294', '交易维权', '1', '0', '1324028081', 'help', '{100}{294}{346}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('295', '289', '本站规则', '6', '0', '1323158308', 'help', '{100}{289}{295}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('293', '100', '常见问题', '5', '0', '1365666138', 'help', '{100}{100}{293}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('294', '100', '新手上路', '10', '0', '1365666145', 'help', '{100}{100}{294}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('301', '290', '参与任务', '3', '0', '1323158461', 'help', '{100}{290}{301}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('302', '290', '评价&等级', '2', '0', '1323158473', 'help', '{100}{290}{302}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('303', '290', '任务问题', '4', '0', '1323158488', 'help', '{100}{290}{303}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('305', '290', '悬赏任务', '6', '0', '1323158544', 'help', '{100}{290}{305}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('306', '290', '招标任务', '7', '0', '1323158554', 'help', '{100}{290}{306}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('307', '290', '线下交易', '8', '0', '1323158565', 'help', '{100}{290}{307}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('308', '290', '任务选标', '9', '0', '1323158580', 'help', '{100}{290}{308}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('309', '290', '支付汇款', '10', '0', '1323158589', 'help', '{100}{290}{309}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('317', '292', '推广任务', '1', '0', '1323158840', 'help', '{100}{292}{317}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('318', '292', '推广网站', '1', '0', '1323158848', 'help', '{100}{292}{318}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('319', '293', '账号充值', '1', '0', '1323158882', 'help', '{100}{293}{319}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('320', '271', '线上支付', '1', '0', '1323158894', 'help', '{100}{271}{320}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('321', '271', '线下支付', '1', '0', '1323158902', 'help', '{100}{271}{321}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('322', '271', '担保交易', '1', '0', '1323158916', 'help', '{100}{271}{322}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('323', '291', '商城规则', '1', '0', '1323158935', 'help', '{100}{291}{323}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('324', '291', '威客作品', '2', '0', '1323158964', 'help', '{100}{291}{324}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('325', '291', '威客服务', '3', '0', '1364866607', 'help', '{100}{291}{325}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('326', '293', '交易付款', '4', '0', '1323158986', 'help', '{100}{293}{326}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('347', '294', '违规', '1', '0', '1324028127', 'help', '{100}{294}{347}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('361', '203', 'ffffff', '1', '0', '1346985730', 'article', '{1}{203}{361}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('362', '298', 'dddd', '1', '0', '1346986455', 'help', '{100}{294}{298}{362}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('364', '345', '234', '1', '0', '1346988623', 'help', '{100}{294}{345}{364}', '', '', '');
INSERT INTO `keke_witkey_article_category` VALUES ('365', '359', 'rrrrrr', '1', '0', '1346988958', 'article', '{1}{203}{359}{365}', '', '', '');

-- ----------------------------
-- Table structure for keke_witkey_article_keyword
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_article_keyword`;
CREATE TABLE `keke_witkey_article_keyword` (
  `keyword_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关键词编号',
  `word` varchar(20) DEFAULT NULL COMMENT '关键词',
  `url` varchar(100) DEFAULT NULL COMMENT '关键词URL',
  `keyword_status` int(11) DEFAULT NULL COMMENT '关键词状态',
  `edit_time` int(11) DEFAULT NULL COMMENT '编辑时间',
  `on_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `show_count` int(11) DEFAULT NULL COMMENT '使用次数',
  PRIMARY KEY (`keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_article_keyword
-- ----------------------------
INSERT INTO `keke_witkey_article_keyword` VALUES ('12', '再来一个亲', 'http://localhost/kppw2.2/index.php?do=task_list&path=H2&search_key=再来一个亲', '1', '0', '1365757093', '0');
INSERT INTO `keke_witkey_article_keyword` VALUES ('10', '小样儿的', 'http://localhost/kppw2.2/index.php?do=task_list&path=H2&search_key=小样儿的', '1', '0', '1365757058', '0');
INSERT INTO `keke_witkey_article_keyword` VALUES ('11', '他不可信', 'http://localhost/kppw2.2/index.php?do=task_list&path=H2&search_key=他不可信', '1', '0', '1365757117', '0');

-- ----------------------------
-- Table structure for keke_witkey_auth_alipayjs
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_alipayjs`;
CREATE TABLE `keke_witkey_auth_alipayjs` (
  `alipayjs_a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '银行认证编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(35) DEFAULT NULL COMMENT '用户名',
  `alipayjs_account` varchar(50) DEFAULT NULL COMMENT '线下支付账号',
  `pay_to_user_cash` decimal(8,2) DEFAULT '0.00' COMMENT '打给用户的金额',
  `real_name` varchar(50) DEFAULT '' COMMENT '真实姓名',
  `user_get_cash` decimal(8,2) DEFAULT '0.00' COMMENT '收款金额',
  `pay_time` int(11) DEFAULT NULL COMMENT '打款时间',
  `cash` decimal(10,2) DEFAULT NULL COMMENT '支付费用',
  `start_time` int(11) DEFAULT NULL COMMENT '认证开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '认证结束时间',
  `auth_status` int(11) DEFAULT NULL COMMENT '认证状态',
  PRIMARY KEY (`alipayjs_a_id`),
  KEY `index_2` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_alipayjs
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_auth_bank
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_bank`;
CREATE TABLE `keke_witkey_auth_bank` (
  `bank_a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '银行认证编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(35) DEFAULT NULL COMMENT '用户名',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '线下支付账号',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `bank_id` int(11) DEFAULT NULL COMMENT '银行编号',
  `deposit_area` varchar(100) DEFAULT NULL COMMENT '开户行所在地',
  `deposit_name` varchar(100) DEFAULT NULL COMMENT '开户行名称',
  `pay_to_user_cash` decimal(10,2) DEFAULT '0.00' COMMENT '打给用户的金额',
  `user_get_cash` decimal(10,2) DEFAULT '0.00' COMMENT '收款金额',
  `pay_time` int(11) DEFAULT NULL COMMENT '打款时间',
  `cash` decimal(10,2) DEFAULT NULL COMMENT '支付费用',
  `start_time` int(11) DEFAULT NULL COMMENT '认证开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '认证结束时间',
  `auth_status` int(11) DEFAULT NULL COMMENT '认证状态',
  `bank_sname` varchar(250) DEFAULT NULL COMMENT '开户行名称',
  PRIMARY KEY (`bank_a_id`),
  KEY `index_2` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_bank
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_auth_email
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_email`;
CREATE TABLE `keke_witkey_auth_email` (
  `email_a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '邮件认证编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `email` varchar(100) DEFAULT NULL COMMENT '邮件地址',
  `cash` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `auth_time` int(11) DEFAULT NULL COMMENT '认证时间',
  `start_time` int(11) DEFAULT NULL COMMENT '认证生效时间',
  `end_time` int(11) DEFAULT NULL COMMENT '认证过期时间',
  `auth_status` int(1) DEFAULT NULL COMMENT '认证状态',
  PRIMARY KEY (`email_a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_email
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_auth_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_enterprise`;
CREATE TABLE `keke_witkey_auth_enterprise` (
  `enterprise_auth_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '企业认证编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `company` varchar(100) DEFAULT NULL COMMENT '公司',
  `licen_num` varchar(100) DEFAULT NULL COMMENT '营业执照号码',
  `licen_pic` varchar(100) DEFAULT NULL COMMENT '营业执照图片',
  `cash` decimal(10,2) DEFAULT '0.00' COMMENT '支付费用',
  `start_time` int(11) DEFAULT NULL COMMENT '认证开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '认证结束时间',
  `auth_status` int(11) DEFAULT NULL COMMENT '认证状态',
  `legal` varchar(50) DEFAULT NULL COMMENT '法人代表',
  `staff_num` int(11) DEFAULT NULL COMMENT '员工人数',
  `run_years` int(11) DEFAULT NULL COMMENT '经营年数',
  `url` varchar(200) DEFAULT NULL COMMENT '公司网址',
  PRIMARY KEY (`enterprise_auth_id`),
  KEY `index_1` (`enterprise_auth_id`),
  KEY `index_2` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_item`;
CREATE TABLE `keke_witkey_auth_item` (
  `auth_code` char(20) NOT NULL DEFAULT '' COMMENT '认证项目代码',
  `auth_title` varchar(100) DEFAULT NULL COMMENT '认证项目',
  `auth_day` varchar(100) DEFAULT NULL COMMENT '认证时间',
  `auth_small_ico` varchar(100) DEFAULT NULL COMMENT '认证后小图标',
  `auth_small_n_ico` varchar(100) DEFAULT NULL COMMENT '认证前小图标',
  `auth_big_ico` varchar(100) DEFAULT NULL COMMENT '认证大图标',
  `auth_desc` text COMMENT '认证简介',
  `auth_cash` decimal(10,2) DEFAULT '0.00' COMMENT '认证费用',
  `auth_expir` int(11) DEFAULT NULL COMMENT '认证有效期',
  `auth_open` int(11) DEFAULT NULL COMMENT '是否开启认证',
  `auth_show` int(11) DEFAULT NULL COMMENT '是否显示图标',
  `muti_auth` int(11) DEFAULT NULL COMMENT '多次认证',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `auth_dir` varchar(20) DEFAULT NULL COMMENT '认证目录',
  `listorder` int(11) DEFAULT NULL COMMENT '排序',
  `config` text COMMENT '扩展配置',
  PRIMARY KEY (`auth_code`),
  KEY `index_2` (`update_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_item
-- ----------------------------
INSERT INTO `keke_witkey_auth_item` VALUES ('email', '邮箱认证', '1-2', 'data/uploads/sys/tools/577054d1c4a43944c.gif', 'data/uploads/sys/tools/1458154d1c49ff3426.gif', 'data/uploads/sys/tools/1050254d1c48f04ce6.gif', '点击发送，系统将自动发送一封邮件到您的邮箱，\r\n		请在24小时之内点击邮件里的链接进行邮箱验证（24之内有效）', '1.00', '0', '1', '0', null, '1423033511', 'email', '0', null);
INSERT INTO `keke_witkey_auth_item` VALUES ('enterprise', '企业认证', '1-3', 'data/uploads/sys/tools/1459854d1c7553137f.gif', 'data/uploads/sys/tools/1020954d1c751609b6.gif', 'data/uploads/sys/tools/2797654d1c74d37a0d.gif', '企业认证是一种身份的认证，更容易让您获得大单打造企业的信誉度', '0.00', '0', '1', '0', '0', '1426577372', 'enterprise', '2', '0');
INSERT INTO `keke_witkey_auth_item` VALUES ('bank', '银行认证', '1-3', 'data/uploads/sys/tools/1417254d1c7201a313.gif', 'data/uploads/sys/tools/2913554d1c71d1d6bc.gif', 'data/uploads/sys/tools/465454d1c719ab4e0.gif', '银行认证', '1.00', '0', '1', '0', null, '1423034147', 'bank', '0', null);
INSERT INTO `keke_witkey_auth_item` VALUES ('realname', '实名认证', '1-3', 'data/uploads/sys/tools/2353154d1c73aafa2c.gif', 'data/uploads/sys/tools/901854d1c735cb645.gif', 'data/uploads/sys/tools/1904554d1c73232550.gif', '用于提升账号的安全性和提高信任度，认证后不能修改', '0.00', '0', '1', '0', '0', '1423034173', 'realname', '1', '0');
INSERT INTO `keke_witkey_auth_item` VALUES ('mobile', '手机认证', '0', 'data/uploads/sys/tools/506354d1c778a7387.gif', 'data/uploads/sys/tools/845454d1c7739b0ed.gif', 'data/uploads/sys/tools/1225754d1c76f5ea8a.gif', '手机认证', '1.00', '0', '0', '0', null, '1434009649', 'mobile', '2', null);
INSERT INTO `keke_witkey_auth_item` VALUES ('alipayjs', '支付宝认证', '1-2', 'data/uploads/sys/tools/3136954d1d4a6a9088.gif', 'data/uploads/sys/tools/1678454d1d4a132832.gif', 'data/uploads/sys/tools/1939954d1c79914b3a.gif', '支付宝认证', '0.00', '0', '1', '0', null, '1423037609', 'alipayjs', '8', null);

-- ----------------------------
-- Table structure for keke_witkey_auth_mobile
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_mobile`;
CREATE TABLE `keke_witkey_auth_mobile` (
  `mobile_a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '手机认证编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `mobile` char(11) DEFAULT NULL COMMENT '手机号码',
  `valid_code` char(6) DEFAULT NULL COMMENT '验证码',
  `cash` decimal(10,2) DEFAULT '0.00' COMMENT '认证费用',
  `auth_status` tinyint(1) DEFAULT NULL COMMENT '认证状态',
  `auth_time` int(11) DEFAULT NULL COMMENT '认证开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '认证结束时间',
  PRIMARY KEY (`mobile_a_id`),
  KEY `uid` (`uid`),
  KEY `mobile_a_id` (`mobile_a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_mobile
-- ----------------------------
INSERT INTO `keke_witkey_auth_mobile` VALUES ('1', '3', '暗夜行路', '18827354362', 'qjaf', '1.00', '0', '1434009823', null);

-- ----------------------------
-- Table structure for keke_witkey_auth_realname
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_realname`;
CREATE TABLE `keke_witkey_auth_realname` (
  `realname_a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实名认证编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `id_card` varchar(50) DEFAULT NULL COMMENT '身份证复印件',
  `id_pic` varchar(100) DEFAULT NULL COMMENT '身份证复印件',
  `cash` decimal(10,2) DEFAULT '0.00' COMMENT '认证金额',
  `start_time` int(11) DEFAULT NULL COMMENT '认证开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '认证结束时间',
  `auth_status` int(11) DEFAULT NULL COMMENT '认证状态',
  PRIMARY KEY (`realname_a_id`),
  KEY `auth_status` (`auth_status`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_realname
-- ----------------------------
INSERT INTO `keke_witkey_auth_realname` VALUES ('1', '3', '暗夜行路', '路浩然', '420683198903261254', 'data/uploads/sys/auth/61478711755795b1d47b83.jpg', '0.00', '1434016549', '1434016549', '1');

-- ----------------------------
-- Table structure for keke_witkey_auth_record
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_auth_record`;
CREATE TABLE `keke_witkey_auth_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '认证记录编号',
  `auth_code` char(20) DEFAULT NULL COMMENT '认证项目code',
  `uid` int(11) DEFAULT NULL COMMENT '认证uid',
  `username` varchar(50) DEFAULT NULL COMMENT '认证用户名',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `auth_status` int(11) DEFAULT NULL COMMENT '认证状态',
  `ext_data` text COMMENT '其它数据',
  PRIMARY KEY (`record_id`),
  KEY `index_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_auth_record
-- ----------------------------
INSERT INTO `keke_witkey_auth_record` VALUES ('1', 'mobile', '3', '暗夜行路', '1434016458', '0', null);
INSERT INTO `keke_witkey_auth_record` VALUES ('2', 'realname', '3', '暗夜行路', '1434016549', '1', null);

-- ----------------------------
-- Table structure for keke_witkey_basic_config
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_basic_config`;
CREATE TABLE `keke_witkey_basic_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置标号',
  `k` char(20) DEFAULT NULL COMMENT '键',
  `v` text COMMENT '值',
  `type` char(20) DEFAULT NULL COMMENT '类型',
  `desc` text COMMENT '描述',
  `listorder` int(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`config_id`),
  KEY `config_id` (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_basic_config
-- ----------------------------
INSERT INTO `keke_witkey_basic_config` VALUES ('1', 'website_name', '客客专业威客系统', 'web', '0', '1');
INSERT INTO `keke_witkey_basic_config` VALUES ('2', 'website_title', 'KPPW', 'web', '0', '2');
INSERT INTO `keke_witkey_basic_config` VALUES ('3', 'website_url', 'http://develop.kppw.cn/keke_kppw_demo', 'web', '0', '3');
INSERT INTO `keke_witkey_basic_config` VALUES ('4', 'install_path', '0', '0', '0', '4');
INSERT INTO `keke_witkey_basic_config` VALUES ('5', 'web_logo', 'tpl/default/img/brand-logo.png', 'web', '0', '5');
INSERT INTO `keke_witkey_basic_config` VALUES ('6', 'index_seo_title', '威客|系统—客客出品,专业威客建站系统开源平台', 'sys', '0', '6');
INSERT INTO `keke_witkey_basic_config` VALUES ('7', 'index_seo_keyword', '威客,客客,威客建站,威客系统,威客开源,威客平台,客客出品,开源平台,建站系统', 'sys', '0', '7');
INSERT INTO `keke_witkey_basic_config` VALUES ('8', 'index_seo_desc', '客客-专业威客建站系统，国内外最知名使用站长最多的威客系统，做威客平台，选威客系统，就选客客专业威客建站系统。', 'sys', '0', '8');
INSERT INTO `keke_witkey_basic_config` VALUES ('9', 'company', '武汉客客信息技术有限公司', 'web', '0', '9');
INSERT INTO `keke_witkey_basic_config` VALUES ('10', 'address', '湖北省武汉市1', 'web', '0', '10');
INSERT INTO `keke_witkey_basic_config` VALUES ('11', 'phone', '027-87733922', 'web', '0', '11');
INSERT INTO `keke_witkey_basic_config` VALUES ('12', 'kf_phone', '027-8866888,027-8845754,027-5478548,027-1245741,027-8475478,027-8956478,027-6201541,027-5412541', 'web', '0', '12');
INSERT INTO `keke_witkey_basic_config` VALUES ('13', 'postcode', '430001', 'web', '0', '13');
INSERT INTO `keke_witkey_basic_config` VALUES ('14', 'filing', '鄂B2-20080005', 'web', '0', '14');
INSERT INTO `keke_witkey_basic_config` VALUES ('15', 'is_close', '2', 'web', '0', '15');
INSERT INTO `keke_witkey_basic_config` VALUES ('16', 'close_reason', '网站正在升级维护中，预计于2012年12月21日开放，请耐心等待！期间您如果有任何疑问，请联系网站站长或者客服。', 'web', '0', '16');
INSERT INTO `keke_witkey_basic_config` VALUES ('17', 'stats_code', '', 'web', '0', '17');
INSERT INTO `keke_witkey_basic_config` VALUES ('18', 'max_size', '2', 'sys', '0', '18');
INSERT INTO `keke_witkey_basic_config` VALUES ('19', 'file_type', 'pdf|doc|docx|xls|ppt|wps|zip|rar|txt|jpg|jpeg|gif|bmp|swf|png|lsp|mp3', 'sys', '0', '19');
INSERT INTO `keke_witkey_basic_config` VALUES ('20', 'ban_users', 'admin|胡哥|亚麻跌|思密达', 'sys', '0', '20');
INSERT INTO `keke_witkey_basic_config` VALUES ('21', 'ban_content', '胡萝卜|太上黄|', 'sys', '0', '21');
INSERT INTO `keke_witkey_basic_config` VALUES ('22', 'reg_limit', '0', 'sys', '0', '22');
INSERT INTO `keke_witkey_basic_config` VALUES ('24', 'mail_server_cat', 'smtp', 'mail', '0', '24');
INSERT INTO `keke_witkey_basic_config` VALUES ('25', 'mail_server_port', '25', 'mail', '0', '25');
INSERT INTO `keke_witkey_basic_config` VALUES ('26', 'mail_ssl', '1', 'mail', '0', '26');
INSERT INTO `keke_witkey_basic_config` VALUES ('27', 'smtp_url', 'smtp.qq.com', 'mail', '0', '27');
INSERT INTO `keke_witkey_basic_config` VALUES ('28', 'post_account', '', 'mail', '0', '28');
INSERT INTO `keke_witkey_basic_config` VALUES ('29', 'account_pwd', '', 'mail', '0', '29');
INSERT INTO `keke_witkey_basic_config` VALUES ('30', 'mail_replay', '', 'mail', '0', '30');
INSERT INTO `keke_witkey_basic_config` VALUES ('31', 'mail_charset', 'utf-8', 'mail', '0', '31');
INSERT INTO `keke_witkey_basic_config` VALUES ('32', 'credit_is_allow', '2', 'sys', '0', '32');
INSERT INTO `keke_witkey_basic_config` VALUES ('33', 'user_intergration', '1', '0', '0', '33');
INSERT INTO `keke_witkey_basic_config` VALUES ('34', 'is_rewrite', '0', 'sys', '0', '34');
INSERT INTO `keke_witkey_basic_config` VALUES ('35', 'mark_start_status', '1', '0', '0', '35');
INSERT INTO `keke_witkey_basic_config` VALUES ('36', 'auto_mark_time', '3', '0', '0', '36');
INSERT INTO `keke_witkey_basic_config` VALUES ('37', 'auto_mark_status', '1', '0', '0', '37');
INSERT INTO `keke_witkey_basic_config` VALUES ('38', 'credit_rename', '元宝', 'sys', '0', '38');
INSERT INTO `keke_witkey_basic_config` VALUES ('39', 'exp_rename', '荣誉', '0', '0', '39');
INSERT INTO `keke_witkey_basic_config` VALUES ('44', 'qq_app_id', '', 'interface', 'QQ登入appid', '44');
INSERT INTO `keke_witkey_basic_config` VALUES ('45', 'qq_app_secret', '', 'interface', 'QQ登录appSecret', '45');
INSERT INTO `keke_witkey_basic_config` VALUES ('48', 'taobao_app_id', '', 'interface', '淘宝登入appid', '48');
INSERT INTO `keke_witkey_basic_config` VALUES ('49', 'taobao_app_secret', '', 'interface', '淘宝登入secret', '49');
INSERT INTO `keke_witkey_basic_config` VALUES ('50', 'allow_reg_action', '0', 'sys', '0', '50');
INSERT INTO `keke_witkey_basic_config` VALUES ('64', 'mobile_password', '', 'mobile', '0', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('63', 'mobile_username', '', 'mobile', '0', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('62', 'oauth_api_open', 'a:0:{}', 'oauth_api', '0', '62');
INSERT INTO `keke_witkey_basic_config` VALUES ('54', 'sina_app_id', '', 'weibo', '新浪登入appid', '54');
INSERT INTO `keke_witkey_basic_config` VALUES ('55', 'sina_app_secret', '', 'weibo', '新浪登入secret', '55');
INSERT INTO `keke_witkey_basic_config` VALUES ('58', 'netease_app_id', '', 'weibo', '网易登入appid', '58');
INSERT INTO `keke_witkey_basic_config` VALUES ('59', 'netease_app_secret', '', 'weibo', '网易登入secret', '59');
INSERT INTO `keke_witkey_basic_config` VALUES ('60', 'ten_app_id', '', 'weibo', '腾讯登入appid', '60');
INSERT INTO `keke_witkey_basic_config` VALUES ('61', 'ten_app_secret', '', 'weibo', '腾讯登入secret', '61');
INSERT INTO `keke_witkey_basic_config` VALUES ('65', 'alipay_app_id', '', 'interface', '支付宝登录app_id', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('66', 'alipay_app_secret', '', 'interface', '支付宝登录app_secret', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('78', 'attent_api_open', 'a:4:{s:11:\"sina_attent\";s:1:\"1\";s:10:\"ten_attent\";s:1:\"1\";s:14:\"netease_attent\";s:1:\"1\";s:11:\"sohu_attent\";s:1:\"1\";}', 'attent_api', '0', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('67', 'keke_id', 'dddddd', 'union', '联盟ID', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('68', 'keke_secret', 'fffffffff', 'union', '联盟通信key', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('69', 'copyright', '', '0', '网站版权', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('70', 'prom_open', '1', 'prom', '推广开关', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('71', 'prom_period', '30', 'prom', '推广有效期', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('74', 'sina_attent', '1881490142', 'attention', '新浪微博', '74');
INSERT INTO `keke_witkey_basic_config` VALUES ('75', 'ten_attent', 'shangjinglong', 'attention', '腾讯微博', '75');
INSERT INTO `keke_witkey_basic_config` VALUES ('76', 'netease_attent', '2746053225', 'attention', '网易微博', '76');
INSERT INTO `keke_witkey_basic_config` VALUES ('77', 'sohu_attent', 'naniso', 'attention', '搜狐微博', '77');
INSERT INTO `keke_witkey_basic_config` VALUES ('79', 'google_api', 'http://maps.google.com/maps/api/js?sensor=true', 'map', '谷歌地图', '79');
INSERT INTO `keke_witkey_basic_config` VALUES ('80', 'baidu_api', 'http://api.map.baidu.com/api?v=1.3', 'map', '百度地图', '80');
INSERT INTO `keke_witkey_basic_config` VALUES ('81', 'map_api_open', 'a:1:{s:9:\"baidu_api\";i:1;}', 'map_api', '0', '81');
INSERT INTO `keke_witkey_basic_config` VALUES ('82', 'info_static', 'article', 'static', '静态化配置', '82');
INSERT INTO `keke_witkey_basic_config` VALUES ('83', 'second_domain', '0', 'seo', '二级域名启用', '83');
INSERT INTO `keke_witkey_basic_config` VALUES ('84', 'top_domain', 't.com', 'seo', '顶级域名', '84');
INSERT INTO `keke_witkey_basic_config` VALUES ('85', 'currency', 'CNY', 'curr', '默认币种', '85');
INSERT INTO `keke_witkey_basic_config` VALUES ('86', 'set_index', 'index', 'nav', '后台导航里面设置首页', '86');
INSERT INTO `keke_witkey_basic_config` VALUES ('87', 'mobile_version', '1.0', 'sys', '升级了', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('88', 'apk_url', null, 'sys', null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('89', 'lang', 'cn', 'sys', '默认语言', '89');
INSERT INTO `keke_witkey_basic_config` VALUES ('90', 'renren_app_id', '', 'weibo', '人人登入appid', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('91', 'renren_app_secret', '', 'weibo', '人人登入secret', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('92', 'douban_app_id', '', 'weibo', '豆瓣登入appid', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('93', 'douban_app_secret', '', 'weibo', '豆瓣登入secret', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('94', 'task_seo_title', '任务大厅—{地区}{行业}{子行业}客客专业威客建站系统', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('95', 'task_seo_keyword', '客客,任务大厅,任务模式,任务状态', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('96', 'task_seo_desc', '客客-专业威客建站系统，任务大厅版块，任务模式，任务状态，任务展示的平台。国内外最知名使用站长最多的威客系统，做威客平台，选威客系统，就选客客专业威客建站系统', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('97', 'goods_seo_title', '威客商城—{地区}{行业}{子行业}客客专业威客建站系统', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('98', 'goods_seo_keyword', '威客商城,威客超市', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('99', 'goods_seo_desc', '客客-专业威客建站系统，威客商城版块，国内外最知名使用站长最多的威客系统，做威客平台，选威客系统，就选客客专业威客建站系统。', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('100', 'seller_seo_title', '服务商—{地区}客客专业威客建站系统', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('101', 'seller_seo_keyword', '服务商,威客服务商,服务商列表', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('102', 'seller_seo_desc', '客客-专业威客建站系统，服务商版块，国内外最知名使用站长最多的威客系统，做威客平台，选威客系统，就选客客专业威客建站系统。', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('103', 'case_seo_title', '成功案例—{案例类型}客客专业威客建站系统', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('104', 'case_seo_keyword', '成功案例,威客案例,案例展示', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('105', 'case_seo_desc', '客客-专业威客建站系统，成功案例版块，国内外最知名使用站长最多的威客系统，做威客平台，选威客系统，就选客客专业威客建站系统。', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('106', 'article_seo_title', '资讯中心—{资讯分类}客客专业威客建站系统', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('107', 'article_seo_keyword', '资讯中心,行业动态,媒体报导,网站公告,政策法规,安全交易，新闻列表', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('108', 'article_seo_desc', '客客-专业威客建站系统，资讯中心版块，国内外最知名使用站长最多的威客系统，做威客平台，选威客系统，就选客客专业威客建站系统。', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('109', 'sitecss', 'css', 'sys', '网站基本色调', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('110', 'theme', '', 'sys', '首页启用主题', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('112', 'baidu_app_secret', '', 'interface', '百度secret', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('111', 'baidu_app_id', '', 'interface', '百度appid', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('113', 'rss_choice_task', '1', 'rss', 'RSS选择内容任务', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('114', 'rss_choice_news', '1', 'rss', 'RSS选择内容新闻', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('115', 'rss_title', 'KPPW系统RSS标题', 'rss', 'RSS标题', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('116', 'rss_content', 'gsdfgsfdgsdfgfd', 'rss', 'RSS描述', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('117', 'hot_words_status', 'open', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('118', 'update_status', 'handle', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('121', 'baidu_app_id', '', 'weibo', '百度appid', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('119', 'sms_interface', 'close', null, '短信接口开关', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('120', 'css_auto_fit', '0', null, 'css自适应', null);
INSERT INTO `keke_witkey_basic_config` VALUES ('122', 'baidu_app_secret', '', 'weibo', '百度secret', '0');
INSERT INTO `keke_witkey_basic_config` VALUES ('125', 'region_search_task', '0', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('126', 'region_search_switch', '1', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('127', 'region_search_shop', '1', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('128', 'autoshop', '1', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('129', 'kee_api_id', '', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('130', 'kee_app_secret', '', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('131', 'kee_switch', '1', null, null, null);
INSERT INTO `keke_witkey_basic_config` VALUES ('132', 'watermark', 'a:4:{s:6:\"switch\";s:1:\"0\";s:5:\"hight\";s:3:\"300\";s:5:\"width\";s:3:\"400\";s:3:\"img\";s:30:\"tpl/default/img/brand-logo.png\";}', '', '水印图片', null);

-- ----------------------------
-- Table structure for keke_witkey_case
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_case`;
CREATE TABLE `keke_witkey_case` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '案例编号',
  `obj_id` int(11) DEFAULT NULL COMMENT '案例对象编号',
  `obj_type` varchar(20) DEFAULT NULL COMMENT '案例对象type',
  `case_img` varchar(150) DEFAULT NULL COMMENT '案例图片',
  `case_title` varchar(50) DEFAULT NULL COMMENT '案例标题',
  `case_desc` varchar(500) DEFAULT NULL COMMENT '案例描述',
  `case_price` decimal(10,2) DEFAULT '0.00' COMMENT '案例金额',
  `case_auther` varchar(20) DEFAULT NULL COMMENT '操作者',
  `on_time` int(11) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`case_id`),
  KEY `case_id` (`case_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_case
-- ----------------------------
INSERT INTO `keke_witkey_case` VALUES ('1', '1', 'task', 'data/uploads/2015/06/10/7144784175577f36c83a30.jpg', '婚纱摄影网站，有原型，有HTML，套后台', '', '2000.00', null, '1433924464');
INSERT INTO `keke_witkey_case` VALUES ('2', '11', 'task', 'data/uploads/2015/06/10/1058586335577f63eb5d75.png', '5000元开发微信大屏系统', '', '100.00', null, '1433925188');
INSERT INTO `keke_witkey_case` VALUES ('3', '13', 'task', 'data/uploads/2015/06/10/12644466465577f6b365c7f.jpg', '模仿国外网站 建立服装推广网站', '', '200.00', null, '1433925305');
INSERT INTO `keke_witkey_case` VALUES ('4', '26', 'task', 'data/uploads/2015/06/10/9878463965577f6e77f7a1.jpg', '一张web登陆页面和两张APP登陆页面', '', '100.00', null, '1433925356');
INSERT INTO `keke_witkey_case` VALUES ('5', '1', 'service', 'data/uploads/2015/06/10/839914125577fa0fe3927.jpg', '购物网站开发', '', '100.00', null, '1433926164');
INSERT INTO `keke_witkey_case` VALUES ('6', '2', 'service', 'data/uploads/2015/06/10/15685494805577fa91e68af.jpg', '卡拉贴膜画册', '', '200.00', null, '1433926296');
INSERT INTO `keke_witkey_case` VALUES ('7', '5', 'service', 'data/uploads/2015/06/10/5335793295577fade96941.jpg', '“皮兜兜儿”淘宝店LOGO', '', '1500.00', null, '1433926373');
INSERT INTO `keke_witkey_case` VALUES ('8', '4', 'service', 'data/uploads/2015/06/10/16523432145577fb49eba1a.jpg', '网页设计——招标书设计', '', '2000.00', null, '1433926482');
INSERT INTO `keke_witkey_case` VALUES ('9', '3', 'service', 'data/uploads/2015/06/10/16951092335577fbd7f2d75.jpg', '定制整体衣柜，橱柜，移门。宣传画册', '', '200.00', null, '1433926637');
INSERT INTO `keke_witkey_case` VALUES ('10', '6', 'service', 'data/uploads/2015/06/10/18231356845577fc426e524.png', '河北富德克LOGO、名片设计、英文名称', '', '2500.00', null, '1433926729');
INSERT INTO `keke_witkey_case` VALUES ('11', '8', 'service', 'data/uploads/2015/06/10/16262276145577fca8b65c2.png', 'YY封包程序开发', '', '1900.00', null, '1433926830');
INSERT INTO `keke_witkey_case` VALUES ('12', '10', 'service', 'data/uploads/2015/06/10/15021041275577fd1901584.jpg', '微信开发技术支持', '', '9000.00', null, '1433926940');

-- ----------------------------
-- Table structure for keke_witkey_comment
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_comment`;
CREATE TABLE `keke_witkey_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `obj_id` int(11) DEFAULT '0' COMMENT '对象编号',
  `origin_id` int(11) DEFAULT '0' COMMENT '源编号',
  `obj_type` char(20) DEFAULT NULL COMMENT '''评论类型''(task=>任务交流,Work=>稿件评论,Kf=>客服留言 ,Shop=>网店评论,Case=>案例留言 ,Service=>服务留言)',
  `p_id` int(11) DEFAULT '0' COMMENT '父编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `content` text COMMENT '评论内容',
  `on_time` int(11) DEFAULT '0' COMMENT '评论时间',
  `status` int(11) DEFAULT '0' COMMENT '评论状态',
  PRIMARY KEY (`comment_id`),
  KEY `index_1` (`comment_id`),
  KEY `index_2` (`obj_id`),
  KEY `index_3` (`p_id`),
  KEY `index_4` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_comment
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_currencies
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_currencies`;
CREATE TABLE `keke_witkey_currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '货币编号',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `code` char(3) NOT NULL DEFAULT '' COMMENT '货币简称',
  `symbol_left` varchar(24) DEFAULT NULL COMMENT '符号左',
  `symbol_right` varchar(24) DEFAULT NULL COMMENT '符号右',
  `decimal_point` char(1) DEFAULT NULL COMMENT '小数点',
  `thousands_point` char(1) DEFAULT NULL COMMENT '千数点',
  `decimal_places` char(1) DEFAULT NULL COMMENT '小数点位数',
  `value` float(13,8) DEFAULT NULL COMMENT '货币汇率',
  `last_updated` int(11) DEFAULT NULL COMMENT '最近更新',
  PRIMARY KEY (`currencies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of keke_witkey_currencies
-- ----------------------------
INSERT INTO `keke_witkey_currencies` VALUES ('1', 'US Dollar', 'USD', '$', '', '.', ',', '2', '0.15744600', '1346410909');
INSERT INTO `keke_witkey_currencies` VALUES ('2', '人民币', 'CNY', '￥', '元', '.', ',', '2', '1.00000000', '1347246785');
INSERT INTO `keke_witkey_currencies` VALUES ('3', 'Euro', 'EUR', '', '', '.', ',', '2', '0.12568532', '1346397242');
INSERT INTO `keke_witkey_currencies` VALUES ('4', 'GB Pound', 'GBP', '&#163;', '', '.', ',', '2', '0.09942911', '1346397091');
INSERT INTO `keke_witkey_currencies` VALUES ('5', 'Canadian Dollar', 'CAD', '$', '', '.', ',', '2', '0.15563595', '1346294682');
INSERT INTO `keke_witkey_currencies` VALUES ('6', 'Australian Dollar', 'AUD', '$', '', '.', ',', '2', '0.15194558', '1346319601');
INSERT INTO `keke_witkey_currencies` VALUES ('7', '港币', 'HKD', '$', '港元', '.', ',', '2', '1.22107005', '1346320221');
INSERT INTO `keke_witkey_currencies` VALUES ('8', '韩元', 'KRW', '#', '*', '.', ',', '2', '178.71282959', '1347246352');
INSERT INTO `keke_witkey_currencies` VALUES ('14', '卢布', 'RUB', 'РУб', '卢布', '.', ',', '4', '4.96759844', '1348709431');

-- ----------------------------
-- Table structure for keke_witkey_custom_fields
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_custom_fields`;
CREATE TABLE `keke_witkey_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL COMMENT '字段名称',
  `f_code` varchar(255) DEFAULT NULL COMMENT '字段code',
  `f_type` varchar(255) DEFAULT NULL COMMENT '字段类型',
  `f_length` int(11) DEFAULT '0' COMMENT '长度',
  `f_decimal_length` int(11) DEFAULT '0' COMMENT '小数',
  `f_required` tinyint(4) DEFAULT '0' COMMENT '必填   1必填',
  `f_tips` varchar(255) DEFAULT NULL COMMENT '字段提示',
  `f_min_len` int(11) DEFAULT '0' COMMENT '输入最小长度限制',
  `f_fixed_len` int(11) DEFAULT NULL,
  `f_max_len` int(11) DEFAULT NULL COMMENT '输入长度最长限制',
  `f_warning` varchar(255) DEFAULT NULL COMMENT '错误提示',
  `f_regex` varchar(255) DEFAULT NULL COMMENT '正则校验',
  `model_id` tinyint(255) DEFAULT '0' COMMENT '字段所属对象模型  ',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_custom_fields
-- ----------------------------
INSERT INTO `keke_witkey_custom_fields` VALUES ('1', '商品类型', 'service_ext_1', 'varchar', '0', '0', '0', '', '0', null, null, '', '', '6', '0');

-- ----------------------------
-- Table structure for keke_witkey_custom_fields_ext
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_custom_fields_ext`;
CREATE TABLE `keke_witkey_custom_fields_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `model_id` tinyint(255) DEFAULT '0' COMMENT '字段所属对象模型  ',
  `extdata` text COMMENT '扩展数据',
  `objid` int(11) DEFAULT NULL COMMENT '服务编号/任务编号',
  `c_id` int(11) DEFAULT NULL COMMENT 'keke_witkey_custom_fields表的主键ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_custom_fields_ext
-- ----------------------------
INSERT INTO `keke_witkey_custom_fields_ext` VALUES ('1', '6', 'a:1:{s:13:\"service_ext_1\";a:2:{s:9:\"fieldname\";s:12:\"商品类型\";s:7:\"content\";s:9:\"文字吗\";}}', '17', '1');

-- ----------------------------
-- Table structure for keke_witkey_district
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_district`;
CREATE TABLE `keke_witkey_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `upid` int(11) NOT NULL COMMENT '上级id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `type` int(11) NOT NULL COMMENT '类型',
  `displayorder` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `upid` (`upid`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `displayorder` (`displayorder`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=45052 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_district
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_email
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_email`;
CREATE TABLE `keke_witkey_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '邮箱编号',
  `email_name` varchar(255) DEFAULT NULL COMMENT '邮箱名称',
  `email_address` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `email_type` varchar(255) DEFAULT NULL COMMENT '邮箱格式',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_email
-- ----------------------------
INSERT INTO `keke_witkey_email` VALUES ('1', '网易', 'mail.163.com', '@163.com');
INSERT INTO `keke_witkey_email` VALUES ('2', '网易', 'www.126.com', '@126.com');
INSERT INTO `keke_witkey_email` VALUES ('3', '新浪', 'mail.sina.com.cn', '@sina.com');
INSERT INTO `keke_witkey_email` VALUES ('4', '搜狐', 'mail.sohu.com', '@sohu.com');
INSERT INTO `keke_witkey_email` VALUES ('5', '网易', 'mail.yeah.net', '@yeah.net');
INSERT INTO `keke_witkey_email` VALUES ('6', '移动', 'mail.139.com', '@139.com');
INSERT INTO `keke_witkey_email` VALUES ('7', '21cn', 'mail.21cn.com', '@21cn.com');
INSERT INTO `keke_witkey_email` VALUES ('8', '微软', 'mail.live.com', '@hotmail.com');
INSERT INTO `keke_witkey_email` VALUES ('9', '谷歌', 'www.gmail.com', '@gmail.com');
INSERT INTO `keke_witkey_email` VALUES ('10', '电信', 'mail.189.cn', '@189..cn');
INSERT INTO `keke_witkey_email` VALUES ('11', '阿里云邮', 'mail.aliyun.com', '@aliyun.com');
INSERT INTO `keke_witkey_email` VALUES ('12', '腾讯', 'mail.qq.com', '@qq.com');

-- ----------------------------
-- Table structure for keke_witkey_favorite
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_favorite`;
CREATE TABLE `keke_witkey_favorite` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏编号',
  `keep_type` char(20) DEFAULT NULL COMMENT '收藏对象',
  `obj_type` char(20) DEFAULT NULL COMMENT '对象类型',
  `origin_id` int(11) DEFAULT NULL COMMENT '源对象编号',
  `obj_id` int(11) DEFAULT NULL COMMENT '对象编号',
  `obj_name` varchar(100) DEFAULT NULL COMMENT '对象名称',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `on_date` int(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`f_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_feed
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_feed`;
CREATE TABLE `keke_witkey_feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '事件编号',
  `obj_id` int(11) DEFAULT '0' COMMENT '对象编号',
  `obj_link` varchar(100) DEFAULT NULL COMMENT '对象链接',
  `feedtype` varchar(20) DEFAULT NULL COMMENT '事件类型''(pub_task=>发布任务,pub_work=>参与了任务,task_pay =>支付任务费用,task_prom=>通过推广任务,vip =>升级vip,withdraw =>提现,work_accept=>投稿件,work_delay=>任务延期,add_service =>发布服务)',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `icon` char(10) DEFAULT '0' COMMENT '事件icon图标',
  `title` text COMMENT '事件标题',
  `feed_desc` text COMMENT '事件描述',
  `feed_pic` varchar(100) DEFAULT NULL COMMENT '事件图片',
  `feed_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `ext_data` text COMMENT '扩展数据',
  PRIMARY KEY (`feed_id`),
  KEY `index_2` (`obj_id`),
  KEY `index_3` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_feed
-- ----------------------------
INSERT INTO `keke_witkey_feed` VALUES ('1', '1', '', 'pub_task', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:52:\"婚纱摄影网站，有原型，有HTML，套后台\";s:3:\"url\";s:22:\"index.php?do=task&id=1\";s:4:\"cash\";s:7:\"2000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433904387', null);
INSERT INTO `keke_witkey_feed` VALUES ('2', '2', '', 'pub_task', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:46:\"destoon程序做的网站，解决占用CPU高\";s:3:\"url\";s:22:\"index.php?do=task&id=2\";s:4:\"cash\";s:7:\"3000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433904725', null);
INSERT INTO `keke_witkey_feed` VALUES ('3', '3', '', 'pub_task', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:41:\"仿快播 Windows客户端、服务器端\";s:3:\"url\";s:22:\"index.php?do=task&id=3\";s:4:\"cash\";s:7:\"6000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433904802', null);
INSERT INTO `keke_witkey_feed` VALUES ('4', '4', '', 'pub_task', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:51:\"设计一个支付（POS机公司）公司的网站\";s:3:\"url\";s:22:\"index.php?do=task&id=4\";s:4:\"cash\";s:7:\"1000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433904952', null);
INSERT INTO `keke_witkey_feed` VALUES ('5', '5', '', 'pub_task', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:57:\"需要通过货运单号采集当月客户信息的软件\";s:3:\"url\";s:22:\"index.php?do=task&id=5\";s:4:\"cash\";s:7:\"5000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433905074', null);
INSERT INTO `keke_witkey_feed` VALUES ('6', '6', '', 'pub_task', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:42:\"网站升级加微网站手机应用开发\";s:3:\"url\";s:22:\"index.php?do=task&id=6\";s:4:\"cash\";s:8:\"30000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433905244', null);
INSERT INTO `keke_witkey_feed` VALUES ('7', '7', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:24:\"类似奇幻咔咔的APP\";s:3:\"url\";s:22:\"index.php?do=task&id=7\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433905414', null);
INSERT INTO `keke_witkey_feed` VALUES ('8', '8', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:42:\"耳机行业互联网商业计划书撰写\";s:3:\"url\";s:22:\"index.php?do=task&id=8\";s:4:\"cash\";s:7:\"5000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433905551', null);
INSERT INTO `keke_witkey_feed` VALUES ('9', '9', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:54:\"做一个运动场地在线发布和预定的b2c平台\";s:3:\"url\";s:22:\"index.php?do=task&id=9\";s:4:\"cash\";s:8:\"30000.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433905748', null);
INSERT INTO `keke_witkey_feed` VALUES ('10', '10', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:43:\"体育用品公司LOGO设计，名片设计\";s:3:\"url\";s:23:\"index.php?do=task&id=10\";s:4:\"cash\";s:7:\"5000.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433905897', null);
INSERT INTO `keke_witkey_feed` VALUES ('11', '11', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:31:\"5000元开发微信大屏系统\";s:3:\"url\";s:23:\"index.php?do=task&id=11\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433905935', null);
INSERT INTO `keke_witkey_feed` VALUES ('12', '13', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1433906069', null);
INSERT INTO `keke_witkey_feed` VALUES ('13', '12', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:28:\"辣PLUS麻辣小龙虾文案\";s:3:\"url\";s:23:\"index.php?do=task&id=12\";s:4:\"cash\";s:6:\"600.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433906109', null);
INSERT INTO `keke_witkey_feed` VALUES ('14', '15', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:25:\"蜂花恋品牌LOGO设计\";s:3:\"url\";s:23:\"index.php?do=task&id=15\";s:4:\"cash\";s:7:\"1000.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433906233', null);
INSERT INTO `keke_witkey_feed` VALUES ('15', '17', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:33:\"一品威客官网App名称征集\";s:3:\"url\";s:23:\"index.php?do=task&id=17\";s:4:\"cash\";s:7:\"1200.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433906373', null);
INSERT INTO `keke_witkey_feed` VALUES ('16', '16', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:35:\"律师事务所LOGO设计Logo设计\";s:3:\"url\";s:23:\"index.php?do=task&id=16\";s:4:\"cash\";s:2:\"41\";s:8:\"model_id\";s:1:\"5\";}}', null, null, '1433906381', null);
INSERT INTO `keke_witkey_feed` VALUES ('17', '14', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:52:\"根据店名“木头和马尾”设计LOGO和推广\";s:3:\"url\";s:23:\"index.php?do=task&id=14\";s:4:\"cash\";s:2:\"34\";s:8:\"model_id\";s:1:\"4\";}}', null, null, '1433906384', null);
INSERT INTO `keke_witkey_feed` VALUES ('18', '18', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:40:\"PHP网站修改.产品搜索功能修改\";s:3:\"url\";s:23:\"index.php?do=task&id=18\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433906534', null);
INSERT INTO `keke_witkey_feed` VALUES ('19', '19', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:26:\"钻达集团VI手册设计\";s:3:\"url\";s:23:\"index.php?do=task&id=19\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433906604', null);
INSERT INTO `keke_witkey_feed` VALUES ('20', '20', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:84:\"新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下\";s:3:\"url\";s:23:\"index.php?do=task&id=20\";s:4:\"cash\";s:2:\"34\";s:8:\"model_id\";s:1:\"4\";}}', null, null, '1433906692', null);
INSERT INTO `keke_witkey_feed` VALUES ('21', '22', '', 'pub_task', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:19:\"微拍贷logo设计\";s:3:\"url\";s:23:\"index.php?do=task&id=22\";s:4:\"cash\";s:7:\"2000.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433906818', null);
INSERT INTO `keke_witkey_feed` VALUES ('22', '2', '', 'pub_service', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"卡拉贴膜画册\";s:3:\"url\";s:23:\"index.php?do=goods&id=2\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433908495', null);
INSERT INTO `keke_witkey_feed` VALUES ('23', '1', '', 'pub_service', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"购物网站开发\";s:3:\"url\";s:23:\"index.php?do=goods&id=1\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433908498', null);
INSERT INTO `keke_witkey_feed` VALUES ('24', '3', '', 'pub_service', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布服务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:51:\"定制整体衣柜，橱柜，移门。宣传画册\";s:3:\"url\";s:23:\"index.php?do=goods&id=3\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"7\";}}', null, null, '1433908502', null);
INSERT INTO `keke_witkey_feed` VALUES ('25', '24', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:24:\"大学毕业论文求稿\";s:3:\"url\";s:23:\"index.php?do=task&id=24\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433915760', null);
INSERT INTO `keke_witkey_feed` VALUES ('26', '25', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:36:\"小型电商网站建设可用模板\";s:3:\"url\";s:23:\"index.php?do=task&id=25\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433915978', null);
INSERT INTO `keke_witkey_feed` VALUES ('27', '26', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1433916232', null);
INSERT INTO `keke_witkey_feed` VALUES ('28', '5', '', 'pub_service', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:31:\"“皮兜兜儿”淘宝店LOGO\";s:3:\"url\";s:23:\"index.php?do=goods&id=5\";s:4:\"cash\";s:7:\"1500.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433916426', null);
INSERT INTO `keke_witkey_feed` VALUES ('29', '6', '', 'pub_service', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布服务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:49:\"河北富德克LOGO、名片设计、英文名称\";s:3:\"url\";s:23:\"index.php?do=goods&id=6\";s:4:\"cash\";s:7:\"2500.00\";s:8:\"model_id\";s:1:\"7\";}}', null, null, '1433916432', null);
INSERT INTO `keke_witkey_feed` VALUES ('30', '4', '', 'pub_service', '4', 'dabomei', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:7:\"dabomei\";s:3:\"url\";s:24:\"index.php?do=seller&id=4\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布服务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:33:\"网页设计——招标书设计\";s:3:\"url\";s:23:\"index.php?do=goods&id=4\";s:4:\"cash\";s:7:\"2000.00\";s:8:\"model_id\";s:1:\"7\";}}', null, null, '1433916437', null);
INSERT INTO `keke_witkey_feed` VALUES ('31', '1', '', 'task_tur', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"3\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:52:\"婚纱摄影网站，有原型，有HTML，套后台\";s:3:\"url\";s:22:\"index.php?do=task&id=1\";}}', null, null, '1433916910', null);
INSERT INTO `keke_witkey_feed` VALUES ('32', '1', '', 'task_tur_bei', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:52:\"婚纱摄影网站，有原型，有HTML，套后台\";s:3:\"url\";s:22:\"index.php?do=task&id=1\";}}', null, null, '1433916910', null);
INSERT INTO `keke_witkey_feed` VALUES ('33', '2', '', 'task_tur', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"3\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:46:\"destoon程序做的网站，解决占用CPU高\";s:3:\"url\";s:22:\"index.php?do=task&id=2\";}}', null, null, '1433917067', null);
INSERT INTO `keke_witkey_feed` VALUES ('34', '2', '', 'task_tur_bei', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:46:\"destoon程序做的网站，解决占用CPU高\";s:3:\"url\";s:22:\"index.php?do=task&id=2\";}}', null, null, '1433917067', null);
INSERT INTO `keke_witkey_feed` VALUES ('35', '8', '', 'pub_service', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:20:\"YY封包程序开发\";s:3:\"url\";s:23:\"index.php?do=goods&id=8\";s:4:\"cash\";s:7:\"1900.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433917252', null);
INSERT INTO `keke_witkey_feed` VALUES ('36', '7', '', 'pub_service', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布服务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:12:\"网站美化\";s:3:\"url\";s:23:\"index.php?do=goods&id=7\";s:4:\"cash\";s:7:\"1800.00\";s:8:\"model_id\";s:1:\"7\";}}', null, null, '1433917258', null);
INSERT INTO `keke_witkey_feed` VALUES ('37', '1', '', 'work_accept', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"3\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:52:\"婚纱摄影网站，有原型，有HTML，套后台\";s:3:\"url\";s:22:\"index.php?do=task&id=1\";s:4:\"cash\";s:7:\"1800.00\";}}', null, null, '1433917332', null);
INSERT INTO `keke_witkey_feed` VALUES ('38', '13', '', 'task_tur', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"2\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";}}', null, null, '1433917425', null);
INSERT INTO `keke_witkey_feed` VALUES ('39', '13', '', 'task_tur_bei', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";}}', null, null, '1433917425', null);
INSERT INTO `keke_witkey_feed` VALUES ('40', '13', '', 'work_accept', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";s:4:\"cash\";s:5:\"90.00\";}}', null, null, '1433917448', null);
INSERT INTO `keke_witkey_feed` VALUES ('41', '13', '', 'task_tur', '6', '兰陵王', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"6\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";}}', null, null, '1433917484', null);
INSERT INTO `keke_witkey_feed` VALUES ('42', '13', '', 'task_tur_bei', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"兰陵王\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";}}', null, null, '1433917484', null);
INSERT INTO `keke_witkey_feed` VALUES ('43', '13', '', 'work_accept', '6', '兰陵王', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"兰陵王\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:43:\"模仿国外网站 建立服装推广网站\";s:3:\"url\";s:23:\"index.php?do=task&id=13\";s:4:\"cash\";s:5:\"90.00\";}}', null, null, '1433917494', null);
INSERT INTO `keke_witkey_feed` VALUES ('44', '10', '', 'pub_service', '7', '大姨父丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"大姨父丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=7\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:24:\"微信开发技术支持\";s:3:\"url\";s:24:\"index.php?do=goods&id=10\";s:4:\"cash\";s:7:\"9000.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433917579', null);
INSERT INTO `keke_witkey_feed` VALUES ('45', '9', '', 'pub_service', '8', '京巴丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"京巴丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=8\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布服务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:24:\"网站会员软件开发\";s:3:\"url\";s:23:\"index.php?do=goods&id=9\";s:4:\"cash\";s:7:\"2800.00\";s:8:\"model_id\";s:1:\"7\";}}', null, null, '1433917584', null);
INSERT INTO `keke_witkey_feed` VALUES ('46', '11', '', 'pub_service', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:45:\"基于weiphp平台名片插件，开发wap站\";s:3:\"url\";s:24:\"index.php?do=goods&id=11\";s:4:\"cash\";s:7:\"8000.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433917681', null);
INSERT INTO `keke_witkey_feed` VALUES ('47', '11', '', 'task_tur', '9', '赵默笙', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"9\";s:3:\"url\";s:24:\"index.php?do=seller&id=9\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:31:\"5000元开发微信大屏系统\";s:3:\"url\";s:23:\"index.php?do=task&id=11\";}}', null, null, '1433918339', null);
INSERT INTO `keke_witkey_feed` VALUES ('48', '11', '', 'task_tur_bei', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"赵默笙\";s:3:\"url\";s:24:\"index.php?do=seller&id=9\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:31:\"5000元开发微信大屏系统\";s:3:\"url\";s:23:\"index.php?do=task&id=11\";}}', null, null, '1433918339', null);
INSERT INTO `keke_witkey_feed` VALUES ('49', '11', '', 'work_accept', '9', '赵默笙', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"赵默笙\";s:3:\"url\";s:24:\"index.php?do=seller&id=9\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:32:\"5000元开发微信大屏系统 \";s:3:\"url\";s:23:\"index.php?do=task&id=11\";s:4:\"cash\";s:5:\"80.00\";}}', null, null, '1433918419', null);
INSERT INTO `keke_witkey_feed` VALUES ('50', '26', '', 'task_tur', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"5\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";}}', null, null, '1433918872', null);
INSERT INTO `keke_witkey_feed` VALUES ('51', '26', '', 'task_tur_bei', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";}}', null, null, '1433918872', null);
INSERT INTO `keke_witkey_feed` VALUES ('52', '26', '', 'work_accept', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";s:4:\"cash\";s:5:\"45.00\";}}', null, null, '1433918889', null);
INSERT INTO `keke_witkey_feed` VALUES ('53', '26', '', 'task_tur', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"5\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";}}', null, null, '1433919167', null);
INSERT INTO `keke_witkey_feed` VALUES ('54', '26', '', 'task_tur_bei', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";}}', null, null, '1433919167', null);
INSERT INTO `keke_witkey_feed` VALUES ('55', '26', '', 'work_accept', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:45:\"一张web登陆页面和两张APP登陆页面\";s:3:\"url\";s:23:\"index.php?do=task&id=26\";s:4:\"cash\";s:5:\"45.00\";}}', null, null, '1433919215', null);
INSERT INTO `keke_witkey_feed` VALUES ('56', '27', '', 'pub_task', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:40:\"提供美丽说或者蘑菇街API 开发\";s:3:\"url\";s:23:\"index.php?do=task&id=27\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1433919355', null);
INSERT INTO `keke_witkey_feed` VALUES ('57', '28', '', 'pub_task', '5', '骑姐丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"骑姐丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=5\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:66:\"结合开源客户端openfire，修改一个开源xmpp服务器端\";s:3:\"url\";s:23:\"index.php?do=task&id=28\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1433919432', null);
INSERT INTO `keke_witkey_feed` VALUES ('58', '12', '', 'pub_service', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:27:\"软件开发，功能开发\";s:3:\"url\";s:24:\"index.php?do=goods&id=12\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1433920481', null);
INSERT INTO `keke_witkey_feed` VALUES ('59', '29', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:15:\"投票大调查\";s:3:\"url\";s:23:\"index.php?do=task&id=29\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"2\";}}', null, null, '1433922434', null);
INSERT INTO `keke_witkey_feed` VALUES ('60', '30', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:15:\"市场大调查\";s:3:\"url\";s:23:\"index.php?do=task&id=30\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433923098', null);
INSERT INTO `keke_witkey_feed` VALUES ('61', '31', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"动漫设计大赛\";s:3:\"url\";s:23:\"index.php?do=task&id=31\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1433929183', null);
INSERT INTO `keke_witkey_feed` VALUES ('62', '32', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1433935047', null);
INSERT INTO `keke_witkey_feed` VALUES ('63', '32', '', 'task_tur', '6', '兰陵王', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"6\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";}}', null, null, '1433935307', null);
INSERT INTO `keke_witkey_feed` VALUES ('64', '32', '', 'task_tur_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"兰陵王\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";}}', null, null, '1433935307', null);
INSERT INTO `keke_witkey_feed` VALUES ('65', '32', '', 'work_accept', '6', '兰陵王', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"兰陵王\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";s:4:\"cash\";s:5:\"45.00\";}}', null, null, '1433935444', null);
INSERT INTO `keke_witkey_feed` VALUES ('66', '32', '', 'task_tur', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"3\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";}}', null, null, '1433935665', null);
INSERT INTO `keke_witkey_feed` VALUES ('67', '32', '', 'task_tur_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";}}', null, null, '1433935665', null);
INSERT INTO `keke_witkey_feed` VALUES ('68', '32', '', 'work_accept', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:18:\"软件应用开发\";s:3:\"url\";s:23:\"index.php?do=task&id=32\";s:4:\"cash\";s:5:\"45.00\";}}', null, null, '1433935728', null);
INSERT INTO `keke_witkey_feed` VALUES ('69', '16', '', 'pub_service', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布服务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:24:\"专门编写爱情表白\";s:3:\"url\";s:24:\"index.php?do=goods&id=16\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"7\";}}', null, null, '1433986821', null);
INSERT INTO `keke_witkey_feed` VALUES ('70', '5', '', 'task_tur', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"1\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:57:\"需要通过货运单号采集当月客户信息的软件\";s:3:\"url\";s:22:\"index.php?do=task&id=5\";}}', null, null, '1433991783', null);
INSERT INTO `keke_witkey_feed` VALUES ('71', '5', '', 'task_tur_bei', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:57:\"需要通过货运单号采集当月客户信息的软件\";s:3:\"url\";s:22:\"index.php?do=task&id=5\";}}', null, null, '1433991783', null);
INSERT INTO `keke_witkey_feed` VALUES ('72', '33', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:27:\"节能灯宣传软文撰写\";s:3:\"url\";s:23:\"index.php?do=task&id=33\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1434005090', null);
INSERT INTO `keke_witkey_feed` VALUES ('73', '33', '', 'task_tur', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"2\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:27:\"节能灯宣传软文撰写\";s:3:\"url\";s:23:\"index.php?do=task&id=33\";}}', null, null, '1434005329', null);
INSERT INTO `keke_witkey_feed` VALUES ('74', '33', '', 'task_tur_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:27:\"节能灯宣传软文撰写\";s:3:\"url\";s:23:\"index.php?do=task&id=33\";}}', null, null, '1434005329', null);
INSERT INTO `keke_witkey_feed` VALUES ('75', '17', '', 'pub_service', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"给宝宝起名字\";s:3:\"url\";s:24:\"index.php?do=goods&id=17\";s:4:\"cash\";s:6:\"200.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1434006425', null);
INSERT INTO `keke_witkey_feed` VALUES ('76', '14', '', 'pub_service', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:53:\"设计模板000033336666电风扇方法22爱的方式\";s:3:\"url\";s:24:\"index.php?do=goods&id=14\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1434006430', null);
INSERT INTO `keke_witkey_feed` VALUES ('77', '15', '', 'pub_service', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布作品\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:33:\"照片美化编辑的技术指导\";s:3:\"url\";s:24:\"index.php?do=goods&id=15\";s:4:\"cash\";s:6:\"120.00\";s:8:\"model_id\";s:1:\"6\";}}', null, null, '1434006434', null);
INSERT INTO `keke_witkey_feed` VALUES ('78', '34', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:17:\"网站开发flash\";s:3:\"url\";s:23:\"index.php?do=task&id=34\";s:4:\"cash\";s:2:\"49\";s:8:\"model_id\";s:2:\"12\";}}', null, null, '1434010117', null);
INSERT INTO `keke_witkey_feed` VALUES ('79', '35', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:24:\"数码摄影定金任务\";s:3:\"url\";s:23:\"index.php?do=task&id=35\";s:4:\"cash\";s:2:\"29\";s:8:\"model_id\";s:1:\"5\";}}', null, null, '1434012049', null);
INSERT INTO `keke_witkey_feed` VALUES ('80', '23', '', 'pub_task', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:36:\"昂华公司跟单软件界面设计\";s:3:\"url\";s:23:\"index.php?do=task&id=23\";s:4:\"cash\";s:2:\"29\";s:8:\"model_id\";s:1:\"5\";}}', null, null, '1434012054', null);
INSERT INTO `keke_witkey_feed` VALUES ('81', '35', '', 'task_baoming', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"2\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"报名\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:24:\"数码摄影定金任务\";s:3:\"url\";s:23:\"index.php?do=task&id=35\";}}', null, null, '1434012117', null);
INSERT INTO `keke_witkey_feed` VALUES ('82', '35', '', 'task_baoming_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被报名\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:24:\"数码摄影定金任务\";s:3:\"url\";s:23:\"index.php?do=task&id=35\";}}', null, null, '1434012117', null);
INSERT INTO `keke_witkey_feed` VALUES ('83', '35', '', 'work_accept', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:24:\"数码摄影定金任务\";s:3:\"url\";s:23:\"index.php?do=task&id=35\";}}', null, null, '1434012137', null);
INSERT INTO `keke_witkey_feed` VALUES ('84', '35', '', 'work_accept', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:24:\"数码摄影定金任务\";s:3:\"url\";s:23:\"index.php?do=task&id=35\";s:4:\"cash\";s:6:\"270.00\";}}', null, null, '1434012204', null);
INSERT INTO `keke_witkey_feed` VALUES ('85', '36', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"程序功能开发\";s:3:\"url\";s:23:\"index.php?do=task&id=36\";s:4:\"cash\";s:7:\"1000.00\";s:8:\"model_id\";s:1:\"5\";}}', null, null, '1434012391', null);
INSERT INTO `keke_witkey_feed` VALUES ('86', '36', '', 'task_baoming', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"2\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"报名\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"程序功能开发\";s:3:\"url\";s:23:\"index.php?do=task&id=36\";}}', null, null, '1434012421', null);
INSERT INTO `keke_witkey_feed` VALUES ('87', '36', '', 'task_baoming_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被报名\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"程序功能开发\";s:3:\"url\";s:23:\"index.php?do=task&id=36\";}}', null, null, '1434012421', null);
INSERT INTO `keke_witkey_feed` VALUES ('88', '36', '', 'work_accept', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"程序功能开发\";s:3:\"url\";s:23:\"index.php?do=task&id=36\";}}', null, null, '1434012430', null);
INSERT INTO `keke_witkey_feed` VALUES ('89', '36', '', 'work_accept', '2', '烂苹果丶', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"烂苹果丶\";s:3:\"url\";s:24:\"index.php?do=seller&id=2\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:18:\"程序功能开发\";s:3:\"url\";s:23:\"index.php?do=task&id=36\";s:4:\"cash\";s:6:\"180.00\";}}', null, null, '1434012462', null);
INSERT INTO `keke_witkey_feed` VALUES ('90', '37', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:11:\"flash制作\";s:3:\"url\";s:23:\"index.php?do=task&id=37\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1434013791', null);
INSERT INTO `keke_witkey_feed` VALUES ('91', '38', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:33:\"字体设计，喜帖字体设计\";s:3:\"url\";s:23:\"index.php?do=task&id=38\";s:4:\"cash\";s:4:\"0.01\";s:8:\"model_id\";s:1:\"1\";}}', null, null, '1434014377', null);
INSERT INTO `keke_witkey_feed` VALUES ('92', '39', '', 'pub_task', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:5:\"admin\";s:3:\"url\";s:24:\"index.php?do=seller&id=1\";}s:6:\"action\";a:2:{s:7:\"content\";s:12:\"发布任务\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:4:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";s:4:\"cash\";s:6:\"100.00\";s:8:\"model_id\";s:1:\"3\";}}', null, null, '1434015573', null);
INSERT INTO `keke_witkey_feed` VALUES ('93', '39', '', 'task_tur', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"3\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";}}', null, null, '1434015849', null);
INSERT INTO `keke_witkey_feed` VALUES ('94', '39', '', 'task_tur_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";}}', null, null, '1434015849', null);
INSERT INTO `keke_witkey_feed` VALUES ('95', '39', '', 'task_tur', '6', '兰陵王', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:1:\"6\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:6:\"投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";}}', null, null, '1434016039', null);
INSERT INTO `keke_witkey_feed` VALUES ('96', '39', '', 'task_tur_bei', '1', 'admin', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"兰陵王\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"被投稿\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";}}', null, null, '1434016039', null);
INSERT INTO `keke_witkey_feed` VALUES ('97', '39', '', 'work_accept', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";s:4:\"cash\";s:4:\"0.90\";}}', null, null, '1434016125', null);
INSERT INTO `keke_witkey_feed` VALUES ('98', '39', '', 'work_accept', '6', '兰陵王', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:9:\"兰陵王\";s:3:\"url\";s:24:\"index.php?do=seller&id=6\";}s:6:\"action\";a:2:{s:7:\"content\";s:15:\"成功中标了\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:3:{s:7:\"content\";s:18:\"网站开发征集\";s:3:\"url\";s:23:\"index.php?do=task&id=39\";s:4:\"cash\";s:4:\"0.90\";}}', null, null, '1434016126', null);
INSERT INTO `keke_witkey_feed` VALUES ('99', '0', '', 'realname_auth', '3', '暗夜行路', '', 'a:3:{s:13:\"feed_username\";a:2:{s:7:\"content\";s:12:\"暗夜行路\";s:3:\"url\";s:24:\"index.php?do=seller&id=3\";}s:6:\"action\";a:2:{s:7:\"content\";s:9:\"已通过\";s:3:\"url\";s:0:\"\";}s:5:\"event\";a:2:{s:7:\"content\";s:12:\"实名认证\";s:3:\"url\";s:0:\"\";}}', null, null, '1434016592', null);

-- ----------------------------
-- Table structure for keke_witkey_file
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_file`;
CREATE TABLE `keke_witkey_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件编号',
  `obj_type` varchar(20) DEFAULT NULL COMMENT '对象类',
  `obj_id` int(20) DEFAULT NULL COMMENT '对象编号',
  `task_id` int(11) DEFAULT '0' COMMENT '任务编号',
  `work_id` int(11) DEFAULT NULL COMMENT '稿件编号',
  `task_title` varchar(200) DEFAULT NULL COMMENT '任务标题',
  `file_name` varchar(200) DEFAULT NULL COMMENT '保存前文件',
  `save_name` varchar(200) DEFAULT NULL COMMENT '保存后文件',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `on_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`file_id`),
  KEY `index_3` (`task_id`),
  KEY `index_4` (`uid`),
  KEY `work_id` (`work_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_file
-- ----------------------------
INSERT INTO `keke_witkey_file` VALUES ('1', 'tools', null, '0', '0', null, 'brand-logo.jpg', 'data/uploads/sys/tools/18170246245577e1ad61d05.jpg', '1', 'admin', '1433919917');
INSERT INTO `keke_witkey_file` VALUES ('3', 'task', null, '0', '0', null, '6752327_102053376173_2.jpg', 'data/uploads/2015/06/10/2438481105577e2593ee7f.jpg', '5', '骑姐丶', '1433920089');
INSERT INTO `keke_witkey_file` VALUES ('4', 'task', null, '0', '0', null, '7775426185575cbf9ecea9.jpg', 'data/uploads/2015/06/10/13092040315577e26d869e0.jpg', '2', '烂苹果丶', '1433920109');
INSERT INTO `keke_witkey_file` VALUES ('5', 'task', null, '0', '0', null, '11154912K-6.gif', 'data/uploads/2015/06/10/11759772895577e27081dae.gif', '5', '骑姐丶', '1433920112');
INSERT INTO `keke_witkey_file` VALUES ('6', 'task', null, '0', '0', null, '7775426185575cbf9ecea9.jpg', 'data/uploads/2015/06/10/10152292015577e2b5c8060.jpg', '2', '烂苹果丶', '1433920181');
INSERT INTO `keke_witkey_file` VALUES ('7', 'task', null, '0', '0', null, '53c74dcaa3a2e.jpg', 'data/uploads/2015/06/10/12957446735577e2d791f74.jpg', '3', '暗夜行路', '1433920215');
INSERT INTO `keke_witkey_file` VALUES ('8', 'task', null, '0', '0', null, '53be5a388d166.jpg', 'data/uploads/2015/06/10/11757057375577e37f5a3fb.jpg', '3', '暗夜行路', '1433920383');
INSERT INTO `keke_witkey_file` VALUES ('32', 'task', null, '0', '0', null, '6269024_090337699361_2.jpg', 'data/uploads/2015/06/10/21181630085577eee7ba6be.jpg', '3', '暗夜行路', '1433923303');
INSERT INTO `keke_witkey_file` VALUES ('10', 'task', null, '0', '0', null, 'u=3585038379,2880678103&fm=23&gp=0.jpg', 'data/uploads/2015/06/10/5156576075577e4174bd1b.jpg', '4', 'dabomei', '1433920535');
INSERT INTO `keke_witkey_file` VALUES ('33', 'service', null, '0', '0', null, '20120114134732_RsfTS.thumb.600_0.jpg', 'data/uploads/2015/06/10/7144784175577f36c83a30.jpg', '1', 'admin', '1433924460');
INSERT INTO `keke_witkey_file` VALUES ('12', 'task', null, '0', '0', null, 'u=1638170538,3304806410&fm=21&gp=0.jpg', 'data/uploads/2015/06/10/10850213675577e42a1cbdb.jpg', '4', 'dabomei', '1433920554');
INSERT INTO `keke_witkey_file` VALUES ('13', 'task', null, '0', '0', null, 'u=2313473560,3949750296&fm=23&gp=0.jpg', 'data/uploads/2015/06/10/18143228175577e437ecb45.jpg', '4', 'dabomei', '1433920568');
INSERT INTO `keke_witkey_file` VALUES ('14', 'task', null, '0', '0', null, 'delang.jpg', 'data/uploads/2015/06/10/13302738985577e444df2c6.jpg', '3', '暗夜行路', '1433920580');
INSERT INTO `keke_witkey_file` VALUES ('15', 'task', null, '0', '0', null, '77094b36acaf2edd9cc64f4c881001e93901935b.jpg', 'data/uploads/2015/06/10/12545882045577e49a91731.jpg', '4', 'dabomei', '1433920666');
INSERT INTO `keke_witkey_file` VALUES ('16', 'task', null, '0', '0', null, 'u=3341644860,3457289184&fm=21&gp=0.jpg', 'data/uploads/2015/06/10/15349856275577e4ef83998.jpg', '2', '烂苹果丶', '1433920751');
INSERT INTO `keke_witkey_file` VALUES ('17', 'task', null, '0', '0', null, '2250386_095155052_2.jpg', 'data/uploads/2015/06/10/5248744165577e515afd2e.jpg', '3', '暗夜行路', '1433920789');
INSERT INTO `keke_witkey_file` VALUES ('18', 'task', null, '0', '0', null, 'u=1923588859,112570938&fm=21&gp=0.jpg', 'data/uploads/2015/06/10/9900006655577e52506cc2.jpg', '7', '大姨父丶', '1433920805');
INSERT INTO `keke_witkey_file` VALUES ('19', 'task', null, '0', '0', null, 'u=548646134,1622043400&fm=23&gp=0.jpg', 'data/uploads/2015/06/10/16037017255577e5653c2c2.jpg', '8', '京巴丶', '1433920869');
INSERT INTO `keke_witkey_file` VALUES ('20', 'task', null, '0', '0', null, 'u=548646134,1622043400&fm=23&gp=0.jpg', 'data/uploads/2015/06/10/10334754025577e590cd31a.jpg', '8', '京巴丶', '1433920912');
INSERT INTO `keke_witkey_file` VALUES ('21', 'task', null, '0', '0', null, '77c6a7efce1b9d16abd59cc4f6deb48f8c546400.jpg', 'data/uploads/2015/06/10/7933524635577e6328763e.jpg', '8', '京巴丶', '1433921074');
INSERT INTO `keke_witkey_file` VALUES ('22', 'task', null, '0', '0', null, '2136378.jpg', 'data/uploads/2015/06/10/13792413005577ea197636c.jpg', '3', '暗夜行路', '1433922073');
INSERT INTO `keke_witkey_file` VALUES ('23', 'task', null, '0', '0', null, '2136378.jpg', 'data/uploads/2015/06/10/18559051435577eac6ca4c6.jpg', '3', '暗夜行路', '1433922246');
INSERT INTO `keke_witkey_file` VALUES ('24', 'task', null, '0', '0', null, '77094b36acaf2edd9cc64f4c881001e93901935b.jpg', 'data/uploads/2015/06/10/10070133195577eb66a25c4.jpg', '8', '京巴丶', '1433922406');
INSERT INTO `keke_witkey_file` VALUES ('25', 'task', null, '29', '0', '投票大调查', '2572670_124721176000_2.jpg', 'data/uploads/2015/06/10/4079377635577eb799f7e7.jpg', '3', '暗夜行路', '1433922425');
INSERT INTO `keke_witkey_file` VALUES ('26', 'task', null, '0', '0', null, '77c6a7efce1b9d16abd59cc4f6deb48f8c546400.jpg', 'data/uploads/2015/06/10/17229840805577ebe700e6b.jpg', '4', 'dabomei', '1433922535');
INSERT INTO `keke_witkey_file` VALUES ('27', 'task', null, '0', '0', null, 'u=2313473560,3949750296&fm=23&gp=0.jpg', 'data/uploads/2015/06/10/3562163105577ebf32b60f.jpg', '4', 'dabomei', '1433922547');
INSERT INTO `keke_witkey_file` VALUES ('28', 'tools', null, '0', '0', null, 'brand-logo.jpg', 'data/uploads/sys/tools/1592658075577ed1ccfc5e.jpg', '1', 'admin', '1433922844');
INSERT INTO `keke_witkey_file` VALUES ('29', 'task', null, '30', '0', '市场大调查', '05N58PICF6r_1024.jpg', 'data/uploads/2015/06/10/18964309645577ee1198258.jpg', '3', '暗夜行路', '1433923089');
INSERT INTO `keke_witkey_file` VALUES ('30', 'task', null, '0', '0', null, 'u=2771537768,3758658242&fm=23&gp=0.jpg', 'data/uploads/2015/06/10/8269594625577ee665d9a8.jpg', '5', '骑姐丶', '1433923174');
INSERT INTO `keke_witkey_file` VALUES ('31', 'task', null, '0', '0', null, 'task_hall_adv2.jpg', 'data/uploads/2015/06/10/11183894385577ee6e025fc.jpg', '1', 'admin', '1433923182');
INSERT INTO `keke_witkey_file` VALUES ('34', 'service', null, '0', '0', null, 'ico.ooopic.com.png', 'data/uploads/2015/06/10/1058586335577f63eb5d75.png', '1', 'admin', '1433925182');
INSERT INTO `keke_witkey_file` VALUES ('35', 'service', null, '0', '0', null, '11093467_193317208108_2.jpg', 'data/uploads/2015/06/10/12644466465577f6b365c7f.jpg', '1', 'admin', '1433925299');
INSERT INTO `keke_witkey_file` VALUES ('36', 'service', null, '0', '0', null, '20120310171603_93.jpg', 'data/uploads/2015/06/10/9878463965577f6e77f7a1.jpg', '1', 'admin', '1433925351');
INSERT INTO `keke_witkey_file` VALUES ('37', 'task', null, '0', '0', null, '05N58PICF6r_1024.jpg', 'data/uploads/2015/06/10/4833469855577f71ca0190.jpg', '1', 'admin', '1433925404');
INSERT INTO `keke_witkey_file` VALUES ('38', 'service', null, '0', '0', null, '83j58PICrWK.jpg', 'data/uploads/2015/06/10/839914125577fa0fe3927.jpg', '1', 'admin', '1433926160');
INSERT INTO `keke_witkey_file` VALUES ('39', 'service', null, '0', '0', null, '4bed2e738bd4b31c665f8fb684d6277f9e2ff858.jpg', 'data/uploads/2015/06/10/15685494805577fa91e68af.jpg', '1', 'admin', '1433926290');
INSERT INTO `keke_witkey_file` VALUES ('40', 'service', null, '0', '0', null, '2316312243-0.jpg', 'data/uploads/2015/06/10/5335793295577fade96941.jpg', '1', 'admin', '1433926366');
INSERT INTO `keke_witkey_file` VALUES ('41', 'service', null, '0', '0', null, '40b1OOOPICb0.jpg', 'data/uploads/2015/06/10/16523432145577fb49eba1a.jpg', '1', 'admin', '1433926474');
INSERT INTO `keke_witkey_file` VALUES ('42', 'service', null, '0', '0', null, '235499_woshi2.jpg', 'data/uploads/2015/06/10/16951092335577fbd7f2d75.jpg', '1', 'admin', '1433926616');
INSERT INTO `keke_witkey_file` VALUES ('43', 'service', null, '0', '0', null, '161548249_260538.png', 'data/uploads/2015/06/10/18231356845577fc426e524.png', '1', 'admin', '1433926722');
INSERT INTO `keke_witkey_file` VALUES ('44', 'service', null, '0', '0', null, '20130522102649.png', 'data/uploads/2015/06/10/16262276145577fca8b65c2.png', '1', 'admin', '1433926824');
INSERT INTO `keke_witkey_file` VALUES ('45', 'service', null, '0', '0', null, '1-14102015313E49.jpg', 'data/uploads/2015/06/10/15021041275577fd1901584.jpg', '1', 'admin', '1433926937');
INSERT INTO `keke_witkey_file` VALUES ('46', 'task', null, '0', '0', null, '9d544145hc0b23c1a550f&690.jpg', 'data/uploads/2015/06/10/20738019385577fda1b5c1d.jpg', '1', 'admin', '1433927073');
INSERT INTO `keke_witkey_file` VALUES ('47', 'task', null, '0', '0', null, '5cb594c285.jpg', 'data/uploads/2015/06/10/10937696555782b04caf2a.jpg', '1', 'admin', '1433938693');
INSERT INTO `keke_witkey_file` VALUES ('48', 'task', null, '0', '0', null, '120325125111-4.jpg', 'data/uploads/2015/06/10/165857313655782b0ddf29e.jpg', '1', 'admin', '1433938702');
INSERT INTO `keke_witkey_file` VALUES ('49', 'task', null, '0', '0', null, '20111109063300145184.jpg', 'data/uploads/2015/06/10/60189737055782b1a609aa.jpg', '1', 'admin', '1433938714');
INSERT INTO `keke_witkey_file` VALUES ('50', 'task', null, '0', '0', null, '381c4180e1d9f8ef.JPG', 'data/uploads/2015/06/11/8051442185578e6312f610.jpg', '1', 'admin', '1433986609');
INSERT INTO `keke_witkey_file` VALUES ('51', 'task', null, '0', '0', null, '6557155-25-205.jpg', 'data/uploads/2015/06/11/13632840185578e647a5c87.jpg', '1', 'admin', '1433986632');
INSERT INTO `keke_witkey_file` VALUES ('52', 'task', null, '0', '0', null, '11678527818624e594o.jpg', 'data/uploads/2015/06/11/21427970325578e6db7ec81.jpg', '1', 'admin', '1433986779');
INSERT INTO `keke_witkey_file` VALUES ('53', 'task', null, '0', '0', null, '20111106144718_XdWfs.thumb.700_0.jpg', 'data/uploads/2015/06/11/1979264755578e6e02674a.jpg', '1', 'admin', '1433986784');
INSERT INTO `keke_witkey_file` VALUES ('54', 'task', null, '0', '0', null, '20131012215240_8ufJY.thumb.600_0.jpeg', 'data/uploads/2015/06/11/9459196295578e6e115dd9.jpeg', '1', 'admin', '1433986785');
INSERT INTO `keke_witkey_file` VALUES ('55', 'task', null, '0', '0', null, '01000000000000119092834264882_s.jpg', 'data/uploads/2015/06/11/3447222035578e6e17190d.jpg', '1', 'admin', '1433986785');
INSERT INTO `keke_witkey_file` VALUES ('57', 'task', null, '33', '0', '节能灯宣传软文撰写', '5398198_144628061000_2.jpg', 'data/uploads/2015/06/11/204567264255792e5781b42.jpg', '1', 'admin', '1434005079');
INSERT INTO `keke_witkey_file` VALUES ('59', 'work', '11', '33', '11', '节能灯宣传软文撰写', 'QQ截图20150611144829.png', 'data/uploads/2015/06/11/119696692155792f4e52664.png', '2', '烂苹果丶', '1434005326');
INSERT INTO `keke_witkey_file` VALUES ('60', 'task', null, '0', '0', null, '902397dda144ad3432134d81d3a20cf431ad850c.jpg', 'data/uploads/2015/06/11/1801743685579332cee683.jpg', '1', 'admin', '1434006317');
INSERT INTO `keke_witkey_file` VALUES ('61', 'task', null, '0', '0', null, '26bug修改.txt', 'data/uploads/2015/06/11/10338505255579335060dbe.txt', '1', 'admin', '1434006352');
INSERT INTO `keke_witkey_file` VALUES ('62', 'auth', null, '0', '0', null, '4bed2e738bd4b31c665f8fb684d6277f9e2ff858.jpg', 'data/uploads/sys/auth/61478711755795b1d47b83.jpg', '3', '暗夜行路', '1434016541');

-- ----------------------------
-- Table structure for keke_witkey_finance
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_finance`;
CREATE TABLE `keke_witkey_finance` (
  `fina_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '财务清单编号',
  `fina_type` char(10) DEFAULT '0' COMMENT '进出方向',
  `fina_action` char(20) DEFAULT NULL COMMENT '收支说明',
  `order_id` int(11) DEFAULT '0' COMMENT '订单编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `obj_type` char(20) DEFAULT NULL COMMENT '对象类型',
  `obj_id` int(10) DEFAULT NULL COMMENT '对象编号',
  `fina_cash` decimal(15,3) DEFAULT '0.000' COMMENT '交易金额',
  `user_balance` decimal(15,3) DEFAULT '0.000' COMMENT '用户余额',
  `fina_credit` decimal(15,3) DEFAULT '0.000' COMMENT '交易代金券',
  `user_credit` decimal(15,3) DEFAULT '0.000' COMMENT '用户余券',
  `fina_source` char(20) DEFAULT NULL COMMENT '来源',
  `fina_time` int(11) DEFAULT '0' COMMENT '提交时间',
  `recharge_cash` decimal(15,2) DEFAULT '0.00' COMMENT '充值金额',
  `site_profit` decimal(15,3) DEFAULT '0.000' COMMENT '站长利润',
  `fina_mem` varchar(200) DEFAULT NULL COMMENT '财务去向说明',
  `is_trust` int(1) DEFAULT '0' COMMENT '是否已托管',
  `trust_type` char(20) DEFAULT NULL COMMENT '托管类型',
  PRIMARY KEY (`fina_id`),
  KEY `index_1` (`fina_id`),
  KEY `index_2` (`order_id`),
  KEY `index_3` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_finance
-- ----------------------------
INSERT INTO `keke_witkey_finance` VALUES ('1', 'in', 'admin_charge', '0', '2', '烂苹果丶', 'admin_charge', null, '1000000.000', '1000000.000', '0.000', '0.000', '', '1433904230', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('2', 'out', 'pub_task', '1', '2', '烂苹果丶', 'task', '1', '2000.000', '998000.000', '0.000', '0.000', null, '1433904387', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=1\">婚纱摄影网站，有原型，有HTML，套后台</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('3', 'out', 'pub_task', '2', '2', '烂苹果丶', 'task', '2', '3000.000', '995000.000', '0.000', '0.000', null, '1433904725', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=2\">destoon程序做的网站，解决占用CPU高</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('4', 'out', 'pub_task', '3', '2', '烂苹果丶', 'task', '3', '6000.000', '989000.000', '0.000', '0.000', null, '1433904802', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=3\">仿快播 Windows客户端、服务器端</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('5', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '3', '300.000', '988700.000', '0.000', '0.000', null, '1433904802', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('6', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '3', '20.000', '988680.000', '0.000', '0.000', null, '1433904802', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('7', 'out', 'pub_task', '4', '2', '烂苹果丶', 'task', '4', '1000.000', '987680.000', '0.000', '0.000', null, '1433904952', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=4\">设计一个支付（POS机公司）公司的网站</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('8', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '4', '300.000', '987380.000', '0.000', '0.000', null, '1433904952', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('9', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '4', '20.000', '987360.000', '0.000', '0.000', null, '1433904952', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('10', 'out', 'pub_task', '5', '2', '烂苹果丶', 'task', '5', '5000.000', '982360.000', '0.000', '0.000', null, '1433905074', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=5\">需要通过货运单号采集当月客户信息的软件</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('11', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '5', '300.000', '982060.000', '0.000', '0.000', null, '1433905074', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('12', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '5', '20.000', '982040.000', '0.000', '0.000', null, '1433905074', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('13', 'out', 'pub_task', '6', '2', '烂苹果丶', 'task', '6', '30000.000', '952040.000', '0.000', '0.000', null, '1433905244', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=6\">网站升级加微网站手机应用开发</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('14', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '6', '300.000', '951740.000', '0.000', '0.000', null, '1433905244', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('15', 'out', 'payitem', '0', '2', '烂苹果丶', 'task', '6', '20.000', '951720.000', '0.000', '0.000', null, '1433905244', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('16', 'in', 'admin_charge', '0', '3', '暗夜行路', 'admin_charge', null, '10000.000', '10000.000', '0.000', '0.000', '', '1433905442', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('17', 'in', 'admin_charge', '0', '4', 'dabomei', 'admin_charge', null, '1000000.000', '1000000.000', '0.000', '0.000', '', '1433905536', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('18', 'out', 'pub_task', '8', '4', 'dabomei', 'task', '8', '5000.000', '995000.000', '0.000', '0.000', null, '1433905551', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=8\">耳机行业互联网商业计划书撰写</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('19', 'out', 'payitem', '0', '4', 'dabomei', 'task', '8', '300.000', '994700.000', '0.000', '0.000', null, '1433905551', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('20', 'out', 'payitem', '0', '4', 'dabomei', 'task', '8', '20.000', '994680.000', '0.000', '0.000', null, '1433905551', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('21', 'out', 'pub_task', '9', '4', 'dabomei', 'task', '9', '30000.000', '964680.000', '0.000', '0.000', null, '1433905748', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=9\">做一个运动场地在线发布和预定的b2c平台</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('22', 'out', 'payitem', '0', '4', 'dabomei', 'task', '9', '300.000', '964380.000', '0.000', '0.000', null, '1433905748', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('23', 'out', 'payitem', '0', '4', 'dabomei', 'task', '9', '20.000', '964360.000', '0.000', '0.000', null, '1433905748', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('24', 'out', 'pub_task', '10', '4', 'dabomei', 'task', '10', '5000.000', '959360.000', '0.000', '0.000', null, '1433905897', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=10\">体育用品公司LOGO设计，名片设计</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('25', 'out', 'payitem', '0', '4', 'dabomei', 'task', '10', '300.000', '959060.000', '0.000', '0.000', null, '1433905897', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('26', 'out', 'payitem', '0', '4', 'dabomei', 'task', '10', '20.000', '959040.000', '0.000', '0.000', null, '1433905897', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('27', 'out', 'pub_task', '11', '3', '暗夜行路', 'task', '11', '100.000', '9900.000', '0.000', '0.000', null, '1433905935', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=11\">5000元开发微信大屏系统</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('28', 'out', 'pub_task', '13', '3', '暗夜行路', 'task', '13', '200.000', '9700.000', '0.000', '0.000', null, '1433906069', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('29', 'out', 'pub_task', '12', '4', 'dabomei', 'task', '12', '600.000', '958440.000', '0.000', '0.000', null, '1433906108', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=12\">辣PLUS麻辣小龙虾文案</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('30', 'out', 'payitem', '0', '4', 'dabomei', 'task', '12', '300.000', '958140.000', '0.000', '0.000', null, '1433906108', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('31', 'out', 'payitem', '0', '4', 'dabomei', 'task', '12', '20.000', '958120.000', '0.000', '0.000', null, '1433906109', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('32', 'out', 'pub_task', '14', '3', '暗夜行路', 'task', '14', '1.000', '9699.000', '0.000', '0.000', null, '1433906155', '0.00', '0.000', '发布普通招标任务<a href=\"index.php?do=task&id=14\">根据店名“木头和马尾”设计LOGO和推广</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('33', 'out', 'pub_task', '15', '4', 'dabomei', 'task', '15', '1000.000', '957120.000', '0.000', '0.000', null, '1433906233', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=15\">蜂花恋品牌LOGO设计</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('34', 'out', 'payitem', '0', '4', 'dabomei', 'task', '15', '300.000', '956820.000', '0.000', '0.000', null, '1433906233', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('35', 'out', 'payitem', '0', '4', 'dabomei', 'task', '15', '20.000', '956800.000', '0.000', '0.000', null, '1433906233', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('36', 'out', 'pub_task', '16', '3', '暗夜行路', 'task', '16', '30.000', '9669.000', '0.000', '0.000', null, '1433906234', '0.00', '0.000', '发布:model_name任务<a href=\"index.php?do=task&id=:task_id\">:task_title</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('37', 'out', 'pub_task', '17', '4', 'dabomei', 'task', '17', '1200.000', '955600.000', '0.000', '0.000', null, '1433906373', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=17\">一品威客官网App名称征集</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('38', 'out', 'payitem', '0', '4', 'dabomei', 'task', '17', '300.000', '955300.000', '0.000', '0.000', null, '1433906373', '0.00', '300.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('39', 'out', 'payitem', '0', '4', 'dabomei', 'task', '17', '20.000', '955280.000', '0.000', '0.000', null, '1433906373', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('40', 'out', 'pub_task', '18', '3', '暗夜行路', 'task', '18', '200.000', '9469.000', '0.000', '0.000', null, '1433906534', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=18\">PHP网站修改.产品搜索功能修改</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('41', 'out', 'pub_task', '19', '3', '暗夜行路', 'task', '19', '200.000', '9269.000', '0.000', '0.000', null, '1433906604', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=19\">钻达集团VI手册设计</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('42', 'out', 'pub_task', '20', '3', '暗夜行路', 'task', '20', '1.000', '9268.000', '0.000', '0.000', null, '1433906678', '0.00', '0.000', '发布普通招标任务<a href=\"index.php?do=task&id=20\">新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('43', 'out', 'pub_task', '21', '4', 'dabomei', 'task', '21', '1.000', '955279.000', '0.000', '0.000', null, '1433906702', '0.00', '0.000', '发布普通招标任务<a href=\"index.php?do=task&id=21\">山西省陵川县第一山林场LOGO设计</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('44', 'out', 'payitem', '0', '4', 'dabomei', 'task', '21', '2000.000', '953279.000', '0.000', '0.000', null, '1433906702', '0.00', '2000.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('45', 'out', 'payitem', '0', '4', 'dabomei', 'task', '21', '20.000', '953259.000', '0.000', '0.000', null, '1433906702', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('46', 'out', 'pub_task', '22', '4', 'dabomei', 'task', '22', '2000.000', '951259.000', '0.000', '0.000', null, '1433906818', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=22\">微拍贷logo设计</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('47', 'out', 'payitem', '0', '4', 'dabomei', 'task', '22', '2000.000', '949259.000', '0.000', '0.000', null, '1433906818', '0.00', '2000.000', '购买任务置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('48', 'out', 'payitem', '0', '4', 'dabomei', 'task', '22', '20.000', '949239.000', '0.000', '0.000', null, '1433906818', '0.00', '20.000', '购买屏蔽搜索引擎增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('49', 'out', 'pub_task', '23', '3', '暗夜行路', 'task', '23', '300.000', '8968.000', '0.000', '0.000', null, '1433906874', '0.00', '0.000', '发布:model_name任务<a href=\"index.php?do=task&id=:task_id\">:task_title</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('50', 'out', 'payitem', '0', '4', 'dabomei', 'goods', '4', '1100.000', '948139.000', '0.000', '0.000', null, '1433914903', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('51', 'out', 'pub_task', '25', '3', '暗夜行路', 'task', '24', '100.000', '8868.000', '0.000', '0.000', null, '1433915760', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=24\">大学毕业论文求稿</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('52', 'out', 'pub_task', '26', '3', '暗夜行路', 'task', '25', '100.000', '8768.000', '0.000', '0.000', null, '1433915978', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=25\">小型电商网站建设可用模板</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('53', 'out', 'payitem', '0', '4', 'dabomei', 'goods', '5', '1100.000', '947039.000', '0.000', '0.000', null, '1433916157', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('54', 'out', 'pub_task', '28', '3', '暗夜行路', 'task', '26', '100.000', '8668.000', '0.000', '0.000', null, '1433916232', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('55', 'out', 'payitem', '0', '4', 'dabomei', 'goods', '6', '11.000', '947028.000', '0.000', '0.000', null, '1433916359', '0.00', '11.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('56', 'in', 'admin_charge', '0', '5', '骑姐丶', 'admin_charge', null, '1000000.000', '1000000.000', '0.000', '0.000', '', '1433916682', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('57', 'out', 'payitem', '0', '5', '骑姐丶', 'goods', '7', '1100.000', '998900.000', '0.000', '0.000', null, '1433916693', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('58', 'out', 'payitem', '0', '5', '骑姐丶', 'goods', '8', '1100.000', '997800.000', '0.000', '0.000', null, '1433916813', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('59', 'in', 'task_bid', '0', '3', '暗夜行路', 'task', '1', '1800.000', '10468.000', '0.000', '0.000', '', '1433917332', '0.00', '200.000', '参与任务<a href=\"index.php?do=task&id=1\">婚纱摄影网站，有原型，有HTML，套后台</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('60', 'in', 'admin_charge', '0', '8', '京巴丶', 'admin_charge', null, '1000000.000', '1000000.000', '0.000', '0.000', '', '1433917418', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('61', 'out', 'payitem', '0', '8', '京巴丶', 'goods', '9', '1100.000', '998900.000', '0.000', '0.000', null, '1433917426', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('62', 'in', 'task_bid', '0', '2', '烂苹果丶', 'task', '13', '90.000', '951810.000', '0.000', '0.000', '', '1433917448', '0.00', '10.000', '参与任务<a href=\"index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('63', 'in', 'task_bid', '0', '6', '兰陵王', 'task', '13', '90.000', '90.000', '0.000', '0.000', '', '1433917494', '0.00', '10.000', '参与任务<a href=\"index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('64', 'in', 'admin_charge', '0', '7', '大姨父丶', 'admin_charge', null, '1000000.000', '1000000.000', '0.000', '0.000', '', '1433917525', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('65', 'out', 'payitem', '0', '7', '大姨父丶', 'goods', '10', '1100.000', '998900.000', '0.000', '0.000', null, '1433917533', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('66', 'out', 'payitem', '0', '2', '烂苹果丶', 'goods', '11', '1100.000', '950710.000', '0.000', '0.000', null, '1433917653', '0.00', '1100.000', '购买商品置顶增值服务', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('67', 'in', 'task_bid', '0', '9', '赵默笙', 'task', '11', '80.000', '80.000', '0.000', '0.000', '', '1433918421', '0.00', '20.000', '参与任务<a href=\"index.php?do=task&id=11\">5000元开发微信大屏系统</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('68', 'in', 'task_bid', '0', '5', '骑姐丶', 'task', '26', '45.000', '997845.000', '0.000', '0.000', '', '1433918889', '0.00', '5.000', '参与任务<a href=\"index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('69', 'in', 'task_bid', '0', '5', '骑姐丶', 'task', '26', '45.000', '997890.000', '0.000', '0.000', '', '1433919215', '0.00', '5.000', '参与任务<a href=\"index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('70', 'out', 'pub_task', '35', '5', '骑姐丶', 'task', '27', '100.000', '997790.000', '0.000', '0.000', null, '1433919355', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=27\">提供美丽说或者蘑菇街API 开发</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('71', 'out', 'pub_task', '36', '5', '骑姐丶', 'task', '28', '200.000', '997590.000', '0.000', '0.000', null, '1433919432', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=28\">结合开源客户端openfire，修改一个开源xmpp服务器端</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('72', 'out', 'pub_task', '37', '3', '暗夜行路', 'task', '29', '200.000', '10268.000', '0.000', '0.000', null, '1433922434', '0.00', '0.000', '发布多人悬赏任务<a href=\"index.php?do=task&id=29\">投票大调查</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('73', 'out', 'pub_task', '38', '3', '暗夜行路', 'task', '30', '100.000', '10168.000', '0.000', '0.000', null, '1433923098', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=30\">市场大调查</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('74', 'in', 'admin_charge', '0', '1', 'admin', 'admin_charge', null, '1000000.000', '1000000.000', '0.000', '0.000', '', '1433929119', '0.00', '0.000', '网站手动充值', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('75', 'out', 'pub_task', '39', '1', 'admin', 'task', '31', '100.000', '999900.000', '0.000', '0.000', null, '1433929183', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=31\">动漫设计大赛</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('76', 'out', 'pub_task', '40', '1', 'admin', 'task', '32', '100.000', '999800.000', '0.000', '0.000', null, '1433935047', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=32\">软件应用开发</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('77', 'in', 'task_bid', '0', '6', '兰陵王', 'task', '32', '45.000', '135.000', '0.000', '0.000', '', '1433935444', '0.00', '5.000', '参与任务<a href=\"index.php?do=task&id=32\">软件应用开发</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('78', 'out', 'cancel_bid', '0', '6', '兰陵王', null, null, '45.000', '90.000', '0.000', '0.000', null, '1433935728', '0.00', '0.000', '撤销中标', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('79', 'in', 'task_bid', '0', '3', '暗夜行路', 'task', '32', '45.000', '10213.000', '0.000', '0.000', '', '1433935728', '0.00', '5.000', '参与任务<a href=\"index.php?do=task&id=32\">软件应用开发</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('80', 'in', 'task_remain_return', '0', '1', 'admin', 'task', '32', '47.500', '999847.500', '0.000', '0.000', '', '1433935728', '0.00', '2.500', '计件悬赏任务<a href=\"index.php?do=task&id=32\">软件应用开发</a>结算后余款返还', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('81', 'out', 'withdraw', '0', '1', 'admin', 'withdraw', '1', '100.000', '999747.500', '0.000', '0.000', null, '1433987174', '0.00', '0.000', '支付宝账户为18025121111的用户好好提现', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('82', 'in', 'withdraw_fail', '0', '1', 'admin', null, null, '100.000', '999847.500', '0.000', '0.000', null, '1433987212', '0.00', '0.000', '支付宝账户为18025121111的用户提现失败返还退款', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('83', 'out', 'pub_task', '41', '1', 'admin', 'task', '33', '100.000', '999747.500', '0.000', '0.000', null, '1434005089', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=33\">节能灯宣传软文撰写</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('84', 'out', 'pub_task', '42', '1', 'admin', 'task', '34', '55.000', '999692.500', '0.000', '0.000', null, '1434010117', '0.00', '0.000', '发布速配任务任务<a href=\"index.php?do=task&id=34\">网站开发flash</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('85', 'out', 'host_deposit', '0', '3', '暗夜行路', 'task', '34', '55.000', '10158.000', '0.000', '0.000', null, '1434010591', '0.00', '0.000', '托管速配任务任务<a href=\"index.php?do=task&id=34\">网站开发flash</a>诚意金', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('86', 'out', 'hosted_reward', '0', '1', 'admin', 'task', '34', '200.000', '999492.500', '0.000', '0.000', null, '1434010622', '0.00', '0.000', '托管速配任务任务<a href=\"index.php?do=task&id=34\">网站开发flash</a>赏金', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('87', 'in', 'task_fail', '0', '1', 'admin', null, null, '180.000', '999672.500', '0.000', '0.000', null, '1434011647', '0.00', '0.000', '任务失败退款', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('88', 'in', 'task_fail', '0', '3', '暗夜行路', null, null, '20.000', '10178.000', '0.000', '0.000', null, '1434011647', '0.00', '0.000', '任务失败退款', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('89', 'in', 'deposit_return', '0', '1', 'admin', 'task', '34', '45.000', '999717.500', '0.000', '0.000', '', '1434011647', '0.00', '0.000', '任务失败退款', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('90', 'in', 'deposit_return', '0', '3', '暗夜行路', 'task', '34', '45.000', '10223.000', '0.000', '0.000', '', '1434011647', '0.00', '0.000', '任务失败退款', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('91', 'out', 'pub_task', '43', '1', 'admin', 'task', '35', '300.000', '999417.500', '0.000', '0.000', null, '1434012018', '0.00', '0.000', '发布:model_name任务<a href=\"index.php?do=task&id=:task_id\">:task_title</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('92', 'in', 'task_bid', '0', '2', '烂苹果丶', 'task', '35', '270.000', '950980.000', '0.000', '0.000', '', '1434012204', '0.00', '30.000', '参与任务<a href=\"index.php?do=task&id=35\">数码摄影定金任务</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('93', 'out', 'pub_task', '44', '1', 'admin', 'task', '36', '300.000', '999117.500', '0.000', '0.000', null, '1434012373', '0.00', '0.000', '发布:model_name任务<a href=\"index.php?do=task&id=:task_id\">:task_title</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('94', 'in', 'task_hosted_return', '0', '1', 'admin', 'task', '36', '100.000', '999217.500', '0.000', '0.000', '0', '1434012439', '0.00', '0.000', '订金招标任务<a href=\"index.php?do=task&id=36\">程序功能开发</a>托管余款返还', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('95', 'in', 'task_bid', '0', '2', '烂苹果丶', 'task', '36', '180.000', '951160.000', '0.000', '0.000', '', '1434012462', '0.00', '20.000', '参与任务<a href=\"index.php?do=task&id=36\">程序功能开发</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('96', 'out', 'pub_task', '45', '1', 'admin', 'task', '37', '100.000', '999117.500', '0.000', '0.000', null, '1434013791', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=37\">flash制作</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('97', 'out', 'pub_task', '46', '1', 'admin', 'task', '38', '0.010', '999117.490', '0.000', '0.000', null, '1434014377', '0.00', '0.000', '发布单人悬赏任务<a href=\"index.php?do=task&id=38\">字体设计，喜帖字体设计</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('98', 'out', 'pub_task', '47', '1', 'admin', 'task', '39', '100.000', '999017.490', '0.000', '0.000', null, '1434015573', '0.00', '0.000', '发布计件悬赏任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('99', 'in', 'task_bid', '0', '3', '暗夜行路', 'task', '39', '0.900', '10223.900', '0.000', '0.000', '', '1434016125', '0.00', '0.100', '参与任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('100', 'in', 'task_bid', '0', '6', '兰陵王', 'task', '39', '0.900', '90.900', '0.000', '0.000', '', '1434016126', '0.00', '0.100', '参与任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>，稿件被选为中标稿件', '0', null);
INSERT INTO `keke_witkey_finance` VALUES ('101', 'in', 'task_remain_return', '0', '1', 'admin', 'task', '39', '93.100', '999110.590', '0.000', '0.000', '', '1434016126', '0.00', '4.900', '计件悬赏任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>结算后余款返还', '0', null);

-- ----------------------------
-- Table structure for keke_witkey_free_follow
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_free_follow`;
CREATE TABLE `keke_witkey_free_follow` (
  `follow_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '关注编号',
  `uid` int(11) DEFAULT NULL COMMENT '关注用户编号',
  `fuid` int(11) DEFAULT NULL COMMENT '被关注的用户编号',
  `task_id` int(11) DEFAULT NULL COMMENT '任务编号',
  `service_id` int(11) DEFAULT NULL COMMENT '关注的免费商品服务ID',
  `on_time` int(11) DEFAULT NULL COMMENT '时间',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`follow_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_free_follow
-- ----------------------------
INSERT INTO `keke_witkey_free_follow` VALUES ('1', '1', '3', null, null, '1434009244', null);
INSERT INTO `keke_witkey_free_follow` VALUES ('2', '3', '1', null, null, '1434009297', null);

-- ----------------------------
-- Table structure for keke_witkey_get_password_log
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_get_password_log`;
CREATE TABLE `keke_witkey_get_password_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '找回密码记录编号',
  `valid_type` varchar(20) DEFAULT NULL COMMENT '密码找回验证方式：email 邮箱验证; mobile 手机验证',
  `get_uid` int(11) DEFAULT NULL COMMENT '找回的用户编号',
  `valid_code` varchar(6) DEFAULT NULL COMMENT '用户收到的验证码',
  `send_from` varchar(255) DEFAULT NULL COMMENT '发送验证来自',
  `send_time` int(11) DEFAULT NULL COMMENT '验证码发送时间',
  `expire_time` int(11) DEFAULT NULL COMMENT '验证码过期时间',
  `valid_status` varchar(255) DEFAULT NULL COMMENT '验证状态 1已验证 2未验证 3验证过期',
  `encrypteuid` varchar(50) DEFAULT NULL COMMENT '加密后的用户编号',
  `authsid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_get_password_log
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_hotwords
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_hotwords`;
CREATE TABLE `keke_witkey_hotwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '热词编号',
  `sort` int(11) DEFAULT '0' COMMENT '排序，站长手动排',
  `words` varchar(255) DEFAULT NULL COMMENT '搜索词',
  `count` int(11) DEFAULT '1' COMMENT '搜索次数',
  `time` int(11) DEFAULT '0' COMMENT '最近一次搜索时间',
  `auto` int(11) DEFAULT '0' COMMENT '是否是自动添加的 0-否，1-是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_hotwords
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_industry
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_industry`;
CREATE TABLE `keke_witkey_industry` (
  `indus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '行业编号',
  `indus_pid` int(11) DEFAULT '0' COMMENT '行业父编号',
  `indus_name` varchar(100) DEFAULT NULL COMMENT '行业名称',
  `is_recommend` int(11) DEFAULT NULL COMMENT '''是否推荐''（1=>''推荐'',0=>''不推荐''） ',
  `indus_type` int(11) DEFAULT '1' COMMENT '行业类型',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `on_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `list_type` varchar(20) DEFAULT NULL COMMENT '列表类型',
  `list_tpl` varchar(20) DEFAULT NULL COMMENT '列表模板',
  `indus_intro` varchar(200) DEFAULT NULL COMMENT '简介',
  `list_desc` text COMMENT '描述',
  `totask` int(10) DEFAULT NULL COMMENT '适用任务',
  `togoods` int(10) DEFAULT NULL COMMENT '适用商品',
  `seo_title` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `seo_keyword` varchar(255) DEFAULT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) DEFAULT NULL COMMENT 'SEO描述',
  PRIMARY KEY (`indus_id`),
  KEY `indus_id` (`indus_id`),
  KEY `indus_pid` (`indus_pid`)
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_industry
-- ----------------------------
INSERT INTO `keke_witkey_industry` VALUES ('2', '0', '网站开发', '0', '1', '1', '1398245893', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('3', '0', '文案写作', '1', '1', '2', '1346403521', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('229', '218', 'Palm插件', '0', '1', '9', '1292554457', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('228', '218', '黑莓插件', '0', '1', '6', '1292554432', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('8', '3', '标志设计', '1', '1', '0', '1398491779', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('9', '3', 'VI设计', '1', '1', '0', '1324288332', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('10', '3', '名片设计', '1', '1', '0', '1324288376', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('11', '3', '海报设计', '0', '1', '0', '1324288546', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('12', '3', '宣传册页', '0', '1', '0', '1324288827', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('13', '3', '卡通设计', '0', '1', '0', '1324086640', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('14', '3', '招牌设计', '0', '1', '0', '1324288851', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('16', '3', '横幅设计', '0', '1', '0', '1324086655', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('121', '0', '软件开发', '0', '1', '3', '1332569956', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('27', '3', '网站美工', '0', '1', '0', '1345706999', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('28', '2', '网站模板', '0', '1', '0', '1429522526', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('29', '2', '开源修改', '0', '1', '32', '1326087725', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('30', '2', '网站广告', '0', '1', '0', '1292549182', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('31', '2', '网页动画', '1', '1', '0', '1292549199', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('32', '2', '商城开发', '1', '1', '0', '1292549217', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('33', '2', '数据库操作', '1', '1', '30', '1292549237', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('34', '2', '接口操作', '1', '1', '0', '1292549255', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('35', '2', '服务器系统', '1', '1', '31', '1292549279', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('36', '121', '程序开发', '1', '1', '0', '1292549438', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('37', '121', '编写脚本', '1', '1', '0', '1292549500', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('38', '121', '软件皮肤', '1', '1', '0', '1292549533', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('39', '121', '插件开发', '1', '1', '0', '1292549558', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('40', '2', '其它', '1', '1', '100', '0', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('41', '3', '宣传软文', '1', '1', '0', '1292551396', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('42', '3', '广告语写作', '1', '1', '0', '1292551430', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('43', '3', '策划', '1', '1', '0', '1292551453', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('44', '3', '写文章', '1', '1', '0', '1292551482', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('45', '3', '编辑校对', '1', '1', '0', '1292551502', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('46', '3', '写新闻', '0', '1', '0', '1292551528', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('47', '3', '产品说明', '0', '1', '0', '1292551569', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('48', '3', '剧本脚本', '0', '1', '0', '1292551594', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('49', '3', '写书', '0', '1', '0', '1292551633', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('50', '3', '撰写报告', '0', '1', '0', '1292551666', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('51', '3', '应用文写作', '0', '1', '0', '1292551705', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('52', '3', '演讲稿', '0', '1', '0', '1292551734', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('169', '2', 'FLASH', '0', '1', '1', '1417681836', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('57', '3', '其它', '0', '1', '0', '0', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('227', '218', 'Windows mobile插件', '0', '1', '5', '1292554412', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('226', '218', 'PalmOS插件', '0', '1', '30', '1292554374', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('225', '218', 'Symbian SDK插件', '0', '1', '2', '1292554348', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('223', '218', 'iOS插件', '0', '1', '3', '1292554295', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('222', '218', 'Android插件', '0', '1', '1', '1292554274', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('336', '335', '新房装修', '1', '1', '1', '1326088071', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('219', '218', '天翼插件', '0', '1', '4', '1292554146', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('218', '0', '移动应用', '0', '1', '8', '1292556202', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('217', '211', '问卷调查', '0', '1', '0', '1292554039', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('216', '211', '意见建议', '0', '1', '0', '1292553967', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('215', '211', '写评论', '0', '1', '0', '1292553942', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('214', '211', '征集创意', '0', '1', '0', '1292553913', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('213', '211', '收集金点子', '0', '1', '0', '1292553863', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('212', '211', '策划', '0', '1', '0', '1292553842', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('211', '0', '头脑风暴', '1', '1', '7', '1326259260', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('236', '234', '法律咨询', '0', '1', '0', '1292554638', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('235', '234', '聘请律师', '0', '1', '0', '1292554609', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('234', '0', '法律服务', '0', '1', '9', '1292556230', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('233', '218', '手机应用汉化', '0', '1', '13', '1292554545', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('232', '218', '手机应用创意', '0', '1', '11', '1292554522', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('231', '218', '手机游戏开发', '0', '1', '8', '1292554501', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('230', '218', 'Amazon kindle插件', '0', '1', '7', '1292554478', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('96', '249', '网游创意', '1', '1', '0', '1326091312', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('122', '121', '软件测试', '0', '1', '0', '1292549609', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('123', '121', '游戏开发', '0', '1', '0', '1292549642', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('130', '3', '字体设计', '0', '1', '1', '1326078327', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('131', '3', '贺卡设计', '0', '1', '2', '1326078338', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('132', '3', '礼品设计', '0', '1', '3', '1326078346', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('133', '3', 'QQ表情', '0', '1', '22', '1292549906', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('134', '3', '四格漫画', '0', '1', '4', '1326078355', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('135', '3', '动漫设计', '0', '1', '5', '1326078363', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('136', '3', '排版设计', '0', '1', '6', '1326078371', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('137', '3', '服饰设计', '0', '1', '7', '1326078379', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('138', '3', 'ppt设计', '0', '1', '100', '1326078722', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('140', '3', '台历设计', '0', '1', '8', '1326078388', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('144', '3', '工业设计', '0', '1', '0', '1292550272', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('145', '3', '按钮图标', '0', '1', '0', '1292550300', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('147', '2', '店标设计', '0', '1', '8', '1292550405', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('148', '2', '店招设计', '0', '1', '4', '1292550489', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('149', '335', '房屋建筑设计', '0', '1', '200', '1292550886', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('151', '335', '展会设计', '0', '1', '0', '1292550942', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('152', '335', '办公装修', '0', '1', '0', '1292550977', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('153', '335', '园林景观', '0', '1', '0', '1292551003', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('154', '2', '网店取名', '0', '1', '5', '1292550671', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('155', '2', '网店模板', '0', '1', '6', '1292550700', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('156', '2', '数码摄影', '0', '1', '7', '1326091215', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('158', '335', '形象墙设计', '0', '1', '20', '1292550817', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('159', '335', '店面装修', '0', '1', '0', '1292550854', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('160', '0', '起名取名', '0', '1', '4', '1429522831', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('161', '160', '宝宝起名', '0', '1', '0', '1429522580', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('162', '160', '成人起名', '0', '1', '0', '1292551118', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('163', '160', '公司起名', '0', '1', '0', '1292551152', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('164', '160', '店铺起名', '0', '1', '0', '1292551193', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('165', '160', '品牌起名', '0', '1', '0', '1292551246', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('166', '160', '改名', '0', '1', '0', '1292551260', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('170', '2', '视频制作', '0', '1', '9', '1292552050', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('172', '2', '三维渲染', '0', '1', '11', '1292552099', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('177', '240', '搜索引擎优化', '0', '1', '0', '1292552302', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('178', '240', '论坛推广', '0', '1', '0', '1292552348', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('179', '240', 'QQ群推广', '0', '1', '0', '1292552376', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('180', '240', '博客推广', '0', '1', '0', '1292552410', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('181', '240', '推广注册', '0', '1', '0', '1292552445', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('192', '0', '生活服务', '0', '1', '5', '1292556114', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('193', '192', '市场调查', '0', '1', '0', '1292552891', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('194', '192', '心理咨询', '0', '1', '0', '1292552932', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('195', '192', '移民咨询', '0', '1', '0', '1292552957', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('196', '192', '理财咨询', '0', '1', '0', '1292553000', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('197', '192', '帮我投票', '0', '1', '0', '1292553035', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('198', '192', '跑腿排队', '0', '1', '0', '1292553065', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('199', '192', '家政服务', '0', '1', '0', '1292553095', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('200', '192', '数据导入', '0', '1', '0', '1292553126', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('201', '0', '创意祝福', '0', '1', '6', '1332569940', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('202', '201', '生日祝福', '1', '1', '2', '1292553296', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('203', '201', '爱情表白', '1', '1', '1', '1326080754', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('204', '201', '圣诞祝福', '0', '1', '3', '1292553343', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('205', '201', '新年祝福', '0', '1', '4', '1292553378', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('206', '201', '道歉短信', '0', '1', '9', '1292553406', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('207', '201', '纪念日祝福', '1', '1', '8', '1326080770', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('208', '201', '感恩回馈', '0', '1', '7', '1292553475', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('209', '201', '祝福喜得贵子', '0', '1', '5', '1292553507', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('210', '201', '祝福乔迁新居', '0', '1', '6', '1292553556', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('237', '234', '写法律合同', '0', '1', '0', '1292554661', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('238', '234', '写律师函', '0', '1', '0', '1292554683', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('239', '234', '写诉讼状', '0', '1', '0', '1292554712', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('240', '0', '招聘找人', '0', '1', '10', '1292556254', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('241', '240', '招聘', '0', '1', '0', '1292554785', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('242', '240', '求职', '0', '1', '0', '1292554817', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('243', '240', '寻人', '0', '1', '0', '1292554925', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('245', '240', '找生产商', '0', '1', '0', '1292554973', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('246', '240', '找客户', '0', '1', '0', '1292554993', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('247', '240', '找供应商', '0', '1', '0', '1292555016', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('248', '240', '找人脉', '0', '1', '0', '1292555036', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('249', '0', '网游服务', '1', '1', '11', '1346403489', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('250', '249', '手机游戏', '0', '1', '0', '1292555192', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('251', '249', '游戏试玩', '0', '1', '0', '1292555216', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('252', '249', '评测报告', '0', '1', '0', '1292555239', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('253', '249', '版本设计', '0', '1', '0', '1292555270', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('254', '249', '剧情策划', '0', '1', '0', '1292555293', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('255', '249', '压力测试', '0', '1', '0', '1292555312', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('256', '249', '代写攻略', '0', '1', '0', '1292555335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('257', '249', '活动策划', '0', '1', '0', '1292555359', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('258', '249', '补丁制作', '0', '1', '0', '1292555388', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('259', '249', '游戏视频', '0', '1', '0', '1292555405', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('263', '3', '其他', '0', '1', '40', '1292555839', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('324', '121', '软件汉化', '1', '1', '0', '1326079451', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('325', '121', '程序功能开发', '0', '1', '2', '1326079476', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('326', '121', '软件美工', '0', '1', '0', '1326079503', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('327', '121', '开发文档编写', '0', '1', '0', '1326079573', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('328', '121', '功能完善', '0', '1', '0', '1326079657', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('334', '240', '简历设计', '1', '1', '0', '1326087903', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('331', '201', '彩信', '0', '1', '30', '1326079987', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('332', '249', '问卷调查', '0', '1', '0', '1326080222', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('337', '335', '二手房装修', '1', '1', '2', '1326088083', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('335', '0', '建筑/装修', '1', '1', '12', '1326088053', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('338', '335', '风水咨询', '0', '1', '4', '1326088094', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('339', '335', '装修监理', '0', '1', '8', '1326088103', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('340', '335', '庭院景观设计', '0', '1', '3', '1326088114', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('341', '335', '办公商铺装修', '1', '1', '6', '1326088123', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('342', '335', '自建房设计', '0', '1', '10', '1326088131', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('343', '335', '景观设计', '0', '1', '12', '1326088142', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('344', '335', '3D模型设计', '0', '1', '14', '1326088150', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('348', '3', 'logo设计', '0', '1', '0', '1329450844', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('349', '3', 'vi设计', '0', '1', '0', '1329450844', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('350', '0', '照片美化/编辑', '1', '1', '13', '1329451426', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('351', '350', '艺术照处理', '0', '1', '1', '1329451052', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('352', '350', '照片变卡通', '0', '1', '2', '1329451052', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('353', '350', '电子相册', '0', '1', '3', '1329451052', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('354', '350', '照片美化', '0', '1', '4', '1329451052', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('355', '350', '婚纱照美化', '0', '1', '5', '1329451052', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('356', '350', '图片编辑', '0', '1', '6', '1329451052', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('357', '0', '影视/配音/歌词', '1', '1', '14', '1329451198', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('358', '357', '写剧本', '0', '1', '1', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('359', '357', '影视制作', '0', '1', '2', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('360', '357', '广告配音', '0', '1', '3', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('361', '357', '影视配音', '0', '1', '4', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('362', '357', '动画配音', '0', '1', '5', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('363', '357', '彩铃配音', '0', '1', '6', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('364', '357', '方言配音', '0', '1', '7', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('365', '357', '外语配音', '0', '1', '8', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('366', '357', '创意配音', '0', '1', '9', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('367', '357', '歌词创作', '0', '1', '10', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `keke_witkey_industry` VALUES ('368', '357', '歌词谱曲', '0', '1', '11', '1329451335', '0', '0', '0', '0', '1', '1', null, null, null);

-- ----------------------------
-- Table structure for keke_witkey_link
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_link`;
CREATE TABLE `keke_witkey_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '链接编号',
  `link_type` int(11) DEFAULT NULL COMMENT '链接类型',
  `link_name` varchar(100) DEFAULT NULL COMMENT '链接名称',
  `link_url` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `link_pic` varchar(100) DEFAULT NULL COMMENT '链接图片',
  `listorder` int(11) DEFAULT NULL COMMENT '链接排序',
  `link_status` int(11) DEFAULT NULL COMMENT '链接状态',
  `on_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `obj_type` char(20) DEFAULT NULL COMMENT '对象类型',
  `obj_id` int(11) DEFAULT NULL COMMENT '对象编号',
  PRIMARY KEY (`link_id`),
  KEY `on_time` (`on_time`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_link
-- ----------------------------
INSERT INTO `keke_witkey_link` VALUES ('1', '1', '任务易', 'http://www.renwuy.com', '0', '0', '1', '1427264754', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('2', '1', '威客圈子', 'http://quan.renwuy.com', '0', '1', '1', '1427264847', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('3', '1', '任务大厅', 'http://task.renwuyi.com', '0', '3', '1', '1427264940', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('4', '1', '客客族', 'http://www.kekezu.com/', '0', '0', '1', '1427265010', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('5', '1', '威客系统演示', 'http://demo.kppw.cn/', '0', '0', '1', '1427265156', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('6', '1', '威客系统', 'http://www.kppw.cn/', '0', '0', '1', '1427265225', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('7', '1', '威客导航', 'http://daohang.renwuyi.com', '0', '0', '1', '1427265273', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('8', '1', '威客百科', 'http://baike.renwuy.com', '0', '0', '1', '1427265322', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('9', '1', '人人能任务', 'http://www.renwuyi.com/renren.html', '0', '0', '1', '1427265566', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('10', '1', '威客领航者', 'http://www.renwuyi.com/renwuyi.html', '0', '0', '1', '1427265619', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('11', '1', '威客返利', 'http://www.renwuyi.com/rebate.html', '0', '0', '1', '1427265671', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('12', '1', '任务易赚钱', 'http://www.renwuyi.com/wszqxx.html', '0', '0', '1', '1427265699', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('13', '1', '综合搜索', 'http://so.renwuyi.com/', '0', '0', '1', '1427265723', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('14', '1', 'KPPW论坛', 'http://bbs.kppw.cn/', '0', '0', '1', '1427266889', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('15', '1', '调查任务', 'http://www.renwuyi.com/renren-view-survey.html', '0', '0', '1', '1427267029', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('16', '1', '微信任务', 'http://www.renwuyi.com/renren-view-weixin.html', '0', '0', '1', '1427267070', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('17', '1', 'QQ任务', 'http://www.renwuyi.com/renren-view-qq.html', '0', '0', '1', '1427267096', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('18', '1', '微博任务', 'http://www.renwuyi.com/renren-view-weibo.html', '0', '0', '1', '1427267134', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('19', '1', '发帖任务', 'http://www.renwuyi.com/renren-view-fatie.html', '0', '0', '1', '1427267163', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('20', '1', '淘宝任务', 'http://www.renwuyi.com/renren-view-taobao.html', '0', '0', '1', '1427267193', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('21', '1', '起名任务', 'http://www.renwuyi.com/renren-view-qiming.html', '0', '0', '1', '1427267224', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('22', '1', '设计任务', 'http://task.renwuyi.com/list-indus-1.html', '0', '0', '1', '1427267255', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('23', '1', '文案任务', 'http://task.renwuyi.com/list-indus-4.html', '0', '0', '1', '1427267294', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('24', '1', '营销任务', 'http://task.renwuyi.com/list-indus-3.html', '0', '0', '1', '1427267318', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('25', '1', '开发任务', 'http://task.renwuyi.com/list-indus-2.html', '0', '0', '1', '1427267345', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('26', '1', '游戏任务', 'http://task.renwuyi.com/list-indus-5.html', '0', '0', '1', '1427267372', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('27', '1', '装修任务', 'http://task.renwuyi.com/list-indus-6.html', '0', '0', '1', '1427267393', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('28', '1', '影音任务', 'http://task.renwuyi.com/list-indus-7.html', '0', '0', '1', '1427267421', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('29', '1', '教育任务', 'http://task.renwuyi.com/list-indus-8.html', '0', '0', '1', '1427267449', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('30', '1', '商务任务', 'http://task.renwuyi.com/list-indus-9.html', '0', '0', '1', '1427267478', '', '0');
INSERT INTO `keke_witkey_link` VALUES ('31', '1', '生活任务', 'http://task.renwuyi.com/list-indus-10.html', '0', '0', '1', '1427267501', '', '0');

-- ----------------------------
-- Table structure for keke_witkey_mark
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_mark`;
CREATE TABLE `keke_witkey_mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `model_code` char(20) DEFAULT '0' COMMENT '模型编号',
  `origin_id` int(11) DEFAULT NULL COMMENT '源对象编号',
  `obj_id` int(11) DEFAULT '0' COMMENT '对象编号',
  `obj_cash` decimal(10,0) DEFAULT '0' COMMENT '对象金额',
  `mark_status` int(11) DEFAULT '0' COMMENT '''评价状态'' (0为尚未评 1好 2中 3差) ',
  `mark_content` text COMMENT '评价内容',
  `mark_time` int(11) DEFAULT '0' COMMENT '评价时间',
  `uid` int(11) DEFAULT '0' COMMENT '被评者编号',
  `username` varchar(20) DEFAULT NULL COMMENT '被评者姓名',
  `mark_max_time` int(11) DEFAULT '0' COMMENT '自动评论过期时间',
  `by_uid` int(11) DEFAULT '0' COMMENT '评论人编号',
  `by_username` varchar(20) DEFAULT NULL COMMENT '评论人用户名',
  `aid` varchar(50) DEFAULT NULL COMMENT '''评价项'' (12,3=>对威客的评价项,4,5=>对雇主的评价项) ',
  `aid_star` varchar(50) DEFAULT NULL COMMENT '对应的评价项的星数',
  `mark_value` decimal(10,2) DEFAULT '0.00' COMMENT '评分所得能力值或信誉值',
  `mark_type` int(1) DEFAULT NULL COMMENT '''评论者角色'' (1任务发布者或买家 2为任务威客或卖家) ',
  `mark_count` int(10) DEFAULT '0' COMMENT '评价次数',
  PRIMARY KEY (`mark_id`),
  KEY `index_3` (`uid`),
  KEY `index_4` (`obj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_mark
-- ----------------------------
INSERT INTO `keke_witkey_mark` VALUES ('1', 'sreward', '1', '1', '2000', '1', '很不错的买家，合作很愉快', '1433917332', '2', '烂苹果丶', '1434176532', '3', '暗夜行路', '4,5', '5.0,5.0', '2000.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('2', 'sreward', '1', '1', '1800', '1', '很好很强大', '1433917332', '3', '暗夜行路', '1434176532', '2', '烂苹果丶', '1,2,3', '5.0,5.0,5.0', '1800.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('3', 'preward', '13', '3', '100', '1', null, '1433917448', '3', '暗夜行路', '1434176648', '2', '烂苹果丶', '4,5', '5.0,5.0', '100.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('4', 'preward', '13', '3', '90', '1', null, '1433917448', '2', '烂苹果丶', '1434176648', '3', '暗夜行路', '1,2,3', '5.0,5.0,5.0', '90.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('5', 'preward', '13', '4', '100', '1', null, '1433917494', '3', '暗夜行路', '1434176694', '6', '兰陵王', '4,5', '5.0,5.0', '100.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('6', 'preward', '13', '4', '90', '1', null, '1433917494', '6', '兰陵王', '1434176694', '3', '暗夜行路', '1,2,3', '5.0,5.0,5.0', '90.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('7', 'mreward', '11', '5', '100', '1', null, '1433918421', '3', '暗夜行路', '1434177621', '9', '赵默笙', '4,5', '5.0,5.0', '100.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('8', 'mreward', '11', '5', '80', '1', null, '1433918421', '9', '赵默笙', '1434177621', '3', '暗夜行路', '1,2,3', '5.0,5.0,5.0', '80.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('9', 'preward', '26', '6', '50', '1', null, '1433918889', '3', '暗夜行路', '1434178089', '5', '骑姐丶', '4,5', '5.0,5.0', '50.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('10', 'preward', '26', '6', '45', '1', null, '1433918889', '5', '骑姐丶', '1434178089', '3', '暗夜行路', '1,2,3', '5.0,5.0,5.0', '45.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('11', 'preward', '26', '7', '50', '1', null, '1433919215', '3', '暗夜行路', '1434178415', '5', '骑姐丶', '4,5', '5.0,5.0', '50.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('12', 'preward', '26', '7', '45', '1', null, '1433919215', '5', '骑姐丶', '1434178415', '3', '暗夜行路', '1,2,3', '5.0,5.0,5.0', '45.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('13', 'preward', '32', '8', '50', '1', null, '1433935444', '1', 'admin', '1434194644', '6', '兰陵王', '4,5', '5.0,5.0', '50.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('14', 'preward', '32', '8', '45', '1', null, '1433935444', '6', '兰陵王', '1434194644', '1', 'admin', '1,2,3', '5.0,5.0,5.0', '45.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('15', 'preward', '32', '9', '50', '1', null, '1433935728', '1', 'admin', '1434194928', '3', '暗夜行路', '4,5', '5.0,5.0', '50.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('16', 'preward', '32', '9', '45', '1', null, '1433935728', '3', '暗夜行路', '1434194928', '1', 'admin', '1,2,3', '5.0,5.0,5.0', '45.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('17', 'dtender', '35', '1', '300', '1', null, '1434012204', '1', 'admin', '1434271404', '2', '烂苹果丶', '4,5', '5.0,5.0', '300.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('18', 'dtender', '35', '1', '270', '1', '规范的个梵蒂冈梵蒂冈梵蒂冈', '1434012204', '2', '烂苹果丶', '1434271404', '1', 'admin', '1,2,3', '5.0,4.5,5.0', '270.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('19', 'dtender', '36', '2', '200', '1', null, '1434012462', '1', 'admin', '1434271662', '2', '烂苹果丶', '4,5', '5.0,5.0', '200.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('20', 'dtender', '36', '2', '180', '1', '和规范和规范化个复合肥', '1434012462', '2', '烂苹果丶', '1434271662', '1', 'admin', '1,2,3', '5.0,5.0,5.0', '180.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('21', 'preward', '39', '13', '1', '1', null, '1434016126', '1', 'admin', '1434275326', '3', '暗夜行路', '4,5', '5.0,5.0', '1.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('22', 'preward', '39', '13', '1', '1', null, '1434016126', '3', '暗夜行路', '1434275326', '1', 'admin', '1,2,3', '5.0,5.0,5.0', '1.00', '2', '1');
INSERT INTO `keke_witkey_mark` VALUES ('23', 'preward', '39', '14', '1', '1', null, '1434016126', '1', 'admin', '1434275326', '6', '兰陵王', '4,5', '5.0,5.0', '1.00', '1', '1');
INSERT INTO `keke_witkey_mark` VALUES ('24', 'preward', '39', '14', '1', '1', null, '1434016126', '6', '兰陵王', '1434275326', '1', 'admin', '1,2,3', '5.0,5.0,5.0', '1.00', '2', '1');

-- ----------------------------
-- Table structure for keke_witkey_mark_aid
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_mark_aid`;
CREATE TABLE `keke_witkey_mark_aid` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价类目编号',
  `aid_name` varchar(255) DEFAULT NULL COMMENT '类目名称',
  `aid_type` int(1) DEFAULT NULL COMMENT '''类目类型(1=>对威客的评价,2=>对雇主的评价)'' ',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_mark_aid
-- ----------------------------
INSERT INTO `keke_witkey_mark_aid` VALUES ('1', '工作速度', '2');
INSERT INTO `keke_witkey_mark_aid` VALUES ('2', '工作质量', '2');
INSERT INTO `keke_witkey_mark_aid` VALUES ('3', '工作态度', '2');
INSERT INTO `keke_witkey_mark_aid` VALUES ('4', '付款及时性', '1');
INSERT INTO `keke_witkey_mark_aid` VALUES ('5', '合作愉快度', '1');

-- ----------------------------
-- Table structure for keke_witkey_mark_config
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_mark_config`;
CREATE TABLE `keke_witkey_mark_config` (
  `mark_config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置编号',
  `obj` char(20) DEFAULT NULL COMMENT '模型对象',
  `good` int(3) DEFAULT NULL COMMENT '好评',
  `normal` int(3) DEFAULT NULL COMMENT '中评',
  `bad` int(3) DEFAULT NULL COMMENT '差评',
  `type` int(1) DEFAULT NULL COMMENT '''评价类型'' (1=>威客 , 2=>雇主) ',
  PRIMARY KEY (`mark_config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_mark_config
-- ----------------------------
INSERT INTO `keke_witkey_mark_config` VALUES ('2', 'sreward', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('3', 'mreward', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('4', 'mreward', '100', '70', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('5', 'preward', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('6', 'preward', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('7', 'dtender', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('8', 'dtender', '100', '50', '1', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('9', 'tender', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('10', 'tender', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('11', 'goods', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('12', 'goods', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('13', 'service', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('14', 'service', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('1', 'sreward', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('15', 'match', '100', '50', '0', '1');
INSERT INTO `keke_witkey_mark_config` VALUES ('16', 'match', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('17', 'hongbao', '100', '50', '0', '2');
INSERT INTO `keke_witkey_mark_config` VALUES ('18', 'hongbao', '100', '50', '0', '1');

-- ----------------------------
-- Table structure for keke_witkey_mark_rule
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_mark_rule`;
CREATE TABLE `keke_witkey_mark_rule` (
  `mark_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `g_value` int(11) DEFAULT NULL COMMENT '信誉值',
  `m_value` int(11) DEFAULT NULL COMMENT '能力值',
  `g_title` varchar(50) DEFAULT NULL COMMENT '雇主头衔',
  `m_title` varchar(50) DEFAULT NULL COMMENT '威客头衔',
  `g_ico` varchar(200) DEFAULT NULL COMMENT '雇主图标',
  `m_ico` varchar(200) DEFAULT NULL COMMENT '威客图标',
  PRIMARY KEY (`mark_rule_id`),
  KEY `index_1` (`mark_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_mark_rule
-- ----------------------------
INSERT INTO `keke_witkey_mark_rule` VALUES ('1', '200', '200', '一级雇主', '一级威客', 'data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881', 'data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067');
INSERT INTO `keke_witkey_mark_rule` VALUES ('2', '500', '500', '二级雇主', '二级威客', 'data/uploads/sys/mark/98734f3b080f7c2ee.gif?fid=2068', 'data/uploads/sys/mark/189344f3b081362561.gif?fid=2069');
INSERT INTO `keke_witkey_mark_rule` VALUES ('3', '1000', '1000', '三级雇主', '三级威客', 'data/uploads/sys/mark/98544f3b082a11c00.gif?fid=2070', 'data/uploads/sys/mark/306874f3b082e22fc3.gif?fid=2071');
INSERT INTO `keke_witkey_mark_rule` VALUES ('4', '2000', '2000', '四级雇主', '四级威客', 'data/uploads/sys/mark/140154f3b084cba568.gif?fid=2072', 'data/uploads/sys/mark/126844f3b085182758.gif?fid=2073');
INSERT INTO `keke_witkey_mark_rule` VALUES ('5', '3000', '3000', '五级雇主', '五级威客', 'data/uploads/sys/mark/262274f3b086f5cbfe.gif?fid=2074', 'data/uploads/sys/mark/228324f3b0872c6f04.gif?fid=2075');
INSERT INTO `keke_witkey_mark_rule` VALUES ('6', '3500', '3500', '六级雇主', '六级威客', 'data/uploads/sys/mark/188574f3b088a50adf.gif?fid=2076', 'data/uploads/sys/mark/28624f3b088d957db.gif?fid=2077');

-- ----------------------------
-- Table structure for keke_witkey_member
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member`;
CREATE TABLE `keke_witkey_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `rand_code` char(6) DEFAULT NULL COMMENT '随机码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member
-- ----------------------------
INSERT INTO `keke_witkey_member` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '6g3shu', 'admin@admin.com');
INSERT INTO `keke_witkey_member` VALUES ('2', '烂苹果丶', 'e10adc3949ba59abbe56e057f20f883e', 'uw7g3r', '422620@qq.com');
INSERT INTO `keke_witkey_member` VALUES ('3', '暗夜行路', 'e10adc3949ba59abbe56e057f20f883e', 'lw6ag6', '154542185@qq.com');
INSERT INTO `keke_witkey_member` VALUES ('4', 'dabomei', 'e10adc3949ba59abbe56e057f20f883e', '9fjqj6', '123456@qq.com');
INSERT INTO `keke_witkey_member` VALUES ('5', '骑姐丶', 'e10adc3949ba59abbe56e057f20f883e', '50pb60', 'asdf@163.com');
INSERT INTO `keke_witkey_member` VALUES ('6', '兰陵王', 'e10adc3949ba59abbe56e057f20f883e', 'op1mxf', '125451215@qq.com');
INSERT INTO `keke_witkey_member` VALUES ('7', '大姨父丶', 'e10adc3949ba59abbe56e057f20f883e', '5dh6kw', '123@qq.com');
INSERT INTO `keke_witkey_member` VALUES ('8', '京巴丶', 'e10adc3949ba59abbe56e057f20f883e', 'ald7lr', 'jingba@163.com');
INSERT INTO `keke_witkey_member` VALUES ('9', '赵默笙', 'e10adc3949ba59abbe56e057f20f883e', 'zeqgyj', '1254878141@qq.com');

-- ----------------------------
-- Table structure for keke_witkey_member_bank
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member_bank`;
CREATE TABLE `keke_witkey_member_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '银行编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `real_name` char(20) DEFAULT NULL COMMENT '用户名',
  `company` varchar(100) DEFAULT NULL COMMENT '企业机构名称',
  `card_id` char(20) DEFAULT NULL COMMENT '身份证号码',
  `bank_name` varchar(100) DEFAULT NULL COMMENT '银行名',
  `bank_address` varchar(150) DEFAULT NULL COMMENT '银行地址',
  `bank_sub_name` varchar(100) DEFAULT NULL COMMENT '支行名称',
  `card_num` char(20) DEFAULT NULL COMMENT '银行卡号',
  `bank_type` int(1) DEFAULT NULL COMMENT '''银行类型（1个人，2企业，3线上）'' ',
  `bind_status` int(1) DEFAULT NULL COMMENT '绑定银行状态',
  `on_time` int(10) DEFAULT NULL COMMENT '时间',
  `bank_full_name` varchar(100) DEFAULT NULL COMMENT '银行全称',
  PRIMARY KEY (`bank_id`),
  KEY `bank_id` (`bank_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member_bank
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_member_black
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member_black`;
CREATE TABLE `keke_witkey_member_black` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '黑名单编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `expire` int(10) DEFAULT NULL COMMENT '黑名单到期时间',
  `on_time` int(10) DEFAULT NULL COMMENT '添加黑名单时间',
  `login_times` tinyint(1) DEFAULT NULL COMMENT '登录次数',
  PRIMARY KEY (`b_id`),
  KEY `b_id` (`b_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member_black
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_member_ext
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member_ext`;
CREATE TABLE `keke_witkey_member_ext` (
  `ext_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '扩展编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `k` varchar(50) DEFAULT NULL COMMENT '''键''(备注：经历array(v1=>开始时间,v2=>截止时间,v3=>描述,v4=>添加时间) 保密array(k=>联系方式名,v1=>是否公开) 证书array(v1=>证书名称,v2=>图片,v3=>附件编号)) ',
  `v1` varchar(255) DEFAULT NULL COMMENT '值',
  `v2` varchar(255) DEFAULT NULL COMMENT '值',
  `v3` varchar(255) DEFAULT NULL COMMENT '值',
  `v4` varchar(255) DEFAULT NULL COMMENT '值',
  `v5` varchar(255) DEFAULT NULL COMMENT '值',
  `type` char(20) DEFAULT NULL COMMENT '''类型（Exp=>经历, sect=>保密,cret=>证书,pic=>系统图象）'' ',
  PRIMARY KEY (`ext_id`),
  KEY `ext_id` (`ext_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member_ext
-- ----------------------------
INSERT INTO `keke_witkey_member_ext` VALUES ('1', '2', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('2', '2', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('3', '2', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('4', '2', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('5', '2', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('6', '3', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('7', '3', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('8', '3', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('9', '3', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('10', '3', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('11', '4', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('12', '4', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('13', '4', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('14', '4', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('15', '4', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('16', '5', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('17', '5', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('18', '5', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('19', '5', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('20', '5', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('21', '7', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('22', '7', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('23', '7', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('24', '7', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('25', '7', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('26', '8', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('27', '8', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('28', '8', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('29', '8', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('30', '8', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('31', '6', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('32', '6', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('33', '6', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('34', '6', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('35', '6', 'phone', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('36', '1', 'email', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('37', '1', 'mobile', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('38', '1', 'qq', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('39', '1', 'msn', '1', null, null, null, null, 'sect');
INSERT INTO `keke_witkey_member_ext` VALUES ('40', '1', 'phone', '1', null, null, null, null, 'sect');

-- ----------------------------
-- Table structure for keke_witkey_member_group
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member_group`;
CREATE TABLE `keke_witkey_member_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组编号',
  `groupname` varchar(20) DEFAULT NULL COMMENT '组名',
  `group_roles` text COMMENT '组权限',
  `on_time` int(10) DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member_group
-- ----------------------------
INSERT INTO `keke_witkey_member_group` VALUES ('3', '财务人员', '3,76,5,33,36,147,68,70,71,77,38,34,37,35,139,m10', '1365744726');
INSERT INTO `keke_witkey_member_group` VALUES ('7', '客服', '147,80,81,82,58,m10,m11', '1420680820');
INSERT INTO `keke_witkey_member_group` VALUES ('2', '外围客服', '10,11,33,13,12,36,78,79,80,81,82,147,68,70,71,77,38,34,37,35,148,41,7,8,63,141,66,2,73,138,139,59,58,61,156,157,16,14,42,44,154,142,19,21,20,153,28,30,57,32,m610,m611,m612,m713,m714,m715', '1365744743');
INSERT INTO `keke_witkey_member_group` VALUES ('1', '管理员', '152,6,4,76,5,155,10,11,33,13,12,36,78,79,38,173,147,70,71,80,81,82,34,37,35,41,210,7,63,2,73,157,16,14,42,44,154,142,19,21,20,153,28,30,32,208,138,139,59,58,61,206,207,170,m610,m611,m612,m713,m714,m715,m10,m11,m22,m23,m34,m35,m46,m47,m58,m59,m816,m817,m918,m919,m1020,m1021,m1222,m1223', '1423027904');
INSERT INTO `keke_witkey_member_group` VALUES ('8', '编辑', '11,156,157,16,14,44,42,154,59,58,61', '1378259868');

-- ----------------------------
-- Table structure for keke_witkey_member_oauth
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member_oauth`;
CREATE TABLE `keke_witkey_member_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `source` char(20) DEFAULT NULL COMMENT '微博类型',
  `account` varchar(50) DEFAULT NULL COMMENT '微博账号名',
  `uid` int(11) DEFAULT NULL COMMENT '绑定用户编号',
  `username` varchar(20) DEFAULT NULL COMMENT '绑定账号名称',
  `on_time` int(10) DEFAULT NULL COMMENT '绑定时间',
  `oauth_id` varchar(50) DEFAULT NULL COMMENT '微博账号',
  `bind_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_member_oltime
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_member_oltime`;
CREATE TABLE `keke_witkey_member_oltime` (
  `oltime_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `user_status` tinyint(4) DEFAULT NULL COMMENT '用户状态',
  `last_op_time` int(11) DEFAULT NULL COMMENT '上次操作时间',
  `online_total_time` int(11) DEFAULT NULL COMMENT '用户在线总时长',
  PRIMARY KEY (`oltime_id`),
  KEY `oltime_id` (`oltime_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_member_oltime
-- ----------------------------
INSERT INTO `keke_witkey_member_oltime` VALUES ('1', '2', '烂苹果丶', null, '1434012063', '4800');
INSERT INTO `keke_witkey_member_oltime` VALUES ('2', '3', '暗夜行路', null, '1434016333', '12000');
INSERT INTO `keke_witkey_member_oltime` VALUES ('3', '4', 'dabomei', null, '1433922505', '3600');
INSERT INTO `keke_witkey_member_oltime` VALUES ('4', '5', '骑姐丶', null, '1433927892', '3600');
INSERT INTO `keke_witkey_member_oltime` VALUES ('5', '6', '兰陵王', null, '1434015979', '0');
INSERT INTO `keke_witkey_member_oltime` VALUES ('6', '7', '大姨父丶', null, '1433920787', '0');
INSERT INTO `keke_witkey_member_oltime` VALUES ('7', '8', '京巴丶', null, '1433922402', '1200');
INSERT INTO `keke_witkey_member_oltime` VALUES ('8', '9', '赵默笙', null, '1433918292', '600');

-- ----------------------------
-- Table structure for keke_witkey_model
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_model`;
CREATE TABLE `keke_witkey_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模型编号',
  `model_code` varchar(20) DEFAULT NULL COMMENT '模型代码',
  `model_name` varchar(20) DEFAULT NULL COMMENT '模型中文名',
  `model_dir` varchar(20) DEFAULT NULL COMMENT '模型文件夹',
  `model_type` char(10) DEFAULT NULL COMMENT '模型类型(task,shop)',
  `model_dev` varchar(20) DEFAULT NULL COMMENT '开发者',
  `model_status` int(11) DEFAULT NULL COMMENT '模型开启状态',
  `model_desc` text COMMENT '模型描述',
  `on_time` int(11) DEFAULT NULL COMMENT '安装时间',
  `hide_mode` int(11) DEFAULT NULL COMMENT '是否私有模式（0=>非私有，1=>私有）',
  `listorder` int(11) DEFAULT '0' COMMENT '模型排序',
  `model_intro` varchar(255) DEFAULT NULL COMMENT '模型介绍',
  `indus_bid` text COMMENT '绑定行业',
  `config` text COMMENT '模型扩展配置',
  `open_custom` tinyint(4) DEFAULT '0' COMMENT '是否开启自定义字段',
  PRIMARY KEY (`model_id`),
  KEY `model_id` (`model_id`),
  KEY `on_time` (`on_time`),
  KEY `model_status` (`model_status`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_model
-- ----------------------------
INSERT INTO `keke_witkey_model` VALUES ('3', 'preward', '计件悬赏', 'preward', 'task', 'kekezu', '1', '计件悬赏任务的一般流程是：&lt;br /&gt;1、雇主发布任务将任务金额托管到网站平台&lt;br /&gt;2、众多威客参与并提交方案&lt;br /&gt;3、雇主选择满意方案，设置方案中标状态&lt;br /&gt;4、方案中标发放赏金&lt;br /&gt;', '1397731057', '0', '3', '计件悬赏任务是威客完成的任务的数量支付报酬的一种任务模式。此任务模式适合技术含量比较低，报酬微少5', '217,216,215,214', 'a:12:{s:10:\"audit_cash\";s:3:\"100\";s:8:\"min_cash\";s:4:\"0.02\";s:9:\"task_rate\";s:2:\"10\";s:14:\"task_fail_rate\";s:1:\"5\";s:11:\"work_hidden\";s:1:\"0\";s:7:\"min_day\";s:1:\"2\";s:11:\"choose_time\";s:1:\"1\";s:8:\"mark_day\";s:1:\"1\";s:14:\"min_delay_cash\";s:1:\"1\";s:9:\"max_delay\";s:1:\"2\";s:12:\"work_percent\";s:3:\"200\";s:15:\"is_auto_adjourn\";s:1:\"1\";}', '0');
INSERT INTO `keke_witkey_model` VALUES ('2', 'mreward', '多人悬赏', 'mreward', 'task', 'kekezu', '1', '&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 多人悬赏任务是指您在发布任务时，先将任务赏金全额托管到平台，再从交稿中选出满意的稿件任务。该任务获奖任务为雇主发布任务时设置的奖项总数目（一等奖，二等奖，三等奖的总和）,获奖者将会根据自己的奖项排名获取相应的赏金。&lt;br /&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;strong&gt;多人悬赏任务的一般流程是：&lt;/strong&gt;&lt;br /&gt;1、雇主发布任务会将对应的任务金额托管到网站平台；&lt;br /&gt;2、众多威客参与任务并提交方案，等待雇主选择方案；&lt;br /&gt;3、雇主会根据方案的优劣，设置相应的稿件奖项排名（如：一等奖，二等奖等）；&lt;br /&gt;4、雇主分配奖项后，如果选稿期结束该任务会进入公示期，在该时期威客可以用相应操作权限，一旦公示期结束，平台会给获奖的威客支付赏金（平台提成一定的比例），如果该任务还有多余的金额，平台会将多余的金额返还给雇主（平台提成一定的比例）。&lt;p&gt;&lt;/p&gt;', '1397730650', '0', '2', '多人悬赏任务是按威客在该任务中获奖的排名来获取支付报酬的一种任务模式。', '203,202,204,205,209,210,208,207,206,331', 'a:12:{s:10:\"audit_cash\";s:3:\"100\";s:8:\"min_cash\";s:4:\"0.01\";s:9:\"task_rate\";s:2:\"20\";s:14:\"task_fail_rate\";s:1:\"5\";s:11:\"work_hidden\";s:1:\"0\";s:13:\"notice_period\";s:1:\"0\";s:7:\"min_day\";s:1:\"2\";s:11:\"choose_time\";s:1:\"1\";s:14:\"min_delay_cash\";s:1:\"2\";s:9:\"max_delay\";s:1:\"3\";s:10:\"end_action\";s:6:\"refund\";s:16:\"auto_choose_rule\";s:8:\"take_num\";}', '0');
INSERT INTO `keke_witkey_model` VALUES ('5', 'dtender', '订金招标', 'dtender', 'task', 'kekezu', '1', '&lt;div class=\"mod-top\"&gt;&lt;div class=\"card-summary nslog-area\" data-nslog-type=\"72\"&gt;&lt;div class=\"card-summary-content\"&gt;&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 订金招标是指托管任务订金，选择应标威客完成任务的任务类型。任务采用选择威客完成任务的方式，避免了全款悬赏任务威客作品浪费的现象。&lt;br /&gt;&lt;/p&gt;&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 订金招标流程较复杂，用时较长，但效果较好且能有效防止诈骗，特别适合大中型任务的发布这些任务可以考虑使用订金招标：VI/SI等大型设计项目，长期的画册设计外包，多页面的网页设计，电子杂志设计，网站程序开发，软件开发，音视频拍摄/调整，视频短片，大型翻译…… &lt;br /&gt;&lt;/p&gt;&lt;p&gt;　&lt;strong&gt;任务流程：雇主发布订金招标任务并托管任务款后，等待威客来参加任务。威客可以通过搜索等方式查看到该订金招标任务，并依据任务雇主的需求，提出解决方案。雇主查看到最合适最优秀的方案后，即可邀请提交此方案的威客写任务合同。双方对任务合同协调无异议后，即可确定该合同生效，并进入任务实施阶段。分期发放任务赏金。订金招标任务成功结束&lt;/strong&gt;。&lt;br /&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;br /&gt;', '1397731903', '0', '5', '订金招标任务是采用选择威客完成任务的方式，避免了全款悬赏任务威客作品浪费的现象。', '153,159,336,337', 'a:11:{s:10:\"open_audit\";s:4:\"open\";s:11:\"work_hidden\";s:1:\"0\";s:11:\"pay_methods\";s:5:\"scale\";s:7:\"deposit\";s:2:\"55\";s:13:\"deposit_scale\";s:2:\"30\";s:9:\"task_rate\";s:2:\"10\";s:14:\"task_fail_rate\";s:2:\"10\";s:12:\"bid_max_time\";s:3:\"100\";s:12:\"bid_min_time\";s:1:\"1\";s:14:\"pay_limit_time\";s:1:\"2\";s:18:\"confirm_limit_time\";s:1:\"1\";}', '0');
INSERT INTO `keke_witkey_model` VALUES ('6', 'goods', '威客作品', 'goods', 'shop', 'kekezu', '1', '&lt;strong&gt;威客作品的一般流程是：&lt;/strong&gt;&lt;br /&gt;&lt;p&gt;1、卖家在网站平台上上传作品（作品价格小于一定金额需要后台进行审核）&lt;/p&gt;&lt;p&gt;2、买家购买作品后，付款&lt;/p&gt;&lt;p&gt;4、付款后，等待卖家提供作品（有站内下载和站外交付两种）&lt;/p&gt;&lt;p&gt;5、买家确认作品后，卖家即可得到相应的作品金额&lt;/p&gt;&lt;p&gt;如果交易过程中不满意，可以申请仲裁a&lt;br /&gt;&lt;/p&gt;&lt;br /&gt;', '1398047646', '0', '6', '威客作品是网络商城的一种交易模式。666', '28,31,32', 'a:4:{s:8:\"min_cash\";s:2:\"30\";s:15:\"confirm_max_day\";s:1:\"1\";s:14:\"service_profit\";s:2:\"10\";s:13:\"max_filecount\";s:1:\"1\";}', '1');
INSERT INTO `keke_witkey_model` VALUES ('7', 'service', '威客服务', 'service', 'shop', 'kekezu', '1', '&lt;strong&gt;威客作品的一般流程是：&lt;/strong&gt;&lt;br /&gt;&lt;p&gt;1、卖家在网站平台上上传服务&lt;/p&gt;&lt;p&gt;2、买家购买服务后，付款&lt;/p&gt;&lt;p&gt;3、付款后，等待卖家提供服务&lt;/p&gt;&lt;br /&gt;', '1394781049', '0', '7', '', null, 'a:4:{s:14:\"service_profit\";s:1:\"1\";s:8:\"min_cash\";s:2:\"10\";s:15:\"confirm_max_day\";s:1:\"1\";s:12:\"overdue_type\";s:6:\"custom\";}', '1');
INSERT INTO `keke_witkey_model` VALUES ('1', 'sreward', '单人悬赏', 'sreward', 'task', 'kekezu', '1', '&lt;p&gt;计件悬赏任务的一般流程是：&lt;/p&gt;&lt;p&gt;1、雇主发布任务将任务金额托管到网站平台&lt;/p&gt;&lt;p&gt;2、众多威客参与并提交方案&lt;/p&gt;&lt;p&gt;3、雇主选择满意方案，设置方案入围状态，商议最终价格&lt;/p&gt;&lt;p&gt;4、雇主从入围方案中选择中标方案&lt;/p&gt;&lt;p&gt;5、方案中标发放赏金。如果议价金额小于托管金额网站返还雇主多余赏金。&lt;br/&gt;&lt;/p&gt;', '1429235175', '0', '1', '单人悬赏常用于发布一些时间短，需要创意型的任务，例如给宝宝起名，店铺起名，设计网站logo，贺卡设计', '', 'a:16:{s:10:\"audit_cash\";s:4:\"0.01\";s:8:\"min_cash\";s:4:\"0.01\";s:9:\"task_rate\";s:2:\"10\";s:14:\"task_fail_rate\";s:2:\"10\";s:11:\"work_hidden\";s:1:\"0\";s:13:\"notice_period\";s:1:\"0\";s:7:\"min_day\";s:2:\"90\";s:11:\"vote_period\";s:1:\"1\";s:14:\"reg_vote_limit\";s:1:\"1\";s:11:\"choose_time\";s:1:\"1\";s:19:\"agree_complete_time\";s:1:\"2\";s:14:\"min_delay_cash\";s:2:\"10\";s:9:\"max_delay\";s:1:\"2\";s:10:\"end_action\";s:5:\"split\";s:10:\"witkey_num\";s:1:\"2\";s:16:\"auto_choose_rule\";s:9:\"work_time\";}', '1');
INSERT INTO `keke_witkey_model` VALUES ('4', 'tender', '普通招标', 'tender', 'task', 'kekezu', '1', '&lt;p&gt;普通招标，雇主选择中标者后，交付将在线下完成，雇主确认后，任务完成，普能招标，网站只收取固定的服务费用,&lt;/p&gt;&lt;p&gt;普通招标将不能增涨双方的信誉值，与能力值&lt;br /&gt;&lt;/p&gt;&lt;br /&gt;', '1397731365', '0', '4', '普通招标，网站不托管招标金额，所发生任何纠份网站不负责', '10,12,13', 'a:6:{s:8:\"zb_audit\";s:1:\"1\";s:11:\"work_hidden\";s:1:\"0\";s:7:\"zb_fees\";s:1:\"1\";s:11:\"zb_max_time\";s:4:\"1000\";s:11:\"zb_min_time\";s:1:\"2\";s:11:\"choose_time\";s:1:\"2\";}', '0');

-- ----------------------------
-- Table structure for keke_witkey_msg
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_msg`;
CREATE TABLE `keke_witkey_msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '短信编号',
  `msg_pid` int(11) DEFAULT '0' COMMENT '短信父编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `to_uid` int(11) DEFAULT NULL COMMENT '收件人编号',
  `to_username` varchar(50) DEFAULT NULL COMMENT '收件人名',
  `msg_status` tinyint(4) DEFAULT '0' COMMENT '删除状态(1=>发送方删，2=>接收方删，3=>在状态为2时发放删除)',
  `view_status` tinyint(4) DEFAULT '0' COMMENT '查看状态',
  `title` varchar(100) DEFAULT NULL COMMENT '短信标题',
  `content` text COMMENT '短信内容',
  `on_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `type` int(11) DEFAULT NULL COMMENT '消息类型（1交易通知 2系统通知 3私人短信）',
  PRIMARY KEY (`msg_id`),
  KEY `msg_pid` (`msg_pid`),
  KEY `on_time` (`on_time`),
  KEY `recive_uid` (`to_uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_msg
-- ----------------------------
INSERT INTO `keke_witkey_msg` VALUES ('1', '0', '0', null, '2', '烂苹果丶', '0', '0', '后台手动充值通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员充值您现金1000000，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433904230', '2');
INSERT INTO `keke_witkey_msg` VALUES ('2', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;您的任务1婚纱摄影网站，有原型，有HTML，套后台投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：1&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=1\"  target=\"_blank\">婚纱摄影网站，有原型，有HTML，套后台</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 10:46:15&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-23 10:46:15&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-24 10:46:15&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433904387', '1');
INSERT INTO `keke_witkey_msg` VALUES ('3', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;您的任务2destoon程序做的网站，解决占用CPU高投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：2&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=2\"  target=\"_blank\">destoon程序做的网站，解决占用CPU高</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 10:51:34&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 10:51:34&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 10:51:34&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433904725', '1');
INSERT INTO `keke_witkey_msg` VALUES ('4', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;您的任务3仿快播 Windows客户端、服务器端投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：3&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=3\"  target=\"_blank\">仿快播 Windows客户端、服务器端</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 10:53:12&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 10:53:12&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 10:53:12&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433904802', '1');
INSERT INTO `keke_witkey_msg` VALUES ('5', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;您的任务4设计一个支付（POS机公司）公司的网站投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：4&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=4\"  target=\"_blank\">设计一个支付（POS机公司）公司的网站</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 10:55:29&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 10:55:29&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 10:55:29&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433904952', '1');
INSERT INTO `keke_witkey_msg` VALUES ('6', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;您的任务5需要通过货运单号采集当月客户信息的软件投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：5&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=5\"  target=\"_blank\">需要通过货运单号采集当月客户信息的软件</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 10:57:48&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 10:57:48&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 10:57:48&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905074', '1');
INSERT INTO `keke_witkey_msg` VALUES ('7', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;您的任务6网站升级加微网站手机应用开发投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：6&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=6\"  target=\"_blank\">网站升级加微网站手机应用开发</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:00:25&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 11:00:25&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 11:00:25&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905244', '1');
INSERT INTO `keke_witkey_msg` VALUES ('8', '0', '0', null, '3', '暗夜行路', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 暗夜行路：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#7&lt;/p&gt;', '1433905414', '1');
INSERT INTO `keke_witkey_msg` VALUES ('9', '0', '0', null, '3', '暗夜行路', '0', '0', '后台手动充值通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员充值您现金10000，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905442', '2');
INSERT INTO `keke_witkey_msg` VALUES ('10', '0', '0', null, '4', 'dabomei', '0', '0', '后台手动充值通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员充值您现金1000000，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905536', '2');
INSERT INTO `keke_witkey_msg` VALUES ('11', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务8耳机行业互联网商业计划书撰写投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：8&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=8\"  target=\"_blank\">耳机行业互联网商业计划书撰写</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:04:50&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 11:04:50&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 11:04:50&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905551', '1');
INSERT INTO `keke_witkey_msg` VALUES ('12', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务9做一个运动场地在线发布和预定的b2c平台投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：9&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=9\"  target=\"_blank\">做一个运动场地在线发布和预定的b2c平台</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:09:02&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 11:09:02&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 11:09:02&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905748', '1');
INSERT INTO `keke_witkey_msg` VALUES ('13', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务10体育用品公司LOGO设计，名片设计投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：10&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=10\"  target=\"_blank\">体育用品公司LOGO设计，名片设计</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:11:31&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-30 11:11:31&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 11:11:31&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905897', '1');
INSERT INTO `keke_witkey_msg` VALUES ('14', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务115000元开发微信大屏系统投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：11&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=11\"  target=\"_blank\">5000元开发微信大屏系统</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:12:09&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-04-22 11:12:09&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-04-23 11:12:09&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433905935', '1');
INSERT INTO `keke_witkey_msg` VALUES ('15', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务13模仿国外网站 建立服装推广网站投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：13&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=13\"  target=\"_blank\">模仿国外网站 建立服装推广网站</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:14:23&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-30 11:14:23&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 11:14:23&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906069', '1');
INSERT INTO `keke_witkey_msg` VALUES ('16', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务12辣PLUS麻辣小龙虾文案投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：12&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=12\"  target=\"_blank\">辣PLUS麻辣小龙虾文案</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:14:10&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 11:14:10&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 11:14:10&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906109', '1');
INSERT INTO `keke_witkey_msg` VALUES ('17', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务15蜂花恋品牌LOGO设计投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：15&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=15\"  target=\"_blank\">蜂花恋品牌LOGO设计</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:17:05&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 11:17:05&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 11:17:05&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906233', '1');
INSERT INTO `keke_witkey_msg` VALUES ('18', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务17一品威客官网App名称征集投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：17&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=17\"  target=\"_blank\">一品威客官网App名称征集</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:19:27&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 11:19:27&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 11:19:27&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906373', '1');
INSERT INTO `keke_witkey_msg` VALUES ('19', '0', '0', null, '3', '暗夜行路', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 暗夜行路：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#16&lt;/p&gt;', '1433906381', '1');
INSERT INTO `keke_witkey_msg` VALUES ('20', '0', '0', null, '3', '暗夜行路', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 暗夜行路：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#14&lt;/p&gt;', '1433906384', '1');
INSERT INTO `keke_witkey_msg` VALUES ('21', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务18PHP网站修改.产品搜索功能修改投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：18&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=18\"  target=\"_blank\">PHP网站修改.产品搜索功能修改</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:22:09&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 11:22:09&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 11:22:09&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906534', '1');
INSERT INTO `keke_witkey_msg` VALUES ('22', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务19钻达集团VI手册设计投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：19&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=19\"  target=\"_blank\">钻达集团VI手册设计</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:23:19&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 11:23:19&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 11:23:19&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906604', '1');
INSERT INTO `keke_witkey_msg` VALUES ('23', '0', '0', null, '3', '暗夜行路', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 暗夜行路：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#20&lt;/p&gt;', '1433906692', '1');
INSERT INTO `keke_witkey_msg` VALUES ('24', '0', '0', null, '4', 'dabomei', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 dabomei：&lt;/p&gt;&lt;p&gt;您的任务22微拍贷logo设计投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：22&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=22\"  target=\"_blank\">微拍贷logo设计</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 11:26:52&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 11:26:52&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 11:26:52&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433906818', '1');
INSERT INTO `keke_witkey_msg` VALUES ('25', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务24大学毕业论文求稿投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：24&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=24\"  target=\"_blank\">大学毕业论文求稿</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 13:46:24&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 13:46:24&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 13:46:24&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433915760', '1');
INSERT INTO `keke_witkey_msg` VALUES ('26', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务25小型电商网站建设可用模板投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：25&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=25\"  target=\"_blank\">小型电商网站建设可用模板</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 13:59:33&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 13:59:33&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 13:59:33&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433915978', '1');
INSERT INTO `keke_witkey_msg` VALUES ('27', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务26一张web登陆页面和两张APP登陆页面投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：26&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=26\"  target=\"_blank\">一张web登陆页面和两张APP登陆页面</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 14:03:46&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-30 14:03:46&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 14:03:46&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433916232', '1');
INSERT INTO `keke_witkey_msg` VALUES ('28', '0', '0', null, '5', '骑姐丶', '0', '0', '后台手动充值通知', '&lt;p&gt;尊敬的 骑姐丶：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员充值您现金1000000，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433916682', '2');
INSERT INTO `keke_witkey_msg` VALUES ('29', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;暗夜行路向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=1\">婚纱摄影网站，有原型，有HTML，套后台</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433916910', '1');
INSERT INTO `keke_witkey_msg` VALUES ('30', '0', '0', null, '3', '暗夜行路', '0', '0', '任务进入交付阶段', '<p>尊敬的 暗夜行路：</p><p>任务进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433916994', '1');
INSERT INTO `keke_witkey_msg` VALUES ('31', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务进入交付阶段', '<p>尊敬的 烂苹果丶：</p><p>任务进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433916994', '1');
INSERT INTO `keke_witkey_msg` VALUES ('32', '0', '0', null, '3', '暗夜行路', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主中标，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：1&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=1\" target=\"_blank\" >婚纱摄影网站，有原型，有HTML，套后台</a>中标金额:1800.00&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433916994', '1');
INSERT INTO `keke_witkey_msg` VALUES ('33', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;暗夜行路向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=2\">destoon程序做的网站，解决占用CPU高</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433917067', '1');
INSERT INTO `keke_witkey_msg` VALUES ('34', '0', '0', null, '3', '暗夜行路', '0', '0', '任务进入交付阶段', '<p>尊敬的 暗夜行路：</p><p>任务进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=2&agreeId=2\">destoon程序做的网站，解决占用CPU高-2</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917102', '1');
INSERT INTO `keke_witkey_msg` VALUES ('35', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务进入交付阶段', '<p>尊敬的 烂苹果丶：</p><p>任务进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=2&agreeId=2\">destoon程序做的网站，解决占用CPU高-2</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917102', '1');
INSERT INTO `keke_witkey_msg` VALUES ('36', '0', '0', null, '3', '暗夜行路', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主中标，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：2&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=2\" target=\"_blank\" >destoon程序做的网站，解决占用CPU高</a>中标金额:2700.00&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433917102', '1');
INSERT INTO `keke_witkey_msg` VALUES ('37', '0', '0', null, '3', '暗夜行路', '0', '0', '交付协议签署', '<p>尊敬的 暗夜行路：</p><p>协议签署完成,等待卖家(威客)签署协议：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917222', '1');
INSERT INTO `keke_witkey_msg` VALUES ('38', '0', '0', null, '2', '烂苹果丶', '0', '0', '交付协议签署', '<p>尊敬的 烂苹果丶：</p><p>协议签署完成,等待卖家(威客)签署协议：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917222', '1');
INSERT INTO `keke_witkey_msg` VALUES ('39', '0', '0', null, '3', '暗夜行路', '0', '0', '交付协议签署', '<p>尊敬的 暗夜行路：</p><p>协议签署完成,等待雇主签署协议：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=2&agreeId=2\">destoon程序做的网站，解决占用CPU高-2</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917238', '1');
INSERT INTO `keke_witkey_msg` VALUES ('40', '0', '0', null, '2', '烂苹果丶', '0', '0', '交付协议签署', '<p>尊敬的 烂苹果丶：</p><p>协议签署完成,等待雇主签署协议：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=2&agreeId=2\">destoon程序做的网站，解决占用CPU高-2</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917238', '1');
INSERT INTO `keke_witkey_msg` VALUES ('41', '0', '0', null, '3', '暗夜行路', '0', '0', '交付协议签署', '<p>尊敬的 暗夜行路：</p><p>雇佣双方协议签署完成。进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917316', '1');
INSERT INTO `keke_witkey_msg` VALUES ('42', '0', '0', null, '2', '烂苹果丶', '0', '0', '交付协议签署', '<p>尊敬的 烂苹果丶：</p><p>雇佣双方协议签署完成。进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433917316', '1');
INSERT INTO `keke_witkey_msg` VALUES ('43', '0', '0', null, '2', '烂苹果丶', '0', '0', '协议文件提交', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 烂苹果丶：</p><p>用户暗夜行路已经提交了源文件：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>协议状态：卖家已提交源文件、等待买家确认<br /></p><p><br /></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1433917321', '2');
INSERT INTO `keke_witkey_msg` VALUES ('44', '0', '0', null, '3', '暗夜行路', '0', '0', '协议文件接收', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 暗夜行路：</p><p>用户烂苹果丶已经确认接收了文件：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=1&agreeId=1\">婚纱摄影网站，有原型，有HTML，套后台-1</a></p><p>协议状态：买家已确认接收源文件,交付完成<br /></p><p><br /></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1433917332', '2');
INSERT INTO `keke_witkey_msg` VALUES ('80', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=3\">定制整体衣柜，橱柜，移门。宣传画册</a>已通过管理员审核，目前已生效！', '1433922256', '2');
INSERT INTO `keke_witkey_msg` VALUES ('81', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务29投票大调查投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：29&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=29\"  target=\"_blank\">投票大调查</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 15:47:10&lt;/p&gt;&lt;p&gt;投稿结束时间：2016-10-22 15:47:10&lt;/p&gt;&lt;p&gt;选稿结束时间：2016-10-23 15:47:10&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433922434', '1');
INSERT INTO `keke_witkey_msg` VALUES ('46', '0', '0', null, '3', '暗夜行路', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;烂苹果丶向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433917425', '1');
INSERT INTO `keke_witkey_msg` VALUES ('47', '0', '0', null, '2', '烂苹果丶', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：13&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>中标金额:￥90元&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433917448', '1');
INSERT INTO `keke_witkey_msg` VALUES ('48', '0', '0', null, '3', '暗夜行路', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;兰陵王向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433917484', '1');
INSERT INTO `keke_witkey_msg` VALUES ('49', '0', '0', null, '6', '兰陵王', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 兰陵王：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：13&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>中标金额:￥90元&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433917494', '1');
INSERT INTO `keke_witkey_msg` VALUES ('50', '0', '0', null, '7', '大姨父丶', '0', '0', '后台手动充值通知', '&lt;p&gt;尊敬的 大姨父丶：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员充值您现金1000000，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433917525', '2');
INSERT INTO `keke_witkey_msg` VALUES ('51', '0', '0', null, '3', '暗夜行路', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;赵默笙向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=11\">5000元开发微信大屏系统</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433918339', '1');
INSERT INTO `keke_witkey_msg` VALUES ('52', '0', '0', null, '9', '赵默笙', '0', '0', '稿件获取一等奖', '&lt;p&gt;尊敬的 赵默笙：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主稿件获取一等奖，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：11&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=11\" target=\"_blank\" >5000元开发微信大屏系统</a>中标金额:100.00&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433918419', '1');
INSERT INTO `keke_witkey_msg` VALUES ('53', '0', '0', null, '3', '暗夜行路', '0', '0', '任务结算', '<p>您发布的多人悬赏任务<a href=\"index.php?do=task&task_id=11\">5000元开发微信大屏系统</a>公示期已过，任务已圆满完成<p>', '1433918421', '1');
INSERT INTO `keke_witkey_msg` VALUES ('54', '0', '0', null, '3', '暗夜行路', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;骑姐丶向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433918872', '1');
INSERT INTO `keke_witkey_msg` VALUES ('55', '0', '0', null, '5', '骑姐丶', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 骑姐丶：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：26&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>中标金额:￥45元&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433918889', '1');
INSERT INTO `keke_witkey_msg` VALUES ('56', '0', '0', null, '3', '暗夜行路', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;骑姐丶向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433919167', '1');
INSERT INTO `keke_witkey_msg` VALUES ('57', '0', '0', null, '5', '骑姐丶', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 骑姐丶：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：26&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>中标金额:￥45元&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433919215', '1');
INSERT INTO `keke_witkey_msg` VALUES ('58', '0', '0', null, '5', '骑姐丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 骑姐丶：&lt;/p&gt;&lt;p&gt;您的任务27提供美丽说或者蘑菇街API 开发投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：27&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=27\"  target=\"_blank\">提供美丽说或者蘑菇街API 开发</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 14:55:49&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-30 14:55:49&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 14:55:49&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433919355', '1');
INSERT INTO `keke_witkey_msg` VALUES ('59', '0', '0', null, '5', '骑姐丶', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 骑姐丶：&lt;/p&gt;&lt;p&gt;您的任务28结合开源客户端openfire，修改一个开源xmpp服务器端投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：28&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=28\"  target=\"_blank\">结合开源客户端openfire，修改一个开源xmpp服务器端</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 14:57:02&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-30 14:57:02&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 14:57:02&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433919432', '1');
INSERT INTO `keke_witkey_msg` VALUES ('60', '0', '0', null, '2', '烂苹果丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=11\">基于weiphp平台名片插件，开发wap站</a>已通过管理员审核，目前已生效！', '1433920147', '2');
INSERT INTO `keke_witkey_msg` VALUES ('61', '0', '0', null, '5', '骑姐丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=8\">YY封包程序开发</a>已通过管理员审核，目前已生效！', '1433920154', '2');
INSERT INTO `keke_witkey_msg` VALUES ('62', '0', '0', null, null, null, '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=11\"></a>未通过管理员的审核，如有疑问请联系网站管理员！', '1433920289', '2');
INSERT INTO `keke_witkey_msg` VALUES ('63', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=3\">定制整体衣柜，橱柜，移门。宣传画册</a>已通过管理员审核，目前已生效！', '1433920330', '2');
INSERT INTO `keke_witkey_msg` VALUES ('64', '0', '0', null, '5', '骑姐丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=7\">网站美化</a>已通过管理员审核，目前已生效！', '1433920334', '2');
INSERT INTO `keke_witkey_msg` VALUES ('65', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=3\">定制整体衣柜，橱柜，移门。宣传画册</a>已通过管理员审核，目前已生效！', '1433920409', '2');
INSERT INTO `keke_witkey_msg` VALUES ('66', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=12\">软件开发，功能开发</a>已通过管理员审核，目前已生效！', '1433920580', '2');
INSERT INTO `keke_witkey_msg` VALUES ('67', '0', '0', null, '4', 'dabomei', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=5\">“皮兜兜儿”淘宝店LOGO</a>已通过管理员审核，目前已生效！', '1433920585', '2');
INSERT INTO `keke_witkey_msg` VALUES ('68', '0', '0', null, '4', 'dabomei', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=4\">网页设计——招标书设计</a>已通过管理员审核，目前已生效！', '1433920593', '2');
INSERT INTO `keke_witkey_msg` VALUES ('69', '0', '0', null, '4', 'dabomei', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=6\">河北富德克LOGO、名片设计、英文名称</a>已通过管理员审核，目前已生效！', '1433920596', '2');
INSERT INTO `keke_witkey_msg` VALUES ('70', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=2\">卡拉贴膜画册</a>已通过管理员审核，目前已生效！', '1433920602', '2');
INSERT INTO `keke_witkey_msg` VALUES ('71', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=2\">卡拉贴膜画册</a>已通过管理员审核，目前已生效！', '1433920632', '2');
INSERT INTO `keke_witkey_msg` VALUES ('72', '0', '0', null, '4', 'dabomei', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=6\">河北富德克LOGO、名片设计、英文名称</a>已通过管理员审核，目前已生效！', '1433920679', '2');
INSERT INTO `keke_witkey_msg` VALUES ('73', '0', '0', null, '2', '烂苹果丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=11\">基于weiphp平台名片插件，开发wap站</a>已通过管理员审核，目前已生效！', '1433920762', '2');
INSERT INTO `keke_witkey_msg` VALUES ('74', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=1\">购物网站开发</a>已通过管理员审核，目前已生效！', '1433920803', '2');
INSERT INTO `keke_witkey_msg` VALUES ('75', '0', '0', null, '7', '大姨父丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=10\">微信开发技术支持</a>已通过管理员审核，目前已生效！', '1433920815', '2');
INSERT INTO `keke_witkey_msg` VALUES ('79', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=3\">定制整体衣柜，橱柜，移门。宣传画册</a>已通过管理员审核，目前已生效！', '1433922098', '2');
INSERT INTO `keke_witkey_msg` VALUES ('78', '0', '0', null, '8', '京巴丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=9\">网站会员软件开发</a>已通过管理员审核，目前已生效！', '1433921091', '2');
INSERT INTO `keke_witkey_msg` VALUES ('82', '0', '0', null, '8', '京巴丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=9\">网站会员软件开发</a>已通过管理员审核，目前已生效！', '1433922439', '2');
INSERT INTO `keke_witkey_msg` VALUES ('83', '0', '0', null, '4', 'dabomei', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=6\">河北富德克LOGO、名片设计、英文名称</a>已通过管理员审核，目前已生效！', '1433922567', '2');
INSERT INTO `keke_witkey_msg` VALUES ('84', '0', '0', null, '4', 'dabomei', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=4\">网页设计——招标书设计</a>已通过管理员审核，目前已生效！', '1433922571', '2');
INSERT INTO `keke_witkey_msg` VALUES ('85', '0', '0', null, '3', '暗夜行路', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;您的任务30市场大调查投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：30&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=30\"  target=\"_blank\">市场大调查</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 15:58:13&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 15:58:13&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 15:58:13&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433923098', '1');
INSERT INTO `keke_witkey_msg` VALUES ('86', '0', '0', null, '5', '骑姐丶', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=7\">网站美化</a>已通过管理员审核，目前已生效！', '1433923182', '2');
INSERT INTO `keke_witkey_msg` VALUES ('87', '0', '0', null, '3', '暗夜行路', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=12\">软件开发，功能开发</a>已通过管理员审核，目前已生效！', '1433923363', '2');
INSERT INTO `keke_witkey_msg` VALUES ('88', '0', '0', null, '1', 'admin', '0', '0', '后台手动充值通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员充值您现金1000000，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433929119', '2');
INSERT INTO `keke_witkey_msg` VALUES ('89', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务31动漫设计大赛投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：31&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=31\"  target=\"_blank\">动漫设计大赛</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 17:38:12&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-12 17:38:12&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-13 17:38:12&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433929183', '1');
INSERT INTO `keke_witkey_msg` VALUES ('90', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务32软件应用开发投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：32&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32\"  target=\"_blank\">软件应用开发</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-10 19:17:15&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-30 19:17:15&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 19:17:15&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433935047', '1');
INSERT INTO `keke_witkey_msg` VALUES ('91', '0', '0', null, '1', 'admin', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;兰陵王向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32\">软件应用开发</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433935307', '1');
INSERT INTO `keke_witkey_msg` VALUES ('92', '0', '0', null, '1', 'admin', '0', '0', '举报受理通知', '<p>尊敬的 admin：</p><p>与您相关的编号为1的举报记录网站确已经受理，相应稿件<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32&view=list_work&work_id=8\">软件应用开发</a>已被关注跟进。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433935400', '1');
INSERT INTO `keke_witkey_msg` VALUES ('93', '0', '0', null, '1', 'admin', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您举报的1的举报记录网站确认为不成立，处理结果为：&lt;/p&gt;&lt;p&gt;举报无效&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433935412', '1');
INSERT INTO `keke_witkey_msg` VALUES ('94', '0', '0', null, '6', '兰陵王', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 兰陵王：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您被网站用户举报的1的举报记录网站确认为不成立，处理结果为：&lt;/p&gt;&lt;p&gt;举报无效&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433935412', '1');
INSERT INTO `keke_witkey_msg` VALUES ('95', '0', '0', null, '6', '兰陵王', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 兰陵王：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：32&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32\">软件应用开发</a>中标金额:￥45元&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433935444', '1');
INSERT INTO `keke_witkey_msg` VALUES ('96', '0', '0', null, '1', 'admin', '0', '0', '举报受理通知', '<p>尊敬的 admin：</p><p>与您相关的编号为2的举报记录网站确已经受理，相应稿件<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32&view=list_work&work_id=8\">软件应用开发</a>已被关注跟进。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433935609', '1');
INSERT INTO `keke_witkey_msg` VALUES ('97', '0', '0', null, '1', 'admin', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;暗夜行路向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32\">软件应用开发</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433935665', '1');
INSERT INTO `keke_witkey_msg` VALUES ('98', '0', '0', null, '6', '兰陵王', '0', '0', '取消中标通知', '您在任务<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32\">软件应用开发</a>的投稿#8被网站客服取消中标', '1433935728', null);
INSERT INTO `keke_witkey_msg` VALUES ('99', '0', '0', null, '3', '暗夜行路', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：32&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=32\">软件应用开发</a>中标金额:45&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433935728', '1');
INSERT INTO `keke_witkey_msg` VALUES ('100', '0', '0', null, '1', 'admin', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您举报的2的举报记录网站已经受理完成，举报处理结果为：&lt;/p&gt;&lt;p&gt;取消中标，系统选稿&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433935728', '1');
INSERT INTO `keke_witkey_msg` VALUES ('101', '0', '0', null, '6', '兰陵王', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 兰陵王：&lt;/p&gt;&lt;p&gt;您被网站用户举报的2的举报记录网站已经受理完成，举报处理结果为：取消中标，系统选稿&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433935728', '1');
INSERT INTO `keke_witkey_msg` VALUES ('102', '0', '0', null, '1', 'admin', '0', '1', '提现申请审核失败', '<p>您在客客专业威客系统通过支付宝提现，提现账户：18025121111,提现金额100.00元,提现审核未通过,未通过原因:不能通过审核，查无该支付宝账号，可能是填写错误了吧</p>', '1433987212', '2');
INSERT INTO `keke_witkey_msg` VALUES ('103', '0', '0', null, '3', '暗夜行路', '0', '0', '举报通知', '<p>尊敬的暗夜行路：您发布的单人悬赏任务<a href=\"index.php?do=task&id=30\">市场大调查</a>被其他用户举报！</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1433987250', '1');
INSERT INTO `keke_witkey_msg` VALUES ('104', '0', '0', null, '1', 'admin', '0', '0', '举报受理通知', '<p>尊敬的 admin：</p><p>与您相关的编号为3的举报记录网站确已经受理，相应任务<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=30\">市场大调查</a>已被关注跟进。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433987265', '1');
INSERT INTO `keke_witkey_msg` VALUES ('105', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;admin向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=5\">需要通过货运单号采集当月客户信息的软件</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1433991783', '1');
INSERT INTO `keke_witkey_msg` VALUES ('106', '0', '0', null, '1', 'admin', '0', '0', '任务进入交付阶段', '<p>尊敬的 admin：</p><p>任务进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=5&agreeId=3\">需要通过货运单号采集当月客户信息的软件-10</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433991946', '1');
INSERT INTO `keke_witkey_msg` VALUES ('107', '0', '0', null, '2', '烂苹果丶', '0', '0', '任务进入交付阶段', '<p>尊敬的 烂苹果丶：</p><p>任务进入交付阶段：</p><p>协议链接：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=agreement&taskId=5&agreeId=3\">需要通过货运单号采集当月客户信息的软件-10</a></p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1433991946', '1');
INSERT INTO `keke_witkey_msg` VALUES ('108', '0', '0', null, '1', 'admin', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主中标，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：5&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=5\" target=\"_blank\" >需要通过货运单号采集当月客户信息的软件</a>中标金额:4500.00&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1433991946', '1');
INSERT INTO `keke_witkey_msg` VALUES ('109', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务33节能灯宣传软文撰写投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：33&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=33\"  target=\"_blank\">节能灯宣传软文撰写</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-11 14:44:45&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-13 14:44:45&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-14 14:44:45&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434005090', '1');
INSERT INTO `keke_witkey_msg` VALUES ('110', '0', '0', null, '1', 'admin', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;烂苹果丶向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=33\">节能灯宣传软文撰写</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434005329', '1');
INSERT INTO `keke_witkey_msg` VALUES ('111', '0', '0', null, '1', 'admin', '0', '0', '服务审核通知', '您编辑的商品信息<a href=\"index.php?do=goods&id=17\">给宝宝起名字</a>已通过管理员审核，目前已生效！', '1434006771', '2');
INSERT INTO `keke_witkey_msg` VALUES ('112', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务34网站开发flash抢标中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：34&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=34\"  target=\"_blank\">网站开发flash</a>&lt;/p&gt;&lt;p&gt;任务状态：抢标中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-11 16:08:28&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-31 16:08:28&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-07-31 16:08:28&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434010117', '1');
INSERT INTO `keke_witkey_msg` VALUES ('113', '0', '0', null, '1', 'admin', '0', '0', '速配任务抢标通知', '<p></p><p>尊敬的 admin：您的速配任务有新的抢标。</p><p>任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=34\">网站开发flash</a>。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><br />', '1434010591', '1');
INSERT INTO `keke_witkey_msg` VALUES ('114', '0', '0', null, '3', '暗夜行路', '0', '0', '速配任务赏金托管', '<p></p><p>尊敬的 暗夜行路：雇主已托管赏金,请您尽快确认.。</p><p>任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=34\">网站开发flash</a>。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><br />', '1434010622', '1');
INSERT INTO `keke_witkey_msg` VALUES ('115', '0', '0', null, '1', 'admin', '0', '0', '速配任务确认工作完成', '<p></p><p>尊敬的 admin：威客确认工作完成,请您尽快验收.。</p><p>任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=34\">网站开发flash</a>。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><br />', '1434010775', '1');
INSERT INTO `keke_witkey_msg` VALUES ('116', '0', '0', null, '1', 'admin', '0', '0', '速配任务冻结通知', '<p></p><p>尊敬的 admin：由于雇佣双方逾期未完成任务,系统已将任务冻结,请提交仲裁申请以方便客服介入.。</p><p>任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=34\">网站开发flash</a>。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><br />', '1434011600', '1');
INSERT INTO `keke_witkey_msg` VALUES ('117', '0', '0', null, '3', '暗夜行路', '0', '0', '速配任务冻结通知', '<p></p><p>尊敬的 暗夜行路：由于雇佣双方逾期未完成任务,系统已将任务冻结,请提交仲裁申请以方便客服介入.。</p><p>任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=34\">网站开发flash</a>。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p><p></p><br />', '1434011600', '1');
INSERT INTO `keke_witkey_msg` VALUES ('118', '0', '0', null, '1', 'admin', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 admin：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#35&lt;/p&gt;', '1434012049', '1');
INSERT INTO `keke_witkey_msg` VALUES ('119', '0', '0', null, '3', '暗夜行路', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 暗夜行路：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#23&lt;/p&gt;', '1434012054', '1');
INSERT INTO `keke_witkey_msg` VALUES ('120', '0', '0', null, '1', 'admin', '0', '0', '任务投标', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;烂苹果丶向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=35\">数码摄影定金任务</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434012117', '1');
INSERT INTO `keke_witkey_msg` VALUES ('121', '0', '0', null, '2', '烂苹果丶', '0', '0', '投标中标', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主中标，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：35&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=35\" target=\"_blank\" >数码摄影定金任务</a>中标金额:300.00&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434012137', '1');
INSERT INTO `keke_witkey_msg` VALUES ('122', '0', '0', null, '1', 'admin', '0', '0', '赏金托管通知', '<p>您在发布的订金招标任务<a href=\"index.php?do=task&task_id=35\">数码摄影定金任务</a>已成功托管赏金0元</p><p>您可以去<a href=\"index.php?do=user&view=finance\">财务中心账目明细中查看</a><p>', '1434012156', '1');
INSERT INTO `keke_witkey_msg` VALUES ('123', '0', '0', null, '2', '烂苹果丶', '0', '0', '雇主已托管赏金', '<p>您中标的订金招标任务<a href=\"index.php?do=task&task_id=35\">数码摄影定金任务</a>雇主已成功托管赏金0元</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>\r\n', '1434012156', '1');
INSERT INTO `keke_witkey_msg` VALUES ('124', '0', '0', null, '1', 'admin', '0', '0', '计划确认付款通知', '<p>您的订金招标任务<a href=\"index.php?do=task&task_id=35\">数码摄影定金任务</a>中标者已完成第1阶段计划，请确认及付款</p>', '1434012170', '1');
INSERT INTO `keke_witkey_msg` VALUES ('125', '0', '0', null, '2', '烂苹果丶', '0', '0', '计划已付款通知', '<p>您在订金招标任务<a href=\"index.php?do=task&task_id=35\">数码摄影定金任务</a>中，您的第1阶段计划已得到雇主确认，对方已付款，您获得了270元,请注意查收</p>', '1434012204', '1');
INSERT INTO `keke_witkey_msg` VALUES ('126', '0', '0', null, '1', 'admin', '0', '0', '任务结束通知', '<p>您发布的订金招标任务<a href=\"index.php?do=task&task_id=35\">数码摄影定金任务</a>已圆满结束，感谢您对本站的支持!</p>', '1434012204', '1');
INSERT INTO `keke_witkey_msg` VALUES ('127', '0', '0', null, '1', 'admin', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 admin：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#36&lt;/p&gt;', '1434012391', '1');
INSERT INTO `keke_witkey_msg` VALUES ('128', '0', '0', null, '1', 'admin', '0', '0', '任务投标', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;烂苹果丶向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=36\">程序功能开发</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434012421', '1');
INSERT INTO `keke_witkey_msg` VALUES ('129', '0', '0', null, '2', '烂苹果丶', '0', '0', '投标中标', '&lt;p&gt;尊敬的 烂苹果丶：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主中标，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：36&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=36\" target=\"_blank\" >程序功能开发</a>中标金额:200.00&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434012430', '1');
INSERT INTO `keke_witkey_msg` VALUES ('130', '0', '0', null, '1', 'admin', '0', '0', '赏金托管通知', '<p>您在发布的订金招标任务<a href=\"index.php?do=task&task_id=36\">程序功能开发</a>已成功托管赏金100元</p><p>您可以去<a href=\"index.php?do=user&view=finance\">财务中心账目明细中查看</a><p>', '1434012439', '1');
INSERT INTO `keke_witkey_msg` VALUES ('131', '0', '0', null, '2', '烂苹果丶', '0', '0', '雇主已托管赏金', '<p>您中标的订金招标任务<a href=\"index.php?do=task&task_id=36\">程序功能开发</a>雇主已成功托管赏金100元</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>\r\n', '1434012439', '1');
INSERT INTO `keke_witkey_msg` VALUES ('132', '0', '0', null, '1', 'admin', '0', '0', '计划确认付款通知', '<p>您的订金招标任务<a href=\"index.php?do=task&task_id=36\">程序功能开发</a>中标者已完成第1阶段计划，请确认及付款</p>', '1434012455', '1');
INSERT INTO `keke_witkey_msg` VALUES ('133', '0', '0', null, '2', '烂苹果丶', '0', '0', '计划已付款通知', '<p>您在订金招标任务<a href=\"index.php?do=task&task_id=36\">程序功能开发</a>中，您的第1阶段计划已得到雇主确认，对方已付款，您获得了180元,请注意查收</p>', '1434012462', '1');
INSERT INTO `keke_witkey_msg` VALUES ('134', '0', '0', null, '1', 'admin', '0', '0', '任务结束通知', '<p>您发布的订金招标任务<a href=\"index.php?do=task&task_id=36\">程序功能开发</a>已圆满结束，感谢您对本站的支持!</p>', '1434012462', '1');
INSERT INTO `keke_witkey_msg` VALUES ('135', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务37flash制作投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：37&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=37\"  target=\"_blank\">flash制作</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-11 17:08:58&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-31 17:08:58&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-08-01 17:08:58&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434013791', '1');
INSERT INTO `keke_witkey_msg` VALUES ('136', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务38字体设计，喜帖字体设计投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：38&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=38\"  target=\"_blank\">字体设计，喜帖字体设计</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-11 17:18:40&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-09-13 17:18:40&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-09-14 17:18:40&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434014378', '1');
INSERT INTO `keke_witkey_msg` VALUES ('137', '0', '0', null, '1', 'admin', '0', '0', '任务通过审核', '&lt;p&gt;尊敬的 admin：您的发布的任务已通过审核，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：#3811&lt;/p&gt;', '1434014383', '1');
INSERT INTO `keke_witkey_msg` VALUES ('138', '0', '0', null, '1', 'admin', '0', '0', '任务发布通知', '&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您的任务39网站开发征集投稿中，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：39&lt;/p&gt;&lt;p&gt;任务标题：<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\"  target=\"_blank\">网站开发征集</a>&lt;/p&gt;&lt;p&gt;任务状态：投稿中&lt;/p&gt;&lt;p&gt;开始时间：2015-06-11 17:38:59&lt;/p&gt;&lt;p&gt;投稿结束时间：2015-07-31 17:38:59&lt;/p&gt;&lt;p&gt;选稿结束时间：2015-08-01 17:38:59&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434015573', '1');
INSERT INTO `keke_witkey_msg` VALUES ('139', '0', '0', null, '1', 'admin', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;暗夜行路向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\">网站开发征集</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434015849', '1');
INSERT INTO `keke_witkey_msg` VALUES ('140', '0', '0', null, '1', 'admin', '0', '0', '举报通知', '<p>尊敬的admin：您发布的计件悬赏任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>被其他用户举报！</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1434015876', '1');
INSERT INTO `keke_witkey_msg` VALUES ('141', '0', '0', null, '1', 'admin', '0', '0', '任务交稿', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;兰陵王向您的<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\">网站开发征集</a>提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434016039', '1');
INSERT INTO `keke_witkey_msg` VALUES ('142', '0', '0', null, '1', 'admin', '0', '0', '举报通知', '<p>尊敬的admin：您发布的计件悬赏任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>被其他用户举报！</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1434016080', '1');
INSERT INTO `keke_witkey_msg` VALUES ('143', '0', '0', null, '6', '兰陵王', '0', '0', '举报受理通知', '<p>尊敬的 兰陵王：</p><p>与您相关的编号为5的举报记录网站确已经受理，相应任务<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\">网站开发征集</a>已被关注跟进。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1434016112', '1');
INSERT INTO `keke_witkey_msg` VALUES ('144', '0', '0', null, '3', '暗夜行路', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：39&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\">网站开发征集</a>中标金额:0.9&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434016125', '1');
INSERT INTO `keke_witkey_msg` VALUES ('145', '0', '0', null, '6', '兰陵王', '0', '0', '稿件中标', '&lt;p&gt;尊敬的 兰陵王：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主合格，感谢您对客客专业威客系统网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：39&lt;/p&gt;&lt;p&gt;任务标题：<a href =\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\">网站开发征集</a>中标金额:0.9&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1434016126', '1');
INSERT INTO `keke_witkey_msg` VALUES ('146', '0', '0', null, '6', '兰陵王', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 兰陵王：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您举报的5的举报记录网站已经受理完成，举报处理结果为：&lt;/p&gt;&lt;p&gt;系统选稿&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434016126', '1');
INSERT INTO `keke_witkey_msg` VALUES ('147', '0', '0', null, '1', 'admin', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您被网站用户举报的5的举报记录网站已经受理完成，举报处理结果为：系统选稿&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434016126', '1');
INSERT INTO `keke_witkey_msg` VALUES ('148', '0', '0', null, '3', '暗夜行路', '0', '0', '举报受理通知', '<p>尊敬的 暗夜行路：</p><p>与您相关的编号为4的举报记录网站确已经受理，相应任务<a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=39\">网站开发征集</a>已被关注跟进。</p><p>感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服</p>', '1434016163', '1');
INSERT INTO `keke_witkey_msg` VALUES ('149', '0', '0', null, '3', '暗夜行路', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 暗夜行路：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您举报的4的举报记录网站已经受理完成，举报处理结果为：&lt;/p&gt;&lt;p&gt;系统选稿&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434016172', '1');
INSERT INTO `keke_witkey_msg` VALUES ('150', '0', '0', null, '1', 'admin', '0', '0', '举报处理通知', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 admin：&lt;/p&gt;&lt;p&gt;您被网站用户举报的4的举报记录网站已经受理完成，举报处理结果为：系统选稿&lt;/p&gt;&lt;p&gt;感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1434016172', '1');
INSERT INTO `keke_witkey_msg` VALUES ('151', '0', '0', null, '3', '暗夜行路', '0', '0', '通过', '&lt;p&gt;您的已通过，请到&lt;a href=\"index.php?do=user&view=payitem&op=auth&auth_code=realname\"&gt;认证中心&lt;/a&gt;查看详细&lt;/p&gt;', '1434016592', '2');
INSERT INTO `keke_witkey_msg` VALUES ('152', '0', '0', null, '3', '暗夜行路', '0', '0', '协议交付超时冻结通知', '<p>尊敬的 暗夜行路：</p><p>您的任务<a href=\"index.php?do=task&task_id={任务编号}\"><a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=2\">destoon程序做的网站，解决占用CPU高</a></a>已被由于超时未完成交付已被系统冻结,请尽快联系客服，由客服介入处理，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1434339637', '2');
INSERT INTO `keke_witkey_msg` VALUES ('153', '0', '0', null, '2', '烂苹果丶', '0', '0', '协议交付超时冻结通知', '<p>尊敬的 烂苹果丶：</p><p>您的任务<a href=\"index.php?do=task&task_id={任务编号}\"><a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=2\">destoon程序做的网站，解决占用CPU高</a></a>已被由于超时未完成交付已被系统冻结,请尽快联系客服，由客服介入处理，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1434339637', '2');
INSERT INTO `keke_witkey_msg` VALUES ('154', '0', '0', null, '1', 'admin', '0', '0', '协议交付超时冻结通知', '<p>尊敬的 admin：</p><p>您的任务<a href=\"index.php?do=task&task_id={任务编号}\"><a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=5\">需要通过货运单号采集当月客户信息的软件</a></a>已被由于超时未完成交付已被系统冻结,请尽快联系客服，由客服介入处理，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1434339637', '2');
INSERT INTO `keke_witkey_msg` VALUES ('155', '0', '0', null, '2', '烂苹果丶', '0', '0', '协议交付超时冻结通知', '<p>尊敬的 烂苹果丶：</p><p>您的任务<a href=\"index.php?do=task&task_id={任务编号}\"><a href=\"http://develop.kppw.cn/kppw26_1/index.php?do=task&id=5\">需要通过货运单号采集当月客户信息的软件</a></a>已被由于超时未完成交付已被系统冻结,请尽快联系客服，由客服介入处理，感谢您对客客专业威客系统的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1434339637', '2');

-- ----------------------------
-- Table structure for keke_witkey_msg_config
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_msg_config`;
CREATE TABLE `keke_witkey_msg_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '短信配置编号',
  `k` varchar(30) DEFAULT NULL COMMENT '短信类型',
  `obj` char(20) DEFAULT NULL COMMENT '短信所属对象',
  `desc` varchar(30) DEFAULT NULL COMMENT '文字说明',
  `prompt` varchar(255) DEFAULT NULL COMMENT '文字提示',
  `v` varchar(255) DEFAULT NULL COMMENT '开启短信种类',
  `on_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `content` text COMMENT '模板内容',
  `send_type` int(11) DEFAULT '1' COMMENT '信息类型',
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_msg_config
-- ----------------------------
INSERT INTO `keke_witkey_msg_config` VALUES ('9', 'task_pub', 'task', '任务发布', '用户成功发布一个任务后将会收到此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;您的任务{任务编号}{任务标题}{任务状态}，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：{任务编号}&lt;/p&gt;&lt;p&gt;任务标题：{任务链接}&lt;/p&gt;&lt;p&gt;任务状态：{任务状态}&lt;/p&gt;&lt;p&gt;开始时间：{开始时间}&lt;/p&gt;&lt;p&gt;投稿结束时间：{投稿结束时间}&lt;/p&gt;&lt;p&gt;选稿结束时间：{选稿结束时间}&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('10', 'task_bid', 'task', '任务中标', '用户投标被雇主采纳将会收到此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主{稿件状态}，感谢您对{网站名称}网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：{任务编号}&lt;/p&gt;&lt;p&gt;任务标题：{任务标题}中标金额:{中标金额}&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('3', 'pay_success', 'found', '支付成功', '用户成功支付后将会发送此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;您成功充值{充值金额}元，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。ghf&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('4', 'pay_fail', 'found', '支付失败', '用户支付失败后将会发送此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：您充值{充值金额}元业务失败，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。sad&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('11', 'task_auth_fail', 'task', '任务审核失败', '用户发布的任务没有通过后台审核时会收到此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：您的发布的任务 {任务标题} 未通过审核，&lt;/p&gt;&lt;p&gt;未通过审核的原因：{审核原因},感谢您对{网站名称}的信任。&lt;/p&gt;&lt;p&gt;如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('12', 'task_auth_success', 'task', '审核通过', '用户发布的任务通过后台审核时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '&lt;p&gt;尊敬的 {用户名}：您的发布的任务已通过审核，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。任务编号：{任务编号}&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('5', 'draw_success', 'found', '提现成功', '用户提现成功后将会发送此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '<p>您在{网站名称}的提现申请已被受理，您的提现金额为{提现金额}元,提现账户:{帐户}请查收！</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('2', 'freeze', 'user', '用户冻结', '当用户的账号被后台冻结后会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;您的用户已被冻结，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('13', 'task_freeze', 'task', '任务冻结', '用户发布的任务被管理员冻结时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '<p>尊敬的 {用户名}：</p><p>您的任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>已被{原因}，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('21', 'update_password', 'safe', '更新密码', '当用户修改了登陆密码时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1322020124', '<p>尊敬的 {用户名}：</p><p>您的密码已经修改，新密码是：<u>（{新密码}）</u>，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('1', 'reg', 'user', '注册成功', '当用户注册成功后将会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1430816761', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&nbsp;感谢您对{网站名称}的信任，当您收到这封信的时候，您已经成功注册为{网站名称}会员。在这里，您可以感受到诚信、活泼、高效的网络交易文化。&lt;/p&gt;&lt;p&gt;如有任何疑问，欢迎随时与我们联系，我们将竭诚为您服务！&lt;br/&gt;&nbsp;&nbsp;&nbsp;　 欢迎继续关注{网站名称}！&lt;/p&gt;&lt;p&gt;&nbsp;&nbsp;&nbsp; 祝：&lt;/p&gt;&lt;p&gt;　&nbsp; 工作学习顺利， 生活愉快！&lt;/p&gt;&lt;p&gt;{网站名称}客服中心&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。fff&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('6', 'recharge_success', 'found', '充值成功', '用户充值成功后将会发送此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '<p>尊敬的 {用户名}：</p><p>您的单号为:{充值单号}的充值受理成功，充值金额：{充值金额}元，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p><br />', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('7', 'recharge_fail', 'found', '充值失败', '用户充值失败后将会发送此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1430816761', '<p></p><p>尊敬的 {用户名}：</p><p>您的单号为:{充值单号}的充值受理失败，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p><br />', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('20', 'update_sec_code', 'safe', '支付密码变更', '当用户修改了支付密码时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440916', '<p>尊敬的 {用户名}：</p><p>您的支付密码修改成功，您的新支付密码为：{支付密码}。感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('16', 'transrights_pass', 'trans', '交易维权成立', '当用户发起的交易维权被后台确认成立时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440916', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您举报的{交易维权编号}的{交易维权名称}记录网站已经受理完成，{交易维权名称}处理结果为：&lt;/p&gt;&lt;p&gt;{处理结果}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('17', 'transrights_nopass', 'trans', '交易维权不成立', '当用户发起的交易维权被后台确认不成立时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440916', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您举报的{交易维权编号}的{交易维权名称}记录网站确认为不成立，处理结果为：&lt;/p&gt;&lt;p&gt;{处理结果}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('18', 'transrights_accept', 'trans', '交易维权受理', '当网站受理了用户的交易维权时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440916', '<p>尊敬的 {用户名}：</p><p>与您相关的编号为{交易维权编号}的{交易维权名称}记录网站确已经受理，相应{交易维权类型}{交易维权对象}已被{动作}。</p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('19', 'transrights_freeze', 'trans', '交易维权冻结', '当网站冻结了用户的交易维权申请时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440916', '<p></p><p></p><p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>由{发起方}对{交易维权对象}发起的维权记录已经提交成功，相应{交易维权类型}已被冻结，请等待网站受理。提交原因：</p><p>{提交原因}<br /></p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('14', 'task_sign', 'task', '任务报名', '用户发布的任务有人报名后会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;1尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;{用户}报名了{称谓}的{任务标题}。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('15', 'task_hand', 'task', '任务交稿', '当用户发布的任务，有威客投稿时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;{用户}向{称谓}的{任务标题}提交了稿件。&lt;/p&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('81', 'agreement', 'task', '协议签署', '用户中标单人悬赏后，签署协议成功后会收到此通知。（这里有问题，如果是雇主或威客其中一方签订协议，另一方也会收到这条信息，并且内容身份错误）', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '<p>尊敬的 {用户名}：</p><p>{协议状态}：</p><p>协议链接：{协议链接}</p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('82', 'agreement_file', 'task', '协议文件交付', '用户发布的单人悬赏，威客方交付了任务时，用户会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>用户{发起者}已经{动作}：</p><p>协议链接：{协议链接}</p><p>协议状态：{协议状态}<br /></p><p><br /></p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('83', 'service_pub', 'service', '服务发布', '当用户发布了一个服务时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1402106715', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;您的{服务类型}已发布成功。{服务类型}信息：&lt;/p&gt;&lt;p&gt;{服务类型}链接：{商品链接}&lt;/p&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;发布时间：{发布时间}&lt;/strong&gt;&lt;/em&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;{服务类型}状态：{商品状态}&lt;br /&gt;&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('84', 'service_order', 'service', '服务订单提交', '当用户提交了一个服务订单时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1402106715', '&lt;div style=\"top: 0px;\"&gt;﻿﻿尊敬的 {用户名}：&lt;/div&gt;&lt;p&gt;{用户动作}了您的{服务类型}：{服务名称}。&lt;/p&gt;&lt;p&gt;&nbsp;订单详情：{订单链接}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('99', 'unfreeze', 'user', '用户解冻', '当用户的账号被后台解冻后会收到此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1364996161', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>您的用户已被解封，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('88', 'order_change', 'service', '订单状态变更', '威客发布的商品服务被购买过程中，状态改变时会收到此通知。\r\n', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1402106715', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>{用户}{动作}，请尽快前往用户中心处理，订单信息：</p><p>订单编号：{订单编号}</p><p>订单链接：{订单链接}</p><p><br /></p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('87', 'auto_choose', 'task', '自动选稿', '用户参与的计件任务，自动选稿后，用户会收到此通知。\r\n', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1420685863', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>您参与的任务{任务编号}进行了自动选稿，任务信息：</p><p>任务标题：{任务标题}</p><p><br /></p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('100', 'get_password', 'user', '密码找回', '当用户申请找回密码成功时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1364996161', '<p>亲爱的用户：</p>\r\n<p>您好！感谢您使用{网站名称}，您正在进行邮箱验证，本次请求的验证码为：</p>\r\n<p>{验证码}(为了保障您帐号的安全性，请在1小时内完成验证。)</p>\r\n<p>如有任何疑问，欢迎随时与我们联系，我们将竭诚为您服务！</p>\r\n<p>欢迎继续关注{网站名称}！</p>\r\n<p>祝：</p>\r\n<p>工作学习顺利， 生活愉快！</p>\r\n', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('101', 'dispose_task', 'task', '稿件结算', '用户参与的计件任务，进行结算环节时，用户会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1335428501', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>您参与的任务已经结束。</p><p>任务编号：{任务编号}</p><p>任务链接：{任务链接}<br /></p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('102', 'match_task', 'task', '速配任务', '雇主发布的速配任务被抢标时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1335428501', '<p></p><p>尊敬的 {用户名}：{描述}。</p><p>任务标题：{任务标题}。</p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p><p></p><br />', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('108', 'task_unbid', 'task', '稿件淘汰', '当用户投标的稿件被雇主淘汰时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p></p><p></p><p></p><p>尊敬的 {用户名}：</p><p>您参与的任务：{任务标题}的任务稿件，已被雇主淘汰，感谢您对{网站名称}网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>任务编号：{任务编号}</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p><br />', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('109', 'bank_auth', 'auth', '银行认证', '当用户申请进行银行认证时会收到此通知。', 'a:1:{s:8:\"send_sms\";i:1;}', '1343204483', '<p>您申请的银行认证已经受理，管理员已经打款到您的账户，请及时查收，并在<a href=\"index.php?do=user&view=account&op=index&code=bank\">确认收款金额</a>中填写您收到的金额数，以便你认证成功！</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('110', 'auth_success', 'auth', '认证成功', '当用户认证成功时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '&lt;p&gt;您的{认证代码}已通过，请到&lt;a href=\"{认证链接}\"&gt;认证中心&lt;/a&gt;查看详细&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('111', 'auth_fail', 'auth', '认证失败', '当用户认证失败时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您的{认证代码}没通过，请到<a href=\"{认证链接}\">认证中心</a>查看详细</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('114', 'prom_succes', 'prom', '推广成功', '当用户成功进行了一次推广时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您的下线：{推广用户名},{事件}。</p><p>您获得了推广金额：{推广金额}元</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('113', 'withdraw_fail', 'finance', '提现失败', '当用户提现失败时会收到此通知。', 'a:1:{s:8:\"send_sms\";i:1;}', '1343204483', '<p>您在{网站名称}通过{提现方式}提现，提现账户：{帐户},提现金额{提现金额}元,提现审核未通过,未通过原因:{失败原因}</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('136', 'task_unfrize', 'task', '任务解冻', '用户发布的任务被管理员解冻时会收到此通知', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '<p>尊敬的 {用户名}：</p><p>您的任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>已被{原因}，感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p><p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('116', 'task_edit', 'task', '管理员编辑任务', '当用户的任务被管理员编辑后会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', null, '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('117', 'plan_confirm_pay', 'task', '计划确认付款', '用户发布的任务，威客已经完成计划第N阶段时，用户会收到此通知', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>中标者已完成第{几}阶段计划，请确认及付款</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('118', 'reward_cash_trust', 'task', '诚意金托管', '用户成功托管任务赏金时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您在发布的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>已成功托管赏金{金额}元</p><p>您可以去<a href=\"index.php?do=user&view=finance\">财务中心账目明细中查看</a><p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('119', 'task_over', 'task', '任务圆满结束', '用户发布的任务已经完全完成后会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您发布的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>已圆满结束，感谢您对本站的支持!</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('120', 'plan_haved_pay', 'task', '计划已经付款', '用户承接的订金招标任务，雇主已经确认付款时用户会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您在{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>中，您的第{几}阶段计划已得到雇主确认，对方已付款，您获得了{金额}元,请注意查收</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('121', 'group_set', 'manage', '分组设置', '用户被管理员分配权限设置后台分组时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>尊敬的 {用户名}：管理员{管理员名称}设置了您的后台用户组</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('122', 'timeout', 'task', '过期', '用户发布的投标任务结束了投标期后会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您发布的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>{投标}期已过，任务在自动进入下一阶段', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('123', 'kf_set', 'manage', '客服设置', '用户被管理员设置为客服时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>尊敬的 {用户名}：管理员{管理员名}设置了您为客服</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('124', 'task_fail_nopeople', 'task', '任务无人参与失败', '发布的任务至结束时仍无人投标时收到此通知', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '自定义内容cxvdv', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('128', 'work_get_prize', 'task', '稿件获奖', null, 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '自定义内容', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('126', 'task_jf', 'task', '任务交付', '用户接受的任务，雇主方已经托管赏金后会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您参与的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>,雇主{雇主名称}已成功托管任务赏金{金额}元，请尽快完成任务计划</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('127', 'task_fail', 'task', '任务失败', '用户发布的任务因某些原因失败时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1343204483', '<p>您发布的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>因{理由}已经失败。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('130', 'work_no_recept', 'task', '稿件未采纳', null, 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', null, '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('131', 'work_bid', 'task', '稿件中标', null, 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '自定义内容', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('132', 'task_js_one', 'task', '获得一等奖', null, 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '自定义内容', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('134', 'task_complete', 'task', '任务完成', '用户发布的任务，确认完成后，会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '<p>您发布的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>{理由}<p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('137', 'suggest_reply', 'user', '建议反馈', '用户成功提交建议反馈时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '&lt;p&gt;亲爱的{用户名}：&lt;/p&gt;&lt;p&gt;标题：您的建议\"{用户标题}\"收到了来自管理员的回复&lt;/p&gt;&lt;p&gt;您建议的内容：{建议内容}&lt;/p&gt;&lt;p&gt;管理员回复：{回复内容}&lt;br /&gt;&lt;/p&gt;&lt;p&gt;&nbsp;{网站名称}&lt;br /&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('140', 'work_rw', 'task', '稿件入围', '用户发布稿件被雇主选中入围时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主{稿件状态}，感谢您对{网站名称}网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：{任务编号}&lt;/p&gt;&lt;p&gt;任务标题：{任务标题}&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('138', 'reported_nopass', 'trans', '被举报不成立', '用户被举报，管理员确认不成立时收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;您被网站用户举报的{交易维权编号}的{交易维权名称}记录网站确认为不成立，处理结果为：&lt;/p&gt;&lt;p&gt;{处理结果}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('139', 'reported_pass', 'trans', '被举报成立', '用户被举报，管理员确认成立时收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440944', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;您被网站用户举报的{交易维权编号}的{交易维权名称}记录网站已经受理完成，{交易维权名称}处理结果为：{处理结果}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('141', 'work_out', 'task', '稿件淘汰', '用户发布稿件被雇主淘汰时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440936', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&nbsp; 您的稿件被雇主{稿件状态}，感谢您对{网站名称}网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;任务编号：{任务编号}&lt;/p&gt;&lt;p&gt;任务标题：{任务标题}&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('142', 'admin_charge', 'manage', '手动充值', '管理员给用户手动充值时用户会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;&nbsp; 后台管理员{金额动作}您现金{金额}，感谢您对{网站名称}网的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;&lt;p&gt;--------------------------------------------------------------------------------------------------------------------&lt;/p&gt;&lt;p&gt;此邮件为系统自动发出的邮件，请勿直接回复。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('145', 'report_notice', 'user', '举报通知', '用户发布的任务/作品/服务被其他用户举报时会收到此通知', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '<p>尊敬的{用户名}：您发布的{模型名称}{类型}{标题}被其他用户举报！</p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>--------------------------------------------------------------------------------------------------------------------</p><p>此邮件为系统自动发出的邮件，请勿直接回复。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('85', 'goods_order', 'service', '商品订单提交', '用户发布的商品，有人进行了下单操作时用户会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1366440936', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;{用户动作}了您的{服务类型}：{服务名称}。&lt;/p&gt;&lt;p&gt;买家留言：{买家留言}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('148', 'gy_notice_to_seller', 'service', '雇佣通知卖家', '用户被雇佣时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;{用户}对你发出雇佣，{状态变更}&lt;/p&gt;&lt;p&gt;请尽快前往用户中心处理。&lt;/p&gt;&lt;p&gt;雇佣信息：雇佣订单编号：{订单编号}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('150', 'gy_notice_to_buyer', 'service', '雇佣通知买家', '用户成功发起雇佣时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;你对{用户}发出雇佣，{状态变更}&lt;/p&gt;&lt;p&gt;请尽快前往用户中心处理。&lt;/p&gt;&lt;p&gt;雇佣信息：雇佣订单编号：{订单编号}&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('151', 'zp_auth_fail', 'service', '作品审核通知', '用户发布的作品未通过审核时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '<p>尊敬的 {用户名}：您的发布的作品 {作品标题} 未通过审核，未通过审核的原因：{审核原因},感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('152', 'service_auth_fail', 'service', '服务审核通知', '用户发布的服务未通过审核时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '<p>尊敬的 {用户名}：您的发布的服务 {作品标题} 未通过审核，未通过审核的原因：{审核原因},感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('153', 'auth_auth_fail', 'auth', '企业认证审核通知', '用户申请的企业认证未通过审核时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '<p>尊敬的 {用户名}：您的申请的企业认证未通过审核，未通过审核的原因：{审核原因},感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('154', 'aut_auth_fail', 'auth', '实名认证审核通知', '用户申请的实名认证未通过审核时会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '&lt;p&gt;尊敬的 {用户名}：您的申请的实名认证未通过审核，未通过审核的原因：{审核原因},感谢您对{网站名称}的信任。如有特殊情况，请致电客服，我们将协助您解决问题。&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('155', 'dtend_amount', 'task', '雇主已托管赏金', '用户中标的订金招标任务，雇主托管赏金后用户会收到此通知。', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1421811808', '<p>您中标的{模型名称}任务<a href=\"index.php?do=task&task_id={任务编号}\">{任务标题}</a>雇主已成功托管赏金{金额}元</p><p>感谢您对{网站名称}的信任。如有特殊情况，请致电客服</p>\r\n', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('156', 'order_create', 'service', '创建订单', '威客发布的商品服务被购买会收到此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1364996161', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;尊敬的 {用户名}：&lt;/p&gt;&lt;p&gt;您的{商品模型名称} {商品标题} 有了新的订单！&lt;/p&gt;&lt;p&gt;购买者：{用户}，&nbsp;&nbsp;&nbsp;订单详情：{订单链接}&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;感谢您对{网站名称}的信任。如有特殊情况，请致电客服&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('157', 'task_end_manually', 'task', '任务结束通知', '管理员后台手动结束任务时用户会收到此通知。', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1364996161', '<p>您发布的{模型名称}任务{任务标题}被管理员手动结束，原因：{理由}<p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('158', 'alipayjs_auth', 'auth', '支付宝认证通知', '后台打款给用户的时候', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1364996161', '<p>您申请的支付宝认证已经受理，管理员已经打款到您的账户，请及时查收，并在<a href=\"index.php?do=user&view=account&op=index&code=alipayjs\">确认收款金额</a>中填写您收到的金额数，以便你认证成功！</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('159', 'alipayjs_auth', 'auth', '支付宝认证通知', '后台打款给用户的时候', 'a:3:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;s:15:\"send_mobile_sms\";i:1;}', '1364996161', '<p>您申请的支付宝认证已经受理，管理员已经打款到您的账户，请及时查收，并在<a href=\"index.php?do=user&view=account&op=index&code=alipayjs\">确认收款金额</a>中填写您收到的金额数，以便你认证成功！</p>', '1');
INSERT INTO `keke_witkey_msg_config` VALUES ('160', 'select', 'task', '红包任务', '当用户完成任务时会受到此通知', 'a:2:{s:8:\"send_sms\";i:1;s:10:\"send_email\";i:1;}', '1364996161', '<p>您的红包任务{红包任务}已完成，你得到金额{红包金额}元</p>', '1');

-- ----------------------------
-- Table structure for keke_witkey_nav
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_nav`;
CREATE TABLE `keke_witkey_nav` (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航编号',
  `nav_url` varchar(200) DEFAULT NULL COMMENT '导航链接',
  `nav_title` varchar(20) DEFAULT NULL COMMENT '导航名称',
  `nav_style` varchar(20) DEFAULT NULL COMMENT '导航模式',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `newwindow` int(11) DEFAULT '0' COMMENT '新窗口打开',
  `ishide` int(11) DEFAULT '0' COMMENT '隐藏（0全部显示。1全部隐藏 2.首页隐藏。3.商城隐藏）',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_nav
-- ----------------------------
INSERT INTO `keke_witkey_nav` VALUES ('14', 'index.php?do=tasklist', '任务大厅', 'tasklist', '2', '0', '0');
INSERT INTO `keke_witkey_nav` VALUES ('5', 'index.php?do=goodslist', '威客商城', 'goodslist', '3', '0', '0');
INSERT INTO `keke_witkey_nav` VALUES ('6', 'index.php?do=articlelist', '资讯中心', 'articlelist', '6', '0', '0');
INSERT INTO `keke_witkey_nav` VALUES ('7', 'index.php?do=case', '成功案例', 'case', '5', '0', '0');
INSERT INTO `keke_witkey_nav` VALUES ('17', 'index.php?do=sellerlist', '服务商', 'sellerlist', '4', '0', '0');
INSERT INTO `keke_witkey_nav` VALUES ('33', 'index.php?do=index', '首页', 'index', '1', '0', '0');

-- ----------------------------
-- Table structure for keke_witkey_order
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_order`;
CREATE TABLE `keke_witkey_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `order_name` varchar(150) DEFAULT NULL COMMENT '订单名称',
  `order_time` int(10) DEFAULT NULL COMMENT '时间',
  `order_amount` decimal(12,2) DEFAULT '0.00' COMMENT '金额',
  `order_status` char(20) DEFAULT NULL COMMENT '状态',
  `order_body` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `order_uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `order_username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `seller_uid` int(11) DEFAULT NULL COMMENT '卖家编号',
  `seller_username` varchar(30) DEFAULT NULL COMMENT '卖家用户名',
  `model_id` int(11) DEFAULT NULL COMMENT '模型编号',
  `to_seller_message` varchar(255) DEFAULT NULL COMMENT '给卖家留言',
  `ys_end_time` int(11) DEFAULT NULL COMMENT '验收时间',
  `service_end_time` int(11) DEFAULT NULL COMMENT '服务结束时间',
  PRIMARY KEY (`order_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_order
-- ----------------------------
INSERT INTO `keke_witkey_order` VALUES ('1', '婚纱摄影网站，有原型，有HTML，套后台', '1433904375', '2000.00', 'ok', '发布任务<a href=\"index.php?do=task&id=1\">婚纱摄影网站，有原型，有HTML，套后台</a>', '2', '烂苹果丶', '2', '烂苹果丶', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('2', 'destoon程序做的网站，解决占用CPU高', '1433904694', '3000.00', 'ok', '发布任务<a href=\"index.php?do=task&id=2\">destoon程序做的网站，解决占用CPU高</a>', '2', '烂苹果丶', '2', '烂苹果丶', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('3', '仿快播 Windows客户端、服务器端', '1433904792', '6320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=3\">仿快播 Windows客户端、服务器端</a>', '2', '烂苹果丶', '2', '烂苹果丶', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('4', '设计一个支付（POS机公司）公司的网站', '1433904929', '1320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=4\">设计一个支付（POS机公司）公司的网站</a>', '2', '烂苹果丶', '2', '烂苹果丶', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('5', '需要通过货运单号采集当月客户信息的软件', '1433905068', '5320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=5\">需要通过货运单号采集当月客户信息的软件</a>', '2', '烂苹果丶', '2', '烂苹果丶', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('6', '网站升级加微网站手机应用开发', '1433905225', '30320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=6\">网站升级加微网站手机应用开发</a>', '2', '烂苹果丶', '2', '烂苹果丶', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('7', '类似奇幻咔咔的APP', '1433905378', '100.00', 'wait', '发布任务<a href=\"index.php?do=task&id=7\">类似奇幻咔咔的APP</a>', '3', '暗夜行路', '3', '暗夜行路', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('8', '耳机行业互联网商业计划书撰写', '1433905490', '5320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=8\">耳机行业互联网商业计划书撰写</a>', '4', 'dabomei', '4', 'dabomei', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('9', '做一个运动场地在线发布和预定的b2c平台', '1433905742', '30320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=9\">做一个运动场地在线发布和预定的b2c平台</a>', '4', 'dabomei', '4', 'dabomei', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('10', '体育用品公司LOGO设计，名片设计', '1433905891', '5320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=10\">体育用品公司LOGO设计，名片设计</a>', '4', 'dabomei', '4', 'dabomei', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('11', '5000元开发微信大屏系统', '1433905929', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=11\">5000元开发微信大屏系统</a>', '3', '暗夜行路', '3', '暗夜行路', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('12', '辣PLUS麻辣小龙虾文案', '1433906050', '920.00', 'ok', '发布任务<a href=\"index.php?do=task&id=12\">辣PLUS麻辣小龙虾文案</a>', '4', 'dabomei', '4', 'dabomei', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('13', '模仿国外网站 建立服装推广网站', '1433906063', '200.00', 'ok', '发布任务<a href=\"index.php?do=task&id=13\">模仿国外网站 建立服装推广网站</a>', '3', '暗夜行路', '3', '暗夜行路', '3', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('14', '根据店名“木头和马尾”设计LOGO和推广', '1433906151', '1.00', 'ok', '发布任务<a href=\"index.php?do=task&id=14\">根据店名“木头和马尾”设计LOGO和推广</a>', '3', '暗夜行路', '3', '暗夜行路', '4', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('15', '蜂花恋品牌LOGO设计', '1433906225', '1320.00', 'ok', '发布任务<a href=\"index.php?do=task&id=15\">蜂花恋品牌LOGO设计</a>', '4', 'dabomei', '4', 'dabomei', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('16', '律师事务所LOGO设计Logo设计', '1433906230', '30.00', 'ok', '发布任务<a href=\"index.php?do=task&id=16\">律师事务所LOGO设计Logo设计</a>', '3', '暗夜行路', '3', '暗夜行路', '5', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('17', '一品威客官网App名称征集', '1433906367', '1520.00', 'ok', '发布任务<a href=\"index.php?do=task&id=17\">一品威客官网App名称征集</a>', '4', 'dabomei', '4', 'dabomei', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('18', 'PHP网站修改.产品搜索功能修改', '1433906529', '200.00', 'ok', '发布任务<a href=\"index.php?do=task&id=18\">PHP网站修改.产品搜索功能修改</a>', '3', '暗夜行路', '3', '暗夜行路', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('19', '钻达集团VI手册设计', '1433906599', '200.00', 'ok', '发布任务<a href=\"index.php?do=task&id=19\">钻达集团VI手册设计</a>', '3', '暗夜行路', '3', '暗夜行路', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('20', '新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下', '1433906673', '1.00', 'ok', '发布任务<a href=\"index.php?do=task&id=20\">新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下</a>', '3', '暗夜行路', '3', '暗夜行路', '4', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('21', '山西省陵川县第一山林场LOGO设计', '1433906696', '2021.00', 'ok', '发布任务<a href=\"index.php?do=task&id=21\">山西省陵川县第一山林场LOGO设计</a>', '4', 'dabomei', '4', 'dabomei', '4', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('22', '微拍贷logo设计', '1433906812', '4020.00', 'ok', '发布任务<a href=\"index.php?do=task&id=22\">微拍贷logo设计</a>', '4', 'dabomei', '4', 'dabomei', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('23', '昂华公司跟单软件界面设计', '1433906869', '300.00', 'ok', '发布任务<a href=\"index.php?do=task&id=23\">昂华公司跟单软件界面设计</a>', '3', '暗夜行路', '3', '暗夜行路', '5', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('24', '购买增值服务', '1433914897', '1100.00', 'ok', '购买增值服务', '4', 'dabomei', '0', '', '7', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('25', '大学毕业论文求稿', '1433915184', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=24\">大学毕业论文求稿</a>', '3', '暗夜行路', '3', '暗夜行路', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('26', '小型电商网站建设可用模板', '1433915973', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=25\">小型电商网站建设可用模板</a>', '3', '暗夜行路', '3', '暗夜行路', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('27', '购买增值服务', '1433916151', '1100.00', 'ok', '购买增值服务', '4', 'dabomei', '0', '', '6', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('28', '一张web登陆页面和两张APP登陆页面', '1433916226', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=26\">一张web登陆页面和两张APP登陆页面</a>', '3', '暗夜行路', '3', '暗夜行路', '3', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('29', '购买增值服务', '1433916353', '11.00', 'ok', '购买增值服务', '4', 'dabomei', '0', '', '7', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('30', '购买增值服务', '1433916687', '1100.00', 'ok', '购买增值服务', '5', '骑姐丶', '0', '', '7', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('31', '购买增值服务', '1433916807', '1100.00', 'ok', '购买增值服务', '5', '骑姐丶', '0', '', '6', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('32', '购买增值服务', '1433917421', '1100.00', 'ok', '购买增值服务', '8', '京巴丶', '0', '', '7', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('33', '购买增值服务', '1433917527', '1100.00', 'ok', '购买增值服务', '7', '大姨父丶', '0', '', '6', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('34', '购买增值服务', '1433917647', '1100.00', 'ok', '购买增值服务', '2', '烂苹果丶', '0', '', '6', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('35', '提供美丽说或者蘑菇街API 开发', '1433919349', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=27\">提供美丽说或者蘑菇街API 开发</a>', '5', '骑姐丶', '5', '骑姐丶', '3', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('36', '结合开源客户端openfire，修改一个开源xmpp服务器端', '1433919422', '200.00', 'ok', '发布任务<a href=\"index.php?do=task&id=28\">结合开源客户端openfire，修改一个开源xmpp服务器端</a>', '5', '骑姐丶', '5', '骑姐丶', '3', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('37', '投票大调查', '1433922430', '200.00', 'ok', '发布任务<a href=\"index.php?do=task&id=29\">投票大调查</a>', '3', '暗夜行路', '3', '暗夜行路', '2', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('38', '市场大调查', '1433923093', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=30\">市场大调查</a>', '3', '暗夜行路', '3', '暗夜行路', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('39', '动漫设计大赛', '1433929092', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=31\">动漫设计大赛</a>', '1', 'admin', '1', 'admin', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('40', '软件应用开发', '1433935035', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=32\">软件应用开发</a>', '1', 'admin', '1', 'admin', '3', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('41', '节能灯宣传软文撰写', '1434005085', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=33\">节能灯宣传软文撰写</a>', '1', 'admin', '1', 'admin', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('42', '网站开发flash', '1434010108', '55.00', 'ok', '发布任务<a href=\"index.php?do=task&id=34\">网站开发flash</a>', '1', 'admin', '1', 'admin', '12', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('43', '数码摄影定金任务', '1434012012', '300.00', 'ok', '发布任务<a href=\"index.php?do=task&id=35\">数码摄影定金任务</a>', '1', 'admin', '1', 'admin', '5', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('44', '程序功能开发', '1434012369', '300.00', 'ok', '发布任务<a href=\"index.php?do=task&id=36\">程序功能开发</a>', '1', 'admin', '1', 'admin', '5', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('45', 'flash制作', '1434013739', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=37\">flash制作</a>', '1', 'admin', '1', 'admin', '3', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('46', '字体设计，喜帖字体设计', '1434014320', '0.01', 'ok', '发布任务<a href=\"index.php?do=task&id=38\">字体设计，喜帖字体设计</a>', '1', 'admin', '1', 'admin', '1', null, null, null);
INSERT INTO `keke_witkey_order` VALUES ('47', '网站开发征集', '1434015539', '100.00', 'ok', '发布任务<a href=\"index.php?do=task&id=39\">网站开发征集</a>', '1', 'admin', '1', 'admin', '3', null, null, null);

-- ----------------------------
-- Table structure for keke_witkey_order_charge
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_order_charge`;
CREATE TABLE `keke_witkey_order_charge` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `order_type` varchar(20) DEFAULT NULL COMMENT '冲值类型',
  `pay_type` varchar(20) DEFAULT '0' COMMENT '支付方式',
  `return_order_id` int(11) DEFAULT '0' COMMENT '返回订单编号',
  `obj_id` int(11) DEFAULT '0' COMMENT '对象编号',
  `uid` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(20) DEFAULT '0' COMMENT '用户名',
  `pay_time` int(11) DEFAULT '0' COMMENT '支付时间',
  `pay_money` decimal(11,2) DEFAULT '0.00' COMMENT '支付金额',
  `order_status` char(20) DEFAULT NULL COMMENT '订单状态',
  `pay_info` text COMMENT '支付信息',
  `out_trade_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_order_charge
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_order_detail`;
CREATE TABLE `keke_witkey_order_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细编号',
  `detail_name` varchar(100) DEFAULT NULL COMMENT '对象名称',
  `order_id` int(11) DEFAULT NULL COMMENT '订单编号',
  `obj_type` varchar(20) DEFAULT NULL COMMENT '对象类型',
  `obj_id` int(11) DEFAULT NULL COMMENT '对象编号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `detail_type` varchar(20) DEFAULT NULL COMMENT '用于增值服务code记录',
  PRIMARY KEY (`detail_id`),
  KEY `detail_id` (`detail_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_order_detail
-- ----------------------------
INSERT INTO `keke_witkey_order_detail` VALUES ('1', '婚纱摄影网站，有原型，有HTML，套后台', '1', 'task', '1', '2000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('2', 'destoon程序做的网站，解决占用CPU高', '2', 'task', '2', '3000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('3', '仿快播 Windows客户端、服务器端', '3', 'task', '3', '6000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('4', '购买增值服务任务加急', '3', 'task', '3', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('5', '购买增值服务任务置顶', '3', 'task', '3', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('6', '购买增值服务稿件隐藏', '3', 'task', '3', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('7', '购买增值服务屏蔽搜索引擎', '3', 'task', '3', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('8', '设计一个支付（POS机公司）公司的网站', '4', 'task', '4', '1000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('9', '购买增值服务任务加急', '4', 'task', '4', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('10', '购买增值服务任务置顶', '4', 'task', '4', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('11', '购买增值服务稿件隐藏', '4', 'task', '4', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('12', '购买增值服务屏蔽搜索引擎', '4', 'task', '4', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('13', '需要通过货运单号采集当月客户信息的软件', '5', 'task', '5', '5000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('14', '购买增值服务任务加急', '5', 'task', '5', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('15', '购买增值服务任务置顶', '5', 'task', '5', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('16', '购买增值服务稿件隐藏', '5', 'task', '5', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('17', '购买增值服务屏蔽搜索引擎', '5', 'task', '5', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('18', '网站升级加微网站手机应用开发', '6', 'task', '6', '30000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('19', '购买增值服务任务加急', '6', 'task', '6', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('20', '购买增值服务任务置顶', '6', 'task', '6', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('21', '购买增值服务稿件隐藏', '6', 'task', '6', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('22', '购买增值服务屏蔽搜索引擎', '6', 'task', '6', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('23', '类似奇幻咔咔的APP', '7', 'task', '7', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('24', '耳机行业互联网商业计划书撰写', '8', 'task', '8', '5000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('25', '购买增值服务任务加急', '8', 'task', '8', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('26', '购买增值服务任务置顶', '8', 'task', '8', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('27', '购买增值服务稿件隐藏', '8', 'task', '8', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('28', '购买增值服务屏蔽搜索引擎', '8', 'task', '8', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('29', '做一个运动场地在线发布和预定的b2c平台', '9', 'task', '9', '30000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('30', '购买增值服务任务加急', '9', 'task', '9', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('31', '购买增值服务任务置顶', '9', 'task', '9', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('32', '购买增值服务稿件隐藏', '9', 'task', '9', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('33', '购买增值服务屏蔽搜索引擎', '9', 'task', '9', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('34', '体育用品公司LOGO设计，名片设计', '10', 'task', '10', '5000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('35', '购买增值服务任务加急', '10', 'task', '10', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('36', '购买增值服务任务置顶', '10', 'task', '10', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('37', '购买增值服务稿件隐藏', '10', 'task', '10', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('38', '购买增值服务屏蔽搜索引擎', '10', 'task', '10', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('39', '5000元开发微信大屏系统', '11', 'task', '11', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('40', '辣PLUS麻辣小龙虾文案', '12', 'task', '12', '600.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('41', '购买增值服务任务加急', '12', 'task', '12', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('42', '购买增值服务任务置顶', '12', 'task', '12', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('43', '购买增值服务稿件隐藏', '12', 'task', '12', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('44', '购买增值服务屏蔽搜索引擎', '12', 'task', '12', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('45', '模仿国外网站 建立服装推广网站', '13', 'task', '13', '200.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('46', '根据店名“木头和马尾”设计LOGO和推广', '14', 'task', '14', '1.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('47', '蜂花恋品牌LOGO设计', '15', 'task', '15', '1000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('48', '购买增值服务任务加急', '15', 'task', '15', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('49', '购买增值服务任务置顶', '15', 'task', '15', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('50', '购买增值服务稿件隐藏', '15', 'task', '15', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('51', '购买增值服务屏蔽搜索引擎', '15', 'task', '15', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('52', '律师事务所LOGO设计Logo设计', '16', 'task', '16', '30.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('53', '一品威客官网App名称征集', '17', 'task', '17', '1200.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('54', '购买增值服务任务加急', '17', 'task', '17', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('55', '购买增值服务任务置顶', '17', 'task', '17', '300.00', '15', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('56', '购买增值服务稿件隐藏', '17', 'task', '17', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('57', '购买增值服务屏蔽搜索引擎', '17', 'task', '17', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('58', 'PHP网站修改.产品搜索功能修改', '18', 'task', '18', '200.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('59', '钻达集团VI手册设计', '19', 'task', '19', '200.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('60', '新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下', '20', 'task', '20', '1.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('61', '山西省陵川县第一山林场LOGO设计', '21', 'task', '21', '1.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('62', '购买增值服务任务加急', '21', 'task', '21', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('63', '购买增值服务任务置顶', '21', 'task', '21', '2000.00', '100', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('64', '购买增值服务稿件隐藏', '21', 'task', '21', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('65', '购买增值服务屏蔽搜索引擎', '21', 'task', '21', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('66', '微拍贷logo设计', '22', 'task', '22', '2000.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('67', '购买增值服务任务加急', '22', 'task', '22', '0.00', '1', 'urgent');
INSERT INTO `keke_witkey_order_detail` VALUES ('68', '购买增值服务任务置顶', '22', 'task', '22', '2000.00', '100', 'tasktop');
INSERT INTO `keke_witkey_order_detail` VALUES ('69', '购买增值服务稿件隐藏', '22', 'task', '22', '0.00', '1', 'workhide');
INSERT INTO `keke_witkey_order_detail` VALUES ('70', '购买增值服务屏蔽搜索引擎', '22', 'task', '22', '20.00', '1', 'seohide');
INSERT INTO `keke_witkey_order_detail` VALUES ('71', '昂华公司跟单软件界面设计', '23', 'task', '23', '300.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('72', '购买增值服务商品置顶', '24', 'goods', '4', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('73', '大学毕业论文求稿', '25', 'task', '24', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('74', '小型电商网站建设可用模板', '26', 'task', '25', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('75', '购买增值服务商品置顶', '27', 'goods', '5', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('76', '一张web登陆页面和两张APP登陆页面', '28', 'task', '26', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('77', '购买增值服务商品置顶', '29', 'goods', '6', '11.00', '1', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('78', '购买增值服务商品置顶', '30', 'goods', '7', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('79', '购买增值服务商品置顶', '31', 'goods', '8', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('80', '购买增值服务商品置顶', '32', 'goods', '9', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('81', '购买增值服务商品置顶', '33', 'goods', '10', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('82', '购买增值服务商品置顶', '34', 'goods', '11', '1100.00', '100', 'goodstop');
INSERT INTO `keke_witkey_order_detail` VALUES ('83', '提供美丽说或者蘑菇街API 开发', '35', 'task', '27', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('84', '结合开源客户端openfire，修改一个开源xmpp服务器端', '36', 'task', '28', '200.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('85', '投票大调查', '37', 'task', '29', '200.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('86', '市场大调查', '38', 'task', '30', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('87', '动漫设计大赛', '39', 'task', '31', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('88', '软件应用开发', '40', 'task', '32', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('89', '节能灯宣传软文撰写', '41', 'task', '33', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('90', '网站开发flash', '42', 'task', '34', '55.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('91', '数码摄影定金任务', '43', 'task', '35', '300.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('92', '程序功能开发', '44', 'task', '36', '300.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('93', 'flash制作', '45', 'task', '37', '100.00', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('94', '字体设计，喜帖字体设计', '46', 'task', '38', '0.01', '1', null);
INSERT INTO `keke_witkey_order_detail` VALUES ('95', '网站开发征集', '47', 'task', '39', '100.00', '1', null);

-- ----------------------------
-- Table structure for keke_witkey_pay_api
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_pay_api`;
CREATE TABLE `keke_witkey_pay_api` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '接口编号',
  `payment` varchar(50) NOT NULL COMMENT '支付方式',
  `type` char(20) DEFAULT NULL COMMENT '支付类型',
  `config` text COMMENT '支付配置',
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_pay_api
-- ----------------------------
INSERT INTO `keke_witkey_pay_api` VALUES ('3', 'chinabank', 'online', '');
INSERT INTO `keke_witkey_pay_api` VALUES ('2', 'alipayjs', 'online', 'a:1:{s:10:\"pay_status\";i:1;}');
INSERT INTO `keke_witkey_pay_api` VALUES ('10', 'paypal', 'online', '');
INSERT INTO `keke_witkey_pay_api` VALUES ('1', 'tenpay', 'online', '');
INSERT INTO `keke_witkey_pay_api` VALUES ('4', 'yeepay', 'online', '');
INSERT INTO `keke_witkey_pay_api` VALUES ('14', 'alipaydual', 'online', '');

-- ----------------------------
-- Table structure for keke_witkey_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_pay_config`;
CREATE TABLE `keke_witkey_pay_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置编号',
  `k` varchar(50) DEFAULT NULL COMMENT '配置键',
  `v` varchar(150) DEFAULT NULL COMMENT '配置值',
  `t` char(20) DEFAULT NULL COMMENT '配置类型',
  `d` char(50) DEFAULT NULL COMMENT '配置描述',
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_pay_config
-- ----------------------------
INSERT INTO `keke_witkey_pay_config` VALUES ('1', 'recharge_min', '0.01', null, null);
INSERT INTO `keke_witkey_pay_config` VALUES ('2', 'withdraw_min', '2', null, null);
INSERT INTO `keke_witkey_pay_config` VALUES ('3', 'withdraw_max', '20000', null, null);
INSERT INTO `keke_witkey_pay_config` VALUES ('4', 'per_charge', '2', null, null);
INSERT INTO `keke_witkey_pay_config` VALUES ('5', 'per_low', '1', null, null);
INSERT INTO `keke_witkey_pay_config` VALUES ('6', 'per_high', '25', null, null);

-- ----------------------------
-- Table structure for keke_witkey_payitem
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_payitem`;
CREATE TABLE `keke_witkey_payitem` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '付费项编号',
  `item_code` char(20) DEFAULT NULL COMMENT '付费项',
  `small_pic` varchar(100) DEFAULT NULL COMMENT '付费项小图标',
  `item_name` char(20) DEFAULT NULL COMMENT '付费项目名称',
  `item_cash` decimal(10,2) DEFAULT '0.00' COMMENT '付费项价格',
  `item_standard` char(20) DEFAULT NULL COMMENT '使用标准（天/次）',
  `item_desc` text COMMENT '描述',
  `ext` text COMMENT '扩展',
  `is_open` int(1) DEFAULT NULL COMMENT '是否开启',
  `item_type` varchar(100) DEFAULT NULL COMMENT '付费项类型',
  PRIMARY KEY (`item_id`),
  KEY `item_id` (`item_id`),
  KEY `item_code` (`item_code`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_payitem
-- ----------------------------
INSERT INTO `keke_witkey_payitem` VALUES ('7', 'goodstop', null, '商品置顶', '11.00', '天', '商品置顶商品置顶商品置顶', null, '1', 'goods');
INSERT INTO `keke_witkey_payitem` VALUES ('3', 'urgent', '', '任务加急', '0.00', '次', '&lt;p&gt;加急图标展示，获得更高关注度，可能会产生意想不到的收获哦&lt;/p&gt;', '', '1', 'task');
INSERT INTO `keke_witkey_payitem` VALUES ('2', 'tasktop', '', '任务置顶', '20.00', '天', '&lt;p&gt;&lt;span style=\\\"font-size: 14px;\\\"&gt;需求展示在列表的最顶端，增加曝光度和提高参与率，同时稿件质量大有提高&lt;/span&gt;。&lt;/p&gt;', '0', '1', 'task');
INSERT INTO `keke_witkey_payitem` VALUES ('1', 'workhide', 'data/uploads/sys/tools/210914f3b0bca96811.gif?fid=2097', '稿件隐藏', '0.00', '次', '&lt;p&gt;雇主购买稿件隐藏，可以把自己任务下的所有稿件都影藏掉。&lt;/p&gt;', '0', '1', 'task');
INSERT INTO `keke_witkey_payitem` VALUES ('5', 'seohide', 'data/uploads/sys/tools/303205192f84576323.gif?fid=4510', '屏蔽搜索引擎', '20.00', '次', '让您发布的信息不被百度，google等搜索引擎收录，保护您的隐私', '', '1', 'task');

-- ----------------------------
-- Table structure for keke_witkey_payitem_record
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_payitem_record`;
CREATE TABLE `keke_witkey_payitem_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '使用记录编号',
  `item_code` char(20) DEFAULT NULL COMMENT '使用的付费项',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `obj_type` char(20) DEFAULT NULL COMMENT '对象类型',
  `obj_id` int(11) DEFAULT NULL COMMENT '对象编号',
  `use_cash` decimal(10,2) DEFAULT '0.00' COMMENT '使用金额',
  `use_num` int(2) DEFAULT NULL COMMENT '使用次数',
  `on_time` int(11) DEFAULT NULL COMMENT '使用时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`record_id`),
  KEY `record_id` (`record_id`),
  KEY `item_code` (`item_code`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_payitem_record
-- ----------------------------
INSERT INTO `keke_witkey_payitem_record` VALUES ('1', 'urgent', '2', '烂苹果丶', 'task', '3', '0.00', '1', '1433904802', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('2', 'tasktop', '2', '烂苹果丶', 'task', '3', '300.00', '15', '1433904802', '1435200802');
INSERT INTO `keke_witkey_payitem_record` VALUES ('3', 'workhide', '2', '烂苹果丶', 'task', '3', '0.00', '1', '1433904802', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('4', 'seohide', '2', '烂苹果丶', 'task', '3', '20.00', '1', '1433904802', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('5', 'urgent', '2', '烂苹果丶', 'task', '4', '0.00', '1', '1433904952', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('6', 'tasktop', '2', '烂苹果丶', 'task', '4', '300.00', '15', '1433904952', '1435200952');
INSERT INTO `keke_witkey_payitem_record` VALUES ('7', 'workhide', '2', '烂苹果丶', 'task', '4', '0.00', '1', '1433904952', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('8', 'seohide', '2', '烂苹果丶', 'task', '4', '20.00', '1', '1433904952', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('9', 'urgent', '2', '烂苹果丶', 'task', '5', '0.00', '1', '1433905074', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('10', 'tasktop', '2', '烂苹果丶', 'task', '5', '300.00', '15', '1433905074', '1435201074');
INSERT INTO `keke_witkey_payitem_record` VALUES ('11', 'workhide', '2', '烂苹果丶', 'task', '5', '0.00', '1', '1433905074', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('12', 'seohide', '2', '烂苹果丶', 'task', '5', '20.00', '1', '1433905074', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('13', 'urgent', '2', '烂苹果丶', 'task', '6', '0.00', '1', '1433905244', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('14', 'tasktop', '2', '烂苹果丶', 'task', '6', '300.00', '15', '1433905244', '1435201244');
INSERT INTO `keke_witkey_payitem_record` VALUES ('15', 'workhide', '2', '烂苹果丶', 'task', '6', '0.00', '1', '1433905244', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('16', 'seohide', '2', '烂苹果丶', 'task', '6', '20.00', '1', '1433905244', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('17', 'urgent', '4', 'dabomei', 'task', '8', '0.00', '1', '1433905551', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('18', 'tasktop', '4', 'dabomei', 'task', '8', '300.00', '15', '1433905551', '1435201551');
INSERT INTO `keke_witkey_payitem_record` VALUES ('19', 'workhide', '4', 'dabomei', 'task', '8', '0.00', '1', '1433905551', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('20', 'seohide', '4', 'dabomei', 'task', '8', '20.00', '1', '1433905551', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('21', 'urgent', '4', 'dabomei', 'task', '9', '0.00', '1', '1433905748', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('22', 'tasktop', '4', 'dabomei', 'task', '9', '300.00', '15', '1433905748', '1435201748');
INSERT INTO `keke_witkey_payitem_record` VALUES ('23', 'workhide', '4', 'dabomei', 'task', '9', '0.00', '1', '1433905748', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('24', 'seohide', '4', 'dabomei', 'task', '9', '20.00', '1', '1433905748', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('25', 'urgent', '4', 'dabomei', 'task', '10', '0.00', '1', '1433905897', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('26', 'tasktop', '4', 'dabomei', 'task', '10', '300.00', '15', '1433905897', '1435201897');
INSERT INTO `keke_witkey_payitem_record` VALUES ('27', 'workhide', '4', 'dabomei', 'task', '10', '0.00', '1', '1433905897', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('28', 'seohide', '4', 'dabomei', 'task', '10', '20.00', '1', '1433905897', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('29', 'urgent', '4', 'dabomei', 'task', '12', '0.00', '1', '1433906108', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('30', 'tasktop', '4', 'dabomei', 'task', '12', '300.00', '15', '1433906108', '1435202108');
INSERT INTO `keke_witkey_payitem_record` VALUES ('31', 'workhide', '4', 'dabomei', 'task', '12', '0.00', '1', '1433906108', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('32', 'seohide', '4', 'dabomei', 'task', '12', '20.00', '1', '1433906109', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('33', 'urgent', '4', 'dabomei', 'task', '15', '0.00', '1', '1433906233', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('34', 'tasktop', '4', 'dabomei', 'task', '15', '300.00', '15', '1433906233', '1435202233');
INSERT INTO `keke_witkey_payitem_record` VALUES ('35', 'workhide', '4', 'dabomei', 'task', '15', '0.00', '1', '1433906233', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('36', 'seohide', '4', 'dabomei', 'task', '15', '20.00', '1', '1433906233', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('37', 'urgent', '4', 'dabomei', 'task', '17', '0.00', '1', '1433906373', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('38', 'tasktop', '4', 'dabomei', 'task', '17', '300.00', '15', '1433906373', '1435202373');
INSERT INTO `keke_witkey_payitem_record` VALUES ('39', 'workhide', '4', 'dabomei', 'task', '17', '0.00', '1', '1433906373', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('40', 'seohide', '4', 'dabomei', 'task', '17', '20.00', '1', '1433906373', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('41', 'urgent', '4', 'dabomei', 'task', '21', '0.00', '1', '1433906702', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('42', 'tasktop', '4', 'dabomei', 'task', '21', '2000.00', '100', '1433906702', '1442546702');
INSERT INTO `keke_witkey_payitem_record` VALUES ('43', 'workhide', '4', 'dabomei', 'task', '21', '0.00', '1', '1433906702', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('44', 'seohide', '4', 'dabomei', 'task', '21', '20.00', '1', '1433906702', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('45', 'urgent', '4', 'dabomei', 'task', '22', '0.00', '1', '1433906818', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('46', 'tasktop', '4', 'dabomei', 'task', '22', '2000.00', '100', '1433906818', '1442546818');
INSERT INTO `keke_witkey_payitem_record` VALUES ('47', 'workhide', '4', 'dabomei', 'task', '22', '0.00', '1', '1433906818', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('48', 'seohide', '4', 'dabomei', 'task', '22', '20.00', '1', '1433906818', null);
INSERT INTO `keke_witkey_payitem_record` VALUES ('49', 'goodstop', '4', 'dabomei', 'goods', '4', '1100.00', '100', '1433914903', '1442554903');
INSERT INTO `keke_witkey_payitem_record` VALUES ('50', 'goodstop', '4', 'dabomei', 'goods', '5', '1100.00', '100', '1433916426', '1442556426');
INSERT INTO `keke_witkey_payitem_record` VALUES ('51', 'goodstop', '4', 'dabomei', 'goods', '6', '11.00', '1', '1433916359', '1434002759');
INSERT INTO `keke_witkey_payitem_record` VALUES ('52', 'goodstop', '5', '骑姐丶', 'goods', '7', '1100.00', '100', '1433916693', '1442556693');
INSERT INTO `keke_witkey_payitem_record` VALUES ('53', 'goodstop', '5', '骑姐丶', 'goods', '8', '1100.00', '100', '1433917252', '1442557252');
INSERT INTO `keke_witkey_payitem_record` VALUES ('54', 'goodstop', '8', '京巴丶', 'goods', '9', '1100.00', '100', '1433917426', '1442557426');
INSERT INTO `keke_witkey_payitem_record` VALUES ('55', 'goodstop', '7', '大姨父丶', 'goods', '10', '1100.00', '100', '1433917579', '1442557579');
INSERT INTO `keke_witkey_payitem_record` VALUES ('56', 'goodstop', '2', '烂苹果丶', 'goods', '11', '1100.00', '100', '1433917682', '1442557682');

-- ----------------------------
-- Table structure for keke_witkey_plug
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_plug`;
CREATE TABLE `keke_witkey_plug` (
  `plug_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '插件编号',
  `plug_desc` text COMMENT '插件描述',
  `status` int(11) DEFAULT NULL COMMENT '插件状态',
  `author` varchar(20) DEFAULT NULL COMMENT '开发者',
  `on_time` int(11) DEFAULT NULL COMMENT '时间',
  `plug_name` varchar(50) DEFAULT NULL COMMENT '插件名称',
  `submenu_id` int(11) DEFAULT NULL COMMENT '对应子菜单编号',
  `plug_code` varchar(20) DEFAULT NULL COMMENT '插件标示',
  PRIMARY KEY (`plug_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_plug
-- ----------------------------
INSERT INTO `keke_witkey_plug` VALUES ('1', '广场是威客系统用户交互中心，在这里用户可以发布免费供需信息，威客付费任务和商品动态交互，适合需要加强用户关系的站点试用。', '1', '客客族', '1366782560', '广场', '47', 'square');
INSERT INTO `keke_witkey_plug` VALUES ('2', '推广营销是威客系统用户交互中心，在这里用户可以发布免费供需信息，威客付费任务和商品动态交互，适合需要加强用户关系的站点试用。', '1', '客客族', '1364959065', '推广营销', '27', 'prom');
INSERT INTO `keke_witkey_plug` VALUES ('3', '推广联盟', '1', '客客族', '1369634912', '推广联盟', '33', 'keke');

-- ----------------------------
-- Table structure for keke_witkey_priv_item
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_priv_item`;
CREATE TABLE `keke_witkey_priv_item` (
  `op_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作编号',
  `model_id` int(11) DEFAULT NULL COMMENT '模型编号',
  `op_code` varchar(20) DEFAULT NULL COMMENT '操作标识',
  `op_name` varchar(50) DEFAULT NULL COMMENT '操作人',
  `allow_times` int(1) DEFAULT NULL COMMENT '允许时间',
  `limit_obj` int(111) DEFAULT NULL COMMENT '限制对象',
  `condit` varchar(200) DEFAULT NULL COMMENT '条件',
  PRIMARY KEY (`op_id`),
  KEY `op_id` (`op_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_priv_item
-- ----------------------------
INSERT INTO `keke_witkey_priv_item` VALUES ('1', '1', 'pub', '发布任务', '0', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('58', '5', 'work_hand', '交稿', '0', '1', '0');
INSERT INTO `keke_witkey_priv_item` VALUES ('5', '2', 'pub', '发布任务', '0', '2', 'enterprise');
INSERT INTO `keke_witkey_priv_item` VALUES ('9', '3', 'pub', '发布任务', '0', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('2', '1', 'work_hand', '交稿', '0', '1', 'enterprise');
INSERT INTO `keke_witkey_priv_item` VALUES ('8', '2', 'work_hand', '交稿', '0', '1', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('59', '5', 'pub', '发布任务', '0', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('11', '3', 'work_hand', '交稿', '0', '1', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('49', '4', 'pub', '发布任务', '0', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('50', '4', 'work_hand', '交稿', '0', '1', '0');
INSERT INTO `keke_witkey_priv_item` VALUES ('62', '8', 'work_hand', '交稿', '0', '1', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('63', '8', 'pub', '发布任务', '1', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('66', '9', 'work_hand', '交稿', '0', '1', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('67', '9', 'pub', '发布任务', '0', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('74', '12', 'work_hand', '交稿', '0', '1', 'enterprise');
INSERT INTO `keke_witkey_priv_item` VALUES ('75', '12', 'pub', '发布任务', '1', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('70', '10', 'work_hand', '交稿', '0', '1', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('71', '10', 'pub', '发布任务', '1', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('51', '4', 'comment', '留言', '0', '1', 'realname');
INSERT INTO `keke_witkey_priv_item` VALUES ('80', '15', 'pub', '发布任务', '0', '2', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('81', '15', 'work_hand', '交稿', '0', '1', '');
INSERT INTO `keke_witkey_priv_item` VALUES ('82', '16', 'pub', '发布任务', '0', '2', 'enterprise');
INSERT INTO `keke_witkey_priv_item` VALUES ('83', '16', 'work_hand', '交稿', '0', '1', null);

-- ----------------------------
-- Table structure for keke_witkey_priv_rule
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_priv_rule`;
CREATE TABLE `keke_witkey_priv_rule` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `item_id` int(11) DEFAULT NULL COMMENT '项目编号',
  `mark_rule_id` char(5) DEFAULT NULL COMMENT '记录规则编号',
  `rule` char(5) DEFAULT NULL COMMENT '规则',
  PRIMARY KEY (`r_id`),
  KEY `r_id` (`r_id`)
) ENGINE=MyISAM AUTO_INCREMENT=370 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_priv_rule
-- ----------------------------
INSERT INTO `keke_witkey_priv_rule` VALUES ('1', '1', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('2', '1', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('3', '1', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('4', '1', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('5', '1', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('7', '2', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('8', '2', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('9', '2', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('10', '2', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('11', '2', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('13', '3', '1', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('14', '3', '2', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('15', '3', '3', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('16', '3', '4', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('17', '3', '5', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('19', '4', '1', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('20', '4', '2', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('21', '4', '3', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('22', '4', '4', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('23', '4', '5', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('25', '5', '1', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('26', '5', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('27', '5', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('28', '5', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('29', '5', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('145', '49', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('147', '59', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('148', '59', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('149', '59', '3', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('55', '8', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('56', '8', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('57', '8', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('58', '8', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('59', '8', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('140', '57', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('142', '49', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('143', '49', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('144', '49', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('67', '9', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('68', '9', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('69', '9', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('70', '9', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('71', '9', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('73', '10', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('74', '10', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('75', '10', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('76', '10', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('77', '10', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('136', '57', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('137', '57', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('138', '57', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('139', '57', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('85', '11', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('86', '11', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('87', '11', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('88', '11', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('89', '11', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('130', '52', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('131', '52', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('132', '52', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('133', '52', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('134', '52', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('121', '12', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('122', '12', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('123', '12', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('124', '12', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('125', '12', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('126', '12', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('127', '49', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('128', '50', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('129', '51', '1', '1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('150', '59', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('151', '59', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('152', '59', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('153', '58', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('154', '58', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('155', '58', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('156', '58', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('157', '58', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('158', '58', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('159', '60', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('160', '60', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('161', '60', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('162', '60', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('163', '60', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('165', '61', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('166', '61', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('167', '61', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('168', '61', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('169', '61', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('170', '61', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('171', '62', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('172', '62', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('173', '62', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('174', '62', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('175', '62', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('176', '62', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('177', '63', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('178', '63', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('179', '63', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('180', '63', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('181', '63', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('182', '63', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('183', '64', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('184', '64', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('185', '64', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('186', '64', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('187', '64', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('189', '65', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('190', '65', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('191', '65', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('192', '65', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('193', '65', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('195', '66', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('196', '66', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('197', '66', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('198', '66', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('199', '66', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('200', '67', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('201', '67', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('202', '67', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('203', '67', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('204', '67', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('205', '68', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('206', '68', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('207', '68', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('208', '68', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('209', '68', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('210', '69', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('211', '69', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('212', '69', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('213', '69', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('214', '69', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('215', '1', '6', '-1');
INSERT INTO `keke_witkey_priv_rule` VALUES ('217', '2', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('220', '3', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('222', '4', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('292', '6', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('224', '5', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('294', '51', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('226', '7', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('295', '51', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('228', '8', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('296', '51', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('230', '9', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('297', '51', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('232', '10', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('298', '51', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('234', '11', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('300', '50', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('299', '50', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('301', '50', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('238', '49', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('302', '50', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('240', '52', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('241', '57', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('303', '50', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('248', '60', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('252', '62', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('253', '63', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('256', '64', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('258', '65', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('260', '66', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('262', '67', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('264', '68', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('266', '69', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('268', '70', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('269', '70', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('270', '70', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('271', '70', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('272', '70', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('273', '70', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('293', '71', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('275', '71', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('276', '71', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('277', '71', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('278', '71', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('279', '71', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('280', '72', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('281', '72', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('282', '72', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('283', '72', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('284', '72', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('285', '72', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('286', '73', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('287', '73', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('288', '73', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('289', '73', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('290', '73', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('291', '73', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('304', '74', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('305', '74', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('306', '74', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('307', '74', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('308', '74', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('309', '74', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('310', '75', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('311', '75', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('312', '75', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('313', '75', '4', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('314', '75', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('315', '75', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('316', '76', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('317', '76', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('318', '76', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('319', '76', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('320', '76', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('321', '76', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('322', '77', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('323', '77', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('324', '77', '3', null);
INSERT INTO `keke_witkey_priv_rule` VALUES ('325', '77', '4', null);
INSERT INTO `keke_witkey_priv_rule` VALUES ('326', '77', '5', null);
INSERT INTO `keke_witkey_priv_rule` VALUES ('327', '77', '6', null);
INSERT INTO `keke_witkey_priv_rule` VALUES ('346', '1', '1', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('347', '1', '2', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('348', '1', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('349', '1', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('350', '1', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('351', '2', '1', '2');
INSERT INTO `keke_witkey_priv_rule` VALUES ('352', '2', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('353', '2', '3', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('354', '2', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('355', '2', '5', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('356', '1', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('357', '2', '6', '');
INSERT INTO `keke_witkey_priv_rule` VALUES ('358', '82', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('359', '82', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('360', '82', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('361', '82', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('362', '82', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('363', '82', '6', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('364', '83', '1', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('365', '83', '2', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('366', '83', '3', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('367', '83', '4', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('368', '83', '5', '0');
INSERT INTO `keke_witkey_priv_rule` VALUES ('369', '83', '6', '0');

-- ----------------------------
-- Table structure for keke_witkey_prom_event
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_prom_event`;
CREATE TABLE `keke_witkey_prom_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '事件编号',
  `event_desc` varchar(250) DEFAULT NULL COMMENT '事件描述',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `parent_uid` int(11) DEFAULT NULL COMMENT '上线用户编号',
  `parent_username` varchar(20) DEFAULT NULL COMMENT '上线用户名',
  `obj_id` int(11) DEFAULT NULL COMMENT '推广对象编号',
  `rake_cash` decimal(10,2) DEFAULT '0.00' COMMENT '推广佣金',
  `rake_credit` decimal(10,2) DEFAULT '0.00' COMMENT '推广积分',
  `event_status` tinyint(1) DEFAULT NULL COMMENT '事件状态',
  `event_time` int(10) DEFAULT NULL COMMENT '事件时间',
  `action` char(20) DEFAULT NULL COMMENT '推广事件方式',
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_prom_event
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_prom_item
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_prom_item`;
CREATE TABLE `keke_witkey_prom_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `item_type` char(20) DEFAULT NULL COMMENT '项目类型',
  `prom_type` char(20) DEFAULT NULL COMMENT '推广类型',
  `obj_id` int(11) DEFAULT NULL COMMENT '推广对象',
  `item_name` varchar(255) DEFAULT NULL COMMENT '项目名',
  `item_pic` varchar(200) DEFAULT NULL COMMENT '项目图片',
  `item_content` text COMMENT '项目内容',
  `on_time` int(10) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_prom_item
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_prom_relation
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_prom_relation`;
CREATE TABLE `keke_witkey_prom_relation` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系编号',
  `prom_type` char(20) DEFAULT NULL COMMENT '推广类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `prom_uid` int(11) DEFAULT NULL COMMENT '推广用户编号',
  `prom_username` varchar(20) DEFAULT NULL COMMENT '推广用户名',
  `relation_status` int(1) DEFAULT '0' COMMENT '推广关系状态',
  `on_time` int(11) DEFAULT NULL COMMENT '推广事件',
  PRIMARY KEY (`relation_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_prom_relation
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_prom_rule
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_prom_rule`;
CREATE TABLE `keke_witkey_prom_rule` (
  `prom_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推广编号',
  `prom_item` varchar(50) DEFAULT NULL COMMENT '推广项目',
  `prom_code` varchar(30) DEFAULT NULL COMMENT '推广标识',
  `month` int(2) DEFAULT NULL COMMENT '到月',
  `cash` decimal(10,2) DEFAULT '0.00' COMMENT '推广金额',
  `credit` decimal(10,2) DEFAULT '0.00' COMMENT '推广积分',
  `rate` int(10) DEFAULT NULL COMMENT '佣金',
  `config` text COMMENT '推广配置',
  `is_open` int(1) DEFAULT NULL COMMENT '是否开启',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`prom_id`),
  KEY `prom_id` (`prom_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_prom_rule
-- ----------------------------
INSERT INTO `keke_witkey_prom_rule` VALUES ('5', '邀请注册', 'reg', '20', '20.00', '0.00', '0', 'a:1:{s:4:\"auth\";a:1:{i:0;s:8:\"realname\";}}', '1', 'reg');
INSERT INTO `keke_witkey_prom_rule` VALUES ('1', '实名认证', 'realname', '20', '20.00', '1.00', '0', '0', '1', 'auth');
INSERT INTO `keke_witkey_prom_rule` VALUES ('2', '手机认证', 'mobile', '20', '100.00', '50.00', '0', '0', '2', 'auth');
INSERT INTO `keke_witkey_prom_rule` VALUES ('3', '发布推广', 'pub_task', '40', '5.00', '0.00', '10', 'a:3:{s:5:\"model\";s:1:\"3\";s:18:\"pub_task_rake_type\";s:1:\"2\";s:13:\"pub_task_rate\";d:10;}', '1', 'task');
INSERT INTO `keke_witkey_prom_rule` VALUES ('4', '任务承接', 'bid_task', '2', '0.00', '0.00', '10', 'a:2:{s:5:\"model\";s:7:\"3,2,5,1\";s:13:\"bid_task_rake\";i:10;}', '1', 'task');
INSERT INTO `keke_witkey_prom_rule` VALUES ('6', '企业认证', 'enterprise', '20', '3.00', '3.00', '0', '0', '2', 'auth');
INSERT INTO `keke_witkey_prom_rule` VALUES ('8', '银行认证', 'bank', '20', '2.00', '5.00', '0', '0', '2', 'auth');
INSERT INTO `keke_witkey_prom_rule` VALUES ('9', '邮箱认证', 'email', '20', '50.00', '2.00', '0', '0', '2', 'auth');
INSERT INTO `keke_witkey_prom_rule` VALUES ('10', '商品宣传', 'service', '3', '0.00', '0.00', '10', 'a:2:{s:12:\"indus_string\";s:11:\"460,452,454\";s:5:\"model\";s:1:\"6\";}', '1', 'service');

-- ----------------------------
-- Table structure for keke_witkey_proposal
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_proposal`;
CREATE TABLE `keke_witkey_proposal` (
  `p_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '建议编号',
  `pro_title` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '建议标题',
  `pro_type` tinyint(1) DEFAULT NULL COMMENT '建议类型',
  `pro_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '建议描述',
  `pro_time` int(11) DEFAULT NULL COMMENT '建议时间',
  `uid` int(11) DEFAULT NULL COMMENT '建议人',
  `username` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '建议用户名',
  `op_uid` int(11) DEFAULT NULL COMMENT '处理建议人编号',
  `op_username` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '处理建议人用户名',
  `op_content` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '处理人回复内容',
  `op_time` int(11) DEFAULT NULL COMMENT '回复时间',
  `pro_status` tinyint(1) DEFAULT NULL COMMENT '建议状态',
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keke_witkey_proposal
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_report
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_report`;
CREATE TABLE `keke_witkey_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报编号',
  `obj` varchar(20) DEFAULT NULL COMMENT '举报对象类型 task|work|order|product',
  `obj_id` int(11) DEFAULT NULL COMMENT '举报对象的ID',
  `origin_id` int(11) DEFAULT NULL COMMENT '举报字段obj_id的相关ID',
  `front_status` char(20) DEFAULT NULL COMMENT '举报的对象的当前状态',
  `uid` int(11) DEFAULT NULL COMMENT '举报人编号',
  `username` varchar(20) DEFAULT NULL COMMENT '举报用户名',
  `user_type` int(1) DEFAULT NULL COMMENT '举报用户类型',
  `to_uid` int(11) DEFAULT NULL COMMENT '被举报人编号',
  `to_username` varchar(20) DEFAULT NULL COMMENT '被举报人用户名',
  `is_hide` tinyint(1) DEFAULT NULL COMMENT '是否隐藏',
  `report_desc` text COMMENT '举报描述',
  `report_file` varchar(200) DEFAULT NULL COMMENT '举报附件',
  `report_status` int(11) DEFAULT '0' COMMENT '举报状态',
  `on_time` int(10) DEFAULT NULL COMMENT '举报时间',
  `report_type` tinyint(1) DEFAULT NULL COMMENT '举报类型',
  `op_uid` int(11) DEFAULT NULL COMMENT '操作者编号',
  `op_username` varchar(20) DEFAULT NULL COMMENT '操作者用户名',
  `op_result` text COMMENT '处理结果',
  `op_time` int(10) DEFAULT NULL COMMENT '处理时间',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系处理人手机',
  `qq` varchar(50) DEFAULT NULL COMMENT '处理人QQ',
  `report_reason` varchar(50) DEFAULT NULL COMMENT '举报原因',
  PRIMARY KEY (`report_id`),
  KEY `report_id` (`report_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_report
-- ----------------------------
INSERT INTO `keke_witkey_report` VALUES ('2', 'work', '8', '32', '2', '1', 'admin', '2', '6', '兰陵王', '1', '的梵蒂冈放到v', '', '4', '1433935584', '2', '1', 'admin', '取消中标，系统选稿', '1433935728', null, null, '滥发广告');
INSERT INTO `keke_witkey_report` VALUES ('3', 'task', '30', '30', '2', '1', 'admin', '1', '3', '暗夜行路', '1', '刚和规范和法国和法国和法国', '', '2', '1433987250', '2', '0', '', '', '0', null, null, '滥发广告');
INSERT INTO `keke_witkey_report` VALUES ('4', 'task', '39', '39', '2', '3', '暗夜行路', '1', '1', 'admin', '1', '范德萨范德萨发的所说的', '', '4', '1434015876', '2', '1', 'admin', '系统选稿', '1434016172', null, null, '滥发广告');
INSERT INTO `keke_witkey_report` VALUES ('5', 'task', '39', '39', '2', '6', '兰陵王', '1', '1', 'admin', '1', '而额外热文热热外而额外热文', '', '4', '1434016080', '2', '1', 'admin', '系统选稿', '1434016125', null, null, '滥发广告');

-- ----------------------------
-- Table structure for keke_witkey_resource
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_resource`;
CREATE TABLE `keke_witkey_resource` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资源编号',
  `resource_name` varchar(20) DEFAULT NULL COMMENT '资源名称',
  `resource_url` varchar(100) DEFAULT NULL COMMENT '资源URL',
  `submenu_id` varchar(20) DEFAULT NULL COMMENT '所属子菜单编号',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `accesscontrol` varchar(20) DEFAULT NULL COMMENT '权限控制',
  PRIMARY KEY (`resource_id`),
  KEY `resource_id` (`resource_id`),
  KEY `submenu_id` (`submenu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_resource
-- ----------------------------
INSERT INTO `keke_witkey_resource` VALUES ('220', '支付接口', 'index.php?do=config&view=pay', '28', '5', '2');
INSERT INTO `keke_witkey_resource` VALUES ('173', '银行认证', 'index.php?do=auth&view=list&code=bank', '29', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('4', '用户流水', 'index.php?do=finance&view=all', '2', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('5', '提现审核', 'index.php?do=finance&view=withdraw', '2', '5', null);
INSERT INTO `keke_witkey_resource` VALUES ('7', '行业管理', 'index.php?do=task&view=industry', '5', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('10', '添加用户', 'index.php?do=user&view=add', '7', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('11', '用户管理', 'index.php?do=user&view=list', '7', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('12', '添加系统组', 'index.php?do=user&view=group_add&op=add', '8', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('13', '系统组管理', 'index.php?do=user&view=group_list', '8', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('14', '文章分类', 'index.php?do=article&view=cat_list&type=art', '9', '3', null);
INSERT INTO `keke_witkey_resource` VALUES ('155', '手动充值', 'index.php?do=user&view=charge', '2', '6', null);
INSERT INTO `keke_witkey_resource` VALUES ('16', '文章管理', 'index.php?do=article&view=list', '9', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('19', '系统日志', 'index.php?do=tool&view=log', '10', '4', null);
INSERT INTO `keke_witkey_resource` VALUES ('20', '更新缓存', 'index.php?do=tool&view=cache&sbt_edit=1&ckb_obj_cache=1&ckb_tpl_cache=1', '10', '7', null);
INSERT INTO `keke_witkey_resource` VALUES ('21', '附件管理', 'index.php?do=tool&view=file', '10', '5', null);
INSERT INTO `keke_witkey_resource` VALUES ('140', '微博关注', 'index.php?do=msg&view=attention', '0', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('152', '财务概况', 'index.php?do=finance&view=revenue', '2', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('30', '友情链接', 'index.php?do=tpl&view=ink', '12', '3', null);
INSERT INTO `keke_witkey_resource` VALUES ('32', '广告管理', 'index.php?do=tpl&view=ad', '12', '4', null);
INSERT INTO `keke_witkey_resource` VALUES ('33', '用户组', 'index.php?do=user&view=custom_list', '7', '20', null);
INSERT INTO `keke_witkey_resource` VALUES ('34', '全局配置', 'index.php?do=config&view=basic&op=info', '1', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('35', '会员整合', 'index.php?do=config&view=integration', '1', '20', null);
INSERT INTO `keke_witkey_resource` VALUES ('36', '信誉规则', 'index.php?do=config&view=mark', '14', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('37', '模型管理', 'index.php?do=config&view=model', '1', '10', null);
INSERT INTO `keke_witkey_resource` VALUES ('38', '认证项目', 'index.php?do=auth&view=item_list', '29', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('41', '自定义导航', 'index.php?do=config&view=nav', '1', '100', null);
INSERT INTO `keke_witkey_resource` VALUES ('42', '帮助管理', 'index.php?do=article&view=list&type=help', '17', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('44', '帮助分类', 'index.php?do=article&view=cat_list&type=help', '17', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('46', '店铺主题', 'index.php?do=shop&view=banner', '20', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('47', '添加主题', 'index.php?do=shop&view=edit_banner', '20', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('49', '用户组', 'index.php?do=group', '22', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('53', '单页管理', 'index.php?do=article&view=list&type=single', '24', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('139', '购买记录', 'index.php?do=payitem&view=buy', '34', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('138', '增值工具管理', 'index.php?do=payitem', '34', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('214', '推广关系管理', 'index.php?do=prom&view=relation', '27', '5', null);
INSERT INTO `keke_witkey_resource` VALUES ('59', '推广配置管理', 'index.php?do=prom&view=config', '27', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('60', '推广素材管理', 'index.php?do=prom&view=item', '0', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('61', '推广财务管理', 'index.php?do=prom&view=event', '27', '6', null);
INSERT INTO `keke_witkey_resource` VALUES ('63', 'OAuth登录', 'index.php?do=msg&view=weibo', '28', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('67', '短信发送', 'index.php?do=msg&view=send', '0', '4', null);
INSERT INTO `keke_witkey_resource` VALUES ('70', '实名认证', 'index.php?do=auth&view=list&code=realname', '29', '3', null);
INSERT INTO `keke_witkey_resource` VALUES ('71', '邮箱认证', 'index.php?do=auth&view=list&code=email', '29', '4', null);
INSERT INTO `keke_witkey_resource` VALUES ('73', '短信模板', 'index.php?do=msg&view=internal', '28', '5', null);
INSERT INTO `keke_witkey_resource` VALUES ('76', '充值审核', 'index.php?do=finance&view=recharge', '2', '4', null);
INSERT INTO `keke_witkey_resource` VALUES ('78', '互评配置', 'index.php?do=config&view=mark&op=config', '14', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('79', '互评记录', 'index.php?do=config&view=mark&op=log', '14', '3', null);
INSERT INTO `keke_witkey_resource` VALUES ('81', '交易举报', 'index.php?do=trans&view=report', '30', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('82', '投诉建议', 'index.php?do=user&view=suggest', '30', '3', null);
INSERT INTO `keke_witkey_resource` VALUES ('80', '交易维权', 'index.php?do=trans&view=rights', '30', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('133', '联盟API', 'index.php?do=keke&view=account', '33', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('134', '财务中心', 'index.php?do=keke&view=finance', '33', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('135', '推广站长', 'index.php?do=keke&view=getlist', '33', '3', null);
INSERT INTO `keke_witkey_resource` VALUES ('137', '雇主站长', 'index.php?do=keke&view=postlist', '33', '4', null);
INSERT INTO `keke_witkey_resource` VALUES ('142', '数据库管理', 'index.php?do=tool&view=dbbackup', '10', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('154', '案例管理', 'index.php?do=case&view=list', '42', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('147', '企业认证', 'index.php?do=auth&view=list&code=enterprise', '29', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('153', '标签管理', 'index.php?do=tpl&view=taglist', '12', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('157', '页脚列表', 'index.php?do=article&view=list&type=about', '43', '2', null);
INSERT INTO `keke_witkey_resource` VALUES ('158', '', 'index.php?do=keke&view=prompub', '33', '5', null);
INSERT INTO `keke_witkey_resource` VALUES ('159', '应用中心', 'index.php?do=app&view=app_center', '44', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('6', '网站收支', 'index.php?do=finance&view=budget', '2', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('170', '店铺管理', 'index.php?do=store&view=list', '49', '0', null);
INSERT INTO `keke_witkey_resource` VALUES ('206', 'RSS订阅', 'index.php?do=config&view=rss', '27', '10', null);
INSERT INTO `keke_witkey_resource` VALUES ('207', '邮件自动回访', 'index.php?do=config&view=zdhf', '27', '11', null);
INSERT INTO `keke_witkey_resource` VALUES ('208', '热词搜索管理', 'index.php?do=tpl&view=hotwords', '12', '5', null);
INSERT INTO `keke_witkey_resource` VALUES ('209', '支付宝认证', 'index.php?do=auth&view=list&code=alipayjs', '29', '8', null);
INSERT INTO `keke_witkey_resource` VALUES ('210', '任务模板', 'index.php?do=task&view=tasktemplet', '5', '1', null);
INSERT INTO `keke_witkey_resource` VALUES ('212', '手机认证', 'index.php?do=auth&view=list&code=mobile', '29', '8', null);
INSERT INTO `keke_witkey_resource` VALUES ('213', '地区管理', 'index.php?do=config&view=dq', '1', '101', null);
INSERT INTO `keke_witkey_resource` VALUES ('219', '水印管理', 'index.php?do=watermark', '10', '10', null);

-- ----------------------------
-- Table structure for keke_witkey_resource_submenu
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_resource_submenu`;
CREATE TABLE `keke_witkey_resource_submenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '子菜单编号',
  `submenu_name` varchar(20) DEFAULT NULL COMMENT '子菜单名称',
  `menu_name` varchar(10) DEFAULT NULL COMMENT '子菜单代号',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`submenu_id`),
  KEY `submenu_id` (`submenu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_resource_submenu
-- ----------------------------
INSERT INTO `keke_witkey_resource_submenu` VALUES ('1', '系统配置', 'config', '1', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('2', '财务模块', 'finance', '0', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('5', '行业技能', 'config', '2', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('7', '用户管理', 'user', '0', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('8', '系统组管理', 'user', '0', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('9', '文章模块', 'article', '2', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('10', '站长工具', 'tool', '1', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('12', '模板标签', 'tool', '2', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('14', '用户体系', 'user', '3', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('17', '帮助模块', 'article', '3', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('27', '推广营销', 'app', '3', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('28', '接口管理', 'config', '3', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('29', '认证管理', 'user', '4', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('30', '用户反馈', 'user', '4', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('42', '成功案例', 'article', '6', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('43', '页脚配置', 'article', '1', '1');
INSERT INTO `keke_witkey_resource_submenu` VALUES ('49', '店铺管理', 'shop', '5', '1');

-- ----------------------------
-- Table structure for keke_witkey_service
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_service`;
CREATE TABLE `keke_witkey_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品/服务编号',
  `model_id` int(11) DEFAULT NULL COMMENT '模型编号',
  `service_type` int(11) DEFAULT NULL COMMENT '商品类型',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `profit_rate` int(3) DEFAULT NULL COMMENT '收益率',
  `indus_id` int(11) DEFAULT NULL COMMENT '行业编号',
  `indus_pid` int(11) DEFAULT NULL COMMENT '行业父编号',
  `indus_path` varchar(100) DEFAULT NULL COMMENT '行业路径',
  `cus_cate_id` int(11) DEFAULT NULL COMMENT '自定义分类',
  `title` varchar(50) DEFAULT NULL COMMENT '商品标题',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '商品价格',
  `unite_price` varchar(50) DEFAULT NULL COMMENT '单价',
  `service_time` int(255) DEFAULT NULL COMMENT '服务时间',
  `unit_time` varchar(50) DEFAULT NULL COMMENT '服务单位时间（如：/天/时）',
  `obj_name` varchar(100) DEFAULT NULL COMMENT '对象名称',
  `pic` text COMMENT '商品图片',
  `ad_pic` varchar(200) DEFAULT NULL COMMENT '商品封面',
  `area_range` varchar(100) DEFAULT NULL COMMENT '区域范围',
  `key_word` varchar(50) DEFAULT NULL COMMENT '商品关键词',
  `submit_method` char(20) DEFAULT NULL COMMENT '商品交付方式outside|inside',
  `file_path` varchar(255) DEFAULT NULL COMMENT '作品附件',
  `content` text COMMENT '作品描述',
  `on_time` int(11) DEFAULT NULL COMMENT '作品发布时间',
  `is_stop` int(11) DEFAULT '0' COMMENT '是否终止',
  `sale_num` int(11) DEFAULT '0' COMMENT '销量',
  `focus_num` int(11) DEFAULT '0' COMMENT '关注数',
  `mark_num` int(11) DEFAULT '0' COMMENT '评价数',
  `leave_num` int(11) DEFAULT '0' COMMENT '留言数',
  `views` int(11) DEFAULT '0' COMMENT '浏览',
  `pay_item` char(20) DEFAULT NULL COMMENT '付费项',
  `att_cash` decimal(10,2) DEFAULT '0.00' COMMENT '付费费用',
  `refresh_time` int(11) DEFAULT NULL COMMENT '刷新时间',
  `unique_num` char(8) DEFAULT NULL COMMENT '唯一数',
  `total_sale` decimal(10,2) DEFAULT '0.00' COMMENT '总销量',
  `service_status` int(1) DEFAULT NULL COMMENT '作品/服务状态',
  `is_top` int(1) DEFAULT '0' COMMENT '是否推荐',
  `point` char(20) DEFAULT NULL COMMENT '地图标记点',
  `city` char(20) DEFAULT NULL COMMENT '城市',
  `payitem_time` varchar(200) DEFAULT NULL COMMENT '使用付费项目时间',
  `exist_time` int(11) DEFAULT NULL COMMENT '服务的服务时间',
  `confirm_max` int(11) DEFAULT NULL COMMENT '允许最大时间',
  `seo_title` varchar(50) DEFAULT NULL COMMENT 'SEO标题',
  `seo_keyword` varchar(50) DEFAULT NULL COMMENT 'SEO关键字',
  `seo_desc` text COMMENT 'SEO描述',
  `province` int(11) DEFAULT NULL COMMENT '省份',
  `area` int(11) DEFAULT NULL COMMENT '地区',
  `goodstop` int(11) DEFAULT '0' COMMENT '服务置顶状态',
  `overdue_type` varchar(20) DEFAULT NULL COMMENT '当值为"custom"表示自定义,当值为"forever"表示无期限,当值为数字表示期限为多少天',
  `edit_status` tinyint(4) DEFAULT '2' COMMENT '编辑状态： 1更新待审核 2无更新 3更新已通过 4更新未通过',
  PRIMARY KEY (`service_id`),
  KEY `indus_id` (`indus_id`),
  KEY `shop_id` (`shop_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_service
-- ----------------------------
INSERT INTO `keke_witkey_service` VALUES ('1', '6', null, '3', '3', '暗夜行路', '10', '28', '2', null, null, '购物网站开发', '100.00', '个', null, null, null, 'data/uploads/2015/06/10/5248744165577e515afd2e.jpg', null, null, null, 'outside', null, '&lt;p&gt;1。能注册会员邮箱（首页能显示总参与人数）手机注册要有验证码2。导行可以自己修改;3。所有商品下面显示简单个商品参与人进度，所有商品必需有二级能介绍商品，4。选择付款后自动生成一个订单编号;5。同种商品订单编号达到设定值后自动抽取一个订单编号。首页要能查询网站当天购物名单7。只要有银行支付接口8。能查询物流送货情况&lt;/p&gt;', '1433908085', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '212', 'a:1:{s:3:\"top\";i:413;}', null, '1', null, null, null, '14', '2414', '0', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('2', '6', null, '3', '3', '暗夜行路', '10', '96', '249', null, null, '卡拉贴膜画册', '200.00', '个', null, null, null, 'data/uploads/2015/03/25/68626920555127a3288814.jpg,data/uploads/2015/06/10/13302738985577e444df2c6.jpg', null, null, null, 'outside', null, '&lt;p&gt;提供画册设计，贺卡设计，封面设计等一系列设计相关的服务，欢迎广大需求者前来咨询，我们竭诚为您服务&lt;/p&gt;', '1433908292', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '385', 'a:1:{s:3:\"top\";i:203;}', null, '1', null, null, null, '23', '4209', '0', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('3', '7', null, '3', '3', '暗夜行路', '1', '336', '335', null, null, '定制整体衣柜，橱柜，移门。宣传画册', '200.00', '个', '10', '小时', null, 'data/uploads/2015/06/10/18559051435577eac6ca4c6.jpg', null, null, null, null, null, '&lt;p&gt;一、美怡佳是专业定制高端衣柜移门，整体衣柜，橱柜，衣帽间，的生产制作企业。现制作3折页的产品宣传单及30页左右的办公家具产品图册的封面设计、文化页的设计、产品及文字的排版;二、可提供办公家具行业内的一些图册供参考（产品与欧派，索菲亚,类似）;三、3折页临时宣传用，可选制作。30页，等公司产品新款样品完善后制作（15天左右）;四，公司采用自动化设备制作生产，产品...&lt;/p&gt;', '1433908483', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '534', 'a:1:{s:3:\"top\";i:19;}', '1459353600', '1', null, null, null, '34', '0', '0', 'custom', '3');
INSERT INTO `keke_witkey_service` VALUES ('4', '7', null, '4', '4', 'dabomei', '1', '155', '2', null, null, '网页设计——招标书设计', '2000.00', '个', '7', '小时', null, 'data/uploads/2015/06/10/3562163105577ebf32b60f.jpg', null, null, null, null, null, '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;为本项目的招标书设计策划书版面（网络版）&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;招标项目网页参见：http://www.zhongchuang.com &nbsp; 上展示的形式&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;风格要求:&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;本项目为图书项目，亲子类图书，要求视觉风格色彩明快，版式活泼&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;选中项目，将一次性支付六百元，如满意超过预期，会有20%-30%的奖金&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;如感兴趣接任务者，可来信:wshlmwpsh2003@aliyun.com &nbsp;项目负责人会再传发所需要的文字和图片&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;来邮件请在“邮件标题：注明”众创项目招标书“并请在附件中提供以往被录用的设计方案或创作者最具有代表性的设计方案&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;如此次录用，将考虑长期合作。为本图书策划机构提供定制化的项目设计方案。&nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1433914897', '0', '0', '0', '0', '0', '1', null, '0.00', null, null, '0.00', '2', '0', null, '289', 'a:1:{s:3:\"top\";i:1540;}', '1441296000', '1', null, null, null, '19', '3036', '1', 'custom', '3');
INSERT INTO `keke_witkey_service` VALUES ('5', '6', null, '4', '4', 'dabomei', '10', '326', '121', null, null, '“皮兜兜儿”淘宝店LOGO', '1500.00', '个', null, null, null, 'data/uploads/2015/06/10/10850213675577e42a1cbdb.jpg', null, null, null, 'outside', null, '&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;“皮兜兜儿”淘宝店，LOGO设计（店招）&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;设计内容：&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&nbsp; “皮兜兜儿”为淘宝店铺名称，经营包括，钱包，手袋为主，背包等，主要以钱包、钱夹、手拿包为主。&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;设计要求：&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&nbsp;1.以“皮兜兜儿” 四个字为logo的主要内容（不做限制可配有图案），让顾客看一眼就能知道这家店是皮具专卖,并且能给客户留下较深的映像。&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&nbsp;2.能体现特色，色彩和字体请大胆设计.&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&nbsp;3.最好能附上简单创意说明。&lt;/span&gt;&lt;br style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&nbsp;4.提供源文件，设计是矢量图，psd,所以希望投稿者提供简单的联系方式如QQ（我们设置隐藏投标，仅我们可见）&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1433916151', '0', '0', '0', '0', '0', '2', null, '0.00', null, null, '0.00', '2', '0', null, '289', 'a:1:{s:3:\"top\";i:275;}', null, '1', null, null, null, '19', '3036', '1', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('6', '7', null, '4', '4', 'dabomei', '1', '154', '2', null, null, '河北富德克LOGO、名片设计、英文名称', '2500.00', '个', '7', '小时', null, 'data/uploads/2015/06/10/17229840805577ebe700e6b.jpg', null, null, null, null, null, '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;经营介绍：&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;河北富德克橡胶制品有限公司是一家刚注册的公司以橡塑产品为主，专业设计开发和制造先进的流体连接件和橡塑密封产品，针对不同客户需求提供全方位技术服务及个性化解决方案，应用领域包括冶金装备、石油化工、工程机械、海洋油气开采、工程船舶、风力发电、轨道交通、隧道盾构机、港口机械。致力于成为世界一流的液压管道连接、密封产品及解决方案供应商。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;设计要求：&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;LOGO设计（可进行商标注册），名片、英文名称及缩写、合格证&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;1、LOGO的设计要求简洁有创意、醒目易识别，能突出公司产品所处的领域体现特色和产品的高质量、高品质。不限制设计师创意，LOGO让人看了印象深刻、容易记忆并能联想到公司业务&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;2、LOGO的设计以图形与文字结合为主题做创意设计，作品附上文字说明，说明设计意图、创作理念。可参考中国中车（附件中有图片）LOGO需注册商标，中标威客需配合后期修改&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;3、英文名称可参考，威纳→Winner→胜利者，捷瑞→JERUI。富德克→？？？？&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;4、名片（名片所需资料在附件）和合格证要求简洁、大气、布局合理&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;4、提交作品请提交JPG格式，中标后请提交完整的、必须能进行修改、排版和印刷的矢量图形源文件。注明标准比例、标准色、字体和尺寸&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;知识产权说明：&nbsp;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;1、所设计的作品为原创，为第一次发布，未侵犯他人的著作权，如有侵犯他人著作权，由设计者承担所有法律责任 2、中标的设计作品，我方付费后，即拥有该作品的知识产权，包括著作权,使用权和发布权等,有权对设计作品进行修改,组合和应用。设计者不得在其他任何地方使用该设计作品，否则构成侵权&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;3.征集结果公布后，未采用的作品即可自行处理&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;4、参加此任务者被视为同意以上声明&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;联系方式：QQ546610968&lt;/p&gt;&lt;h3 class=\\\"mb_10 mt_10\\\" style=\\\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;描述补充&lt;/h3&gt;&lt;p&gt;各位大师，LOGO里面尽量不要有字母出现，请参考 中国中车、捷瑞。&lt;span class=\\\"c999 font12\\\" style=\\\"color: rgb(153, 153, 153);\\\"&gt;&nbsp;&nbsp;(&nbsp;2015-06-09 13:36:11&nbsp;客服审核通过&nbsp;)&lt;/span&gt;&lt;/p&gt;&lt;h3 class=\\\"mb_10 mt_10\\\" style=\\\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;描述补充&lt;/h3&gt;&lt;p&gt;各位大师，上一条补充提过LOGO里面尽力不要字母。请参考中国中车，可以先设计LOGO,然后在设计三个&lt;br/&gt;1.LOGO+上面汉字（富德克橡胶）下面是字母&lt;br/&gt;2.LOGO+字母&lt;br/&gt;3.LOGO+富德克橡胶&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1433916353', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '289', 'a:1:{s:3:\"top\";i:79;}', '1441987200', '1', null, null, null, '19', '3036', '0', 'custom', '3');
INSERT INTO `keke_witkey_service` VALUES ('7', '7', null, '5', '5', '骑姐丶', '1', '155', '2', null, null, '网站美化', '1800.00', '个', '7', '天', null, 'data/uploads/2015/06/10/8269594625577ee665d9a8.jpg', null, null, null, null, null, '&lt;h3 class=\\\"mb_10\\\" style=\\\"margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;任务需求&lt;/h3&gt;&lt;p&gt;我有一行业网站，PHP语言制作，已基本做好，但是版面感觉不够好，现寻求有经验的美工师帮助美化版面，在现有网站基础上，整体布局不做大的改动情况下，提高网站档次，要求整体上端庄大气，字体、色块等在布局、大小、颜色深浅方面讲究美观，如有需要我提供一两个参考网站，并帮助设计一个广告彩页。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;h3 class=\\\"mb_10\\\" style=\\\"margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;任务需求&lt;/h3&gt;&lt;p&gt;我有一行业网站，PHP语言制作，已基本做好，但是版面感觉不够好，现寻求有经验的美工师帮助美化版面，在现有网站基础上，整体布局不做大的改动情况下，提高网站档次，要求整体上端庄大气，字体、色块等在布局、大小、颜色深浅方面讲究美观，如有需要我提供一两个参考网站，并帮助设计一个广告彩页。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1433916687', '0', '0', '0', '0', '0', '2', null, '0.00', null, null, '0.00', '2', '0', null, '534', 'a:1:{s:3:\"top\";i:571;}', '1441209600', '1', null, null, null, '34', '0', '1', 'custom', '3');
INSERT INTO `keke_witkey_service` VALUES ('8', '6', null, '5', '5', '骑姐丶', '10', '40', '2', null, null, 'YY封包程序开发', '1900.00', '个', null, null, null, 'data/uploads/2015/06/10/2438481105577e2593ee7f.jpg', null, null, null, 'outside', null, '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;用yy pc端/或者手机端协议 实现一个封包程序：&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;要求&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;1.利用封包形式登陆账号进入频道（批量）&lt;br/&gt;2.封包形式刷鲜花，刷喜欢，改昵称，&lt;br/&gt;3.例子：&lt;br/&gt;&nbsp;&lt;br/&gt;&nbsp;登陆封包=“1”&lt;br/&gt;&nbsp;官方登陆服务器是2&lt;br/&gt;发送1到2 服务器会返回登陆信息 信息内容是登陆成功相关的信息就是登陆成功&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1433916807', '0', '0', '0', '0', '0', '1', null, '0.00', null, null, '0.00', '2', '0', null, '534', 'a:1:{s:3:\"top\";i:445;}', null, '1', null, null, null, '34', '0', '1', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('9', '7', null, '8', '8', '京巴丶', '1', '326', '121', null, null, '网站会员软件开发', '2800.00', '个', '7', '天', null, 'data/uploads/2015/06/10/10070133195577eb66a25c4.jpg', null, null, null, null, null, '&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;网站会员软件，懂后台数据库知识，懂搜索引擎，详细也可以听下录音，报价一万以上&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;网站会员软件，懂后台数据库知识，懂搜索引擎，详细也可以听下录音，报价一万以上&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;网站会员软件，懂后台数据库知识，懂搜索引擎，详细也可以听下录音，报价一万以上&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;网站会员软件，懂后台数据库知识，懂搜索引擎，详细也可以听下录音，报价一万以上&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;网站会员软件，懂后台数据库知识，懂搜索引擎，详细也可以听下录音，报价一万以上&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '1433917421', '0', '0', '0', '0', '0', '2', null, '0.00', null, null, '0.00', '2', '0', null, '475', 'a:1:{s:3:\"top\";i:163;}', '1443283200', '1', null, null, null, '31', '4927', '1', 'custom', '3');
INSERT INTO `keke_witkey_service` VALUES ('10', '6', null, '7', '7', '大姨父丶', '10', '36', '121', null, null, '微信开发技术支持', '9000.00', '个', null, null, null, 'data/uploads/2015/06/10/9900006655577e52506cc2.jpg', null, null, null, 'outside', null, '&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;span style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\\\"&gt;图片消息发送（推广二维码）开发语言PHP&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '1433917527', '0', '0', '0', '0', '0', '1', null, '0.00', null, null, '0.00', '2', '0', null, '516', 'a:1:{s:3:\"top\";i:52;}', null, '1', null, null, null, '33', '0', '1', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('11', '6', null, '2', '2', '烂苹果丶', '10', '36', '121', null, null, '基于weiphp平台名片插件，开发wap站', '8000.00', '个', null, null, null, 'data/uploads/2015/06/10/13092040315577e26d869e0.jpg,data/uploads/2015/06/10/15349856275577e4ef83998.jpg', null, null, null, 'outside', null, '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;请用微信扫一扫如下附件中的二维码，现在这个名片，只可以在pc上创建编辑，我需要用手机登陆创建编辑，并且开发会员系统。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;下面的附件是这个插件的源码，这个插件是基于weiphp开发的。最好是熟悉weiphp平台和微信公众号开发的。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;网站用途：通过手机进行名片创建编辑，保存，交换等等&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;参考网站：www.qun.hk&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;可以通过qq联系我，具体商议。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1433917647', '0', '0', '0', '0', '0', '3', null, '0.00', null, null, '0.00', '2', '0', null, '516', 'a:1:{s:3:\"top\";i:34;}', null, '1', null, null, null, '33', '0', '1', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('12', '6', null, '3', '3', '暗夜行路', '10', '325', '121', null, null, '软件开发，功能开发', '200.00', '个', null, null, null, 'data/uploads/2015/06/10/21181630085577eee7ba6be.jpg', null, null, null, 'outside', null, '&lt;p&gt;软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发软件开发，功能开发&lt;/p&gt;', '1433920472', '0', '0', '0', '0', '0', '3', null, '0.00', null, null, '0.00', '2', '0', null, '385', 'a:1:{s:3:\"top\";i:9;}', null, '1', null, null, null, '23', '4209', '0', null, '3');
INSERT INTO `keke_witkey_service` VALUES ('14', '6', null, '1', '1', 'admin', '10', '163', '160', null, null, '设计模板000033336666电风扇方法22爱的方式', '100.00', '个', null, null, null, 'data/uploads/2015/06/10/10937696555782b04caf2a.jpg,data/uploads/2015/06/10/165857313655782b0ddf29e.jpg', null, null, null, 'inside', 'data/uploads/2015/06/10/60189737055782b1a609aa.jpg', '&lt;p&gt;2121122213132123213&lt;br/&gt;&lt;/p&gt;', '1433938728', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '321', 'a:1:{s:3:\"top\";i:67702;}', null, '1', null, null, null, '20', '3251', '0', null, '2');
INSERT INTO `keke_witkey_service` VALUES ('13', '6', null, '1', '1', 'admin', '10', '130', '3', null, null, 'dddddddddddd', '111.00', '个', null, null, null, 'data/uploads/2015/06/10/11183894385577ee6e025fc.jpg', null, null, null, 'outside', null, '&lt;p&gt;&nbsp; 方法发发发发发发发反反复复&lt;/p&gt;', '1433923185', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '1', '0', null, '324', null, null, '1', null, null, null, '21', '3268', '0', null, '2');
INSERT INTO `keke_witkey_service` VALUES ('15', '6', null, '1', '1', 'admin', '10', '354', '350', null, null, '照片美化编辑的技术指导', '120.00', '个', null, null, null, 'data/uploads/2015/06/11/8051442185578e6312f610.jpg', null, null, null, 'inside', 'data/uploads/2015/06/11/13632840185578e647a5c87.jpg', '&lt;p&gt;指导编辑美化老照片，还原色彩等技术&lt;br/&gt;&lt;/p&gt;', '1433986653', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '345', 'a:1:{s:3:\"top\";i:19781;}', null, '1', null, null, null, '22', '3340', '0', null, '2');
INSERT INTO `keke_witkey_service` VALUES ('16', '7', null, '1', '1', 'admin', '1', '203', '201', null, null, '专门编写爱情表白', '100.00', '个', '5', '小时', null, 'data/uploads/2015/06/11/21427970325578e6db7ec81.jpg,data/uploads/2015/06/11/1979264755578e6e02674a.jpg,data/uploads/2015/06/11/9459196295578e6e115dd9.jpeg,data/uploads/2015/06/11/3447222035578e6e17190d.jpg', null, null, null, null, null, '&lt;p&gt;给大家提供好的爱情表白的话语，结婚的诗誓词&lt;br/&gt;&lt;/p&gt;', '1433986802', '0', '0', '0', '0', '0', '0', null, '0.00', null, null, '0.00', '2', '0', null, '406', 'a:1:{s:3:\"top\";i:19;}', '1443542400', '1', null, null, null, '24', '4390', '0', 'custom', '2');
INSERT INTO `keke_witkey_service` VALUES ('17', '6', null, '1', '1', 'admin', '10', '161', '160', null, null, '给宝宝起名字', '200.00', '个', null, null, null, 'data/uploads/2015/06/11/1801743685579332cee683.jpg', null, null, null, 'inside', 'data/uploads/2015/06/11/10338505255579335060dbe.txt', '&lt;p&gt;集思广益，想做为参考，给孩子起个名字&lt;/p&gt;&lt;p&gt;集思广益，想做为参考，给孩子起个名字&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1434006363', '0', '0', '0', '0', '0', '1', null, '0.00', null, null, '0.00', '2', '0', null, '310', 'a:1:{s:3:\"top\";i:62;}', null, '1', null, null, null, '20', '3159', '0', null, '3');

-- ----------------------------
-- Table structure for keke_witkey_service_editlog
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_service_editlog`;
CREATE TABLE `keke_witkey_service_editlog` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编辑记录编号',
  `log_type` varchar(20) DEFAULT NULL COMMENT '编辑记录对象类型 6-作品 7-服务 ',
  `log_content` longtext COMMENT '记录更新的字段，后台审核通过用于应用用户编辑',
  `log_time` int(11) DEFAULT NULL COMMENT '记录时间',
  `log_objid` int(11) DEFAULT NULL COMMENT '记录编辑对象编号',
  `status` tinyint(1) DEFAULT '0' COMMENT '记录状态是否有效  0无效  1有效',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_service_editlog
-- ----------------------------
INSERT INTO `keke_witkey_service_editlog` VALUES ('1', '6', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/2438481105577e2593ee7f.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920093', '8', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('2', '6', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/13092040315577e26d869e0.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920115', '11', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('3', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/11759772895577e27081dae.gif\";s:7:\"old_pic\";s:0:\"\";}', '1433920116', '7', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('4', '6', 'a:2:{s:3:\"pic\";s:103:\"data/uploads/2015/06/10/13092040315577e26d869e0.jpg,data/uploads/2015/06/10/10152292015577e2b5c8060.jpg\";s:7:\"old_pic\";s:51:\"data/uploads/2015/06/10/13092040315577e26d869e0.jpg\";}', '1433920185', '11', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('5', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/12957446735577e2d791f74.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920218', '3', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('6', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/11757057375577e37f5a3fb.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920397', '3', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('7', '7', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/5156576075577e4174bd1b.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920537', '6', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('8', '6', 'a:2:{s:3:\"pic\";s:103:\"data/uploads/2015/06/10/17117177655577e3d433747.jpg,data/uploads/2015/06/10/11916641185577e41b56c4d.jpg\";s:7:\"old_pic\";s:51:\"data/uploads/2015/06/10/17117177655577e3d433747.jpg\";}', '1433920543', '12', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('9', '6', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/10850213675577e42a1cbdb.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920556', '5', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('10', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/18143228175577e437ecb45.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920569', '4', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('11', '6', 'a:2:{s:3:\"pic\";s:102:\"data/uploads/2015/03/25/68626920555127a3288814.jpg,data/uploads/2015/06/10/13302738985577e444df2c6.jpg\";s:7:\"old_pic\";s:50:\"data/uploads/2015/03/25/68626920555127a3288814.jpg\";}', '1433920583', '2', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('12', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/12545882045577e49a91731.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920668', '6', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('13', '6', 'a:2:{s:3:\"pic\";s:103:\"data/uploads/2015/06/10/13092040315577e26d869e0.jpg,data/uploads/2015/06/10/15349856275577e4ef83998.jpg\";s:7:\"old_pic\";s:51:\"data/uploads/2015/06/10/13092040315577e26d869e0.jpg\";}', '1433920755', '11', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('14', '6', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/5248744165577e515afd2e.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920792', '1', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('15', '6', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/9900006655577e52506cc2.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920807', '10', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('16', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/16037017255577e5653c2c2.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920871', '9', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('17', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/10334754025577e590cd31a.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433920916', '9', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('18', '7', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/7933524635577e6328763e.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433921076', '9', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('19', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/13792413005577ea197636c.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433922076', '3', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('20', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/18559051435577eac6ca4c6.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433922248', '3', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('21', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/10070133195577eb66a25c4.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433922408', '9', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('22', '7', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/17229840805577ebe700e6b.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433922536', '6', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('23', '7', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/3562163105577ebf32b60f.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433922548', '4', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('24', '7', 'a:2:{s:3:\"pic\";s:50:\"data/uploads/2015/06/10/8269594625577ee665d9a8.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433923175', '7', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('25', '6', 'a:2:{s:3:\"pic\";s:51:\"data/uploads/2015/06/10/21181630085577eee7ba6be.jpg\";s:7:\"old_pic\";s:0:\"\";}', '1433923306', '12', '0');
INSERT INTO `keke_witkey_service_editlog` VALUES ('26', '6', 'a:4:{s:6:\"custom\";a:1:{i:1;s:9:\"文字吗\";}s:10:\"old_custom\";a:1:{i:1;s:6:\"文字\";}s:7:\"content\";s:176:\"&lt;p&gt;集思广益，想做为参考，给孩子起个名字&lt;/p&gt;&lt;p&gt;集思广益，想做为参考，给孩子起个名字&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;\";s:11:\"old_content\";s:84:\"&lt;p&gt;集思广益，想做为参考，给孩子起个名字&lt;br/&gt;&lt;/p&gt;\";}', '1434006760', '17', '0');

-- ----------------------------
-- Table structure for keke_witkey_service_order
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_service_order`;
CREATE TABLE `keke_witkey_service_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '服务订单ID',
  `uid` int(11) unsigned NOT NULL COMMENT '买家ID',
  `username` varchar(100) DEFAULT NULL COMMENT '买家用户名',
  `service_id` int(11) unsigned NOT NULL COMMENT '购买服务的ID',
  `order_id` int(11) unsigned NOT NULL COMMENT '购买服务产生的订单的ID',
  `title` varchar(255) NOT NULL COMMENT '购买服务的标题，也可能是编辑过的标题',
  `indus_pid` int(11) unsigned NOT NULL COMMENT '购买服务的类型的父分类，也可能是编辑过父分类',
  `indus_id` int(11) unsigned NOT NULL COMMENT '购买服务的类型的子分类，也可能是编辑过子分类',
  `content` text NOT NULL COMMENT '购买服务的详细需求，也可能是编辑过的详细需求',
  `file_ids` varchar(100) NOT NULL COMMENT '购买服务上传的需求附件ids',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '购买服务的需求预算',
  `workfile` varchar(100) DEFAULT NULL COMMENT '卖家工作完成上传的附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_service_order
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_session
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_session`;
CREATE TABLE `keke_witkey_session` (
  `session_id` char(100) NOT NULL COMMENT '会话编号',
  `session_expirse` int(10) DEFAULT NULL COMMENT '会话过期时间',
  `session_data` text COMMENT '保存的会话数据',
  `session_ip` char(15) DEFAULT NULL COMMENT '会话开始IP',
  `session_uid` int(11) DEFAULT NULL COMMENT '会话用户编号',
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_session
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_shop
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_shop`;
CREATE TABLE `keke_witkey_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `shop_type` int(1) DEFAULT NULL COMMENT '店铺类型',
  `shop_name` varchar(100) DEFAULT NULL COMMENT '店铺名称',
  `service_range` varchar(50) DEFAULT NULL COMMENT '店铺经营范围',
  `shop_desc` text COMMENT '店铺描述',
  `work` varchar(100) DEFAULT NULL COMMENT '工作职务',
  `work_year` int(2) DEFAULT NULL COMMENT '工作年限',
  `keyword` varchar(100) DEFAULT NULL COMMENT '店铺SEO关键词',
  `shop_background` varchar(100) DEFAULT NULL COMMENT '店铺背景图',
  `logo` varchar(100) DEFAULT NULL COMMENT '店铺LOGO',
  `banner` text COMMENT '店铺导航条banner',
  `shop_slogans` varchar(255) DEFAULT NULL COMMENT '店铺简介',
  `shop_skin` char(20) DEFAULT NULL COMMENT '店铺皮肤',
  `shop_backstyle` varchar(255) DEFAULT NULL COMMENT '背景样式',
  `shop_font` char(20) DEFAULT NULL COMMENT '店铺字体',
  `shop_active` char(20) DEFAULT NULL COMMENT '是否激活店铺',
  `is_close` int(1) DEFAULT NULL COMMENT '是否关闭',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `focus_num` int(11) DEFAULT '0' COMMENT '关注次数',
  `on_time` int(11) DEFAULT NULL COMMENT '开通时间',
  `homebanner` text COMMENT '主页banner',
  `on_sale` int(5) DEFAULT '0' COMMENT '销量',
  `shop_status` int(11) DEFAULT NULL COMMENT '店铺状态',
  `domain` varchar(50) DEFAULT NULL COMMENT '店铺域名',
  `seo_title` varchar(50) DEFAULT NULL COMMENT 'SEO标题',
  `seo_keyword` varchar(50) DEFAULT NULL COMMENT 'SEO关键字',
  `seo_desc` text COMMENT 'SEO描述',
  `province` int(11) DEFAULT '0' COMMENT '省份',
  `city` int(11) DEFAULT '0' COMMENT '城市',
  `area` int(11) DEFAULT '0' COMMENT '地区',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `coordinate` varchar(100) DEFAULT '' COMMENT '坐标',
  PRIMARY KEY (`shop_id`),
  KEY `shop_id` (`shop_id`),
  KEY `uid` (`uid`),
  KEY `index_uid` (`on_sale`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_shop
-- ----------------------------
INSERT INTO `keke_witkey_shop` VALUES ('1', '1', 'admin', '1', 'admin', null, null, null, null, null, null, null, null, '', null, 'a:1:{s:8:\"position\";s:8:\"left top\";}', null, null, null, '0', '0', null, null, '4', '1', null, null, null, null, '21', '324', '3268', '海南海口', '110.332527,20.020169');
INSERT INTO `keke_witkey_shop` VALUES ('2', '2', '烂苹果丶', '1', '烂苹果丶', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '1', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('3', '3', '暗夜行路', '1', '暗夜行路', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '4', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('4', '4', 'dabomei', '1', 'dabomei', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '3', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('5', '5', '骑姐丶', '1', '骑姐丶', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '2', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('6', '6', '兰陵王', '1', '兰陵王', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '0', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('7', '7', '大姨父丶', '1', '大姨父丶', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '1', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('8', '8', '京巴丶', '1', '京巴丶', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '1', '1', null, null, null, null, '0', '0', '0', null, '');
INSERT INTO `keke_witkey_shop` VALUES ('9', '9', '赵默笙', '1', '赵默笙', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '0', '1', null, null, null, null, '0', '0', '0', null, '');

-- ----------------------------
-- Table structure for keke_witkey_shop_case
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_shop_case`;
CREATE TABLE `keke_witkey_shop_case` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '案例编号',
  `cate_id` int(11) DEFAULT NULL COMMENT '分类编号',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺编号',
  `indus_id` int(11) DEFAULT NULL COMMENT '所属行业编号',
  `case_type` int(1) DEFAULT NULL COMMENT '案例类型',
  `service_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `case_name` varchar(100) DEFAULT NULL COMMENT '案例名称',
  `case_desc` text COMMENT '案例描述',
  `case_pic` varchar(100) DEFAULT NULL COMMENT '案例图片',
  `case_url` varchar(200) DEFAULT NULL COMMENT '案例网址',
  `start_time` int(11) DEFAULT NULL COMMENT '案例对象开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '案例对象结束时间',
  `on_time` int(11) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`case_id`),
  KEY `case_id` (`case_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_shop_case
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_shortcuts
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_shortcuts`;
CREATE TABLE `keke_witkey_shortcuts` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `resource_id` int(4) DEFAULT NULL COMMENT '资源编号',
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_shortcuts
-- ----------------------------
INSERT INTO `keke_witkey_shortcuts` VALUES ('1', '1', '34');
INSERT INTO `keke_witkey_shortcuts` VALUES ('2', '1', '20');
INSERT INTO `keke_witkey_shortcuts` VALUES ('3', '1', '32');

-- ----------------------------
-- Table structure for keke_witkey_space
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_space`;
CREATE TABLE `keke_witkey_space` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `sec_code` varchar(50) DEFAULT NULL COMMENT '安全码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `user_pic` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `group_id` int(11) DEFAULT NULL COMMENT '用户组编号',
  `isvip` int(11) DEFAULT NULL COMMENT '是否是VIP',
  `status` int(11) DEFAULT '1' COMMENT '用户状态',
  `user_type` varchar(50) DEFAULT NULL COMMENT '用户类型',
  `sex` char(10) DEFAULT NULL COMMENT '性别',
  `marry` char(10) DEFAULT NULL COMMENT '是否已婚',
  `hometown` char(10) DEFAULT NULL COMMENT '出生地',
  `residency` varchar(30) DEFAULT NULL COMMENT '所在地',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `truename` char(20) DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `idpic` varchar(100) DEFAULT NULL COMMENT '身份证复印件',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `msn` varchar(50) DEFAULT NULL COMMENT 'MSN',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `indus_id` int(11) DEFAULT NULL COMMENT '行业编号',
  `indus_pid` int(11) DEFAULT NULL COMMENT '行业父编号',
  `skill_ids` varchar(150) DEFAULT NULL COMMENT '技能编号',
  `summary` text COMMENT '简介',
  `experience` text COMMENT '经历',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) DEFAULT NULL COMMENT '注册IP',
  `domain` varchar(50) DEFAULT NULL COMMENT '域名',
  `credit` decimal(11,3) DEFAULT '0.000' COMMENT '积分',
  `balance` decimal(11,3) DEFAULT '0.000' COMMENT '账号余额',
  `balance_status` int(11) DEFAULT NULL COMMENT '账户状态',
  `pub_num` int(11) DEFAULT '0' COMMENT '发布数',
  `take_num` int(11) DEFAULT '0' COMMENT '承接数',
  `accepted_num` int(11) DEFAULT '0' COMMENT '接受数目',
  `vip_start_time` int(11) DEFAULT NULL COMMENT 'VIP开始时间',
  `vip_end_time` int(11) DEFAULT NULL COMMENT 'VIP结束时间',
  `pay_zfb` varchar(100) DEFAULT NULL COMMENT '支付宝',
  `pay_cft` varchar(100) DEFAULT NULL COMMENT '财付通',
  `pay_bank` text COMMENT '银行',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `buyer_credit` int(11) DEFAULT '0' COMMENT '买家信誉',
  `buyer_good_num` int(11) DEFAULT '0' COMMENT '买家好评数',
  `buyer_level` text COMMENT '买家等级',
  `buyer_total_num` int(11) DEFAULT '0' COMMENT '买家出售总数',
  `seller_credit` int(11) DEFAULT '0' COMMENT '卖家信誉',
  `seller_good_num` int(11) DEFAULT '0' COMMENT '卖家好评数',
  `seller_level` text COMMENT '卖家等级',
  `seller_total_num` int(11) DEFAULT '0' COMMENT '卖家出售总数',
  `studio_id` int(11) DEFAULT NULL COMMENT '工作室编号',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `client_status` char(10) DEFAULT NULL COMMENT '用户客户端状态',
  `recommend` tinyint(1) DEFAULT '0' COMMENT '推荐',
  `union` tinyint(1) DEFAULT '0' COMMENT '联盟',
  `union_assoc` tinyint(1) DEFAULT '0' COMMENT '联盟对象',
  `union_rid` tinyint(1) DEFAULT '0' COMMENT '联盟RID',
  `union_user` varchar(100) DEFAULT NULL COMMENT '联盟用户',
  `province` int(11) DEFAULT '0' COMMENT '省份',
  `city` int(11) DEFAULT '0' COMMENT '城市',
  `area` int(11) DEFAULT '0' COMMENT '地区',
  `is_mail` int(2) DEFAULT '0' COMMENT '0表示没有发送，1表示已经发送',
  `is_perfect` tinyint(1) DEFAULT '0' COMMENT '是否完善 1：完善',
  `autoshop` int(2) DEFAULT '1' COMMENT '1,开启2，不开启',
  `is_hongbao` int(1) DEFAULT NULL COMMENT '1有红包 2.没红包',
  PRIMARY KEY (`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_space
-- ----------------------------
INSERT INTO `keke_witkey_space` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'b548a26f44f24f149c6695a28ce710ee', 'admin@admin.com', null, '1', null, '1', null, '-1', null, null, null, null, '1985-06-12', 'admin', null, null, '256324111', '', null, '', '15023652144', '169', '2', null, null, null, '1433903814', null, null, '0.000', '999110.590', null, '9', '1', '1', null, null, null, null, null, null, '602', '6', 'a:8:{s:8:\"score_id\";s:1:\"3\";s:5:\"value\";i:602;s:5:\"title\";s:12:\"三级雇主\";s:5:\"level\";i:3;s:8:\"level_up\";i:398;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:5:\"20.40\";s:3:\"pic\";s:158:\"<img src=\"data/uploads/sys/mark/98544f3b082a11c00.gif?fid=2070\" align=\"absmiddle\" title=\"头衔 ：三级雇主&#13;&#10;信誉值：602&#13;&#10;等级：3\">\";}', '6', '0', '0', null, '0', null, '1433904203', null, '0', '0', '0', '0', null, '3', '73', '1126', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('2', '烂苹果丶', 'e10adc3949ba59abbe56e057f20f883e', '8a72d0a60ce9ddc4f1ccff84f61e394f', '422620@qq.com', null, null, null, '1', null, '-1', null, null, null, null, '2015-05-05', 'cm', null, null, '422620', '', null, '', '15907137575', '217', '211', null, null, null, '1433903946', '27.19.149.94', null, '0.000', '951160.000', null, '6', '4', '3', null, null, null, null, null, null, '2000', '1', 'a:8:{s:8:\"score_id\";s:1:\"4\";s:5:\"value\";i:2000;s:5:\"title\";s:12:\"四级雇主\";s:5:\"level\";i:4;s:8:\"level_up\";i:0;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:6:\"100.00\";s:3:\"pic\";s:160:\"<img src=\"data/uploads/sys/mark/140154f3b084cba568.gif?fid=2072\" align=\"absmiddle\" title=\"头衔 ：四级雇主&#13;&#10;信誉值：2000&#13;&#10;等级：4\">\";}', '1', '540', '3', 'a:8:{s:8:\"score_id\";s:1:\"3\";s:5:\"value\";i:540;s:5:\"title\";s:12:\"三级威客\";s:5:\"level\";i:3;s:8:\"level_up\";i:460;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"8.00\";s:3:\"pic\";s:159:\"<img src=\"data/uploads/sys/mark/306874f3b082e22fc3.gif?fid=2071\" align=\"absmiddle\" title=\"头衔 ：三级威客&#13;&#10;能力值：540&#13;&#10;等级：3\">\";}', '3', null, '1433991931', null, '1', '0', '0', '0', null, '33', '516', '0', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('3', '暗夜行路', 'e10adc3949ba59abbe56e057f20f883e', 'a987d9ccac6b767333b6e37bb2094045', '154542185@qq.com', null, null, null, '1', '1', '-1', null, null, null, null, '1989-03-26', '路浩然', '420683198903261254', null, '1666484541', '', null, '', '15023625444', '169', '2', '网店取名,视频制作,其它,开源修改,三维渲染', null, null, '1433904130', '27.19.149.94', null, '0.000', '10223.900', null, '14', '5', '4', null, null, null, null, null, null, '400', '5', 'a:8:{s:8:\"score_id\";s:1:\"2\";s:5:\"value\";i:400;s:5:\"title\";s:12:\"二级雇主\";s:5:\"level\";i:2;s:8:\"level_up\";i:100;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:5:\"66.67\";s:3:\"pic\";s:158:\"<img src=\"data/uploads/sys/mark/98734f3b080f7c2ee.gif?fid=2068\" align=\"absmiddle\" title=\"头衔 ：二级雇主&#13;&#10;信誉值：400&#13;&#10;等级：2\">\";}', '5', '1846', '3', 'a:8:{s:8:\"score_id\";s:1:\"4\";s:5:\"value\";i:1846;s:5:\"title\";s:12:\"四级威客\";s:5:\"level\";i:4;s:8:\"level_up\";i:154;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:5:\"84.60\";s:3:\"pic\";s:160:\"<img src=\"data/uploads/sys/mark/126844f3b085182758.gif?fid=2073\" align=\"absmiddle\" title=\"头衔 ：四级威客&#13;&#10;能力值：1846&#13;&#10;等级：4\">\";}', '3', null, '1434016333', null, '0', '0', '0', '0', null, '26', '431', '4593', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('4', 'dabomei', 'e10adc3949ba59abbe56e057f20f883e', 'e57b95d8bafe5383466e69a92cc63d73', '123456@qq.com', null, null, null, '1', null, '-1', null, null, null, null, '2015-05-05', '波妹', null, null, '422620', '', null, '', '15907137575', '169', '2', null, null, null, '1433905311', '27.19.149.94', null, '0.000', '947028.000', null, '8', '0', '0', null, null, null, null, null, null, '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:0;s:5:\"title\";s:12:\"一级雇主\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881\" align=\"absmiddle\" title=\"头衔 ：一级雇主&#13;&#10;信誉值：0&#13;&#10;等级：1\">\";}', '0', '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";s:1:\"0\";s:5:\"title\";s:12:\"一级威客\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067\" align=\"absmiddle\" title=\"头衔 ：一级威客&#13;&#10;能力值：0&#13;&#10;等级：1\">\";}', '0', null, '1433922505', null, '1', '0', '0', '0', null, '19', '289', '3036', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('5', '骑姐丶', 'e10adc3949ba59abbe56e057f20f883e', 'a9b9ca437585ee8712e51fa15d62ed53', 'asdf@163.com', null, null, null, '1', null, '-1', null, null, null, null, '2015-05-05', '姐姐', null, null, '422620', '', null, '', '15907137575', '169', '2', null, null, null, '1433916494', '27.19.149.94', null, '0.000', '997590.000', null, '2', '2', '2', null, null, null, null, null, null, '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:0;s:5:\"title\";s:12:\"一级雇主\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881\" align=\"absmiddle\" title=\"头衔 ：一级雇主&#13;&#10;信誉值：0&#13;&#10;等级：1\">\";}', '0', '90', '2', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:90;s:5:\"title\";s:12:\"一级威客\";s:5:\"level\";i:1;s:8:\"level_up\";i:110;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:5:\"45.00\";s:3:\"pic\";s:158:\"<img src=\"data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067\" align=\"absmiddle\" title=\"头衔 ：一级威客&#13;&#10;能力值：90&#13;&#10;等级：1\">\";}', '2', null, '1433923139', null, '1', '0', '0', '0', null, '34', '534', '0', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('6', '兰陵王', 'e10adc3949ba59abbe56e057f20f883e', '1968d198373522445e71df657946bdfe', '125451215@qq.com', null, null, null, '1', null, '-1', null, null, null, null, '2015-05-05', '兰陵王', null, null, '125451215', '', null, '', '15907137575', '193', '192', null, null, null, '1433916807', '27.19.149.94', null, '0.000', '90.900', null, '0', '3', '2', null, null, null, null, null, null, '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:0;s:5:\"title\";s:12:\"一级雇主\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881\" align=\"absmiddle\" title=\"头衔 ：一级雇主&#13;&#10;信誉值：0&#13;&#10;等级：1\">\";}', '0', '136', '3', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:136;s:5:\"title\";s:12:\"一级威客\";s:5:\"level\";i:1;s:8:\"level_up\";i:64;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:5:\"68.00\";s:3:\"pic\";s:159:\"<img src=\"data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067\" align=\"absmiddle\" title=\"头衔 ：一级威客&#13;&#10;能力值：136&#13;&#10;等级：1\">\";}', '3', null, '1434015979', null, '1', '0', '0', '0', null, '17', '258', '2812', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('7', '大姨父丶', 'e10adc3949ba59abbe56e057f20f883e', 'c71e0dffe66b9160d6c3483cc3d2938f', '123@qq.com', null, null, null, '1', null, '-1', null, null, null, null, '2015-05-05', 'dayifu', null, null, '422620', '', null, '', '15907137575', '161', '160', null, null, null, '1433916929', '27.19.149.94', null, '0.000', '998900.000', null, '0', '0', '0', null, null, null, null, null, null, '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:0;s:5:\"title\";s:12:\"一级雇主\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881\" align=\"absmiddle\" title=\"头衔 ：一级雇主&#13;&#10;信誉值：0&#13;&#10;等级：1\">\";}', '0', '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";s:1:\"0\";s:5:\"title\";s:12:\"一级威客\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067\" align=\"absmiddle\" title=\"头衔 ：一级威客&#13;&#10;能力值：0&#13;&#10;等级：1\">\";}', '0', null, '1433920787', null, '1', '0', '0', '0', null, '33', '516', '0', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('8', '京巴丶', 'e10adc3949ba59abbe56e057f20f883e', '2679b3b228e753e79b1c9a24ab00f235', 'jingba@163.com', null, null, null, '1', null, '-1', null, null, null, null, '2015-05-05', '京巴', null, null, '422620', '', null, '', '15907137575', '169', '2', null, null, null, '1433917038', '27.19.149.94', null, '0.000', '998900.000', null, '0', '0', '0', null, null, null, null, null, null, '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:0;s:5:\"title\";s:12:\"一级雇主\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881\" align=\"absmiddle\" title=\"头衔 ：一级雇主&#13;&#10;信誉值：0&#13;&#10;等级：1\">\";}', '0', '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";s:1:\"0\";s:5:\"title\";s:12:\"一级威客\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067\" align=\"absmiddle\" title=\"头衔 ：一级威客&#13;&#10;能力值：0&#13;&#10;等级：1\">\";}', '0', null, '1433920856', null, '1', '0', '0', '0', null, '31', '475', '4927', '0', '1', '1', null);
INSERT INTO `keke_witkey_space` VALUES ('9', '赵默笙', 'e10adc3949ba59abbe56e057f20f883e', '0e84a8a0b0e3a325e0d3d5714aafd9f4', '1254878141@qq.com', null, '0', null, '1', null, null, null, null, null, null, '0000-00-00', '', null, null, '', null, null, null, '15023621455', '0', '0', null, null, null, '1433917583', '27.19.149.94', null, '0.000', '80.000', null, '0', '1', '1', null, null, null, null, null, null, '0', '0', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:0;s:5:\"title\";s:12:\"一级雇主\";s:5:\"level\";i:1;s:8:\"level_up\";i:200;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:4:\"0.00\";s:3:\"pic\";s:157:\"<img src=\"data/uploads/sys/mark/211574fbede3ae7ae9.gif?fid=2881\" align=\"absmiddle\" title=\"头衔 ：一级雇主&#13;&#10;信誉值：0&#13;&#10;等级：1\">\";}', '0', '80', '1', 'a:8:{s:8:\"score_id\";s:1:\"1\";s:5:\"value\";i:80;s:5:\"title\";s:12:\"一级威客\";s:5:\"level\";i:1;s:8:\"level_up\";i:120;s:10:\"level_name\";s:6:\"等级\";s:10:\"grade_rate\";s:5:\"40.00\";s:3:\"pic\";s:158:\"<img src=\"data/uploads/sys/mark/309044f3b07ef87c95.gif?fid=2067\" align=\"absmiddle\" title=\"头衔 ：一级威客&#13;&#10;能力值：80&#13;&#10;等级：1\">\";}', '1', null, '1433917586', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '1', null);

-- ----------------------------
-- Table structure for keke_witkey_system_log
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_system_log`;
CREATE TABLE `keke_witkey_system_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `log_type` int(11) DEFAULT '0' COMMENT '日志类型',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型',
  `log_content` varchar(250) DEFAULT NULL COMMENT '日志内容',
  `log_ip` char(15) DEFAULT NULL COMMENT '日志记录的客户端IP',
  `log_time` int(11) DEFAULT '0' COMMENT '日志记录时间',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_system_log
-- ----------------------------
INSERT INTO `keke_witkey_system_log` VALUES ('1', '0', '1', 'admin', null, 'admin2015-06-10 10:43:22登陆系统', '27.19.149.94', '1433904202');
INSERT INTO `keke_witkey_system_log` VALUES ('2', '0', '1', 'admin', null, 'admin2015-06-10 11:03:25登陆系统', '27.19.149.94', '1433905405');
INSERT INTO `keke_witkey_system_log` VALUES ('3', '0', '1', 'admin', '1', '审核任务:类似奇幻咔咔的APP通过', '27.19.149.94', '1433905414');
INSERT INTO `keke_witkey_system_log` VALUES ('4', '0', '1', 'admin', '1', '审核任务:律师事务所LOGO设计Logo设计通过', '27.19.149.94', '1433906381');
INSERT INTO `keke_witkey_system_log` VALUES ('5', '0', '1', 'admin', '1', '审核任务:根据店名“木头和马尾”设计LOGO和推广通过', '27.19.149.94', '1433906384');
INSERT INTO `keke_witkey_system_log` VALUES ('6', '0', '1', 'admin', '1', '审核任务:新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下通过', '27.19.149.94', '1433906692');
INSERT INTO `keke_witkey_system_log` VALUES ('7', '0', '1', 'admin', '1', '对威客作品名为卡拉贴膜画册进行操作', '27.19.149.94', '1433908495');
INSERT INTO `keke_witkey_system_log` VALUES ('8', '0', '1', 'admin', '1', '对威客作品名为购物网站开发进行操作', '27.19.149.94', '1433908498');
INSERT INTO `keke_witkey_system_log` VALUES ('9', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行审核操作', '27.19.149.94', '1433908502');
INSERT INTO `keke_witkey_system_log` VALUES ('10', '0', '1', 'admin', '1', '对威客作品名为“皮兜兜儿”淘宝店LOGO进行操作', '27.19.149.94', '1433916426');
INSERT INTO `keke_witkey_system_log` VALUES ('11', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行审核操作', '27.19.149.94', '1433916432');
INSERT INTO `keke_witkey_system_log` VALUES ('12', '0', '1', 'admin', '1', '对威客服务名为网页设计——招标书设计进行审核操作', '27.19.149.94', '1433916437');
INSERT INTO `keke_witkey_system_log` VALUES ('13', '0', '1', 'admin', '1', '荐', '27.19.149.94', '1433916869');
INSERT INTO `keke_witkey_system_log` VALUES ('14', '0', '1', 'admin', '1', '荐', '27.19.149.94', '1433916875');
INSERT INTO `keke_witkey_system_log` VALUES ('15', '0', '1', 'admin', '1', '荐', '27.19.149.94', '1433916883');
INSERT INTO `keke_witkey_system_log` VALUES ('16', '0', '1', 'admin', '1', '荐', '27.19.149.94', '1433917085');
INSERT INTO `keke_witkey_system_log` VALUES ('17', '0', '1', 'admin', '1', '荐', '27.19.149.94', '1433917091');
INSERT INTO `keke_witkey_system_log` VALUES ('18', '0', '1', 'admin', '1', '荐', '27.19.149.94', '1433917223');
INSERT INTO `keke_witkey_system_log` VALUES ('19', '0', '1', 'admin', '1', '对威客作品名为YY封包程序开发进行操作', '27.19.149.94', '1433917252');
INSERT INTO `keke_witkey_system_log` VALUES ('20', '0', '1', 'admin', '1', '对威客服务名为网站美化进行审核操作', '27.19.149.94', '1433917258');
INSERT INTO `keke_witkey_system_log` VALUES ('21', '0', '1', 'admin', '1', '对威客作品名为微信开发技术支持进行操作', '27.19.149.94', '1433917579');
INSERT INTO `keke_witkey_system_log` VALUES ('22', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行审核操作', '27.19.149.94', '1433917584');
INSERT INTO `keke_witkey_system_log` VALUES ('23', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433917681');
INSERT INTO `keke_witkey_system_log` VALUES ('24', '0', '1', 'admin', null, 'admin2015-06-10 14:56:49登陆系统', '27.19.149.94', '1433919409');
INSERT INTO `keke_witkey_system_log` VALUES ('25', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920134');
INSERT INTO `keke_witkey_system_log` VALUES ('26', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920147');
INSERT INTO `keke_witkey_system_log` VALUES ('27', '0', '1', 'admin', '1', '对威客作品名为YY封包程序开发进行操作', '27.19.149.94', '1433920151');
INSERT INTO `keke_witkey_system_log` VALUES ('28', '0', '1', 'admin', '1', '对威客作品名为YY封包程序开发进行操作', '27.19.149.94', '1433920154');
INSERT INTO `keke_witkey_system_log` VALUES ('29', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920230');
INSERT INTO `keke_witkey_system_log` VALUES ('30', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920287');
INSERT INTO `keke_witkey_system_log` VALUES ('31', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920289');
INSERT INTO `keke_witkey_system_log` VALUES ('32', '0', '1', 'admin', '1', '对威客服务名为网站美化进行操作', '27.19.149.94', '1433920304');
INSERT INTO `keke_witkey_system_log` VALUES ('33', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433920322');
INSERT INTO `keke_witkey_system_log` VALUES ('34', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433920327');
INSERT INTO `keke_witkey_system_log` VALUES ('35', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433920330');
INSERT INTO `keke_witkey_system_log` VALUES ('36', '0', '1', 'admin', '1', '对威客服务名为网站美化进行操作', '27.19.149.94', '1433920332');
INSERT INTO `keke_witkey_system_log` VALUES ('37', '0', '1', 'admin', '1', '对威客服务名为网站美化进行操作', '27.19.149.94', '1433920334');
INSERT INTO `keke_witkey_system_log` VALUES ('38', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433920403');
INSERT INTO `keke_witkey_system_log` VALUES ('39', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433920409');
INSERT INTO `keke_witkey_system_log` VALUES ('40', '0', '1', 'admin', '1', '对威客作品名为软件开发，功能开发进行操作', '27.19.149.94', '1433920481');
INSERT INTO `keke_witkey_system_log` VALUES ('41', '0', '1', 'admin', '1', '对威客作品名为软件开发，功能开发进行操作', '27.19.149.94', '1433920547');
INSERT INTO `keke_witkey_system_log` VALUES ('42', '0', '1', 'admin', '1', '对威客作品名为软件开发，功能开发进行操作', '27.19.149.94', '1433920577');
INSERT INTO `keke_witkey_system_log` VALUES ('43', '0', '1', 'admin', '1', '对威客作品名为软件开发，功能开发进行操作', '27.19.149.94', '1433920580');
INSERT INTO `keke_witkey_system_log` VALUES ('44', '0', '1', 'admin', '1', '对威客作品名为“皮兜兜儿”淘宝店LOGO进行操作', '27.19.149.94', '1433920583');
INSERT INTO `keke_witkey_system_log` VALUES ('45', '0', '1', 'admin', '1', '对威客作品名为“皮兜兜儿”淘宝店LOGO进行操作', '27.19.149.94', '1433920585');
INSERT INTO `keke_witkey_system_log` VALUES ('46', '0', '1', 'admin', '1', '对威客服务名为网页设计——招标书设计进行操作', '27.19.149.94', '1433920590');
INSERT INTO `keke_witkey_system_log` VALUES ('47', '0', '1', 'admin', '1', '对威客作品名为卡拉贴膜画册进行操作', '27.19.149.94', '1433920591');
INSERT INTO `keke_witkey_system_log` VALUES ('48', '0', '1', 'admin', '1', '对威客服务名为网页设计——招标书设计进行操作', '27.19.149.94', '1433920593');
INSERT INTO `keke_witkey_system_log` VALUES ('49', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行操作', '27.19.149.94', '1433920594');
INSERT INTO `keke_witkey_system_log` VALUES ('50', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行操作', '27.19.149.94', '1433920596');
INSERT INTO `keke_witkey_system_log` VALUES ('51', '0', '1', 'admin', '1', '对威客作品名为卡拉贴膜画册进行操作', '27.19.149.94', '1433920600');
INSERT INTO `keke_witkey_system_log` VALUES ('52', '0', '1', 'admin', '1', '对威客作品名为卡拉贴膜画册进行操作', '27.19.149.94', '1433920602');
INSERT INTO `keke_witkey_system_log` VALUES ('53', '0', '1', 'admin', '1', '对威客作品名为卡拉贴膜画册进行操作', '27.19.149.94', '1433920632');
INSERT INTO `keke_witkey_system_log` VALUES ('54', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行操作', '27.19.149.94', '1433920677');
INSERT INTO `keke_witkey_system_log` VALUES ('55', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行操作', '27.19.149.94', '1433920679');
INSERT INTO `keke_witkey_system_log` VALUES ('56', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920760');
INSERT INTO `keke_witkey_system_log` VALUES ('57', '0', '1', 'admin', '1', '对威客作品名为基于weiphp平台名片插件，开发wap站进行操作', '27.19.149.94', '1433920762');
INSERT INTO `keke_witkey_system_log` VALUES ('58', '0', '1', 'admin', '1', '对威客作品名为购物网站开发进行操作', '27.19.149.94', '1433920800');
INSERT INTO `keke_witkey_system_log` VALUES ('59', '0', '1', 'admin', '1', '对威客作品名为购物网站开发进行操作', '27.19.149.94', '1433920803');
INSERT INTO `keke_witkey_system_log` VALUES ('60', '0', '1', 'admin', '1', '对威客作品名为微信开发技术支持进行操作', '27.19.149.94', '1433920813');
INSERT INTO `keke_witkey_system_log` VALUES ('61', '0', '1', 'admin', '1', '对威客作品名为微信开发技术支持进行操作', '27.19.149.94', '1433920815');
INSERT INTO `keke_witkey_system_log` VALUES ('62', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433920880');
INSERT INTO `keke_witkey_system_log` VALUES ('63', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433920882');
INSERT INTO `keke_witkey_system_log` VALUES ('64', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433920921');
INSERT INTO `keke_witkey_system_log` VALUES ('65', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433920929');
INSERT INTO `keke_witkey_system_log` VALUES ('66', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433921088');
INSERT INTO `keke_witkey_system_log` VALUES ('67', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433921091');
INSERT INTO `keke_witkey_system_log` VALUES ('68', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433922095');
INSERT INTO `keke_witkey_system_log` VALUES ('69', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433922098');
INSERT INTO `keke_witkey_system_log` VALUES ('70', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433922253');
INSERT INTO `keke_witkey_system_log` VALUES ('71', '0', '1', 'admin', '1', '对威客服务名为定制整体衣柜，橱柜，移门。宣传画册进行操作', '27.19.149.94', '1433922256');
INSERT INTO `keke_witkey_system_log` VALUES ('72', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433922437');
INSERT INTO `keke_witkey_system_log` VALUES ('73', '0', '1', 'admin', '1', '对威客服务名为网站会员软件开发进行操作', '27.19.149.94', '1433922439');
INSERT INTO `keke_witkey_system_log` VALUES ('74', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行操作', '27.19.149.94', '1433922565');
INSERT INTO `keke_witkey_system_log` VALUES ('75', '0', '1', 'admin', '1', '对威客服务名为河北富德克LOGO、名片设计、英文名称进行操作', '27.19.149.94', '1433922567');
INSERT INTO `keke_witkey_system_log` VALUES ('76', '0', '1', 'admin', '1', '对威客服务名为网页设计——招标书设计进行操作', '27.19.149.94', '1433922569');
INSERT INTO `keke_witkey_system_log` VALUES ('77', '0', '1', 'admin', '1', '对威客服务名为网页设计——招标书设计进行操作', '27.19.149.94', '1433922571');
INSERT INTO `keke_witkey_system_log` VALUES ('78', '0', '1', 'admin', '1', '对威客服务名为网站美化进行操作', '27.19.149.94', '1433923180');
INSERT INTO `keke_witkey_system_log` VALUES ('79', '0', '1', 'admin', '1', '对威客服务名为网站美化进行操作', '27.19.149.94', '1433923182');
INSERT INTO `keke_witkey_system_log` VALUES ('80', '0', '1', 'admin', '1', '对威客作品名为软件开发，功能开发进行操作', '27.19.149.94', '1433923359');
INSERT INTO `keke_witkey_system_log` VALUES ('81', '0', '1', 'admin', '1', '对威客作品名为软件开发，功能开发进行操作', '27.19.149.94', '1433923363');
INSERT INTO `keke_witkey_system_log` VALUES ('82', '0', '1', 'admin', null, 'admin2015-06-10 16:16:50登陆系统', '27.19.149.94', '1433924210');
INSERT INTO `keke_witkey_system_log` VALUES ('83', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433924464');
INSERT INTO `keke_witkey_system_log` VALUES ('84', '0', '1', 'admin', '1', '修改基本配置', '27.19.149.94', '1433924572');
INSERT INTO `keke_witkey_system_log` VALUES ('85', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433925188');
INSERT INTO `keke_witkey_system_log` VALUES ('86', '0', '1', 'admin', '1', '修改基本配置', '27.19.149.94', '1433925225');
INSERT INTO `keke_witkey_system_log` VALUES ('87', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433925305');
INSERT INTO `keke_witkey_system_log` VALUES ('88', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433925356');
INSERT INTO `keke_witkey_system_log` VALUES ('89', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926164');
INSERT INTO `keke_witkey_system_log` VALUES ('90', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926296');
INSERT INTO `keke_witkey_system_log` VALUES ('91', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926373');
INSERT INTO `keke_witkey_system_log` VALUES ('92', '0', '1', 'admin', null, 'admin2015-06-10 16:53:57登陆系统', '27.19.149.94', '1433926437');
INSERT INTO `keke_witkey_system_log` VALUES ('93', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926482');
INSERT INTO `keke_witkey_system_log` VALUES ('94', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926637');
INSERT INTO `keke_witkey_system_log` VALUES ('95', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926729');
INSERT INTO `keke_witkey_system_log` VALUES ('96', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926830');
INSERT INTO `keke_witkey_system_log` VALUES ('97', '0', '1', 'admin', '1', '添加案例', '27.19.149.94', '1433926940');
INSERT INTO `keke_witkey_system_log` VALUES ('98', '0', '1', 'admin', '1', '编辑文章:警惕交易诈骗，注意帐户安全', '27.19.149.94', '1433927078');
INSERT INTO `keke_witkey_system_log` VALUES ('99', '0', '1', 'admin', '1', '修改SEO配置', '27.19.149.94', '1433929233');
INSERT INTO `keke_witkey_system_log` VALUES ('100', '0', '1', 'admin', '1', '修改SEO配置', '27.19.149.94', '1433934873');
INSERT INTO `keke_witkey_system_log` VALUES ('101', '0', '1', 'admin', null, 'admin2015-06-11 09:35:05登陆系统', '27.19.149.94', '1433986505');
INSERT INTO `keke_witkey_system_log` VALUES ('102', '0', '1', 'admin', '1', '对威客服务名为专门编写爱情表白进行审核操作', '27.19.149.94', '1433986821');
INSERT INTO `keke_witkey_system_log` VALUES ('103', '0', '1', 'admin', '1', 'allowalipayjs', '27.19.149.94', '1433987155');
INSERT INTO `keke_witkey_system_log` VALUES ('104', '0', '1', 'admin', '1', '提现申请不通过1', '27.19.149.94', '1433987212');
INSERT INTO `keke_witkey_system_log` VALUES ('105', '0', '1', 'admin', '1', '修改基本配置', '27.19.149.94', '1434005548');
INSERT INTO `keke_witkey_system_log` VALUES ('106', '0', '1', 'admin', '1', '修改基本配置', '27.19.149.94', '1434005563');
INSERT INTO `keke_witkey_system_log` VALUES ('107', '0', '1', 'admin', '1', '编辑用户赵默笙', '27.19.149.94', '1434005954');
INSERT INTO `keke_witkey_system_log` VALUES ('108', '0', '1', 'admin', '1', '对威客作品名为给宝宝起名字进行操作', '27.19.149.94', '1434006425');
INSERT INTO `keke_witkey_system_log` VALUES ('109', '0', '1', 'admin', '1', '对威客作品名为设计模板000033336666电风扇方法22爱的方式进行操作', '27.19.149.94', '1434006430');
INSERT INTO `keke_witkey_system_log` VALUES ('110', '0', '1', 'admin', '1', '对威客作品名为照片美化编辑的技术指导进行操作', '27.19.149.94', '1434006434');
INSERT INTO `keke_witkey_system_log` VALUES ('111', '0', '1', 'admin', '1', '对威客作品名为给宝宝起名字进行操作', '27.19.149.94', '1434006767');
INSERT INTO `keke_witkey_system_log` VALUES ('112', '0', '1', 'admin', '1', '对威客作品名为给宝宝起名字进行操作', '27.19.149.94', '1434006771');
INSERT INTO `keke_witkey_system_log` VALUES ('113', '0', '1', 'admin', null, 'admin2015-06-11 15:35:47登陆系统', '27.19.149.94', '1434008147');
INSERT INTO `keke_witkey_system_log` VALUES ('114', '0', '1', 'admin', '1', '添加友情链接1', '27.19.149.94', '1434008272');
INSERT INTO `keke_witkey_system_log` VALUES ('115', '0', '1', 'admin', '1', '添加友情链接2', '27.19.149.94', '1434008451');
INSERT INTO `keke_witkey_system_log` VALUES ('116', '0', '1', 'admin', '1', '添加友情链接3', '27.19.149.94', '1434008479');
INSERT INTO `keke_witkey_system_log` VALUES ('117', '0', '1', 'admin', '1', '添加友情链接4', '27.19.149.94', '1434008533');
INSERT INTO `keke_witkey_system_log` VALUES ('118', '0', '1', 'admin', '1', '添加友情链接5', '27.19.149.94', '1434008589');
INSERT INTO `keke_witkey_system_log` VALUES ('119', '0', '1', 'admin', '1', '编辑认证项目手机认证', '27.19.149.94', '1434009649');
INSERT INTO `keke_witkey_system_log` VALUES ('120', '0', '1', 'admin', '1', '审核任务:数码摄影定金任务通过', '27.19.149.94', '1434012049');
INSERT INTO `keke_witkey_system_log` VALUES ('121', '0', '1', 'admin', '1', '审核任务:昂华公司跟单软件界面设计通过', '27.19.149.94', '1434012054');
INSERT INTO `keke_witkey_system_log` VALUES ('122', '0', '1', 'admin', '1', '审核任务:程序功能开发通过', '27.19.149.94', '1434012391');
INSERT INTO `keke_witkey_system_log` VALUES ('123', '0', '1', 'admin', '1', '修改信息模板', '27.19.149.94', '1434014123');
INSERT INTO `keke_witkey_system_log` VALUES ('124', '0', '1', 'admin', null, 'admin2015-06-11 17:34:51登陆系统', '27.19.149.94', '1434015291');
INSERT INTO `keke_witkey_system_log` VALUES ('125', '0', '1', 'admin', '1', '暗夜行路审核通过实名认证', '27.19.149.94', '1434016592');
INSERT INTO `keke_witkey_system_log` VALUES ('126', '0', '1', 'admin', '1', '实名认证申请通过1', '27.19.149.94', '1434016592');
INSERT INTO `keke_witkey_system_log` VALUES ('127', '0', '1', 'admin', null, 'admin2015-06-15 11:40:54登陆系统', '27.19.149.94', '1434339654');
INSERT INTO `keke_witkey_system_log` VALUES ('128', '0', '1', 'admin', null, 'admin2015-06-15 11:42:56登陆系统', '27.19.149.94', '1434339776');
INSERT INTO `keke_witkey_system_log` VALUES ('129', '0', '1', 'admin', '1', '编辑文章:服务条款', '27.19.149.94', '1434339970');
INSERT INTO `keke_witkey_system_log` VALUES ('130', '0', '1', 'admin', '1', '编辑文章:服务条款', '27.19.149.94', '1434339980');
INSERT INTO `keke_witkey_system_log` VALUES ('131', '0', '1', 'admin', '1', '配置三方登录接口', '27.19.149.94', '1434340056');
INSERT INTO `keke_witkey_system_log` VALUES ('132', '0', '1', 'admin', '1', '编辑文章:服务条款', '27.19.149.94', '1434340472');
INSERT INTO `keke_witkey_system_log` VALUES ('133', '0', '1', 'admin', '1', '修改信息模板', '27.19.149.94', '1434340536');
INSERT INTO `keke_witkey_system_log` VALUES ('134', '0', '1', 'admin', '1', '修改信息模板', '27.19.149.94', '1434340572');
INSERT INTO `keke_witkey_system_log` VALUES ('135', '0', '1', 'admin', '1', '修改SEO配置', '27.19.149.94', '1434347056');
INSERT INTO `keke_witkey_system_log` VALUES ('136', '0', '1', 'admin', '1', '修改全局配置', '27.19.149.94', '1434347609');
INSERT INTO `keke_witkey_system_log` VALUES ('137', '0', '1', 'admin', null, 'admin2015-06-15 14:42:12登陆系统', '27.19.149.94', '1434350532');
INSERT INTO `keke_witkey_system_log` VALUES ('138', '0', '1', 'admin', null, 'admin2015-06-16 15:14:58登陆系统', '27.19.175.163', '1434438898');
INSERT INTO `keke_witkey_system_log` VALUES ('139', '0', '1', 'admin', '1', '修改全局配置', '27.19.175.163', '1434438996');

-- ----------------------------
-- Table structure for keke_witkey_tag
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_tag`;
CREATE TABLE `keke_witkey_tag` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签编号',
  `tagname` varchar(50) DEFAULT NULL COMMENT '标签名称',
  `tag_type` int(11) DEFAULT NULL COMMENT '标签类型',
  `listorder` int(11) DEFAULT NULL COMMENT '排序',
  `code` text,
  `cache_time` int(11) DEFAULT NULL COMMENT '缓存时间',
  `tag_code` text COMMENT '标签代码',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `tag_id` (`tag_id`),
  KEY `cache_time` (`cache_time`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_tag
-- ----------------------------
INSERT INTO `keke_witkey_tag` VALUES ('153', '热门活动', '5', '0', '&lt;div class=\"pb_5\"&gt;  &lt;div class=\"pb_5\"&gt;  &lt;a href=\"http://localhost/kppw2.2/control/admin/index.php?do=tpl&amp;view=edit_tag&amp;tagid=153&amp;tag_type=5&amp;type=1#\"&gt;&lt;img src=\"http://localhost/kppw2.2/resource/img/system/adv.jpg\" alt=\"\" height=\"90\" width=\"165\" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;br /&gt;&lt;/div&gt;&lt;div class=\"clearfix\"&gt;&lt;ul class=\"small_list clearfix\"&gt;&lt;li&gt;&lt;div class=\"item clearfix\"&gt;&lt;a ti&lt;x&gt;tle=&quot;网站活动&quot; href=&quot;#&quot;&gt;网站活动&lt;/x&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div class=\"item clearfix\"&gt;&lt;a ti&lt;x&gt;tle=&quot;网站活动&quot; href=&quot;#&quot;&gt;网站活动&lt;/x&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div class=\"item clearfix\"&gt;&lt;a ti&lt;x&gt;tle=&quot;网站活动&quot; href=&quot;#&quot;&gt;网站活动&lt;/x&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div class=\"item clearfix\"&gt;&lt;a ti&lt;x&gt;tle=&quot;网站活动&quot; href=&quot;#&quot;&gt;网站活动&lt;/x&gt;&lt;/div&gt;&lt;/li&gt;&lt;li&gt;&lt;div class=\"item clearfix\"&gt;&lt;a ti&lt;x&gt;tle=&quot;网站活动&quot; href=&quot;#&quot;&gt;网站活动&lt;/x&gt;&lt;/div&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '666', '0');
INSERT INTO `keke_witkey_tag` VALUES ('154', '注册协议', '5', '0', '', '3600', '0');
INSERT INTO `keke_witkey_tag` VALUES ('53', '文件交付协议', '5', '0', '&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;一、关于任务的规定 &lt;br/&gt;1、甲方在威客网站发布任务　　&lt;br/&gt;&lt;/span&gt;&lt;span style=\\\"font-family:Arial;\\\"&gt;　　　　　　&nbsp;&nbsp;&nbsp;&nbsp; &lt;br/&gt;&lt;/span&gt;&lt;span style=\\\"font-family:Arial;\\\"&gt;二、甲方的权利义务 &lt;br/&gt;1、甲方在发布任务期间，确定乙方稿件为中标稿件，乙方有义务将稿件的源文件及生成效果图及时转交给威客网网，威客网收到源文件后交给甲方，甲方收到源文件后，通知威客网将悬赏任务赏金的80%，支付给乙方。 &lt;br/&gt;2、甲方选中乙方的中标稿件并在威客网向乙方支付任务赏金后，即拥有该稿件的知识产权。 &lt;br/&gt;3、甲方有权对已支付任务赏金的中标稿件进行复制、发行、出租、展览、表演、放映、广播、网络传播、摄制、改编、翻译、汇编以及应当由著作权人享有的其他权利。其他任何单位和个人不得侵犯甲方上述权利，否则，甲方有权追究其法律责任。 &lt;br/&gt;4、甲方有权利向国家知识产权部门申请知识产权保护，如果中标稿件被采用投产，获奖者将有优先权进行产品的细化设计，并获取相应的报酬。 &lt;br/&gt;5、甲方在威客网向乙方支付任务赏金后，可以要求乙方对中标稿件进行适当修改，修改报酬由甲乙双方自由商定。 &lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;三、乙方的权利义务 &lt;br/&gt;甲方在任务中确定的乙方中标稿件应符合以下规定。否则，由乙方承担该稿件引起的任何法律责任，与甲方无关： &lt;br/&gt;1、中标稿件不得违反国家关于知识产权的法律法规的相关规定； &lt;br/&gt;2、中标稿件应为原创，此前未以任何形式发表，不属于公开稿件； &lt;br/&gt;3、中标稿件应明显区别于中国或者其他任何国家或地区的各类活动或组织的标志； &lt;br/&gt;4、中标稿件或任何用于创作参选稿件的素材均不得侵犯第三方的专利权、著作权、商标权或其他任何专有权利； &lt;br/&gt;5、中标稿件交付后，其知识产权归甲方所有； &lt;br/&gt;6、中标稿件不得含有任何涉嫌民族歧视、宗教歧视、威胁国家间睦邻友好关系以及其他有悖于社会道德风尚的内容。 &lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;四、关于知识产权纠纷的处理 &lt;br/&gt;1、甲、乙双方签订本协议即表示双方同意以上条款，同时接受威客网关于知识产权的声明。 &lt;br/&gt;2、如果甲方因该中标稿件侵犯了其他任何第三人的权利而遭到损失，有权利向乙方追偿。 &lt;br/&gt;3、本协议一式两份，甲、乙双方各保存一份。 &lt;br/&gt;4、本协议自甲乙双方签定之日起生效（在网上点击确认的视为签订本协议）。&lt;/span&gt;\r\n&lt;/p&gt;', '0', '0');
INSERT INTO `keke_witkey_tag` VALUES ('54', '威客交稿协议', '5', '0', '&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;一、本网站仅为会员提供一个信息交流平台，是买家发布任务需求和卖家提供解决方案的一个交易市场，本网站对交易双方均不加以监视或控制，亦不介入交易的过程。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;二、本网站有义务在现有技术水平的基础上努力确保整个网上交流平台的正常运行，尽力避免服务中断或将中断时间限制在最短时间内，保证会员网上交流活动的顺利进行。　 &lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;三、本网站有义务对会员在注册使用本网站信息平台中所遇到的与交易或注册有关的问题及反映的情况及时作出回复。　 　&lt;br/&gt;&nbsp;&nbsp;&nbsp; 四、本网站有权对会员的注册资料进行审查，对存在任何问题或怀疑的注册资料，本网站有权发出通知询问会员并要求会员做出解释、改正。　 　 &lt;br/&gt;&nbsp;&nbsp;&nbsp; 五、会员因在本网站网上交易与其他会员产生纠纷的，会员将纠纷告知本网站，或本网站知悉纠纷情况的，经审核后，本网站有权通过电子邮件及电话联系向纠纷双方了解纠纷情况，并将所了解的情况通过电子邮件互相通知对方；会员通过司法机关依照法定程序要求本网站提供相关资料，本网站将积极配合并提供有关资料。　　&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;六、因网上信息平台的特殊性，本网站没有义务对所有会员的交易行为以及与交易有关的其他事项进行事先审查，但如发生以下情形，本网站有权无需征得会员的同意限制会员的活动、向会员核实有关资料、发出警告通知、暂时中止、无限期中止及拒绝向该会员提供服务：&lt;br/&gt;&nbsp;&nbsp; （一）、会员违反本协议或因被提及而纳入本协议的相关规则；　　&lt;br/&gt;&nbsp;&nbsp; （二）、存在会员或其他第三方通知本网站，认为某个会员或具体交易事项存在违法或不当行为，并提供相关证据，而本网站无法联系到该会员核证或验证该会员向本网站提供的任何资料；　　 &lt;br/&gt;&nbsp;&nbsp; （三）、存在会员或其他第三方通知本网站，认为某个会员或具体交易事项存在违法或不当行为，并提供相关证据。本网站以普通非专业交易者的知识水平标准对相关内容进行判别，可以明显认为这些内容或行为可能对本网站会员或本网站造成财务损失或法律责任。　 　&lt;br/&gt;&nbsp;&nbsp;&nbsp; 七、根据国家法律、法规、行政规章规定、本协议的内容和本网站所掌握的事实依据，可以认定该会员存在违法或违反本协议行为以及在本网站交易平台上的其他不当行为，本网站有权无需征得会员的同意在本网站交易平台及所在网站上以网络发布形式公布该会员的违法行为，并有权随时作出删除相关信息、终止服务提供等处理。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span style=\\\"font-family:Arial;\\\"&gt;八、本网站依据本协议及相关规则，可以冻结、使用、先行赔付、退款、处置会员缴存并冻结在本网站账户内的资金。　　&lt;br/&gt;&nbsp;&nbsp;&nbsp; 九、本网站有权在不通知会员的前提下，删除或采取其他限制性措施处理下列信息：包括但不限于以规避费用为目的；以炒作信用为目的；存在欺诈等恶意或虚假内容；与网上交易无关或不是以交易为目的；存在恶意竞价或其他试图扰乱正常交易秩序因素；该信息违反公共利益或可能严重损害本网站和其他会员合法利益的。&lt;/span&gt;\r\n&lt;/p&gt;', '0', '0');
INSERT INTO `keke_witkey_tag` VALUES ('59', '底部', '5', '0', '<ul><li><p>谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富</p></li><li><p>谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。</p></li><li><p>谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。</p></li><li><p>谋学天下，谋天下学问创大众财富。谋学天下，谋谋天下学问创大众财富谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。</p></li><li><p>谋学天下，谋天下学问创大众财富。谋学天下，谋学天下，谋天下学问创大众财富。谋学天下，谋天下学问创大众财富。</p></li></ul>', '0', '0');
INSERT INTO `keke_witkey_tag` VALUES ('62', 'index_all', '8', '0', 'a:5:{s:9:\"feed_type\";s:9:\"join_work\";s:8:\"load_num\";i:67;s:7:\"user_id\";i:0;s:6:\"obj_id\";i:0;s:10:\"cache_name\";s:2:\"67\";}', '9999', '{loop $datalist $value}<li >$value[on_time]--{$value[\'title\']}</li>{/loop}');
INSERT INTO `keke_witkey_tag` VALUES ('67', 'default', '8', '0', 'a:5:{s:9:\"feed_type\";s:7:\"default\";s:8:\"load_num\";i:9;s:7:\"user_id\";i:0;s:6:\"obj_id\";i:0;s:10:\"cache_name\";s:7:\"default\";}', '180', '{loop $datalist $value}<li>{$value[username]}{$value[\'title\']}</li>{/loop}');
INSERT INTO `keke_witkey_tag` VALUES ('123', '交付协议', '5', '0', '&lt;p class=\\\"font14\\\" style=\\\"text-indent:2em\\\"&gt;\r\n    &lt;br/&gt;\r\n&lt;/p&gt;\r\n&lt;p class=\\\"font14\\\" style=\\\"text-indent:2em\\\"&gt;\r\n    &lt;br/&gt;\r\n&lt;/p&gt;\r\n&lt;p class=\\\"font14\\\" style=\\\"text-indent:2em\\\"&gt;\r\n    &lt;br/&gt;\r\n&lt;/p&gt;\r\n&lt;p class=\\\"font14\\\" style=\\\"text-indent:2em\\\"&gt;\r\n    此协议是关于交易双方发布者于中标者所设计作品的知识产权移交的。买家在悬赏中选出一个中标设计，或在设计成品商店购买一个设计的时候，发布者和中标者就会被视为订立了一项具有法律约束力的协议。除非买家和卖家分别以书面形式同意此协议的条款。 一旦参加一个设计悬赏（不论以买家还是卖家的身份），就默认为同意此协议的条款。当事人此协议的当事人为买家和其在悬赏中选定的中标卖家，或在设计成品商店购买的作品的设计者，这种情况下称作“卖方卖家”。如果不止一个卖方卖家，那么买家将被视为跟卖方卖家单独订立了协议。协议日期以买家选定悬赏中的相关设计（转让的设计）或购买设计成品商店里转让的设计的日期为准。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;此服务协议的使用必须同意我们的综合服务协议。 &lt;/span&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;&lt;/span&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;&lt;/span&gt;\r\n&lt;/p&gt;', '3600', '0');
INSERT INTO `keke_witkey_tag` VALUES ('125', '作品出售协议', '5', '0', '&lt;p&gt;&lt;span class=\\\"font14\\\" style=\\\"text-indent:2em\\\"&gt;此协议是关于交易双方发布者于中标者所设计作品的知识产权移交的。&lt;/span&gt; &lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;买家在悬赏中选出一个中标设计，或在设计&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;成品商店购买一个设计的时候，&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;&nbsp;&nbsp;&nbsp; 发布者和中标者就会被视为订立了一项具有法律约束力的协议。&lt;/span&gt; &lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;除非买家和卖家分别以书面形式同意此协议的条款。 一旦参加一个设计悬赏（不论以买家还是卖家的身份），&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;就默认为同意此&lt;span style=\\\"text-indent: 2em; color: rgb(0, 0, 0);\\\"&gt;协议的条款。当事人此协议&lt;/span&gt;的当事人为买家和其在悬赏中选定的中标卖家，或在设计成品商店购买的作品的设计者，这种情况下称作“卖方卖家”。&lt;/span&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;如果不止一个卖方卖家，那么买家将被视为跟卖方卖家单独订立了协议。协议日期以买家选定悬赏中的相关设计（转让的设计）或&lt;/span&gt;购买设计成品商店里&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;转让的设计的日期为准。&lt;/span&gt;&lt;/p&gt;', '3600', '0');
INSERT INTO `keke_witkey_tag` VALUES ('158', '任务交付协议简介', '5', null, '&lt;p&gt;\r\n    任务交付协议简介&lt;br/&gt;\r\n&lt;/p&gt;', '300', null);
INSERT INTO `keke_witkey_tag` VALUES ('172', '服务出售协议', '5', null, '&lt;p&gt;\r\n    &lt;span class=\\\"font14\\\" style=\\\"text-indent:2em\\\"&gt;此协议是关于交易双方发布者于中标者所设计作品的知识产权移交的。&lt;/span&gt; &lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;买家在悬赏中选出一个中标设计，或在设计&lt;br/&gt;成品商店购买一个设计的时候，发布者和中标者就会被视为订立了一项具有法律约束力的协议。&lt;/span&gt; &lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;除非买家和卖家分别以书面形式同意此协议的条款。 一旦参加一个设计悬赏（不论以买家还是卖家的身份），就默认为同意此协议的条款。当事人此协议的当事人为买家和其在悬赏中选定的中标卖家，或在设计成品商店购买的作品的设计者，这种情况下称作“卖方卖家”。&lt;/span&gt;&lt;span class=\\\"font14 block\\\" style=\\\"text-indent:2em\\\"&gt;如果不止一个卖方卖家，那么买家将被视为跟卖方卖家单独订立了协议。协议日期以买家选定悬赏中的相关设计（转让的设计）或购买设计成品商店里转让的设计的日期为准。&lt;/span&gt;&lt;br/&gt;\r\n&lt;/p&gt;', '3600', null);
INSERT INTO `keke_witkey_tag` VALUES ('173', '任务发布协议', '5', null, '&lt;p&gt;\r\n    任务发布协议&lt;br/&gt;\r\n&lt;/p&gt;', '3600', null);
INSERT INTO `keke_witkey_tag` VALUES ('174', '请不要随意更改名称,否则可能造', '5', null, '请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造<br />', '0', null);
INSERT INTO `keke_witkey_tag` VALUES ('175', '打的费撒的发送的发生的', '5', null, '请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造<br />', '50', null);
INSERT INTO `keke_witkey_tag` VALUES ('176', '请不要随意更改名称,否则可能造1', '5', null, '请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造请不要随意更改名称,否则可能造<br />', '10', null);
INSERT INTO `keke_witkey_tag` VALUES ('177', '啊啊啊啊啊啊', '5', null, '&nbsp;啊啊啊啊啊啊啊啊啊啊', '0', null);
INSERT INTO `keke_witkey_tag` VALUES ('178', 'hah活动', '5', null, '特尔说染色大过年&nbsp;&lt;img src=\"data/uploads/2013/04/09/40815163c0b757bde.jpg\" height=\"100\" width=\"100\" alt=\"\" /&gt;', '0', null);
INSERT INTO `keke_witkey_tag` VALUES ('179', '协助流程协议', '5', null, '&lt;p&gt;\r\n    &lt;span style=\\\"\\\\\\\'\\\\\\\\\\\\\\\'font-size:24px;\\\\\\\\\\\\\\\'\\\\\\\'\\\"&gt;服协助交付的&lt;/span&gt;流程\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    介绍服协助交付的流程\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &nbsp;&nbsp;&nbsp; 介绍服协助交&lt;span style=\\\"text-decoration:underline;\\\"&gt;付的流程&lt;/span&gt;介绍服协\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n    &nbsp;&nbsp;&nbsp; 助交付的流程介绍服协助交付的流程介绍&lt;span style=\\\"\\\\\\\'\\\\\\\\\\\\\\\'color:#FF0000;\\\\\\\\\\\\\\\'\\\\\\\'\\\"&gt;服协助交付的流程介绍服协助&lt;/span&gt;交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍服协助交付的流程介绍\r\n&lt;/p&gt;', '0', null);

-- ----------------------------
-- Table structure for keke_witkey_task
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task`;
CREATE TABLE `keke_witkey_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `model_id` char(10) DEFAULT NULL COMMENT '模型编号',
  `work_count` int(11) DEFAULT NULL COMMENT '稿件数量',
  `single_cash` float(10,2) DEFAULT NULL COMMENT '稿件单价',
  `profit_rate` int(3) DEFAULT NULL COMMENT '提成比例',
  `task_fail_rate` int(3) DEFAULT NULL COMMENT '失败提成比例',
  `task_status` int(11) DEFAULT '0' COMMENT '任务状态',
  `task_title` varchar(100) DEFAULT NULL COMMENT '任务标题',
  `task_desc` text COMMENT '任务描述',
  `task_file` varchar(100) DEFAULT NULL COMMENT '任务附件',
  `task_pic` text COMMENT '任务图片',
  `indus_id` int(11) DEFAULT '0' COMMENT '行业编号',
  `indus_pid` int(11) DEFAULT NULL COMMENT '父行业编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `start_time` int(10) DEFAULT '0' COMMENT '开始时间',
  `sub_time` int(10) DEFAULT NULL COMMENT '交稿/选稿截止时间',
  `end_time` int(10) DEFAULT '0' COMMENT '任务截止时间',
  `sp_end_time` int(10) DEFAULT NULL COMMENT '公示截止时间',
  `city` varchar(20) DEFAULT NULL COMMENT '城市地区',
  `task_cash` decimal(10,2) DEFAULT '0.00' COMMENT '任务赏金',
  `real_cash` decimal(10,2) DEFAULT '0.00' COMMENT '实际金额',
  `task_cash_coverage` int(11) DEFAULT NULL COMMENT '金额区间',
  `cash_cost` decimal(10,2) DEFAULT '0.00' COMMENT '金额花费',
  `credit_cost` decimal(10,2) DEFAULT '0.00' COMMENT '代金券花费',
  `view_num` int(11) DEFAULT '0' COMMENT '查看次数',
  `work_num` int(11) DEFAULT '0' COMMENT '投稿次数',
  `leave_num` int(11) DEFAULT '0' COMMENT '留言次数',
  `focus_num` int(11) DEFAULT '0' COMMENT '关注次数',
  `mark_num` int(11) DEFAULT '0' COMMENT '互评次数',
  `is_delineas` int(11) DEFAULT '0',
  `kf_uid` int(11) DEFAULT '0' COMMENT '客服UID',
  `pay_item` varchar(50) DEFAULT NULL COMMENT '付费项',
  `att_cash` decimal(8,2) DEFAULT '0.00' COMMENT '增值花费',
  `contact` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `unique_num` char(8) DEFAULT NULL COMMENT '唯一编号',
  `ext_time` int(11) DEFAULT NULL COMMENT '补充需求的时间',
  `ext_desc` text COMMENT '补充的需求描述',
  `task_union` tinyint(1) DEFAULT '0' COMMENT '联盟任务标识',
  `alipay_trust` tinyint(1) DEFAULT NULL COMMENT '支付宝托管',
  `is_delay` tinyint(1) DEFAULT '0' COMMENT '是否延期',
  `r_task_id` int(11) DEFAULT NULL COMMENT '联盟任务编号',
  `is_trust` tinyint(1) DEFAULT '0' COMMENT '是否托管',
  `trust_type` char(20) DEFAULT NULL COMMENT '托管类型',
  `is_top` int(1) DEFAULT '0' COMMENT '是否置顶',
  `is_auto_bid` int(1) DEFAULT '0' COMMENT '是否自动选稿',
  `point` varchar(100) DEFAULT NULL COMMENT '任务坐标',
  `payitem_time` varchar(200) DEFAULT NULL COMMENT '增值项购买时间',
  `age_requirement` int(11) DEFAULT '0' COMMENT '同意协议',
  `seo_title` varchar(50) DEFAULT NULL COMMENT 'SEO标题',
  `seo_keyword` varchar(50) DEFAULT NULL COMMENT 'SEO关键字',
  `seo_desc` text COMMENT 'SEO描述',
  `province` int(11) DEFAULT NULL COMMENT '省份',
  `area` int(11) DEFAULT NULL COMMENT '地区',
  `tasktop` int(11) DEFAULT '0' COMMENT '任务置顶状态',
  `urgent` int(11) DEFAULT '0' COMMENT '任务加急状态',
  `seohide` int(11) DEFAULT '0' COMMENT '屏蔽搜索引擎状态',
  `workhide` int(11) DEFAULT '0' COMMENT '稿件隐藏状态',
  `budget` decimal(8,2) DEFAULT NULL COMMENT '明确预算',
  `teamwork` int(2) DEFAULT '0' COMMENT '1,开启工作协同  2，关闭工作协同',
  `is_back` int(1) DEFAULT NULL COMMENT '是否返还',
  PRIMARY KEY (`task_id`),
  KEY `task_id` (`task_id`),
  KEY `model_id` (`model_id`),
  KEY `uid` (`uid`),
  KEY `indus_id` (`indus_id`),
  KEY `task_status` (`task_status`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task
-- ----------------------------
INSERT INTO `keke_witkey_task` VALUES ('1', '1', null, null, '10', '10', '8', '婚纱摄影网站，有原型，有HTML，套后台', '&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;详细需求见压缩包，内含原型文件和需求文档，HTML已经做好，套个后台就行，接单后索要HTML文件。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;程序不限，PHP语言，工期5-7天，内容展示页需加个点击弹出层浏览照片的JS。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;请详细阅读文档后结单，不要浪费大家时间。&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;做完后传到技术自己的测试空间上供测试，客户测试满意无BUG后付款。&lt;/span&gt;&lt;/p&gt;', '', null, '169', '2', '2', '烂苹果丶', '1433904375', '1442976375', '1443062775', '1434185230', '516', '2000.00', '1800.00', null, '2000.00', '0.00', '8', '1', '0', '0', '2', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '33', '0', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('2', '1', null, null, '10', '10', '13', 'destoon程序做的网站，解决占用CPU高', '&lt;p&gt;网站是用destoon B2B程序做的网站，占用CPU高，据说商业版可以解决，谁能解决这问题？来接任务吧！&lt;/p&gt;&lt;h4 datetime=\\\"\\\\&quot;2015-06-10\\\" style=\\\"\\\\&quot;box-sizing:\\\" font-family:=\\\"\\\" line-height:=\\\"\\\" margin-top:=\\\"\\\" margin-bottom:=\\\"\\\" font-size:=\\\"\\\"&gt;任务补充内容&lt;/h4&gt;&lt;p&gt;应该是注册机扫描导致的，如果你不懂destoon，请不要接手，谢谢！！！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '130', '3', '2', '烂苹果丶', '1433904694', '1442026294', '1442112694', '1434185230', '516', '3000.00', '2700.00', null, '3000.00', '0.00', '1', '1', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '33', '0', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('3', '1', null, null, '10', '10', '2', '仿快播 Windows客户端、服务器端', '&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;播放器主程序：常用功能、全格式解码器（能拖动快进条）、多皮肤、其他功能仿照快播及肥佬播放器 &nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;P2P程序：能够点对点下载分享、从服务器端下载、协议下载&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;浏览器插件组件：在浏览器中打开专用协议资源时托盘启动播放器，并能够在页面播放，同时在客户端下载，要求IE、火狐、chrome内核浏览器均支持。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;服务器端：仿照快播、肥佬服务器端&lt;/span&gt;&lt;/p&gt;', '', null, '325', '121', '2', '烂苹果丶', '1433904792', '1442026392', '1442112792', '1434185230', '516', '6000.00', '5400.00', null, '6000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '33', '0', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('4', '1', null, null, '10', '10', '2', '设计一个支付（POS机公司）公司的网站', '&lt;p&gt;1、一家新的支付（POS机）公司，设计整站网页&nbsp;&lt;br style=\\\"box-sizing: border-box;\\\"/&gt;2、要求具有科技感和时代特色&nbsp;&lt;br style=\\\"box-sizing: border-box;\\\"/&gt;3、突出互联网科技氛围&nbsp;&lt;br style=\\\"box-sizing: border-box;\\\"/&gt;4、同类型客户：拉卡拉、乐付、现代金控、银联商务、富友等；&nbsp;&lt;br style=\\\"box-sizing: border-box;\\\"/&gt;5、3日内出首页设计&lt;/p&gt;&lt;h4 datetime=\\\"2015-06-09 22:37:05\\\" style=\\\"box-sizing: border-box; font-family: inherit; line-height: 1.1; margin-top: 10px; margin-bottom: 10px; font-size: 14px;\\\"&gt;任务补充内容&lt;/h4&gt;&lt;p&gt;1、整站项目预算3000 ++，欲参加同的个人或团队，请尽快设计首页交上来，谢谢！ 2、程序需要套 PHPCMS 或 【帝国】，请注意，谢谢！ 3、已托管订定 1000&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '325', '121', '2', '烂苹果丶', '1433904929', '1442026529', '1442112929', '1434185230', '516', '1000.00', '900.00', null, '1000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '33', '0', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('5', '1', null, null, '10', '10', '13', '需要通过货运单号采集当月客户信息的软件', '&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;功能：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;输入顺丰单号或者月结号可即时提取对应发货方最近2年的快递数据（面单+成单）&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;要求：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;1.不限编写语言，要求功能完善，体积越小越好，无后门；带授权注册机制（无序列号不能使用）&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;2.通过运单号扫月结，月结指定时间提取数据，能够显示姓名，电话，地址，购买商品，价格能提取出（单号，姓名，电话，地址，产品名称，代收价格）我这里没有什么接口，先发测试软件测试完再交易！&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\\\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\"/&gt;&lt;span style=\\\"color: rgb(51, 51, 51); font-family: \\\'Microsoft Yahei\\\', \\\'simsun Arial\\\'; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\\\"&gt;3.质量保证最起码2年，提供升级服务!&lt;/span&gt;&lt;/p&gt;', '', null, '169', '2', '2', '烂苹果丶', '1433905068', '1442026668', '1442113068', '1434185230', '516', '5000.00', '4500.00', null, '5000.00', '0.00', '1', '1', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '33', '0', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('6', '1', null, null, '10', '10', '2', '网站升级加微网站手机应用开发', '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;电商平台招标：包括咨询界面、商城界面，活动界面、会员分类认证等页面升级。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;微网站/app，基本功能：（问卷、订单（咨询、商品）、音频播放，文本阅读，注册等），实现三合一整合。短信验证、邮件激活、淘宝、财付通支付已经开通。详细需求另发文档。投标者为三人以上团队或者小公司即可，需具备良好专业经验与素养，诚实担当，有服务意识。应标可发团队合影照一张，办公室图片一张。谢绝东拼西凑练手，吹大牛者！&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;请报匡算价格，中标者进一步协商开发协议。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '222', '218', '2', '烂苹果丶', '1433905225', '1442026825', '1442113225', '1434185230', '516', '30000.00', '27000.00', null, '30000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '33', '0', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('7', '1', null, null, '10', '10', '2', '类似奇幻咔咔的APP', '&lt;p&gt;我这里需要完成一个珠宝戒指模拟终端平台;主要的功能是用来通过手机APP端，扫描我们的戒指的时候;与用户的一个匹配的效果。功能的大至效果类似于奇幻咔咔的功能&lt;/p&gt;', '', null, '34', '2', '3', '暗夜行路', '1433905414', '1442027014', '1442113414', '1434185230', '37', '100.00', '90.00', null, '100.00', '0.00', '1', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '1', '567', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('8', '1', null, null, '10', '10', '2', '耳机行业互联网商业计划书撰写', '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;我们是一家耳机生产销售的公司现在公司计划学习凡客诚品做耳机行业内的自有品牌优丹姆ULDUM垂直电商，要求商业计划书需要通过介绍公司业务、市场分析、管理团队、公司亮点、社会背景、发展规划等多方面的内容，让投资者能够全面了解公司的现实与未来，以及公司如何实现梦想。以便于他们能对项目做出评判，从而使企业快速获得融资。商业计划书要求语言清晰、简洁；内容详实、数据丰富准确、体系完整且有一定创意。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&nbsp; 对于数据方面的要求：需要部分数据字数要求：需要把事情说清楚即可，大约在40页左右时间要求：10个礼拜内完成。服务商必须承诺对数据保密* 需要了解并熟悉3C数码电商运营模式及有电子商务项目商业计划书撰写经验的团队参与。中标者还会额外获得一个500元的红包。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '57', '3', '4', 'dabomei', '1433905490', '1442027090', '1442113490', '1434185230', '289', '5000.00', '4500.00', null, '5000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('9', '1', null, null, '10', '10', '2', '做一个运动场地在线发布和预定的b2c平台', '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;1、用户可以根据运动项目或者地理位置，查询场地/场馆信息；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;2、进入场地/场馆后可以查看详情和当前的预定情况；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;3、用户可以选择日期，查看哪些场地可以预定及价格；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;4、用户确定预定后下单和支付，若支付完成，用户手机收到短信通知；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;5、商户端可以看到场地已被预定（短信通知）；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;6、支持用户收到的短信在商户处验证消费。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;7、支持商户在线自己发布商品（场地/场馆）信息&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;8、提供商户场地/场馆 根据选择周期内的销售报表分析&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;9、参考地址：http://www.gewara.com/sport/（不是做整站、只做这个模块）&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;希望由实力的团队或者公司与我联系，谢谢！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '28', '2', '4', 'dabomei', '1433905742', '1442027342', '1442113742', '1434185230', '289', '30000.00', '27000.00', null, '30000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('10', '2', null, null, '20', '5', '2', '体育用品公司LOGO设计，名片设计', '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;北京博盛辉腾体育用品有限公司，是一家以销售阿迪达斯，耐克，李宁，安踏品牌为主的公司，主要经营服装、鞋帽、器材。现在公司为了更好的发展。现征集公司LOGO和名片设计，需求如下：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;LOGO：大气、简洁、给人印象深刻。&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;名片一：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;1.简洁明了，给人印象深刻，突出体育元素，但是不能是限定某个项目，比如篮球、排球等&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;2.名片正面，公司LOGO，公司名称、姓名、职务、手机、email、地址&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;3.名片背面是经常经销品牌的LOGO，如阿迪、耐克、李宁、安踏&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;&lt;br/&gt;&lt;br/&gt;名片二：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;1.突出足球元素，最好能把国安的LOGO设计到里面。&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=\\\"color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;2.名片正面，公司名称、姓名、职务、手机、email、地址&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;strong&gt;3.名片背面是经常经销品牌的LOGO，如阿迪、耐克、李宁&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '147', '2', '4', 'dabomei', '1433905891', '1438225891', '1438312291', '1434185230', '289', '5000.00', '4000.00', null, '5000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('11', '2', null, null, '20', '5', '8', '5000元开发微信大屏系统', '&lt;p&gt;&amp;lt;p&amp;gt;具体要求：高价寻求：开发微信上墙、签到、抽奖、摇一摇、投票等功能！具体功能可以借鉴http://demo.wxscreen.com/要求功能操作简单，界面美观！10-15天内交工。可以议价！&lt;/p&gt;', '', null, '154', '2', '3', '暗夜行路', '1433905929', '1461294729', '1461381129', '1434185230', '322', '100.00', '80.00', null, '100.00', '0.00', '2', '1', '0', '0', '2', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '20', '3258', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('12', '2', null, null, '20', '5', '2', '辣PLUS麻辣小龙虾文案', '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;品牌：辣plus&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;理念：做一个有情怀的吃货&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;内容：注重麻辣文化，以小龙虾为切入点，目前以小龙虾为主营，后期不断向麻辣文化延伸。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;需求：需要一些段子，需要一些故事，讲述我们自己的品牌，讲述我们自己的故事，讲述麻辣小龙虾的故事，讲述我们食材的故事，一切有范、吊丝、文艺的段子都可以是我们的需求，记住了是段子，可以是很多种形式的东西，散文、诗歌体、网络流行体............哪怕不着边际，只要够得到主题，只要最终向辣plus，向麻辣小龙虾引流就OK。&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;如果您的段子让我们眼前一亮，一旦采纳，我们将会考虑长期合作！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '263', '3', '4', 'dabomei', '1433906050', '1477106050', '1477192450', '1434185230', '289', '600.00', '480.00', null, '600.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('13', '3', '2', '100.00', '10', '5', '8', '模仿国外网站 建立服装推广网站', '&lt;p&gt;任务：仿站英语外贸网站，附件有地址http://www.customyourshirt.com1、最好用ecshop制作，要有购物功能，2、附件有几个页面需要注意，有一个在线设计（coreldraw）[url=http://www.customyourshirt.toctopus.com/desig...&lt;/p&gt;', '', null, '28', '2', '3', '暗夜行路', '1433906063', '1438226063', '1438312463', '1434185230', '2852', '200.00', '180.00', null, '200.00', '0.00', '3', '2', '0', '0', '4', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '0', '25771', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('14', '4', null, null, null, null, '2', '根据店名“木头和马尾”设计LOGO和推广', '&lt;p&gt;根据店名“木头和马尾”设计LOGO和推广&lt;/p&gt;', '', null, '327', '121', '3', '暗夜行路', '1433906384', '1520306384', '1520479184', '1434185230', '406', '1000.00', '1.00', '34', '1000.00', '0.00', '1', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '24', '4390', '0', '0', '0', '0', '0.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('15', '2', null, null, '20', '5', '2', '蜂花恋品牌LOGO设计', '&lt;h3 class=\\\"mb_10\\\" style=\\\"margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;任务需求&lt;/h3&gt;&lt;p&gt;卖蜂蜜 &nbsp;蜂胶 蜂王浆等 &nbsp; 蜂产品 具体需求看附件。&lt;br/&gt;&lt;/p&gt;&lt;h3 class=\\\"mb_10 mt_10\\\" style=\\\"margin: 10px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;描述补充&lt;/h3&gt;&lt;p&gt;谢谢大家用心的去创作。我也看了下。每个创作的某一点我很喜欢。但是。和我心里面想的不太一样。我也不懂怎么表达。给你们提供些图片。希望能帮我完善出好的作品。给我。谢谢。大家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '348', '3', '4', 'dabomei', '1433906225', '1477106225', '1477192625', '1434185230', '289', '1000.00', '800.00', null, '1000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('16', '5', null, null, '10', '10', '2', '律师事务所LOGO设计Logo设计', '&lt;p&gt;律师事务所LOGO设计Logo设计&lt;/p&gt;&lt;p&gt;具体要求见附件&lt;/p&gt;', '', null, '147', '2', '3', '暗夜行路', '1433906381', '1442373581', '1442373581', '1434185230', '345', '1000.00', '30.00', '41', '1000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '22', '3340', '0', '0', '0', '0', '0.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('17', '2', null, null, '20', '5', '2', '一品威客官网App名称征集', '&lt;h3 class=\\\"mb_10\\\" style=\\\"margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;任务需求&lt;/h3&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;一品威客新版App即将出炉，独立的雇主版和威客版哦。现在开始征集名称啦！&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;strong&gt;App名称要求：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;1.&nbsp;名称字数：2-4个字；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;2.&nbsp;名称要求：威客版重点体现：随时随地接单，任务动态一手掌握&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;雇主版重点体现：快速、便捷发布任务&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;3.&nbsp;不可与其他App名称重复；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;4.&nbsp;一个稿件需同时提交雇主版名称和威客版名称；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;注：稿件最好不要隐藏，避免重复提交。(如出现重复提交情况，以提交时间较早的为主)&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;strong&gt;参考名称：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;威客版：一品接单&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;雇主版：一品威客&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&nbsp;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;strong&gt;App部分功能介绍：&lt;/strong&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;威客版：&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;1.&nbsp;LBS功能。威客可随时随地打开手机，查找附近任务进行交易；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;2.&nbsp;实时沟通工具；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;3.&nbsp;任务管理模块，实时掌握任务动态；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;雇主版：&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;1.&nbsp;同时具备LBS功能。雇主可选择附近的人帮忙做事；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;2.&nbsp;任务发布更便捷；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;3.&nbsp;全新界面打造；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;更多亮点敬请期待~&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '165', '160', '4', 'dabomei', '1433906367', '1477106367', '1477192767', '1434185230', '289', '1200.00', '960.00', null, '1200.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('18', '1', null, null, '10', '10', '2', 'PHP网站修改.产品搜索功能修改', '&lt;p&gt;PHP网站;搜索功能修改1，搜索效果无效问题修正，2，多选单选处理，3，及其BUG处理，具体联系,沟通需求.&lt;/p&gt;', '', null, '169', '2', '3', '暗夜行路', '1433906529', '1442028129', '1442114529', '1434185230', '310', '200.00', '180.00', null, '200.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '20', '3159', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('19', '2', null, null, '20', '5', '2', '钻达集团VI手册设计', '&lt;p&gt;1、钻达标识已经有了，可以适当优化，也可以不优化；2、设计一套VI手册，常见的应用都要有;3、需要增加：加油站店面设计规范;4、不希望套版，不希望仅仅是简单的标识应用；&lt;/p&gt;', '', null, '130', '3', '3', '暗夜行路', '1433906599', '1477106599', '1477192999', '1434185230', '310', '200.00', '160.00', null, '200.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '20', '3159', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('20', '4', null, null, null, null, '2', '新开淘宝网店，希望把首页，详情页以及模板好好设计装修一下', '&lt;p&gt;希望把首页，详情页以及模板好好设计装修一下，做一个符合消费者心理的界面&lt;/p&gt;', '', null, '130', '3', '3', '暗夜行路', '1433906692', '1520306692', '1520479492', '1434185230', '406', '1000.00', '1.00', '34', '1000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '24', '4390', '0', '0', '0', '0', '0.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('21', '4', null, null, null, null, '1', '山西省陵川县第一山林场LOGO设计', '&lt;h3 class=\\\"mb_10\\\" style=\\\"margin: 0px 0px 10px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;任务需求&lt;/h3&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri;\\\"&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;为山西省陵川县第一山林场设计一枚&lt;/span&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri;\\\"&gt;LOGO&lt;/span&gt;&lt;/span&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;，色彩以绿色为主色调。&lt;/span&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri;\\\"&gt;2&lt;/span&gt;&lt;/span&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;陵川县第一山林场的主要植被为油松林，可以使用油松进行抽象变形进行设计。&lt;/span&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri;\\\"&gt;3&lt;/span&gt;&lt;/span&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;第一山林场打出的口号是“千里太行第一山”也可以突出“第一山”的主题。&lt;/span&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri;\\\"&gt;4&lt;/span&gt;&lt;/span&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;可以使用一些字母与树的结合进行抽象变形。&lt;/span&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\\\"&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri;\\\"&gt;5&lt;/span&gt;&lt;/span&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;第一山林场的网址为：&lt;/span&gt;&lt;a href=\\\"http://jincheng06447.11467.com/\\\" style=\\\"cursor: pointer; text-decoration: none; color: rgb(51, 51, 51);\\\"&gt;&lt;span style=\\\"font-size: 15pt;\\\"&gt;&lt;span style=\\\"font-family: Calibri; color: rgb(0, 0, 255);\\\"&gt;http://jincheng06447.11467.com/&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;span style=\\\"font-family: 宋体; font-size: 15pt;\\\"&gt;，可登陆网址查看第一山林场的相关信息。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '348', '3', '4', 'dabomei', '1433906696', '1520306696', '1520479496', '1434185230', '289', '20000.00', '1.00', '38', '20000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', '0.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('22', '2', null, null, '20', '5', '2', '微拍贷logo设计', '&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;中文名：微拍贷&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;网站为：p2p网站&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;希望能够出一个好的作品&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;知识产权说明：&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;1、所设计的作品为原创，为第一次发布，未侵犯他人的著作权，如有侵犯他人著作权，由设计者承担所有法律责任；&lt;/p&gt;&lt;p style=\\\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\\\"&gt;2、中标的设计作品，我方支付设计制作费，即拥有该作品的知识产权，包括著作权,使用权和发布权等,有权对设计作品进行修改,组合和应用。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '40', '2', '4', 'dabomei', '1433906812', '1477106812', '1477193212', '1434185230', '289', '2000.00', '1600.00', null, '2000.00', '0.00', '1', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '19', '3036', '1', '1', '1', '1', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('23', '5', null, null, '10', '10', '2', '昂华公司跟单软件界面设计', '&lt;p&gt;跟单软件Inkever是有关于外汇投资的一款行业软件，供用户跟随交易高手进行投资之用。具体形式为：交易高手在软件上实时发布投资策略，用户可以看到并实时接收策略，还可选择跟随交易高手进行交易。现在征求的是软件UI设计。包括PC端和手机端两个软件。可根据你的擅长选择只设计PC端或手机端，也可两个都选。招标者如认为价格合适，需先提供简单设计样本供我司进行确认（风格是否合适）。谢谢！&lt;/p&gt;', '', null, '132', '3', '3', '暗夜行路', '1434012054', '1442652054', '1442652054', '1434185230', '385', '2000.00', '300.00', '29', '2000.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '23', '4209', '0', '0', '0', '0', '0.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('24', '1', null, null, '10', '10', '2', '大学毕业论文求稿', '&lt;p&gt;;需要一篇毕业论文，关于android移动应用开发，字数要求1.5w字左右&lt;/p&gt;', '', null, '161', '160', '3', '暗夜行路', '1433915184', '1442036784', '1442123184', '1434185230', '324', '100.00', '90.00', null, '100.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '21', '3268', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('25', '2', null, null, '20', '5', '2', '小型电商网站建设可用模板', '&lt;p&gt;任务描述小型生鲜半成品类电商网站，网站界面简单清新有质感，下面有两个参考网站的网址，这两个网站有的基本功能我都需&lt;br/&gt;要，包括微博登陆或手机号注册，放置二维码的地方，关注我的微薄的位置，支付宝或网银支付。结帐页面可选择需不需要发票，有选择收货时间段今日或次日早上&lt;br/&gt;10点到晚上8点，每一个小时一个时间段供选择，晚于下午5点订的次日送达。提示4小时以内送到，订货需提前4小时以上。产品分类为：家常，减肥，养生，&lt;br/&gt;快速，调味品，不爱洗碗？。最好能在后台修改或添加类别。运费五块钱，满X元免运费（这个钱最好能后台修改）。网站需要一个页面支持上传或从优酷转链接过&lt;br/&gt;来播放做菜过程的教程页面。需要一个页面来介绍本公司及产品生产流程，及一些杂碎事情解释，留空间方便网站后台修改及添加。后台最好能显示订单，及每个客&lt;br/&gt;户第几次购买，功能丰富些最好。有优惠卷功能，最好是扫二维码和输入号码让自己帐号获得，然后在支付页面使用。提供如果有我没说到的地方，请借鉴下面两个&lt;br/&gt;网站，网站尽可能多的图片和文字可后台修改。本产品图片暂时没有，所以先请用其他效果图代替，由我来后台替换。&lt;br/&gt;http://www.xinweicook.com/网站风格偏这个新味网，但要不同。;网站建设可用模板，小型网站建设，价格夸张的绕道。谢谢！;开发方向t;全新网站 [电子商务网站];参考网站网站所属行业;电商;是否已准备好网站所需要内;网站所需功能;用户注册，生成用户账号;在线支付;用户可填写表格&lt;br/&gt;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 补充说明：;需要会员中心，订单管理，购物车，支搜索引擎优化（SEO）;需要技能:&lt;/p&gt;', '', null, '35', '2', '3', '暗夜行路', '1433915973', '1477115973', '1477202373', '1434185230', '324', '100.00', '80.00', null, '100.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '21', '3268', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('26', '3', '2', '50.00', '10', '5', '8', '一张web登陆页面和两张APP登陆页面', '&lt;p&gt;界面登陆需求：要有安卓版、苹果版、微信版图标;多语言（中文简体、中文繁体、英文、波兰、越南、土耳其、沙特、挪威、俄罗斯、德国、法国、西班牙、葡萄牙、意大利）图标，如下语言，再增加个繁体图标Banner上的新产品图片做广告，banner图片为一张高档的车辆;4、输入框内容参考附件;&lt;/p&gt;', '', null, '324', '121', '3', '暗夜行路', '1433916226', '1438236226', '1438322626', '1434185230', '37', '100.00', '90.00', null, '100.00', '0.00', '1', '2', '0', '0', '4', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '1', '567', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('27', '3', '1', '100.00', '10', '5', '2', '提供美丽说或者蘑菇街API 开发', '&lt;p&gt;提供美丽说或者蘑菇街API;开发&amp;nbsp;类似淘宝客可以调用出来，可以搜索&lt;/p&gt;', '', null, '161', '160', '5', '骑姐丶', '1433919349', '1438239349', '1438325749', '1434185230', '534', '100.00', '90.00', null, '100.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '34', '0', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('28', '3', '2', '100.00', '10', '5', '2', '结合开源客户端openfire，修改一个开源xmpp服务器端', '&lt;p&gt;&amp;lt;p&amp;gt;结合已经二次开发好的开源服务器端openfire，修改某一个开源XMPP客户端，要求客户端是非JAVA语言编写的，最好是C++或者DELPHI语言编写的，C#也可以。比如pandion，citron，jajc等。&lt;/p&gt;', '', null, '161', '160', '5', '骑姐丶', '1433919422', '1438239422', '1438325822', '1434185230', '534', '200.00', '180.00', null, '200.00', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15907137575', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '34', '0', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('29', '2', null, null, '20', '5', '2', '投票大调查', '&lt;p&gt;投票大调查&lt;/p&gt;&lt;p&gt;根据我们的主题，投票，一票2元&lt;/p&gt;', '25', 'http://develop.kppw.cn/kppw26_1/data/uploads/2015/06/10/4079377635577eb799f7e7.jpg', '197', '192', '3', '暗夜行路', '1433922430', '1477122430', '1477208830', '1434185230', '438', '200.00', '160.00', null, '200.00', '0.00', '2', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '27', '4666', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('30', '1', null, null, '10', '10', '2', '市场大调查', '&lt;p&gt;市场大调查&lt;/p&gt;&lt;p&gt;调查内容是居民日均用水量&lt;/p&gt;', '29', 'http://develop.kppw.cn/kppw26_1/data/uploads/2015/06/10/18964309645577ee1198258.jpg', '193', '192', '3', '暗夜行路', '1433923093', '1442044693', '1442131093', '1434185230', '448', '100.00', '90.00', null, '100.00', '0.00', '1', '0', '0', '0', '0', '0', '0', null, '0.00', '15023625444', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '28', '4773', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('31', '1', null, null, '10', '10', '2', '动漫设计大赛', '&lt;p&gt;根据所给主题谁动漫&lt;br/&gt;&lt;/p&gt;', '', null, '135', '3', '1', 'admin', '1433929092', '1442050692', '1442137092', '1434185230', '310', '100.00', '90.00', null, '100.00', '0.00', '1', '0', '0', '0', '0', '0', '0', null, '0.00', '15023654211', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '20', '3159', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('32', '3', '2', '50.00', '10', '5', '8', '软件应用开发', '&lt;p&gt;软件应用开发&lt;/p&gt;&lt;p&gt;需求：按照文档需求给出合理设计方案，实施程序开发，验收后交付&lt;br/&gt;&lt;/p&gt;', '', null, '325', '121', '1', 'admin', '1433935035', '1438255035', '1438341435', '1434185230', '324', '100.00', '90.00', null, '100.00', '0.00', '5', '2', '0', '0', '4', '0', '0', null, '0.00', '15023625021', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '21', '3268', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('33', '1', null, null, '10', '10', '2', '节能灯宣传软文撰写', '&lt;p&gt;节能灯宣传软文撰写&lt;/p&gt;', '57', 'http://develop.kppw.cn/kppw26_1/data/uploads/2015/06/11/204567264255792e5781b42.jpg', '130', '3', '1', 'admin', '1434005085', '1442126685', '1442213085', '1434185230', 'c', '100.00', '90.00', null, '100.00', '0.00', '2', '1', '0', '0', '0', '0', '0', null, '0.00', '15023698547', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '0', '0', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('34', '12', null, null, '10', null, '9', '网站开发flash', '&lt;p&gt;网站开发flash&lt;/p&gt;', '', null, '169', '2', '1', 'admin', '1434010108', '1438330108', '1434010108', '1434185230', '73', '0.00', '55.00', '49', '55.00', '0.00', '1', '1', '0', '0', '0', '0', '0', null, '0.00', '15023652144', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '3', '1126', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('35', '5', null, '300.00', '10', '10', '8', '数码摄影定金任务', '&lt;p&gt;码摄影定金任务&lt;/p&gt;&lt;p&gt;给我们旅行拍照&lt;br/&gt;&lt;/p&gt;', '', null, '156', '2', '1', 'admin', '1434012049', '1442652049', '1442652049', '1434185230', '73', '2000.00', '300.00', '29', '2000.00', '0.00', '1', '1', '0', '0', '2', '0', '0', null, '0.00', '15023652144', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '3', '1126', '0', '0', '0', '0', '0.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('36', '5', null, '200.00', '10', '10', '8', '程序功能开发', '&lt;p&gt;程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发程序功能开发&lt;/p&gt;', '', null, '325', '121', '1', 'admin', '1434012391', '1442652391', '1442652391', '1434185230', '73', '1000.00', '300.00', '0', '1000.00', '0.00', '1', '1', '0', '0', '2', '0', '0', null, '0.00', '15023652144', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, 'b:0;', '0', null, null, null, '3', '1126', '0', '0', '0', '0', '1000.00', '0', null);
INSERT INTO `keke_witkey_task` VALUES ('37', '3', '100', '1.00', '10', '5', '2', 'flash制作', '&lt;p&gt;flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作flash制作&lt;/p&gt;', '', null, '161', '160', '1', 'admin', '1434013738', '1438333738', '1438420138', null, '73', '100.00', '90.00', null, '100.00', '0.00', '2', '0', '0', '0', '0', '0', '0', null, '0.00', '15023652144', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '3', '1126', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('38', '1', null, null, '10', '10', '2', '字体设计，喜帖字体设计', '&lt;p&gt;字体设计，喜帖字体设计&lt;/p&gt;', '', null, '325', '121', '1', 'admin', '1434014320', '1442135920', '1442222320', null, '73', '0.01', '0.01', null, '0.01', '0.00', '0', '0', '0', '0', '0', '0', '0', null, '0.00', '15023652144', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '3', '1126', '0', '0', '0', '0', null, '0', null);
INSERT INTO `keke_witkey_task` VALUES ('39', '3', '100', '1.00', '10', '5', '8', '网站开发征集', '&lt;p&gt;网站开发征集&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', null, '169', '2', '1', 'admin', '1434015539', '1438335539', '1438421939', null, '73', '100.00', '90.00', null, '100.00', '0.00', '7', '2', '0', '0', '4', '0', '0', null, '0.00', '15023652144', null, null, null, '0', null, '0', null, '0', null, '0', '0', null, null, '0', null, null, null, '3', '1126', '0', '0', '0', '0', null, '0', null);

-- ----------------------------
-- Table structure for keke_witkey_task_bid
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_bid`;
CREATE TABLE `keke_witkey_task_bid` (
  `bid_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投标编号',
  `task_id` int(11) DEFAULT '0' COMMENT '任务编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `quote` decimal(8,2) DEFAULT '0.00' COMMENT '投标报价',
  `cycle` int(11) DEFAULT NULL COMMENT '投标周期',
  `area` varchar(50) DEFAULT NULL COMMENT '投标地区',
  `message` text COMMENT '投标备注',
  `bid_status` int(11) DEFAULT '0' COMMENT '投标状态',
  `bid_time` int(11) DEFAULT '0' COMMENT '投标时间',
  `hidden_status` int(11) DEFAULT NULL COMMENT '隐藏状态',
  `ext_status` int(11) DEFAULT NULL COMMENT '扩展状态',
  `comment_num` int(11) DEFAULT '0' COMMENT '留言次数',
  `is_view` tinyint(1) DEFAULT '0' COMMENT '是否查看',
  `hasdel` tinyint(4) unsigned NOT NULL COMMENT '用户中心我的稿件删除后的状态，如果删除状态为1,默认为0,当状态为1的时候 不在我的稿件中显示。',
  `workhide` int(11) DEFAULT '0' COMMENT '是否隐藏',
  `work_hidden` int(11) DEFAULT '0' COMMENT '是否只对雇主可见 0-默认 1-是',
  PRIMARY KEY (`bid_id`),
  KEY `index_2` (`task_id`),
  KEY `index_3` (`uid`),
  KEY `index_4` (`bid_status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_bid
-- ----------------------------
INSERT INTO `keke_witkey_task_bid` VALUES ('1', '35', '2', '烂苹果丶', '300.00', '10', '香港,中西区,', '数码摄影定金任务数码摄影定金任务数码摄影定金任务数码摄影定金任务', '4', '1434012117', null, null, '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_bid` VALUES ('2', '36', '2', '烂苹果丶', '200.00', '2', '香港,中西区,', '的撒旦撒发的房贷首付斯蒂芬森的', '4', '1434012421', null, null, '0', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for keke_witkey_task_cash_cove
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_cash_cove`;
CREATE TABLE `keke_witkey_task_cash_cove` (
  `cash_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务价格区间编号',
  `start_cove` float(10,0) DEFAULT NULL COMMENT '开始区间',
  `end_cove` float(10,0) DEFAULT NULL COMMENT '结束区间',
  `cove_desc` varchar(250) DEFAULT NULL COMMENT '区间描述',
  `on_time` int(11) DEFAULT NULL COMMENT '当前时间',
  `model_code` char(20) DEFAULT NULL COMMENT '模型代码',
  PRIMARY KEY (`cash_rule_id`),
  KEY `cash_rule_id` (`cash_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_cash_cove
-- ----------------------------
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('34', '1', '1000', '1.00元-1000.00元', '1364809796', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('29', '1000', '2000', '1000.00元-2000.00元', '1335433861', 'dtender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('35', '1000', '3000', '1000.00元-3000.00元', '1335433911', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('30', '2000', '5000', '2000.00元-5000.00元', '1335433868', 'dtender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('31', '5000', '10000', '5000.00元-10000.00元', '1335433874', 'dtender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('32', '10000', '20000', '10000.00元-20000.00元', '1361777385', 'dtender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('49', '1', '1000', '1.00元-1000.00元', '1373009791', 'match');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('36', '3000', '6000', '3000.00元-6000.00元', '1335433916', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('37', '6000', '10000', '6000.00元-10000.00元', '1364794823', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('38', '10000', '20000', '10000.00元-20000.00元', '1335433927', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('39', '20000', '30000', '20000.00元-30000.00元', '1335433933', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('40', '30000', '50000', '30000.00元-50000.00元', '1337765520', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('41', '100', '1000', '100.00元-1000.00元', '1364613461', 'dtender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('42', '30000', '40000', '30000.00元-40000.00元', '1354850418', 'dtender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('43', '50000', '60000', '50000.00元-60000.00元', '1354850436', 'tender');
INSERT INTO `keke_witkey_task_cash_cove` VALUES ('50', '40000', '50000', '40000.00元-50000.00元', '1397731932', 'dtender');

-- ----------------------------
-- Table structure for keke_witkey_task_delay
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_delay`;
CREATE TABLE `keke_witkey_task_delay` (
  `delay_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '延期编号',
  `task_id` int(11) DEFAULT NULL COMMENT '任务编号',
  `delay_cash` decimal(10,2) DEFAULT '0.00' COMMENT '延期金额',
  `delay_day` int(10) DEFAULT NULL COMMENT '延期天数',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `on_time` int(11) DEFAULT NULL COMMENT '当前时间',
  `delay_status` int(11) DEFAULT '0' COMMENT '延期状态',
  PRIMARY KEY (`delay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_delay
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_task_delay_rule
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_delay_rule`;
CREATE TABLE `keke_witkey_task_delay_rule` (
  `defer_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `defer_times` int(11) DEFAULT '0' COMMENT '延期次数',
  `defer_rate` float(11,2) DEFAULT '0.00' COMMENT '延期费用比例',
  `model_id` int(11) DEFAULT NULL COMMENT '模型编号',
  PRIMARY KEY (`defer_rule_id`),
  KEY `index_2` (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_delay_rule
-- ----------------------------
INSERT INTO `keke_witkey_task_delay_rule` VALUES ('36', '3', '2.00', '3');
INSERT INTO `keke_witkey_task_delay_rule` VALUES ('38', '2', '10.00', '3');
INSERT INTO `keke_witkey_task_delay_rule` VALUES ('35', '3', '5.00', '2');
INSERT INTO `keke_witkey_task_delay_rule` VALUES ('37', '1', '20.00', '3');
INSERT INTO `keke_witkey_task_delay_rule` VALUES ('29', '1', '10.00', '2');
INSERT INTO `keke_witkey_task_delay_rule` VALUES ('19', '2', '20.00', '2');

-- ----------------------------
-- Table structure for keke_witkey_task_frost
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_frost`;
CREATE TABLE `keke_witkey_task_frost` (
  `frost_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '冻结编号',
  `frost_status` int(11) DEFAULT '0' COMMENT '冻结前状态',
  `task_id` int(11) DEFAULT '0' COMMENT '任务编号',
  `frost_time` int(11) DEFAULT '0' COMMENT '冻结时间',
  `restore_time` int(11) DEFAULT '0' COMMENT '解冻时间',
  `admin_uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `admin_username` varchar(20) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`frost_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_frost
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_task_plan
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_plan`;
CREATE TABLE `keke_witkey_task_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '计划编号',
  `bid_id` int(11) DEFAULT NULL COMMENT '投标编号',
  `task_id` int(11) DEFAULT NULL COMMENT '任务编号',
  `plan_title` varchar(150) DEFAULT NULL COMMENT '计划标题',
  `plan_desc` text COMMENT '计划描述',
  `plan_step` tinyint(4) DEFAULT NULL COMMENT '计划步骤',
  `plan_amount` decimal(10,2) DEFAULT '0.00' COMMENT '计划金额',
  `plan_status` char(10) DEFAULT NULL COMMENT '计划状态',
  `start_time` int(10) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(10) DEFAULT NULL COMMENT '结束时间',
  `over_time` int(11) DEFAULT NULL COMMENT '关闭时间',
  PRIMARY KEY (`plan_id`),
  UNIQUE KEY `plan_id` (`plan_id`),
  KEY `task_id` (`task_id`),
  KEY `bid_id` (`bid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_plan
-- ----------------------------
INSERT INTO `keke_witkey_task_plan` VALUES ('1', '1', '35', '房贷首付第三方的所发生的', '', '1', '300.00', '2', '1433952000', '1435161600', '1434015770');
INSERT INTO `keke_witkey_task_plan` VALUES ('2', '2', '36', '的撒发斯蒂芬森的', '', '1', '200.00', '2', '1433952000', '1434729600', '1434016055');

-- ----------------------------
-- Table structure for keke_witkey_task_prize
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_prize`;
CREATE TABLE `keke_witkey_task_prize` (
  `prize_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '奖项编号',
  `task_id` int(11) DEFAULT NULL COMMENT '任务编号',
  `prize` int(11) DEFAULT NULL COMMENT '奖项名次',
  `prize_count` int(11) DEFAULT NULL COMMENT '奖项个数',
  `prize_cash` decimal(10,2) DEFAULT '0.00' COMMENT '奖金金额',
  PRIMARY KEY (`prize_id`),
  KEY `task_id` (`task_id`),
  KEY `prize_id` (`prize_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_prize
-- ----------------------------
INSERT INTO `keke_witkey_task_prize` VALUES ('1', '10', '1', '1', '2000.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('2', '10', '2', '3', '1000.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('3', '11', '1', '1', '100.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('4', '12', '1', '1', '600.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('5', '15', '1', '1', '600.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('6', '15', '2', '2', '200.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('7', '17', '1', '1', '1200.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('8', '19', '1', '2', '100.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('9', '22', '1', '1', '2000.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('10', '25', '1', '1', '100.00');
INSERT INTO `keke_witkey_task_prize` VALUES ('11', '29', '1', '1', '200.00');

-- ----------------------------
-- Table structure for keke_witkey_task_template
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_template`;
CREATE TABLE `keke_witkey_task_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(200) DEFAULT '' COMMENT '模板名称',
  `template_title` varchar(200) DEFAULT '' COMMENT '模板标题',
  `template_content` text COMMENT '模板内容',
  `on_time` int(11) DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_template
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_task_time_rule
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_time_rule`;
CREATE TABLE `keke_witkey_task_time_rule` (
  `day_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `rule_cash` float(10,2) DEFAULT '0.00' COMMENT '规则金额',
  `rule_day` int(11) DEFAULT '0' COMMENT '规则天数',
  `model_id` int(11) DEFAULT NULL COMMENT '模型编号',
  PRIMARY KEY (`day_rule_id`),
  KEY `index_2` (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1368 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_time_rule
-- ----------------------------
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1361', '100.00', '7', '1');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1318', '100.00', '10', '9');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1358', '100.00', '100', '3');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1360', '200.00', '1000', '3');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1319', '500.00', '20', '9');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1320', '2000.00', '30', '9');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1321', '4000.00', '40', '9');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1323', '2000.00', '10', '8');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1324', '3000.00', '20', '8');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1325', '4000.00', '30', '8');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1328', '7000.00', '50', '9');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1329', '10000.00', '60', '9');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1332', '1000.00', '5', '8');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1340', '100.00', '5', '10');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1363', '100.00', '1000', '2');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1341', '500.00', '10', '10');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1342', '1000.00', '15', '10');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1364', '150.00', '15', '1');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1365', '20.00', '10', '16');
INSERT INTO `keke_witkey_task_time_rule` VALUES ('1367', '50.00', '20', '16');

-- ----------------------------
-- Table structure for keke_witkey_task_work
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_task_work`;
CREATE TABLE `keke_witkey_task_work` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '稿件编号',
  `task_id` int(11) DEFAULT '0' COMMENT '任务编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` char(50) DEFAULT NULL COMMENT '用户名',
  `work_title` varchar(100) DEFAULT NULL COMMENT '稿件标题',
  `work_price` decimal(10,3) DEFAULT '0.000' COMMENT '稿件单价',
  `work_desc` text COMMENT '稿件描述',
  `work_file` varchar(100) DEFAULT NULL COMMENT '稿件附件',
  `work_pic` text COMMENT '稿件图片',
  `work_time` int(11) DEFAULT '0' COMMENT '交稿时间',
  `hide_work` int(11) DEFAULT NULL COMMENT '稿件隐藏',
  `vote_num` int(11) unsigned DEFAULT '0' COMMENT '投票次数',
  `comment_num` int(11) DEFAULT '0' COMMENT '留言次数',
  `work_status` int(11) DEFAULT '0' COMMENT '稿件状态',
  `is_view` tinyint(1) DEFAULT '0' COMMENT '是否查看',
  `hasdel` tinyint(4) unsigned NOT NULL COMMENT '用户中心我的稿件删除后的状态，如果删除状态为1,默认为0,当状态为1的时候 不在我的稿件中显示。',
  `workhide` int(11) DEFAULT '0' COMMENT '是否隐藏',
  `hasyj` int(11) DEFAULT '1' COMMENT '是否议价过 1-否，2-是',
  `yjje` int(11) DEFAULT '0' COMMENT '议价金额',
  `yjtime` int(11) DEFAULT '0' COMMENT '提出议价的时间',
  `work_hidden` int(11) DEFAULT '0' COMMENT '是否只对雇主可见 0-否 1-是',
  PRIMARY KEY (`work_id`),
  KEY `task_id` (`task_id`),
  KEY `uid` (`uid`),
  KEY `work_status` (`work_status`),
  KEY `work_time` (`work_time`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_task_work
-- ----------------------------
INSERT INTO `keke_witkey_task_work` VALUES ('1', '1', '3', '暗夜行路', '婚纱摄影网站，有原型，有HTML，套后台的稿件', '0.000', '&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;详细需求见压缩包，内含原型文件和需求文档，HTML已经做好，套个后台就行，接单后索要HTML文件。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;程序不限，PHP语言，工期5-7天，内容展示页需加个点击弹出层浏览照片的JS。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;请详细阅读文档后结单，不要浪费大家时间。 &lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', null, null, '1433916910', null, '0', '0', '4', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('2', '2', '3', '暗夜行路', 'destoon程序做的网站，解决占用CPU高的稿件', '0.000', '&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;详细需求见压缩包，内含原型文件和需求文档，HTML已经做好，套个后台就行，接单后索要HTML文件。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;程序不限，PHP语言，工期5-7天，内容展示页需加个点击弹出层浏览照片的JS。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;请详细阅读文档后结单，不要浪费大家时间。&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; white-space: normal; box-sizing: border-box; background-color: rgb(255, 255, 255);\"/&gt;&lt;span style=\"color: rgb(51, 51, 51); line-height: 20px; font-family: &quot;Microsoft Yahei&quot;, &quot;simsun Arial&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\"&gt;做完后传到技术自己的测试空间上供测试，客户测试满意无BUG后付款。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', null, null, '1433917067', null, '0', '0', '4', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('3', '13', '2', '烂苹果丶', '模仿国外网站 建立服装推广网站', '0.000', '&lt;p&gt;我要交稿啦，我要交稿啦，我要交稿啦，我要交稿啦，&lt;/p&gt;', null, null, '1433917425', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('4', '13', '6', '兰陵王', '模仿国外网站 建立服装推广网站', '0.000', '&lt;p&gt;我来交稿，旋窝旋窝&lt;br/&gt;&lt;/p&gt;', null, null, '1433917484', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('5', '11', '9', '赵默笙', '5000元开发微信大屏系统', '0.000', '&lt;p&gt;来吧来吧，相约98&lt;br/&gt;&lt;/p&gt;', null, null, '1433918339', null, '0', '0', '1', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('6', '26', '5', '骑姐丶', '一张web登陆页面和两张APP登陆页面', '0.000', '&lt;p&gt;辅导费第三方的手范德萨&lt;br/&gt;&lt;/p&gt;', null, null, '1433918872', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('7', '26', '5', '骑姐丶', '一张web登陆页面和两张APP登陆页面', '0.000', '&lt;p&gt;似懂非懂发送到佛挡杀佛斯蒂芬&lt;br/&gt;&lt;/p&gt;', null, null, '1433919167', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('8', '32', '6', '兰陵王', '软件应用开发', '0.000', '&lt;p&gt;我来交稿啦，啦啦啦啦啦啦啦啦&lt;/p&gt;', null, null, '1433935307', null, '0', '0', '8', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('9', '32', '3', '暗夜行路', '软件应用开发', '0.000', '&lt;p&gt;分打算打算范德萨范德萨范德萨范德萨范德萨&lt;/p&gt;', null, null, '1433935665', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('10', '5', '1', 'admin', '需要通过货运单号采集当月客户信息的软件的稿件', '0.000', '&lt;p&gt;的的范德萨范德萨发的所说的&lt;br/&gt;&lt;/p&gt;', null, null, '1433991783', null, '0', '0', '4', '1', '0', '1', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('11', '33', '2', '烂苹果丶', '节能灯宣传软文撰写的稿件', '0.000', '&lt;p&gt;法国梵蒂冈梵蒂冈梵蒂冈豆腐干地方&lt;/p&gt;', '59', 'http://develop.kppw.cn/kppw26_1/data/uploads/2015/06/11/119696692155792f4e52664.png', '1434005329', null, '0', '0', '0', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('12', '34', '3', '暗夜行路', '网站开发flash', '0.000', '规范法国发放单刚梵蒂冈地方鬼地方', '', null, '1434010591', null, '0', '0', '4', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('13', '39', '3', '暗夜行路', '网站开发征集', '0.000', '&lt;p&gt;发的说法但是范德萨发生&lt;/p&gt;', null, null, '1434015849', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `keke_witkey_task_work` VALUES ('14', '39', '6', '兰陵王', '网站开发征集', '0.000', '&lt;p&gt;的撒旦发但是范德萨发生&lt;/p&gt;', null, null, '1434016039', null, '0', '0', '6', '1', '0', '0', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for keke_witkey_vote
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_vote`;
CREATE TABLE `keke_witkey_vote` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投票编号',
  `task_id` int(11) DEFAULT NULL COMMENT '任务编号',
  `work_id` int(11) DEFAULT '0' COMMENT '稿件编号',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `vote_ip` varchar(50) DEFAULT '0' COMMENT '投票IP',
  `vote_time` int(11) DEFAULT '0' COMMENT '投票时间',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_vote
-- ----------------------------

-- ----------------------------
-- Table structure for keke_witkey_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `keke_witkey_withdraw`;
CREATE TABLE `keke_witkey_withdraw` (
  `withdraw_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提现编号',
  `withdraw_cash` decimal(10,2) DEFAULT '0.00' COMMENT '提现金额',
  `uid` int(11) DEFAULT '0' COMMENT '提现用户编号',
  `username` varchar(50) DEFAULT NULL COMMENT '提现用户名',
  `pay_username` char(20) DEFAULT NULL COMMENT '收款账户人名',
  `withdraw_status` int(11) DEFAULT '0' COMMENT '提现状态',
  `applic_time` int(11) DEFAULT '0' COMMENT '申请时间',
  `process_uid` int(11) DEFAULT '0' COMMENT '受理人编号',
  `process_username` varchar(50) DEFAULT NULL COMMENT '受理人用户名',
  `process_time` int(11) DEFAULT '0' COMMENT '受理时间',
  `pay_account` varchar(100) DEFAULT NULL COMMENT '提现账号',
  `pay_type` char(20) DEFAULT '0' COMMENT '提现类型',
  `fee` decimal(10,2) DEFAULT '0.00' COMMENT '提现手续费',
  PRIMARY KEY (`withdraw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keke_witkey_withdraw
-- ----------------------------
INSERT INTO `keke_witkey_withdraw` VALUES ('1', '100.00', '1', 'admin', '好好', '3', '1433987174', '1', 'admin', '1433987212', '18025121111', 'alipayjs', '0.00');
