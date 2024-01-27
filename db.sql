/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssms69f2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssms69f2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssms69f2`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-18 19:15:26',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-18 19:15:26',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-18 19:15:26',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-18 19:15:26',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-18 19:15:26',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-18 19:15:26',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xuexitiandi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssms69f2/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssms69f2/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssms69f2/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussxuexitiandi` */

DROP TABLE IF EXISTS `discussxuexitiandi`;

CREATE TABLE `discussxuexitiandi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='学习天地评论表';

/*Data for the table `discussxuexitiandi` */

insert  into `discussxuexitiandi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-18 19:15:26',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxuexitiandi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-18 19:15:26',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxuexitiandi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-18 19:15:26',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxuexitiandi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-18 19:15:26',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxuexitiandi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-18 19:15:26',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxuexitiandi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-18 19:15:26',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (51,'2021-05-18 19:15:26','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (52,'2021-05-18 19:15:26','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (53,'2021-05-18 19:15:26','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (54,'2021-05-18 19:15:26','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (55,'2021-05-18 19:15:26','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (56,'2021-05-18 19:15:26','帖子标题6','帖子内容6',6,6,'用户名6','开放');

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-18 19:15:26',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-18 19:15:26',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-18 19:15:26',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-18 19:15:26',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-18 19:15:26',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-18 19:15:26',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='关于我们';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-18 19:15:26','标题1','简介1','http://localhost:8080/ssms69f2/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-18 19:15:26','标题2','简介2','http://localhost:8080/ssms69f2/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-18 19:15:26','标题3','简介3','http://localhost:8080/ssms69f2/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-18 19:15:26','标题4','简介4','http://localhost:8080/ssms69f2/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-18 19:15:26','标题5','简介5','http://localhost:8080/ssms69f2/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-18 19:15:26','标题6','简介6','http://localhost:8080/ssms69f2/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xuexitiandi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shujifenlei` */

DROP TABLE IF EXISTS `shujifenlei`;

CREATE TABLE `shujifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujifenlei` varchar(200) DEFAULT NULL COMMENT '书籍分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='书籍分类';

/*Data for the table `shujifenlei` */

insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (31,'2021-05-18 19:15:26','书籍分类1');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (32,'2021-05-18 19:15:26','书籍分类2');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (33,'2021-05-18 19:15:26','书籍分类3');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (34,'2021-05-18 19:15:26','书籍分类4');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (35,'2021-05-18 19:15:26','书籍分类5');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (36,'2021-05-18 19:15:26','书籍分类6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','dayuaxzex6zy80v8jp8turm32d472d3w','2021-05-18 19:17:00','2021-05-18 20:17:00');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621336668316,'11','yonghu','用户','euwhunq1i4dwz0rxwpjwkiz893c23dis','2021-05-18 19:17:54','2021-05-18 20:17:55');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-18 19:15:26');

/*Table structure for table `xuexiqiandao` */

DROP TABLE IF EXISTS `xuexiqiandao`;

CREATE TABLE `xuexiqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `qiandaodidian` varchar(200) DEFAULT NULL COMMENT '签到地点',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学习签到';

/*Data for the table `xuexiqiandao` */

insert  into `xuexiqiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`leixing`,`qiandaoshijian`,`qiandaodidian`,`userid`) values (41,'2021-05-18 19:15:26','账号1','姓名1','http://localhost:8080/ssms69f2/upload/xuexiqiandao_zhaopian1.jpg','签到','2021-05-18 19:15:26','签到地点1',1);
insert  into `xuexiqiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`leixing`,`qiandaoshijian`,`qiandaodidian`,`userid`) values (42,'2021-05-18 19:15:26','账号2','姓名2','http://localhost:8080/ssms69f2/upload/xuexiqiandao_zhaopian2.jpg','签到','2021-05-18 19:15:26','签到地点2',2);
insert  into `xuexiqiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`leixing`,`qiandaoshijian`,`qiandaodidian`,`userid`) values (43,'2021-05-18 19:15:26','账号3','姓名3','http://localhost:8080/ssms69f2/upload/xuexiqiandao_zhaopian3.jpg','签到','2021-05-18 19:15:26','签到地点3',3);
insert  into `xuexiqiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`leixing`,`qiandaoshijian`,`qiandaodidian`,`userid`) values (44,'2021-05-18 19:15:26','账号4','姓名4','http://localhost:8080/ssms69f2/upload/xuexiqiandao_zhaopian4.jpg','签到','2021-05-18 19:15:26','签到地点4',4);
insert  into `xuexiqiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`leixing`,`qiandaoshijian`,`qiandaodidian`,`userid`) values (45,'2021-05-18 19:15:26','账号5','姓名5','http://localhost:8080/ssms69f2/upload/xuexiqiandao_zhaopian5.jpg','签到','2021-05-18 19:15:26','签到地点5',5);
insert  into `xuexiqiandao`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`leixing`,`qiandaoshijian`,`qiandaodidian`,`userid`) values (46,'2021-05-18 19:15:26','账号6','姓名6','http://localhost:8080/ssms69f2/upload/xuexiqiandao_zhaopian6.jpg','签到','2021-05-18 19:15:26','签到地点6',6);

