/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ershoushangpinjiaoyi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ershoushangpinjiaoyi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ershoushangpinjiaoyi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425527292.jpg'),(2,'picture2','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425542461.jpg'),(3,'picture3','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425557352.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044689346 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (141,'2021-03-10 17:42:43',1,1,'评论内容1','回复内容1'),(142,'2021-03-10 17:42:43',2,2,'评论内容2','回复内容2'),(143,'2021-03-10 17:42:43',3,3,'评论内容3','回复内容3'),(144,'2021-03-10 17:42:43',4,4,'评论内容4','回复内容4'),(145,'2021-03-10 17:42:43',5,5,'评论内容5','回复内容5'),(146,'2021-03-10 17:42:43',6,6,'评论内容6','回复内容6'),(1615380287353,'2021-03-10 20:44:46',62,11,'21123123',NULL),(1615426813578,'2021-03-11 09:40:13',1615426629282,11,'11111111',NULL),(1615428053634,'2021-03-11 10:00:52',1615427818959,11,'123123123','33333333'),(1616814621635,'2021-03-27 11:10:21',1616814555858,1616814391008,'这个相机品相怎么样，是否损坏','9成新 ，无损坏'),(1616815572707,'2021-03-27 11:26:11',1616815490811,1616815291053,'这台洗碗机品相怎么样',NULL),(1619702525000,'2021-04-29 21:22:04',1619702336880,1619702183794,'123132','1111111'),(1620044689345,'2021-05-03 20:24:49',1620044567113,1620044450276,'这件商品怎么样','很不错');

/*Table structure for table `jiaoliuhuifu` */

DROP TABLE IF EXISTS `jiaoliuhuifu`;

CREATE TABLE `jiaoliuhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huifuneirong` longtext COMMENT '回复内容',
  `huifuriqi` date DEFAULT NULL COMMENT '回复日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044766573 DEFAULT CHARSET=utf8 COMMENT='交流回复';

/*Data for the table `jiaoliuhuifu` */

insert  into `jiaoliuhuifu`(`id`,`addtime`,`biaoti`,`yonghuming`,`xingming`,`huifuneirong`,`huifuriqi`,`zhanghao`,`shangjiaxingming`) values (91,'2021-03-10 17:42:43','标题1','用户名1','姓名1','回复内容1','2021-03-01','账号1','商家姓名1'),(92,'2021-03-10 17:42:43','标题2','用户名2','姓名2','回复内容2','2021-03-01','账号2','商家姓名2'),(93,'2021-03-10 17:42:43','标题3','用户名3','姓名3','回复内容3','2021-03-01','账号3','商家姓名3'),(94,'2021-03-10 17:42:43','标题4','用户名4','姓名4','回复内容4','2021-03-01','账号4','商家姓名4'),(95,'2021-03-10 17:42:43','标题5','用户名5','姓名5','回复内容5','2021-03-01','账号5','商家姓名5'),(96,'2021-03-10 17:42:43','标题6','用户名6','姓名6','回复内容6','2021-03-01','账号6','商家姓名6'),(1620044766572,'2021-05-03 20:26:06','这件商品有几成新','123','123','<p>9诚信新</p>','2021-04-27','321','321');

/*Table structure for table `jiaoliuxinxi` */

DROP TABLE IF EXISTS `jiaoliuxinxi`;

