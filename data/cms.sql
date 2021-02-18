-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2011 年 12 月 13 日 05:11
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `cms`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_adver`
-- 

CREATE TABLE `cms_adver` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `thumbnail` varchar(100) NOT NULL COMMENT '//图片',
  `link` varchar(100) NOT NULL COMMENT '//链接',
  `info` varchar(200) NOT NULL COMMENT '//描述',
  `type` tinyint(1) NOT NULL default '0' COMMENT '//类型',
  `state` tinyint(1) NOT NULL default '0' COMMENT '//是否前台广告',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- 
-- 导出表中的数据 `cms_adver`
-- 

INSERT INTO `cms_adver` VALUES (13, '腾讯开始进军网游市场', '', 'http://www.qq.com', '腾讯开始进军网游市场', 1, 1, '2011-08-21 22:00:03');
INSERT INTO `cms_adver` VALUES (14, '新浪微博开始大量招聘', '', 'http://www.weibo.com', '新浪微博开始大量招聘', 1, 1, '2011-08-21 22:00:37');
INSERT INTO `cms_adver` VALUES (15, '瓢城Web俱乐部开始PHP教程', '', 'http://www.yc60.com', '瓢城Web俱乐部开始PHP教程', 1, 1, '2011-08-21 22:00:49');
INSERT INTO `cms_adver` VALUES (16, '网易开始代理魔兽世界', '', 'http://www.163.com', '网易开始代理魔兽世界', 1, 1, '2011-08-21 22:01:04');
INSERT INTO `cms_adver` VALUES (17, '水润BB霜，买一赠一', '/CMS9.8/uploads/20110821/20110821220119177.png', 'http://www.taobao.com', '水润BB霜，买一赠一', 2, 1, '2011-08-21 22:01:25');
INSERT INTO `cms_adver` VALUES (18, '生活家买一送三', '/CMS9.8/uploads/20110821/20110821220130319.png', 'http://www.tmall.com', '生活家买一送三', 2, 1, '2011-08-21 22:01:43');
INSERT INTO `cms_adver` VALUES (19, '暑假人气网游推荐', '/CMS9.8/uploads/20110821/20110821220150378.png', 'http://www.163.com', '暑假人气网游推荐', 2, 1, '2011-08-21 22:02:02');
INSERT INTO `cms_adver` VALUES (20, '爱制造旗舰店', '/CMS9.8/uploads/20110821/20110821220209387.png', 'http://www.360.cn', '爱制造旗舰店', 3, 1, '2011-08-21 22:02:23');
INSERT INTO `cms_adver` VALUES (21, 'M绅士全场3折', '/CMS9.8/uploads/20110821/20110821220231540.png', 'http://www.tmall.com', 'M绅士全场3折', 3, 1, '2011-08-21 22:02:44');
INSERT INTO `cms_adver` VALUES (22, '车优惠伴我行', '/CMS9.8/uploads/20110821/20110821220251713.png', 'http://www.yc60.com', '车优惠伴我行', 3, 1, '2011-08-21 22:03:06');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_comment`
-- 

CREATE TABLE `cms_comment` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//id',
  `user` varchar(20) NOT NULL COMMENT '//评论者',
  `content` varchar(255) NOT NULL COMMENT '//内容',
  `state` tinyint(1) NOT NULL default '0' COMMENT '//状态',
  `manner` tinyint(1) NOT NULL COMMENT '//态度',
  `cid` mediumint(8) unsigned NOT NULL COMMENT '//文档id',
  `sustain` smallint(6) unsigned NOT NULL COMMENT '//支持率',
  `oppose` smallint(6) unsigned NOT NULL COMMENT '//反对率',
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

-- 
-- 导出表中的数据 `cms_comment`
-- 

