/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : yongshan

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-12-10 10:52:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) DEFAULT NULL COMMENT '反馈内容',
  `tel` varchar(11) DEFAULT NULL COMMENT '反馈者电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('12', '用膳这个软件非常差劲！', '13042325432');

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------
INSERT INTO `tbguestbook` VALUES ('2', '121212', '12112', '121212', '2018-10-14 11:07:12', '1');
INSERT INTO `tbguestbook` VALUES ('3', '121212', '121', '1212121', '2018-10-14 11:21:35', '1');
INSERT INTO `tbguestbook` VALUES ('6', '1212', '1212', '1212', '2018-10-21 13:12:18', '1');

-- ----------------------------
-- Table structure for `tbmember`
-- ----------------------------
DROP TABLE IF EXISTS `tbmember`;
CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL COMMENT '门牌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmember
-- ----------------------------
INSERT INTO `tbmember` VALUES ('3', 'tangyan01', '123456', '汤燕', '15397600032', '重庆巴南区', null);
INSERT INTO `tbmember` VALUES ('4', 'tangyan02', '123456', '汤燕', '15397600032', '重庆巴南区', null);
INSERT INTO `tbmember` VALUES ('5', 'tangyan05', '123456', '汤先生', '15397600032', '成都', null);
INSERT INTO `tbmember` VALUES ('10', 'X的三次方', '123456', '许小祥', '13042322461', '重庆财经学院云篆苑7栋', null);
INSERT INTO `tbmember` VALUES ('12', '123', '123', '123', '123', '重庆财经学院云篆苑7栋', null);
INSERT INTO `tbmember` VALUES ('13', 'yyy', '123', '123', '123', '重庆财经学院云篆苑9栋', null);
INSERT INTO `tbmember` VALUES ('14', 'xxx', '123', '许小祥', '13042223333', '重庆财经学院教学楼', null);

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------
INSERT INTO `tbnews` VALUES ('97', '“三减三健，迈向健康”主题宣传活动于我校举行', '王五', '为营造全民健康生活的良好氛围，进一步向我校师生普及健康文明的生活方式，传授健康生活的技能，2018年9月28日中午，由我校后勤保障处主办、大学生自我管理与服务委员会（以下简称“大自委”）学生后勤服务中心承办的“三减三健，迈向健康”主题宣传活动于我校食堂、教学楼顺利举行。', '2018-10-10', '1', '校团委');
INSERT INTO `tbnews` VALUES ('98', '关于2018年度留学基金委国家公派出国留学项目申报工作的通知', '李四', '2018年国家公派高级研究学者、访问学者、博士后项目、国际区域问题研究机外语高层次人才培养项目录取人员的留学资格保留至2018年12月31日。即当年选拔当年派出；西部地区人才培养特别项目被录取人员的留学资格保留至2019年9月30日（统一安排成班派出项目除外）。请计划申请上述项目的人员提前做好准备，在联系邀请函时，明确派出时间在结果公布日期和留学资格有效期之间。同一时段内仅限申报一个国家攻来出国留学项目，在申报项目未公布录取结果之前，不得申请其他项目。', '2018-10-08', '1', '招生就业处');
INSERT INTO `tbnews` VALUES ('99', '2018级迎新晚会“梦想开始的地方”在学校操场顺利举行', '张三', '向信仰看齐，向梦想致敬，向未来出发。9月28日晚6点半，重庆工商大学融智学院2018年消防文艺巡演暨2018级迎新晚会“梦想开始的地方”在学校操场顺利举行。此次晚会旨在庆祝建国69周年，歌颂改革开放40周年取得的各项成绩，也表达出我校对2018级新生的热烈欢迎。莅临本次晚会的嘉宾有：重庆工商大学融智学院党委丁广龙书记，重庆工商大学融智学院党委陈龙国副书记，党政办公室主任王晓云，教务处处长崔中山，思政部主任常晓薇，图书馆副馆长梁彦博，保卫处副处长欧英前，基础部副主任吕福起，学生处处长唐川川，学生处副处长兼团委书记李刚，商务学院党总支副书记宋湘琴，经济学院党总支副书记乐晓勇，以及物流学院党总支副书记李喆。\r\n此次晚会以“梦想开始的地方”为主题，向18级新生展现了一幅完整的青春画卷。舞蹈《永远的红门》拉开了表演的序幕，重庆消防艺术团的表演者们身着消防服，用灵活的身体和昂扬的斗志表达了对消防战士崇高的敬意和真挚的感谢；“把光荣写在军旗上，战火青春最风流”，男声独唱《当祖国召唤的时候》澎湃了大家的激情，使全场观众热血沸腾；讲述《我们的故事》也深入人心，四周万籁俱寂，有人潸然泪下；除此之外，还有女声独唱《从前慢》，话剧《我们的理想在希望的田野上》，舞蹈《守护》等精彩绝伦的节目。最后，舞蹈《骄傲的少年》将晚会拉向了最后的高潮，晚会也在一片欢声笑语中圆满结束。\r\n以梦为马，不负韶华，我们来自各地，有缘相聚于融智。这里是梦想的新起点。在这新的起跑线上，我们扬帆起航，向着美好未来大步前进。筑梦的路上有你有我。愿你我在追求梦想的道路上深沉而又执着。\r\n让我们一起筑梦融智，不忘初心，不负青春好时光!', '2018-09-29', '2', '校团委');
INSERT INTO `tbnews` VALUES ('100', '我校的国家奖学金公示', '王五', '全校师生：\r\n经本人申请，所在班级、学院认定，学生处审核，且经过现场答辩和学生工作委员会讨论，我校XXX等9名同学通过了我校的国家奖学金初审环节，现对全校师生进行公示，公示时间2018年10月9日—15日，如对公示结果有疑义，请于公示日期内联系学生处。  \r\n联系电话：88968681 联系人：王老师\r\n', '2018-10-10', '1', '融智学院');
INSERT INTO `tbnews` VALUES ('101', '“石榴哥”走红背后的原因是什么', '张三', '丽江“石榴哥”火了，背后的原因是什么？网友：其实他不傻！\r\n这几天在某短视频平台上，突然走红了一位卖石榴的小哥。\r\n一开始不少网友认为这位卖石榴的小哥是自闭症，不少网友纷纷留言，称买他的石榴也算是在帮这位小哥。\r\n可是最近这位石榴哥好像变样儿了。\r\n长相憨厚老师，穿着简单质朴，在丽江卖石榴的这位小哥莫名其妙的走红了，有不少网友还不远万里的去丽江看这位卖石榴的小哥。\r\n为什么这样一个卖石榴的人会突然的火了呢？我们从网上的视频来看，石榴哥特别有才，懂很多国家的语言。\r\n我们一般人卖石榴，应该是吆喝且夸自己的产品，而这位丽江小哥卖石榴，就一句话，我要回家了，你买我的石榴吗？我的石榴很好吃，你可以来尝一尝，不要钱的。\r\n许多网友可能也是被这位石榴哥的真诚打动了。\r\n这位石榴哥是一位英语老师，利用下班的时间卖石榴，他的英语说的是相当的不错，可能也是这种反差，让这位卖石榴的小哥在短时间内一下子走红了。\r\n在走红之后，不少网友才知道，这位石榴哥其实他一点也不傻，由于说话方式和自己独特的推销方式，石榴哥才走红了。\r\n石榴哥一点儿也不傻，最近还有个重庆的小姐姐非常喜欢他，专门从重庆飞到丽江去看他，还给他送了件衣服。\r\n石榴哥英语说的那么好，还走桃花运，还真让人有点小羡慕呢。', '2018-10-12', '6', '新闻网');

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `snumber` varchar(255) DEFAULT NULL COMMENT '门牌号',
  `sumprice` decimal(11,2) DEFAULT '0.00',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('41', '20201209155842132', '许小祥', '13042223333', '重庆财经学院云篆苑7栋', '317', '9.33', '14', '2020-12-09 15:58:42', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('59', '20201209155842132', '67', '东坡肉', '1.00', '2', '20201202221104998.jpg');
INSERT INTO `tborderitems` VALUES ('60', '20201209155842132', '25', '农家小炒肉', '1.00', '1', '20201202141339933.jpg');
INSERT INTO `tborderitems` VALUES ('61', '20201209155842132', '33', '爆炒牛肉丸', '1.11', '3', '20201202194449845.jpg');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `kind` varchar(255) DEFAULT NULL COMMENT '菜系',
  `address` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT '0',
  `isstar` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('24', '板栗烧牛蛙', '1.00', '以帝王服务于您', '<p>好吃</p><p><br/></p>', '湘菜', '湖南', '0', '0', '20201202141139617.jpg', '5');
INSERT INTO `tbproduct` VALUES ('25', '农家小炒肉', '1.00', '家的味道', '<p>很好吃</p><p><br/></p>', '湘菜', '湖南', '0', '0', '20201202141339933.jpg', '1');
INSERT INTO `tbproduct` VALUES ('26', '酱牛肉', '1.00', '醇厚', '<p>很好吃</p><p><br/></p><p><br/></p><p><br/></p>', '湘菜', '湖南', '0', '0', '20201202142041004.jpg', '6');
INSERT INTO `tbproduct` VALUES ('27', '干锅肥肠', '1.00', '家的味道', '<p>很好吃！！<br/></p><p><br/></p>', '湘菜', '湖南', '0', '0', '20201202142646364.jpg', '9');
INSERT INTO `tbproduct` VALUES ('28', '土匪鸭', '1.00', '以帝王服务于您', '<p>好吃</p>', '湘菜', '湖南', '0', '0', '20201202193834634.jpg', '1');
INSERT INTO `tbproduct` VALUES ('29', '鱼子酱牛肉凉面', '1.00', '以帝王服务于您', '<p>好吃！</p>', '徽菜', '安徽', '0', '0', '20201202193944415.jpg', '1');
INSERT INTO `tbproduct` VALUES ('30', '香菇焖鸡腿', '1.00', '以帝王服务于您', '<p>好吃</p>', '徽菜', '安徽', '0', '0', '20201202194031531.jpg', '3');
INSERT INTO `tbproduct` VALUES ('31', '爆炒牛肉脯', '1.00', '以帝王服务于您', '<p>好吃</p>', '徽菜', '安徽', '0', '0', '20201202194123730.jpg', '2');
INSERT INTO `tbproduct` VALUES ('32', '红烧龙虾', '1.00', '以帝王服务于您', '', '徽菜', '安徽', '0', '0', '20201202194346183.jpg', '5');
INSERT INTO `tbproduct` VALUES ('33', '爆炒牛肉丸', '1.11', '以帝王服务于您', '<p>好吃</p><p><br/></p>', '徽菜', '安徽', '0', '0', '20201202194449845.jpg', '2');
INSERT INTO `tbproduct` VALUES ('34', '酿豆腐', '1.00', '以帝王服务于您', '<p>好吃</p>', '闽菜', '湖南', '0', '0', '20201202211703249.jpg', '4');
INSERT INTO `tbproduct` VALUES ('35', '盐水虾', '1.00', '家的味道', '', '闽菜', '福建', '0', '0', '20201202212117336.jpg', '6');
INSERT INTO `tbproduct` VALUES ('36', '沙哈海鲜汤', '1.00', '家的味道', '<p>好吃</p>', '闽菜', '福建', '0', '0', '20201202212318150.jpg', '8');
INSERT INTO `tbproduct` VALUES ('37', '清炖鸡汤', '1.00', '家的味道', '<p>好吃</p>', '闽菜', '福建', '0', '0', '20201202212426456.jpg', '8');
INSERT INTO `tbproduct` VALUES ('38', '清炒鳝丝', '1.00', '家的味道', '<p>好吃</p>', '闽菜', '福建', '0', '0', '20201202212508617.jpg', '7');
INSERT INTO `tbproduct` VALUES ('39', '耗油焖虾', '1.00', '家的味道', '<p>好吃</p>', '浙菜', '浙江', '0', '0', '20201202212645855.jpg', '3');
INSERT INTO `tbproduct` VALUES ('40', '西湖醋鱼', '1.00', '家的味道', '<p>好吃</p>', '浙菜', '浙江', '0', '0', '20201202212737647.jpg', '1');
INSERT INTO `tbproduct` VALUES ('41', '姜汤面', '1.22', '家的味道', '<p>好吃</p><p><br/></p>', '浙菜', '浙江', '0', '0', '20201202212940764.jpg', '3');
INSERT INTO `tbproduct` VALUES ('42', '红烧牛筋', '1.00', '家的味道', '<p>好吃</p>', '浙菜', '浙江', '0', '0', '20201202213023537.jpg', '5');
INSERT INTO `tbproduct` VALUES ('43', '东坡肘子', '1.00', '家的味道', '<p>好吃</p>', '浙菜', '浙江', '0', '0', '20201202213128497.jpg', '3');
INSERT INTO `tbproduct` VALUES ('44', '鸭血粉丝汤', '1.00', '家的味道', '<p>好吃</p>', '苏菜', '江苏', '0', '0', '20201202213257719.jpg', '6');
INSERT INTO `tbproduct` VALUES ('45', '松鼠厥鱼', '1.00', '家的味道', '<p>好吃</p>', '苏菜', '江苏', '0', '0', '20201202213406316.jpg', '3');
INSERT INTO `tbproduct` VALUES ('46', '阳春面', '1.00', '家的味道', '<p>好吃</p>', '苏菜', '江苏', '0', '0', '20201202215010548.jpg', '3');
INSERT INTO `tbproduct` VALUES ('47', '清蒸大闸蟹', '1.00', '家的味道', '<p>好吃</p>', '苏菜', '江苏', '0', '0', '20201202215101393.jpg', '4');
INSERT INTO `tbproduct` VALUES ('48', '蟹黄豆腐', '1.00', '家的味道', '<p>好吃</p>', '苏菜', '江苏', '0', '0', '20201202215140578.jpg', '6');
INSERT INTO `tbproduct` VALUES ('49', '菠萝咕噜肉', '1.00', '家的味道', '<p>好吃</p>', '粤菜', '广州', '0', '0', '20201202215231973.jpg', '1');
INSERT INTO `tbproduct` VALUES ('50', '糖不甩', '1.00', '家的味道', '<p>好吃</p>', '粤菜', '广州', '0', '0', '20201202215323407.jpg', '1');
INSERT INTO `tbproduct` VALUES ('51', '清蒸桂鱼', '1.00', '家的味道', '<p>好吃</p>', '粤菜', '广州', '0', '0', '20201202215418354.jpg', '4');
INSERT INTO `tbproduct` VALUES ('52', '广式糯米鸡', '1.00', '家的味道', '<p>好吃</p>', '粤菜', '广州', '0', '0', '20201202215510006.jpg', '1');
INSERT INTO `tbproduct` VALUES ('53', '粤式白灼虾', '1.00', '以帝王服务于您', '<p>好吃</p>', '粤菜', '广州', '0', '0', '20201202215700777.jpg', '1');
INSERT INTO `tbproduct` VALUES ('54', '糖醋丸子', '1.00', '家的味道', '<p>好吃</p>', '鲁菜', '山东', '0', '0', '20201202215736592.jpg', '1');
INSERT INTO `tbproduct` VALUES ('55', '蜜汁山药', '1.00', '家的味道', '<p>好吃</p>', '鲁菜', '山东', '0', '0', '20201202215837334.jpg', '1');
INSERT INTO `tbproduct` VALUES ('56', '樱桃肉', '1.00', '家的味道', '<p>好吃</p>', '鲁菜', '山东', '0', '0', '20201202220030405.jpg', '1');
INSERT INTO `tbproduct` VALUES ('57', '拔丝鸡蛋', '1.00', '家的味道', '<p>好吃</p>', '鲁菜', '山东', '0', '0', '20201202220134709.jpg', '1');
INSERT INTO `tbproduct` VALUES ('58', '玉米面糊糊', '1.00', '家的味道', '<p>好吃</p>', '鲁菜', '山东', '0', '0', '20201202220231561.jpg', '3');
INSERT INTO `tbproduct` VALUES ('59', '酸菜鱼', '1.00', '家的味道', '<p>好吃</p>', '川菜', '四川', '0', '0', '20201202220356592.jpg', '3');
INSERT INTO `tbproduct` VALUES ('60', '辣子鸡丁', '1.00', '家的味道', '<p>好吃</p>', '川菜', '四川', '0', '0', '20201202220457236.jpg', '1');
INSERT INTO `tbproduct` VALUES ('61', '毛血旺', '1.00', '家的味道', '<p>好吃</p>', '川菜', '四川', '0', '0', '20201202220554923.jpg', '1');
INSERT INTO `tbproduct` VALUES ('62', '泡椒鱼头', '1.00', '家的味道', '<p>好吃</p>', '川菜', '四川', '0', '0', '20201202220707401.jpg', '1');
INSERT INTO `tbproduct` VALUES ('63', '水煮肉片', '1.00', '家的味道', '<p>好吃</p>', '川菜', '四川', '0', '0', '20201202220743567.jpg', '3');
INSERT INTO `tbproduct` VALUES ('64', '火腿炖甲鱼', '1.00', '家的味道', '<p>好吃</p>', '徽菜', '安徽', '0', '0', '20201202220839382.jpg', '8');
INSERT INTO `tbproduct` VALUES ('65', '剁椒鱼头', '1.00', '家的味道', '<p>好吃</p>', '湘菜', '湖南', '0', '0', '20201202220921067.jpg', '1');
INSERT INTO `tbproduct` VALUES ('66', '佛跳墙', '1.00', '家的味道', '<p>好吃</p>', '闽菜', '福建', '0', '0', '20201202221024567.jpg', '1');
INSERT INTO `tbproduct` VALUES ('67', '东坡肉', '1.00', '家的味道', '<p>好吃</p>', '浙菜', '浙江', '0', '0', '20201202221104998.jpg', '3');
INSERT INTO `tbproduct` VALUES ('68', '盐水鸭', '1.00', '家的味道', '<p>好吃</p>', '苏菜', '江苏', '0', '0', '20201202221144246.jpg', '7');
INSERT INTO `tbproduct` VALUES ('69', '清平鸡', '1.00', '家的味道', '<p>好吃</p>', '粤菜', '广州', '0', '0', '20201202221222821.jpg', '7');
INSERT INTO `tbproduct` VALUES ('70', '萝卜丝炖大虾', '1.00', '家的味道', '<p>好吃</p><p><br/></p>', '鲁菜', '山东', '0', '0', '20201202221326348.jpg', '7');
INSERT INTO `tbproduct` VALUES ('71', '回锅肉', '233.33', '家的味道', '<p>好吃</p><p><br/></p><p><br/></p><p><br/></p>', '川菜', '四川', '0', '0', '20201202221358954.jpg', '1');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL COMMENT '菜系',
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('120', '9', '索尼（SONY）Xperia1 II ', '徽菜', '21', '1', '2020-12-01 17:10:42', '20201107181129318.png', '7999.00');
INSERT INTO `tbshoppingcar` VALUES ('220', '14', '东坡肉', '浙菜', '67', '2', '2020-12-09 15:58:20', '20201202221104998.jpg', '1.00');
INSERT INTO `tbshoppingcar` VALUES ('221', '14', '农家小炒肉', '湘菜', '25', '1', '2020-12-09 15:58:22', '20201202141339933.jpg', '1.00');
INSERT INTO `tbshoppingcar` VALUES ('222', '14', '爆炒牛肉丸', '徽菜', '33', '3', '2020-12-09 15:58:24', '20201202194449845.jpg', '1.11');

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '123456', '管理员3');
INSERT INTO `tbusers` VALUES ('2', 'user', '123456', '张三');
INSERT INTO `tbusers` VALUES ('3', 'test', '123456', '测试员');
INSERT INTO `tbusers` VALUES ('4', 'test2', '123456', '测试员2');