CREATE TABLE `jiaoliuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `zixunneirong` longtext COMMENT '咨询内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044679484 DEFAULT CHARSET=utf8 COMMENT='交流信息';

/*Data for the table `jiaoliuxinxi` */

insert  into `jiaoliuxinxi`(`id`,`addtime`,`biaoti`,`zhanghao`,`shangjiaxingming`,`zixunneirong`,`riqi`,`yonghuming`,`xingming`) values (81,'2021-03-10 17:42:43','标题1','账号1','商家姓名1','咨询内容1','2021-03-01','用户名1','姓名1'),(82,'2021-03-10 17:42:43','标题2','账号2','商家姓名2','咨询内容2','2021-03-01','用户名2','姓名2'),(83,'2021-03-10 17:42:43','标题3','账号3','商家姓名3','咨询内容3','2021-03-01','用户名3','姓名3'),(84,'2021-03-10 17:42:43','标题4','账号4','商家姓名4','咨询内容4','2021-03-01','用户名4','姓名4'),(85,'2021-03-10 17:42:43','标题5','账号5','商家姓名5','咨询内容5','2021-03-01','用户名5','姓名5'),(86,'2021-03-10 17:42:43','标题6','账号6','商家姓名6','咨询内容6','2021-03-01','用户名6','姓名6'),(1620044679483,'2021-05-03 20:24:38','这件商品有几成新','321','321','<p>请输入咨询内容1</p>','2021-05-08','123','123');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-10 17:42:43',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-10 17:42:43',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-10 17:42:43',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-10 17:42:43',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-10 17:42:43',5,'用户名5','留言内容5','回复内容5');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-10 17:42:43','标题1','简介1','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425616986.jpg','<p>内容1</p>'),(112,'2021-03-10 17:42:43','标题2','简介2','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425626565.jpg','<p>内容2</p>'),(113,'2021-03-10 17:42:43','标题3','简介3','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425634238.jpg','<p>内容3</p>'),(114,'2021-03-10 17:42:43','标题4','简介4','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425649929.jpg','<p>内容4</p>');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044481354 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`zhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`lianxidianhua`) values (21,'2021-03-10 17:42:43','222','222','商家姓名1','男','http://localhost:8080/ershoushangpinjiaoyi/upload/shangjia_touxiang1.jpg','440300199101010001','13823888881'),(22,'2021-03-10 17:42:43','商家2','123456','商家姓名2','男','http://localhost:8080/ershoushangpinjiaoyi/upload/shangjia_touxiang2.jpg','440300199202020002','13823888882'),(23,'2021-03-10 17:42:43','商家3','123456','商家姓名3','男','http://localhost:8080/ershoushangpinjiaoyi/upload/shangjia_touxiang3.jpg','440300199303030003','13823888883'),(24,'2021-03-10 17:42:43','商家4','123456','商家姓名4','男','http://localhost:8080/ershoushangpinjiaoyi/upload/shangjia_touxiang4.jpg','440300199404040004','13823888884'),(25,'2021-03-10 17:42:43','商家5','123456','商家姓名5','男','http://localhost:8080/ershoushangpinjiaoyi/upload/shangjia_touxiang5.jpg','440300199505050005','13823888885'),(26,'2021-03-10 17:42:43','商家6','123456','商家姓名6','男','http://localhost:8080/ershoushangpinjiaoyi/upload/shangjia_touxiang6.jpg','440300199606060006','13823888886'),(1620044481353,'2021-05-03 20:21:21','321','321','321','女','http://localhost:8080/ershoushangpinjiaoyi/upload/1620044468229.jpg','123123123123121','12312312312');

/*Table structure for table `shangpingoumai` */

DROP TABLE IF EXISTS `shangpingoumai`;