INSERT INTO `cms_comment` VALUES (21, '游客', '我一个女性朋友，刚参加工作不久，为了买个苹果手机，现在弄的房租都交不起了，上海房租便宜的都是每人1000多一月，她找我来借钱，我就晕了，我跟她说了现在收入远跟不上支出，她依然盲目消费，典型的月光族，还要负债消费，值得这样吗？', 1, 0, 23, 0, 0, '2011-08-05 20:43:40');
INSERT INTO `cms_comment` VALUES (22, '蜡笔小新', '不要四五千，不要两三千，只要999元！！！如果你在30分钟内打进电话的话，还可以免费获赠价值50万元的手机套一个！你还在犹豫什么！马上拿起电话吧！对不起，稍等一下，喂，杨总啊，什么！只剩下30部了！您听见了吧！订购异常火爆，买到等于赚到，抓紧时间订购吧！', 1, 1, 23, 11, 5, '2011-08-05 20:44:22');
INSERT INTO `cms_comment` VALUES (23, '黑崎一护', '宝马奔驰只是税高而已，还有一点苹果手机全是国产组装，就在家门口做出来的手机却要花最贵去买这手机。', 1, -1, 23, 2, 0, '2011-08-05 20:44:56');
INSERT INTO `cms_comment` VALUES (24, '黑崎一护', '早应该退出了，推出时间太慢了，我98年有各人电脑，用金山10年后开始用360，因为360免费，方便。其实最好是别捆绑，但是给用户方便是最佳的，捆绑产品给我感觉不舒服，360现在捆绑了很多东西，不舒服。我要用什么产品，我要能自己做主，还要方便使用，我就用。', 1, 0, 23, 0, 0, '2011-08-05 20:45:25');
INSERT INTO `cms_comment` VALUES (26, '游客', '我是做电脑IT的 客观来说360对于维护系统安全方面确实比别的软件做的很好 而且很贴切 非常多的功能 而且使用 （当然只是我的观点，因为很多人不懂的系统维护 但是360提供了免费而且安全的服务 我是表示欢迎的） 当然我也希望其他软件能借鉴360的模式 能够做得更好 我会试用看看的，希望良性竞争！', 1, 0, 23, 3, 1, '2011-08-05 20:47:45');
INSERT INTO `cms_comment` VALUES (35, '游客', '我不是很看好这款平板电脑', 1, 0, 35, 0, 0, '2011-08-07 22:31:19');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_content`
-- 

CREATE TABLE `cms_content` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `title` varchar(50) NOT NULL COMMENT '//标题',
  `nav` mediumint(8) unsigned NOT NULL COMMENT '//栏目号',
  `attr` varchar(20) NOT NULL COMMENT '//属性',
  `tag` varchar(30) NOT NULL COMMENT '//标签',
  `keyword` varchar(30) NOT NULL COMMENT '//关键字',
  `thumbnail` varchar(100) NOT NULL COMMENT '//缩略图',
  `source` varchar(20) NOT NULL COMMENT '//文章来源',
  `author` varchar(10) NOT NULL COMMENT '//作者',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `content` text NOT NULL COMMENT '//详细内容',
  `commend` tinyint(1) NOT NULL default '1' COMMENT '//是否允许评论',
  `count` smallint(6) NOT NULL default '0' COMMENT '//浏览次数',
  `gold` smallint(6) NOT NULL default '0' COMMENT '//消费金币',
  `sort` tinyint(1) NOT NULL default '0' COMMENT '//排序',
  `readlimit` tinyint(1) NOT NULL default '0' COMMENT '//阅读权限',
  `color` varchar(20) NOT NULL COMMENT '//颜色',
  `date` datetime NOT NULL COMMENT '//发布时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

-- 
-- 导出表中的数据 `cms_content`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `cms_level`
-- 

CREATE TABLE `cms_level` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `level_name` varchar(20) NOT NULL COMMENT '//等级名称',
  `level_info` varchar(200) NOT NULL COMMENT '//等级说明',
  `premission` varchar(100) NOT NULL COMMENT '//权限',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- 导出表中的数据 `cms_level`
-- 

INSERT INTO `cms_level` VALUES (1, '普通管理员', '除了不能操作别的管理员，其他任何后台功能都可以操作。', '1,14');
INSERT INTO `cms_level` VALUES (2, '超级管理员', '最大的权限，如果只有一个超级管理员的时候，不能删除自己。', '1,2,3,4,5,6,7,8,9,10,11,12,13,14');
INSERT INTO `cms_level` VALUES (3, '发帖专员', '可以发表文章及修改和删除文章的权限。', '1,7');
INSERT INTO `cms_level` VALUES (21, '评论专员', '用于操作用户评论的权限~', '1,8');
INSERT INTO `cms_level` VALUES (5, '会员专员', '只有管理会员的权限，包括新增、删除、修改和查询。', '');
INSERT INTO `cms_level` VALUES (13, '后台游客', '只能访问后台的权限！', '1');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_link`
-- 