/*Table structure for table `xuexitiandi` */

DROP TABLE IF EXISTS `xuexitiandi`;

CREATE TABLE `xuexitiandi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) NOT NULL COMMENT '书籍名称',
  `shujifenlei` varchar(200) DEFAULT NULL COMMENT '书籍分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `chubanshijian` date DEFAULT NULL COMMENT '出版时间',
  `tushujianjie` longtext COMMENT '图书简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学习天地';

/*Data for the table `xuexitiandi` */

insert  into `xuexitiandi`(`id`,`addtime`,`shujimingcheng`,`shujifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`tushujianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (21,'2021-05-18 19:15:25','书籍名称1','书籍分类1','http://localhost:8080/ssms69f2/upload/xuexitiandi_tupian1.jpg','作者1','出版社1','2021-05-18','图书简介1',1,1,'2021-05-18 19:15:25',1,99.9);
insert  into `xuexitiandi`(`id`,`addtime`,`shujimingcheng`,`shujifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`tushujianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (22,'2021-05-18 19:15:25','书籍名称2','书籍分类2','http://localhost:8080/ssms69f2/upload/xuexitiandi_tupian2.jpg','作者2','出版社2','2021-05-18','图书简介2',2,2,'2021-05-18 19:15:25',2,99.9);
insert  into `xuexitiandi`(`id`,`addtime`,`shujimingcheng`,`shujifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`tushujianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (23,'2021-05-18 19:15:25','书籍名称3','书籍分类3','http://localhost:8080/ssms69f2/upload/xuexitiandi_tupian3.jpg','作者3','出版社3','2021-05-18','图书简介3',3,3,'2021-05-18 19:15:25',3,99.9);
insert  into `xuexitiandi`(`id`,`addtime`,`shujimingcheng`,`shujifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`tushujianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (24,'2021-05-18 19:15:25','书籍名称4','书籍分类4','http://localhost:8080/ssms69f2/upload/xuexitiandi_tupian4.jpg','作者4','出版社4','2021-05-18','图书简介4',4,4,'2021-05-18 19:15:25',4,99.9);
insert  into `xuexitiandi`(`id`,`addtime`,`shujimingcheng`,`shujifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`tushujianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (25,'2021-05-18 19:15:25','书籍名称5','书籍分类5','http://localhost:8080/ssms69f2/upload/xuexitiandi_tupian5.jpg','作者5','出版社5','2021-05-18','图书简介5',5,5,'2021-05-18 19:15:25',5,99.9);
insert  into `xuexitiandi`(`id`,`addtime`,`shujimingcheng`,`shujifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`tushujianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (26,'2021-05-18 19:15:25','书籍名称6','书籍分类6','http://localhost:8080/ssms69f2/upload/xuexitiandi_tupian6.jpg','作者6','出版社6','2021-05-18','图书简介6',6,6,'2021-05-18 19:15:25',6,99.9);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621336668317 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (11,'2021-05-18 19:15:25','用户1','123456','姓名1',1,'男','13823888881','http://localhost:8080/ssms69f2/upload/yonghu_zhaopian1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (12,'2021-05-18 19:15:25','用户2','123456','姓名2',2,'男','13823888882','http://localhost:8080/ssms69f2/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (13,'2021-05-18 19:15:25','用户3','123456','姓名3',3,'男','13823888883','http://localhost:8080/ssms69f2/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (14,'2021-05-18 19:15:25','用户4','123456','姓名4',4,'男','13823888884','http://localhost:8080/ssms69f2/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (15,'2021-05-18 19:15:25','用户5','123456','姓名5',5,'男','13823888885','http://localhost:8080/ssms69f2/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (16,'2021-05-18 19:15:25','用户6','123456','姓名6',6,'男','13823888886','http://localhost:8080/ssms69f2/upload/yonghu_zhaopian6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (1621336668316,'2021-05-18 19:17:48','11','11','地方',11,'男','11122211111',NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