CREATE TABLE `shangpingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `goumaiburiqi` date DEFAULT NULL COMMENT '购买部日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044699511 DEFAULT CHARSET=utf8 COMMENT='商品购买';

/*Data for the table `shangpingoumai` */

insert  into `shangpingoumai`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinleixing`,`zhanghao`,`jiage`,`shuliang`,`zongjiage`,`goumaiburiqi`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`ispay`) values (71,'2021-03-10 17:42:43','订单编号1','商品名称1','商品类型1','账号1',1,1,'总价格1','2021-03-01','用户名1','姓名1','手机1','地址1','未支付'),(72,'2021-03-10 17:42:43','订单编号2','商品名称2','商品类型2','账号2',2,2,'总价格2','2021-03-01','用户名2','姓名2','手机2','地址2','未支付'),(73,'2021-03-10 17:42:43','订单编号3','商品名称3','商品类型3','账号3',3,3,'总价格3','2021-03-01','用户名3','姓名3','手机3','地址3','未支付'),(74,'2021-03-10 17:42:43','订单编号4','商品名称4','商品类型4','账号4',4,4,'总价格4','2021-03-01','用户名4','姓名4','手机4','地址4','未支付'),(75,'2021-03-10 17:42:43','订单编号5','商品名称5','商品类型5','账号5',5,5,'总价格5','2021-03-01','用户名5','姓名5','手机5','地址5','未支付'),(76,'2021-03-10 17:42:43','订单编号6','商品名称6','商品类型6','账号6',6,6,'总价格6','2021-03-01','用户名6','姓名6','手机6','地址6','未支付'),(1620044699510,'2021-05-03 20:24:58','20215320245047565697','商品名称321','商品类型7','321',111111,1,'111111','2021-06-04','123','123','12312312312','111111','已支付');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044526020 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (51,'2021-03-10 17:42:43','商品类型1'),(52,'2021-03-10 17:42:43','商品类型2'),(53,'2021-03-10 17:42:43','商品类型3'),(54,'2021-03-10 17:42:43','商品类型4'),(55,'2021-03-10 17:42:43','商品类型5'),(56,'2021-03-10 17:42:43','商品类型6'),(1620044526019,'2021-05-03 20:22:05','商品类型7');

/*Table structure for table `shangpinqiugou` */

DROP TABLE IF EXISTS `shangpinqiugou`;