CREATE TABLE `cms_link` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `webname` varchar(20) NOT NULL COMMENT '//网站名称',
  `weburl` varchar(100) NOT NULL COMMENT '//网站地址',
  `logourl` varchar(100) NOT NULL COMMENT '//logo地址',
  `user` varchar(20) NOT NULL COMMENT '//站长名',
  `type` tinyint(1) NOT NULL default '0' COMMENT '//类型',
  `state` tinyint(1) NOT NULL default '0' COMMENT '//状态',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `cms_link`
-- 

INSERT INTO `cms_link` VALUES (1, '网易新闻', 'http://news.163.com', '', '丁磊', 1, 1, '2011-09-01 16:51:57');
INSERT INTO `cms_link` VALUES (2, '优酷视频', 'http://www.youku.com', 'images/youku.png', '古永锵', 2, 1, '2011-09-01 16:52:48');
INSERT INTO `cms_link` VALUES (3, '百度搜索', 'http://www.baidu.com', '', '李彦宏', 1, 1, '2011-09-01 21:20:58');
INSERT INTO `cms_link` VALUES (6, '网易', 'http://www.163.com', 'images/163.png', '丁磊', 2, 1, '2011-09-02 13:33:16');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_manage`
-- 

CREATE TABLE `cms_manage` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `admin_user` varchar(20) NOT NULL COMMENT '//管理员账号',
  `admin_pass` char(40) NOT NULL COMMENT '//管理员密码',
  `level` tinyint(1) unsigned NOT NULL default '1' COMMENT '//管理员等级',
  `login_count` smallint(5) NOT NULL default '0' COMMENT '//登录次数',
  `last_ip` varchar(20) NOT NULL default '000.000.000.000' COMMENT '//最后一次IP',
  `last_time` datetime NOT NULL COMMENT '//最后一次登录时间',
  `reg_time` datetime NOT NULL COMMENT '//注册时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

-- 
-- 导出表中的数据 `cms_manage`
-- 

INSERT INTO `cms_manage` VALUES (2, '李炎恢', '7c4a8d09ca3762af61e59520943dc26494f8941b', 21, 3, '127.0.0.1', '2011-06-20 11:16:40', '2011-05-18 19:09:52');
INSERT INTO `cms_manage` VALUES (3, '我叫MT', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 2, '127.0.0.1', '2011-09-14 21:29:48', '2011-05-18 19:10:07');
INSERT INTO `cms_manage` VALUES (4, '樱木花道', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 0, '000.000.000.000', '0000-00-00 00:00:00', '2011-05-19 17:04:41');
INSERT INTO `cms_manage` VALUES (5, '赤木晴子', '7c4a8d09ca3762af61e59520943dc26494f8941b', 13, 3, '127.0.0.1', '2011-09-10 22:41:38', '2011-05-19 17:04:57');
INSERT INTO `cms_manage` VALUES (6, '樱桃小丸子', '7c4a8d09ca3762af61e59520943dc26494f8941b', 21, 1, '127.0.0.1', '2011-09-10 22:47:54', '2011-05-20 15:50:08');
INSERT INTO `cms_manage` VALUES (56, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 176, '127.0.0.1', '2011-11-07 20:46:34', '2011-06-20 11:17:03');
INSERT INTO `cms_manage` VALUES (8, '流川枫', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, 1, '127.0.0.1', '2011-09-14 19:53:14', '2011-05-20 15:52:06');
INSERT INTO `cms_manage` VALUES (53, '蜡笔小新', '7c4a8d09ca3762af61e59520943dc26494f8941b', 13, 1, '127.0.0.1', '2011-09-14 20:46:05', '2011-06-18 21:12:42');
INSERT INTO `cms_manage` VALUES (69, 'Lee', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 0, '000.000.000.000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cms_manage` VALUES (68, 'Lee', '', 1, 0, '000.000.000.000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cms_manage` VALUES (67, 'Lee', '', 1, 0, '000.000.000.000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cms_manage` VALUES (70, 'Lee', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 0, '000.000.000.000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_nav`
-- 

CREATE TABLE `cms_nav` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `nav_name` varchar(20) NOT NULL COMMENT '//导航名',
  `nav_info` varchar(200) NOT NULL COMMENT '//导航说明',
  `pid` mediumint(8) unsigned NOT NULL default '0' COMMENT '//子分类',
  `sort` mediumint(8) unsigned NOT NULL COMMENT '//排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- 导出表中的数据 `cms_nav`
-- 

INSERT INTO `cms_nav` VALUES (1, '军事动态', '主要是军事方面的新闻。', 0, 1);
INSERT INTO `cms_nav` VALUES (2, '八卦娱乐', '娱乐界的狗仔新闻集。', 0, 2);
INSERT INTO `cms_nav` VALUES (3, '时尚女人', '关于时尚和女人方面的信息。', 0, 3);
INSERT INTO `cms_nav` VALUES (4, '科技频道', '关于科技方面的资讯。', 0, 4);
INSERT INTO `cms_nav` VALUES (5, '智能手机', '关于智能手机方面的推荐。', 0, 5);
INSERT INTO `cms_nav` VALUES (7, '美容护肤', '关于美容方面的信息。', 0, 7);
INSERT INTO `cms_nav` VALUES (8, '热门汽车', '关于汽车方面的信息。', 0, 8);
INSERT INTO `cms_nav` VALUES (9, '房产家居', '关于房产家居的信息。', 0, 9);
INSERT INTO `cms_nav` VALUES (10, '读书教育', '关于教育方面的信息。', 0, 10);
INSERT INTO `cms_nav` VALUES (11, '股票基金', '关于股票基金的信息。', 0, 11);
INSERT INTO `cms_nav` VALUES (26, '中国军事', '关于中国军事的信息。', 1, 3);
INSERT INTO `cms_nav` VALUES (27, '美国军事', '关于美国军事的信息。', 1, 1);
INSERT INTO `cms_nav` VALUES (29, '日本军事', '关于日本军事方面的信息。', 1, 2);
INSERT INTO `cms_nav` VALUES (30, '韩国军事', '关于韩国军事的信息。', 1, 4);
INSERT INTO `cms_nav` VALUES (32, '朝鲜军事', '关于朝鲜军事的信息。', 1, 5);
INSERT INTO `cms_nav` VALUES (33, '越南军事', '关于越南军事的信息。', 1, 6);

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_premission`
-- 

CREATE TABLE `cms_premission` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号，标识',
  `name` varchar(100) NOT NULL COMMENT '//权限名称',
  `info` varchar(200) NOT NULL COMMENT '//权限描述',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `cms_premission`
-- 

INSERT INTO `cms_premission` VALUES (1, '后台登录', '后台登录');
INSERT INTO `cms_premission` VALUES (2, '清理缓存', '清理缓存');
INSERT INTO `cms_premission` VALUES (3, '管理员管理', '管理员管理');
INSERT INTO `cms_premission` VALUES (4, '等级管理', '等级管理');
INSERT INTO `cms_premission` VALUES (5, '权限设定', '权限设定');
INSERT INTO `cms_premission` VALUES (6, '网站导航', '网站导航');
INSERT INTO `cms_premission` VALUES (7, '文档操作', '文档操作');
INSERT INTO `cms_premission` VALUES (8, '评论审核', '评论审核');
INSERT INTO `cms_premission` VALUES (9, '轮播器管理', '轮播器管理');
INSERT INTO `cms_premission` VALUES (10, '广告管理', '广告管理');
INSERT INTO `cms_premission` VALUES (11, '投票管理', '投票管理');
INSERT INTO `cms_premission` VALUES (12, '审核友情链接', '审核友情链接');
INSERT INTO `cms_premission` VALUES (13, '会员管理', '会员管理');
INSERT INTO `cms_premission` VALUES (14, '系统配置管理', '系统配置管理');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_rotatain`
-- 

CREATE TABLE `cms_rotatain` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `thumbnail` varchar(100) NOT NULL COMMENT '//图片',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `state` tinyint(1) NOT NULL default '0' COMMENT '//是否在前台轮播',
  `link` varchar(100) NOT NULL COMMENT '//地址',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `cms_rotatain`
-- 

INSERT INTO `cms_rotatain` VALUES (2, '/CMS9.4/uploads/20110818/20110818140206474.png', '苹果或增1家iPad生产商 确保年内推出', '据国外媒体报道，某台湾业内人士透露，苹果可能会在今年秋季新增一家iPad生产商，现在它的iPad生产商只有富士康一家。据说苹果这么做是为了确保生产出足够数量的第三代iPad，以保证在年内推出第三代iPad。富士康的工厂在5月份发生了爆炸事故，造成了3死15伤的悲剧。为了将生产风险降到最低程度，苹果很可能会再找一家iPad代工厂商。', 1, '/CMS9.4/details.php?id=23', '2011-08-18 14:02:10');
INSERT INTO `cms_rotatain` VALUES (3, '/CMS9.4/uploads/20110818/20110818140234683.png', '宏碁10寸平板销量跃居第二 权威调研机构', '近日，权威调研机构DisplaySearch的报告显示，宏碁推出的10.1英寸平板电脑ICONIA TAB A500在全球的出货量已达80万台，居全球10英寸平板电脑市场第二位，仅次于苹果旗下的iPad。', 1, '/CMS9.4/details.php?id=25', '2011-08-18 14:02:58');
INSERT INTO `cms_rotatain` VALUES (4, '/CMS9.4/uploads/20110818/20110818140323167.png', '摩托XOOM2曝光 新XOOM将支持更高', '今年年初，摩托罗拉推出的第一款搭载蜂巢系统的平板电脑XOOM在平板市场投放了一枚重磅炸弹，但可惜的是这款XOOM并不能算作出色的平板电脑。好在摩托并没有作罢，XOOM还没坐热市场，关于它的继任者XOOM 2的传闻已经风生水起了。上周在FCC上，摩托罗拉再次展现了一款配备LTE技术的平板电脑，关于XOOM 2的更多传闻浮出水面。', 1, '/CMS9.4/details.php?id=24', '2011-08-18 14:03:29');
INSERT INTO `cms_rotatain` VALUES (5, '/CMS9.4/uploads/20110818/20110818140355541.png', '设计时尚高效处理 欧恩N5双核平板电脑', '欧恩N5是一款任务处理速度极快的A9双核平板电脑，其影像读取速度是普通平板电脑的1倍左右，并可通过内置的“欧翔引擎”，达到普通设备1.5-2倍的读取播放速度。', 0, '/CMS9.4/details.php?id=26', '2011-08-18 14:04:03');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_system`
-- 

CREATE TABLE `cms_system` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `webname` varchar(100) NOT NULL COMMENT '//网站名称',
  `page_size` tinyint(2) NOT NULL COMMENT '//普通分页条数',
  `article_size` tinyint(2) NOT NULL COMMENT '//文章分页的条数',
  `nav_size` tinyint(2) NOT NULL COMMENT '//主导航前台显示的个数',
  `updir` varchar(100) NOT NULL COMMENT '//上传的主目录',
  `ro_time` tinyint(2) NOT NULL COMMENT '//轮播器的速度',
  `ro_num` tinyint(2) NOT NULL COMMENT '//轮播器的个数',
  `adver_text_num` tinyint(2) NOT NULL COMMENT '//文字广告的个数',
  `adver_pic_num` tinyint(2) NOT NULL COMMENT '//图片广告的个数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `cms_system`
-- 

INSERT INTO `cms_system` VALUES (1, '瓢城Web俱乐部', 10, 8, 10, '/uploads/', 3, 3, 5, 3);

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_tag`
-- 

CREATE TABLE `cms_tag` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `tagname` varchar(20) NOT NULL COMMENT '//标签名',
  `count` smallint(6) unsigned NOT NULL default '1' COMMENT '//访问次数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `cms_tag`
-- 

INSERT INTO `cms_tag` VALUES (3, '平板电脑', 22);
INSERT INTO `cms_tag` VALUES (4, 'ThinkPad', 16);
INSERT INTO `cms_tag` VALUES (5, '双核', 7);
INSERT INTO `cms_tag` VALUES (6, 'XOOM', 10);
INSERT INTO `cms_tag` VALUES (7, 'ipad3', 6);
INSERT INTO `cms_tag` VALUES (8, '苹果', 1);
INSERT INTO `cms_tag` VALUES (9, 'ƽ', 1);
INSERT INTO `cms_tag` VALUES (10, 'ipd3 ', 1);
INSERT INTO `cms_tag` VALUES (11, 'ipd3', 1);
INSERT INTO `cms_tag` VALUES (12, 'Wi-Fi的间谍飞机', 14);
INSERT INTO `cms_tag` VALUES (13, 'Wi-Fi的间谍飞机\\', 1);
INSERT INTO `cms_tag` VALUES (14, 'ƽ', 1);
INSERT INTO `cms_tag` VALUES (15, 'Wi-Fi', 1);
INSERT INTO `cms_tag` VALUES (16, '%E5%B9%B3%E6%9D%BF%E', 1);
INSERT INTO `cms_tag` VALUES (17, 'Wi-Fi%E7%9A%84%E9%97', 1);
INSERT INTO `cms_tag` VALUES (18, 'Wi-Fi%E7%9A%84%E9%97', 1);
INSERT INTO `cms_tag` VALUES (19, '%E5%B9%B3%E6%9D%BF%E', 1);
INSERT INTO `cms_tag` VALUES (20, 'i%B7%FE', 2);
INSERT INTO `cms_tag` VALUES (21, 'iove%B7%FE', 2);
INSERT INTO `cms_tag` VALUES (22, 'iove', 2);
INSERT INTO `cms_tag` VALUES (23, 'iove%E6%9C%8D', 1);
INSERT INTO `cms_tag` VALUES (24, 'iove', 1);
INSERT INTO `cms_tag` VALUES (25, 'iove', 1);
INSERT INTO `cms_tag` VALUES (26, 'i', 1);
INSERT INTO `cms_tag` VALUES (27, 'i', 1);
INSERT INTO `cms_tag` VALUES (28, 'iove', 1);
INSERT INTO `cms_tag` VALUES (29, 'iove', 1);
INSERT INTO `cms_tag` VALUES (30, 'iove', 1);
INSERT INTO `cms_tag` VALUES (31, 'iove', 1);
INSERT INTO `cms_tag` VALUES (32, 'iove', 1);
INSERT INTO `cms_tag` VALUES (33, 'Wi-Fi', 1);
INSERT INTO `cms_tag` VALUES (34, 'i', 1);
INSERT INTO `cms_tag` VALUES (35, 'i', 1);
INSERT INTO `cms_tag` VALUES (36, 'i', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_user`
-- 

CREATE TABLE `cms_user` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//id',
  `user` varchar(20) NOT NULL COMMENT '//用户名',
  `pass` char(40) NOT NULL COMMENT '//密码',
  `email` varchar(30) NOT NULL COMMENT '//电子邮件',
  `face` varchar(10) NOT NULL COMMENT '//头像',
  `question` varchar(20) NOT NULL COMMENT '//提问',
  `answer` varchar(20) NOT NULL COMMENT '//回答',
  `state` tinyint(1) NOT NULL default '1' COMMENT '//会员状态',
  `time` char(10) NOT NULL COMMENT '//最近登录的时间戳',
  `date` datetime NOT NULL COMMENT '//注册时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

-- 
-- 导出表中的数据 `cms_user`
-- 

INSERT INTO `cms_user` VALUES (3, '蜡笔小新', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'labixiaoxin@sina.com.cn', '17.gif', '您母亲的职业？', '家庭主妇', 1, '1315891689', '2011-07-28 18:02:43');
INSERT INTO `cms_user` VALUES (11, '黑崎一护', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'heiqiyihu@sina.com.cn', '08.gif', '您父亲的姓名？', '同行', 1, '1312548280', '2011-07-29 11:14:39');
INSERT INTO `cms_user` VALUES (10, '樱桃小丸子', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'xiaowanzi@sina.com.cn', '22.gif', '您配偶的性别？', '没有啦', 1, '1312727496', '2011-07-29 10:28:20');
INSERT INTO `cms_user` VALUES (19, '葫芦娃', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'huluwa@sina.com.cn', '11.gif', '您父亲的姓名？', '密码', 1, '1312522684', '2011-07-29 18:37:23');
INSERT INTO `cms_user` VALUES (20, '变形金刚', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'bxjg@sina.com.cn', '09.gif', '您母亲的职业？', '同行', 1, '1312522576', '2011-07-29 18:39:06');
INSERT INTO `cms_user` VALUES (21, '路飞', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'lufei@sina.com.cn', '03.gif', '您父亲的姓名？', '路飞飞', 1, '', '2011-07-30 20:03:07');
INSERT INTO `cms_user` VALUES (22, '奈美', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'namei@sina.com.cn', '13.gif', '您母亲的职业？', '同行', 1, '1312521114', '2011-07-31 13:30:52');
INSERT INTO `cms_user` VALUES (24, '圣斗士星矢', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'shengdoushixingshi@sina.com.cn', '14.gif', '您父亲的姓名？', '不知打', 1, '', '2011-08-02 14:45:29');
INSERT INTO `cms_user` VALUES (27, '小叮当', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'xiaodingdang@sina.com', '20.gif', '您母亲的职业？', '大叮当', 1, '1312520726', '2011-08-03 11:16:33');
INSERT INTO `cms_user` VALUES (28, '紫龙', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'zilong@sina.com.cn', '23.gif', '您配偶的性别？', '女', 4, '', '2011-08-04 11:46:35');
INSERT INTO `cms_user` VALUES (29, '冰河', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', '111@sina.com.cn', '03.gif', '您配偶的性别？', '难', 5, '1312429682', '2011-08-04 11:48:02');

-- --------------------------------------------------------

-- 
-- 表的结构 `cms_vote`
-- 

CREATE TABLE `cms_vote` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '//编号',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `vid` mediumint(8) NOT NULL default '0' COMMENT '//是否主题或项目',
  `count` smallint(6) NOT NULL default '0' COMMENT '//投票数',
  `state` tinyint(1) NOT NULL default '0' COMMENT '//是否前台首选',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- 导出表中的数据 `cms_vote`
-- 

INSERT INTO `cms_vote` VALUES (1, '您最喜欢的地方菜是什么？', '您最喜欢的地方菜是什么？', 0, 0, 0, '2011-08-26 14:29:55');
INSERT INTO `cms_vote` VALUES (2, '您最喜欢的旅游地区是哪里？', '您最喜欢的旅游地区是哪里？', 0, 0, 1, '2011-08-26 14:30:11');
INSERT INTO `cms_vote` VALUES (4, '浙江杭州', '浙江杭州', 2, 140, 0, '2011-08-26 14:49:50');
INSERT INTO `cms_vote` VALUES (5, '江苏扬州', '江苏扬州', 2, 193, 0, '2011-08-26 19:21:21');
INSERT INTO `cms_vote` VALUES (15, '江苏苏州', '江苏苏州', 2, 35, 0, '2011-08-26 22:38:46');
INSERT INTO `cms_vote` VALUES (16, '浙江宁波', '浙江宁波', 2, 0, 0, '2011-08-26 22:39:39');
INSERT INTO `cms_vote` VALUES (26, '您最喜欢的男歌手是谁呢？', '您最喜欢的男歌手是谁呢？', 0, 0, 0, '2011-08-26 22:52:06');
INSERT INTO `cms_vote` VALUES (27, '您最喜欢的运动是哪项呢？', '您最喜欢的运动是哪项呢？', 0, 0, 0, '2011-08-26 22:52:22');