CREATE TABLE `shangpinqiugou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '求购商品',
  `qgrid` varchar(200) DEFAULT NULL COMMENT '求购人',
  `phoen` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `money` decimal(10,4) DEFAULT NULL COMMENT '期望价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品求购';

/*Data for the table `shangpinqiugou` */

insert  into `shangpinqiugou`(`id`,`name`,`qgrid`,`phoen`,`money`,`create_time`) values (1,'商品1','求购人1','123','123.0000',NULL),(2,'商品2','求购人2','123123','22.0000',NULL),(3,'商品3','求购人3','1231','123.0000',NULL),(4,'商品4','求购人4','14455663321','123.0000',NULL);

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044567114 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`jiage`,`shuliang`,`faburiqi`,`shangpinxiangqing`,`zhanghao`,`shangjiaxingming`,`lianxidianhua`,`clicktime`,`clicknum`) values (61,'2021-03-10 17:42:43','商品名称1','商品类型1','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425138065.jpg',1,1,'2021-03-01','<p>商品详情1</p>','账号1','商家姓名1','联系电话1','2021-03-11 09:12:09',2),(62,'2021-03-10 17:42:43','商品名称2','商品类型2','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425149939.jpg',2,2,'2021-03-01','<p>商品详情2</p>','账号2','商家姓名2','联系电话2','2021-05-03 20:24:09',18),(63,'2021-03-10 17:42:43','商品名称3','商品类型3','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425161421.jpg',3,3,'2021-03-01','<p>商品详情3</p>','账号3','商家姓名3','联系电话3','2021-05-03 20:23:28',17),(64,'2021-03-10 17:42:43','商品名称4','商品类型4','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425203813.jpg',4,4,'2021-03-01','<p>商品详情4</p>','账号4','商家姓名4','联系电话4','2021-03-11 09:41:27',7),(65,'2021-03-10 17:42:43','商品名称5','商品类型5','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425222930.jpg',5,5,'2021-03-01','<p>商品详情5</p>','账号5','商家姓名5','联系电话5','2021-03-11 09:13:36',6),(66,'2021-03-10 17:42:43','商品名称6','商品类型6','http://localhost:8080/ershoushangpinjiaoyi/upload/1615425253257.jpg',6,6,'2021-03-01','<p>商品详情6</p>','账号6','商家姓名6','联系电话6','2021-03-11 09:39:31',8),(1620044567113,'2021-05-03 20:22:46','商品名称321','商品类型7','http://localhost:8080/ershoushangpinjiaoyi/upload/1620044553555.jpg',111111,0,'2021-05-27','<p><span style=\"color: rgb(96, 98, 102);\">商品详情商品详情商品详情商品详情</span></p>','321','321','12312312312','2021-05-03 20:25:01',3);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044704841 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616815586368,'2021-03-27 11:26:25',1616815291053,1616815490811,'shangpinxinxi','洗碗机','http://localhost:8080/ershoushangpinjiaoyi/upload/1616815461276.jpg'),(1619702586832,'2021-04-29 21:23:06',1619702183794,1619702336880,'shangpinxinxi','洗碗机','http://localhost:8080/ershoushangpinjiaoyi/upload/1619702324668.jpg'),(1620044704840,'2021-05-03 20:25:04',1620044450276,1620044567113,'shangpinxinxi','商品名称321','http://localhost:8080/ershoushangpinjiaoyi/upload/1620044553555.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','vh1exb6ucg5pfbyu7q9z8obdorw85klj','2021-03-10 20:41:25','2021-05-03 21:26:31'),(2,11,'111','yonghu','用户','6spk5oo961rhfszg3521rbcxekf0lbub','2021-03-10 20:43:09','2021-04-29 22:12:27'),(3,21,'222','shangjia','商家','f5rif1071pc2qn2gdjj3x23n4g1u02ma','2021-03-10 20:46:16','2021-03-27 11:02:51'),(4,22,'商家2','shangjia','商家','p0gmmz4ujde9ffq15jbsuk3petnbexul','2021-03-11 09:42:56','2021-03-11 10:42:56'),(5,1616814435774,'333','shangjia','商家','624x3j62hao2xjkwe1yfy4o2q0wh5b7h','2021-03-27 11:08:50','2021-03-27 12:12:14'),(6,1616814391008,'123','yonghu','用户','j7hofnhuqc3bfdvcvu5lzkyuzqawe0nc','2021-03-27 11:09:34','2021-03-27 12:09:35'),(7,1616815311017,'333','shangjia','商家','lqm80u1i1c03lofetdmk5r9du6b522wi','2021-03-27 11:23:49','2021-04-29 22:12:44'),(8,1616815291053,'123','yonghu','用户','f5uehpusdo6dhr97sbqi5qvwxkq1vg1t','2021-03-27 11:25:24','2021-03-27 12:25:24'),(9,1619702230138,'321','shangjia','商家','tphyyfr48vas77w1i6gyn54tuygmxwty','2021-04-29 21:18:20','2021-04-29 22:23:37'),(10,1619702183794,'123','yonghu','用户','qdfh6vw7vvkvm1ppufuqip3s3r6j48ud','2021-04-29 21:19:26','2021-04-29 22:23:00'),(11,1620044481353,'321','shangjia','商家','1exe7bz14llczvbmhwrdh37ktgo07gci','2021-05-03 20:21:52','2021-05-03 21:25:34'),(12,1620044450276,'123','yonghu','用户','zqaumeqwetlgh211ch0s85cqqueik7ig','2021-05-03 20:23:06','2021-05-03 21:23:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-10 17:42:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620044450277 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-03-10 17:42:43','111','111','姓名1','男','http://localhost:8080/ershoushangpinjiaoyi/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-03-10 17:42:43','用户2','123456','姓名2','男','http://localhost:8080/ershoushangpinjiaoyi/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-03-10 17:42:43','用户3','123456','姓名3','男','http://localhost:8080/ershoushangpinjiaoyi/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-03-10 17:42:43','用户4','123456','姓名4','男','http://localhost:8080/ershoushangpinjiaoyi/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-03-10 17:42:43','用户5','123456','姓名5','男','http://localhost:8080/ershoushangpinjiaoyi/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-03-10 17:42:43','用户6','123456','姓名6','男','http://localhost:8080/ershoushangpinjiaoyi/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1620044450276,'2021-05-03 20:20:50','123','123','123','男','http://localhost:8080/ershoushangpinjiaoyi/upload/1620044444165.jpg','123123123123123','12312312312');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
