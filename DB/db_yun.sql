/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.1.49-community : Database - db_yun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_yun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_yun`;

/*Table structure for table `t_manager` */

DROP TABLE IF EXISTS `t_manager`;

CREATE TABLE `t_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_manager` */

/*Table structure for table `t_resources` */

DROP TABLE IF EXISTS `t_resources`;

CREATE TABLE `t_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `userUk` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `shareDate` datetime DEFAULT NULL,
  `shareUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userUk` (`userUk`),
  CONSTRAINT `t_resources_ibfk_1` FOREIGN KEY (`userUk`) REFERENCES `t_yun_user` (`userUk`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

/*Data for the table `t_resources` */

insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (61,'10月30号身随心动老师精彩AE会员头像刻录.zip','2017-07-17 21:22:45','1077800897',0,0,'2016-11-06 14:26:00','https://pan.baidu.com/s/1mhQpfug');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (62,'高原红老师课用素材11.5.zip','2017-07-17 21:22:45','1077800897',0,0,'2016-11-06 14:25:00','https://pan.baidu.com/s/1slGlIiD');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (63,'紫水晶赠送素材模板模型11.5.zip','2017-07-17 21:22:45','1077800897',0,0,'2016-11-06 14:24:00','https://pan.baidu.com/s/1o8cwsjS');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (64,'11月4日云飞赠送AE-E3D签名模板及模型.zip','2017-07-17 21:22:45','1077800897',0,0,'2016-11-06 14:21:00','https://pan.baidu.com/s/1slUyRrJ');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (65,'11月4日东方可児赠送手机背景名片PSD.zip','2017-07-17 21:22:45','1077800897',0,0,'2016-11-06 14:20:00','https://pan.baidu.com/s/1o7YY5NO');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (66,'11月3日云兴霞蔚老师赠送票亮AE签名模板及素材.zip','2017-07-17 21:22:45','1077800897',0,0,'2016-11-06 14:18:00','https://pan.baidu.com/s/1jHF3P4q');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (67,'11月1日紫水晶老师赠送AE-E3D签名模板及模型.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:17:00','https://pan.baidu.com/s/1o8RhoH8');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (68,'10月29日云兴霞蔚老师赠送AE签名模板及素材 - 副本.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:15:00','https://pan.baidu.com/s/1o80cN6E');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (69,'10月22日紫晶赠送AE-E3D素材及模型.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:14:00','https://pan.baidu.com/s/1bp86NrL');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (70,'10月22日星辰赠送AE-E3D签名模板素材及模型.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:13:00','https://pan.baidu.com/s/1mhQVfr6');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (71,'10月22日斌斌老师赠送AE-E3D签名《奖杯》模板及模型.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:11:00','https://pan.baidu.com/s/1c1HbXew');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (72,'高原红赠送素材模板10.28.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:01:00','https://pan.baidu.com/s/1c2FWrte');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (73,'高原红赠送素材模板 10.23.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 14:00:00','https://pan.baidu.com/s/1kUKl5SN');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (74,'高原红赠送效果11.3.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:58:00','https://pan.baidu.com/s/1slfDWTZ');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (75,'高原红赠送效果11.2.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:57:00','https://pan.baidu.com/s/1skSgOCd');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (76,'高原红赠送效果.11.4.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:56:00','https://pan.baidu.com/s/1jIAu0x4');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (77,'高原红赠送挖空素材模板10.30.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:55:00','https://pan.baidu.com/s/1pLaYvyF');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (78,'宇航老师赠送精美E3D签名素材模板模型10.26.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:54:00','https://pan.baidu.com/s/1nu8Chtf');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (79,'茫然课用素材模板模型10.26.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:52:00','https://pan.baidu.com/s/1kUAIfBp');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (80,'云兴老师赠送精美签名素材模板10.26.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:48:00','https://pan.baidu.com/s/1kVFceN1');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (81,'云兴霞蔚老师制做东君老师9.11模板及素材.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:47:00','https://pan.baidu.com/s/1dETRgjR');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (82,'云兴老师赠送素材模板11.4.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:46:00','https://pan.baidu.com/s/1eRY8ODk');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (83,'紫水晶赠送素材模板模型 10.23.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:43:00','https://pan.baidu.com/s/1pL6MzV1');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (84,'紫水晶赠送素材模板模型10.30.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:40:00','https://pan.baidu.com/s/1coqaUM');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (85,'紫水晶赠送素材模板模型11.4.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:39:00','https://pan.baidu.com/s/1nvGZQUt');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (86,'11月2日云飞赠送AE-E3D签名模板及模型.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:36:00','https://pan.baidu.com/s/1bFel6u');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (87,'云飞手工做11.1号.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:34:00','https://pan.baidu.com/s/1b2mUB0');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (88,'2016.11.4宠儿老师原创主页《惜别的海岸》素材及效果图.rar','2017-07-17 21:22:46','1077800897',0,0,'2016-11-06 13:23:00','https://pan.baidu.com/s/1nv0KQTz');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (89,'珍惜缘份AE签名习作---06.18文件夹--大.18.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 14:36:00','https://pan.baidu.com/s/1qYaOIK0');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (90,'珍惜缘份AE签名习作---06.18文件夹.18.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 14:36:00','https://pan.baidu.com/s/1nvzruIl');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (91,'2016年06月17日馨雨幽寒老师AE类E3D签名课录.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:35:00','https://pan.baidu.com/s/1kUSRwV1');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (92,'2016年6月17号幽寒老师课用模板.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:34:00','https://pan.baidu.com/s/1skYeOWX');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (93,'2016年6月17号幽寒老师课用素材.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:34:00','https://pan.baidu.com/s/1pKLrFRH');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (94,'2016年06月日浮沉老师PS单图刻录.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:24:00','https://pan.baidu.com/s/1dEJAjrN');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (95,'浮尘老师单图素材【遗失中的记忆】6.17.rar','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:23:00','https://pan.baidu.com/s/1c2mc4gC');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (96,'云兴老师赠送素材模板6.17.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:05:00','https://pan.baidu.com/s/1slL3Qax');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (97,'【雨林样板477效果】舞台彩带碎片素材模版文件夹.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:04:00','https://pan.baidu.com/s/1qYd65La');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (98,'珍惜缘份习作AE签名--小--06.10【修改】.10.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-18 00:02:00','https://pan.baidu.com/s/1pLaQKv5');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (99,'2016年06月15日_高红原老师AE时尚签名录像.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:59:00','https://pan.baidu.com/s/1mhP12ys');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (100,'2016年06月15日_高红原老师AE时尚签名录像.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:59:00','https://pan.baidu.com/s/1miOvKIc');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (101,'高原红老师6.15号AE签名素材及模板.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:52:00','https://pan.baidu.com/s/1hsLgfYk');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (102,'E3D签玫瑰花开.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:50:00','https://pan.baidu.com/s/1miCQ2qG');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (103,'云兴老师赠送素材模板6.15.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:49:00','https://pan.baidu.com/s/1jIbGNOE');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (104,'高原红老师6.15号AE签名素材及模板.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:47:00','https://pan.baidu.com/s/1jHFwj5c');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (105,'6月14日水晶老师模版效果.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:46:00','https://pan.baidu.com/s/1qYlDVLM');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (106,'6.14糖果老师漂亮签模板及素材.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:44:00','https://pan.baidu.com/s/1jHBsxBw');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (107,'2016.6.11斌斌老师AE-E3D签名模板及模型.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:43:00','https://pan.baidu.com/s/1o76046e');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (108,'珍惜缘份习作AE签名--06.13文件夹.13.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-15 21:42:00','https://pan.baidu.com/s/1bpMCnNL');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (109,'珍惜缘份习作AE签名--小--06.10文件夹.10.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-10 21:35:00','https://pan.baidu.com/s/1i5Ph7ZB');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (110,'紫晶老师赠送素材模型模板6.8.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:39:00','https://pan.baidu.com/s/1c0ZmSA');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (111,'星辰老师素材模板 模型6.8.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:37:00','https://pan.baidu.com/s/1milLL00');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (112,'悦悦签之端午节版.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:35:00','https://pan.baidu.com/s/1qYEdUe4');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (113,'情湘川2062模板文件夹.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:32:00','https://pan.baidu.com/s/1kV1wOYj');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (114,'福袋【2016端午节东君特别奉送】.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:31:00','https://pan.baidu.com/s/1i4KN48X');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (115,'2016.6.9斌斌老师精美AE模板及素材.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:29:00','https://pan.baidu.com/s/1c0tqZc');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (116,'淡泊老师6.9号挖空签名效果和素材.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:28:00','https://pan.baidu.com/s/1o8aStaM');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (117,'2016年06月09日_淡泊老师【PS挖空时尚】签名录像.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-09 22:27:00','https://pan.baidu.com/s/1eR1qNXg');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (118,'情湘川2061模板.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-07 12:43:00','https://pan.baidu.com/s/1slrbhFJ');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (119,'5.23雨林赠送小车显示屏.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-06 22:27:00','https://pan.baidu.com/s/1i5AUn1z');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (120,'雨林彩带波纹文件夹.zip','2017-07-17 21:22:46','1077800897',0,0,'2016-06-06 22:12:00','https://pan.baidu.com/s/1mitTgl6');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (121,'【视频】-2014年厚大真题专题阶段舒扬行政法05-09.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-22 22:41:00','https://pan.baidu.com/s/1i3uZeVb');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (122,'【视频】-2014年厚大真题专题阶段舒扬行政法01-04.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-22 22:41:00','https://pan.baidu.com/s/1kTgbTAJ');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (123,'【讲义】-2014年厚大真题专题阶段舒扬行政法.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-22 22:40:00','https://pan.baidu.com/s/1mguSVR6');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (124,'【音频】-2014年系统强化班理论法学（独角兽版）-白斌31-36.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-22 22:26:00','https://pan.baidu.com/s/1Cit8U');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (125,'【视频】-2014年系统强化班理论法学（独角兽版）-白斌31-36.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-22 22:25:00','https://pan.baidu.com/s/1pJHN4gF');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (126,'【视频】2014年政法大学基础班商经-鄢梦萱26-38','2017-07-17 21:22:55','1078746032',0,0,'2014-06-22 22:19:00','https://pan.baidu.com/s/1mgr5oda');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (127,'【音频+讲义】中律2014年系统强化班杨秀清民诉1-12.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:56:00','https://pan.baidu.com/s/1i37QpNZ');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (128,'【音频+讲义】中律2014年系统强化班杨帆法理1-18.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:55:00','https://pan.baidu.com/s/1kTsTfHd');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (129,'【音频+讲义】中律2014年系统强化班徐金桂化行政1-12.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:54:00','https://pan.baidu.com/s/1qWDHGss');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (130,'【电子书】2014年指南针历年真题分类解析（6本）.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:46:00','https://pan.baidu.com/s/1jG62toi');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (131,'【音频+讲义】新起点2014年系统强化班徐金桂行政法1-10.zip','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:43:00','https://pan.baidu.com/s/1bnGPZsz');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (132,'【视频】-2014年超级强化鄢梦萱商经17-21.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:10:00','https://pan.baidu.com/s/1c0hCe7A');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (133,'【讲义】鄢梦萱补充讲义—(食品药品纠纷司法解释)(环境保护法).rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:09:00','https://pan.baidu.com/s/1hq5k2WW');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (134,'《杨雄讲刑诉》补充讲义（司考大纲新增刑诉法规）.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:05:00','https://pan.baidu.com/s/1gdqtzlp');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (135,'【视频】-2014厚大超级系统强化杨雄刑诉16-20.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:02:00','https://pan.baidu.com/s/1jGwsXrK');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (136,'【视频】-2014厚大超级系统强化杨雄刑诉11-15.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:02:00','https://pan.baidu.com/s/1c0u3qiG');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (137,'【视频】-2014厚大超级系统强化杨雄刑诉06-10.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:01:00','https://pan.baidu.com/s/1o6Lntbk');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (138,'【视频】-2014厚大超级系统强化杨雄刑诉01-05.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 21:01:00','https://pan.baidu.com/s/1hq3O6d2');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (139,'【视频】-2014年超级系统强化宋光明理论18-21.zip','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 20:58:00','https://pan.baidu.com/s/1dD1mOqH');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (140,'【视频】-2014年超级系统强化宋光明理论18-21.zip','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 20:57:00','https://pan.baidu.com/s/1jGLv1aA');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (141,'【视频】-2014年超级系统强化宋光明理论13-17.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 20:29:00','https://pan.baidu.com/s/1gdxfaRh');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (142,'【视频】-2014年超级系统强化宋光明理论09-12.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-21 20:29:00','https://pan.baidu.com/s/1mgp3nS0');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (143,'【音频】-2014年三校名师系统强化班刑法分则-刘凤科01-13.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 17:20:00','https://pan.baidu.com/s/1kTBkahh');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (144,'【讲义】2014年三校系统强化班刑法-刘凤科讲义.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 17:19:00','https://pan.baidu.com/s/1mgDPKZe');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (145,'【讲义】2014年三校系统强化班刑法-刘凤科讲义.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 17:16:00','https://pan.baidu.com/s/1hakME');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (146,'【视频】-2014年三校名师系统强化班刑法分则-刘凤科09-13.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 17:15:00','https://pan.baidu.com/s/1jG9klgU');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (147,'【视频】-2014年三校名师系统强化班刑法分则-刘凤科05-08.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 17:15:00','https://pan.baidu.com/s/1tRyaE');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (148,'【视频】-2014年三校名师系统强化班刑法分则-刘凤科01-04.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 17:15:00','https://pan.baidu.com/s/1hqtFju8');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (149,'【讲义】2014年万国系统强化班民法-王艳丽讲义.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:58:00','https://pan.baidu.com/s/1hqzeOfU');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (150,'【视频】-2014年万国系统强化班民法-王艳丽01-05.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:57:00','https://pan.baidu.com/s/1i3BTZCx');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (151,'【视频】-2014年万国系统强化班民法-王艳丽01-05.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:57:00','https://pan.baidu.com/s/1gdACjyr');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (152,'【讲义】2014年万国系统强化班民法-王艳丽讲义.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:56:00','https://pan.baidu.com/s/1jGqToFG');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (153,'【音频】-2014年万国系统强化班民法-王艳丽01-05.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:56:00','https://pan.baidu.com/s/1jGHXAse');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (154,'【音频】-2014年系统强化班民诉-郭翔01-10.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:26:00','https://pan.baidu.com/s/1i3mR4LB');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (155,'【讲义】-2014年万国系统强化班民诉-郭翔.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:26:00','https://pan.baidu.com/s/1nt3EvI5');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (156,'【讲义】2014年政法大学基础班商经-鄢梦萱讲义.bak.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:16:00','https://pan.baidu.com/s/1dDhAay9');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (157,'【音频】-2014年政法大学基础班商经-鄢梦萱01-06.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:16:00','https://pan.baidu.com/s/1hql7Fj2');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (158,'【音频】-2014年政法大学基础班商经-鄢梦萱07-25.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:15:00','https://pan.baidu.com/s/1qWjV0HA');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (159,'【讲义】2014年政法大学基础班商经-鄢梦萱讲义.bak.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:13:00','https://pan.baidu.com/s/1hqwwXwg');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (160,'【视频】-2014年政法大学基础班商经-鄢梦萱01-25.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:13:00','https://pan.baidu.com/s/1c0mvO44');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (161,'【视频】-2014年政法大学基础班商经-鄢梦萱01-25.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:12:00','https://pan.baidu.com/s/1qWntpgg');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (162,'【音频】-2014年新起点系统强化班民法-曹兴明01-08.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:06:00','https://pan.baidu.com/s/1sjK1m49');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (163,'【讲义】2014年新起点系统强化班民法-曹兴明讲义.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 16:06:00','https://pan.baidu.com/s/1eQxhaRw');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (164,'【音频】2014年系统强化班理论法学（独角兽版）-白斌15-24.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 15:20:00','https://pan.baidu.com/s/1pJnvpYN');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (165,'【音频】-2014年系统强化班理论法学（独角兽版）-白斌13-14.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 15:19:00','https://pan.baidu.com/s/1c0isaPU');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (166,'【视频】-2014年系统强化班理论法学（独角兽版）-白斌15-24.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 15:18:00','https://pan.baidu.com/s/1o6r1coE');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (167,'【视频】-2014年系统强化班理论法学（独角兽版）-白斌13-14.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-20 15:18:00','https://pan.baidu.com/s/1gdrFr83');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (168,'【音频】2014年系统强化班理论法学（独角兽版）-白斌07-12.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-18 23:01:00','https://pan.baidu.com/s/1i3j3H0x');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (169,'【视频】-2014年系统强化班理论法学（独角兽版）-白斌07-12.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-18 22:58:00','https://pan.baidu.com/s/1eQ6A2EA');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (170,'【视频】2014年政法大学基础班民诉-杨秀清47-65.zip','2017-07-17 21:22:55','1078746032',0,0,'2014-06-18 22:53:00','https://pan.baidu.com/s/1c0qz1SW');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (171,'【音频】-2014海天系统强化班民法补课-钟秀勇01-04.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-18 21:33:00','https://pan.baidu.com/s/1c0irYPa');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (172,'【视频】-2014海天系统强化班民法补课-钟秀勇01-04.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-18 21:31:00','https://pan.baidu.com/s/1sjO4TRZ');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (173,'【视频】-2014年三校名师系统强化班刑诉-杨雄13-16','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 23:38:00','https://pan.baidu.com/s/1ntBfTzj');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (174,'【视频】-2014年三校名师系统强化班刑诉-杨雄10-12','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 23:36:00','https://pan.baidu.com/s/1gdtHjeN');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (175,'【视频】-2014年三校名师系统强化班刑诉-杨雄07-09','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 23:35:00','https://pan.baidu.com/s/1sjtwKB7');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (176,'【视频】-2014年三校名师系统强化班刑诉-杨雄04-06','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 23:33:00','https://pan.baidu.com/s/1kTzECRH');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (177,'【视频】-2014年三校名师系统强化班刑诉-杨雄01-03','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 23:32:00','https://pan.baidu.com/s/1qW4ohUs');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (178,'【视频+讲义】2014年鼎宏教育基础阶段三国法辅导-唐俊1-2','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 21:14:00','https://pan.baidu.com/s/1bntPqyz');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (179,'【视频+讲义】2014年鼎宏教育强化阶段民诉辅导-许玉霞1-2','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 21:11:00','https://pan.baidu.com/s/1gd7ow6Z');
insert  into `t_resources`(`id`,`name`,`publishDate`,`userUk`,`hits`,`downloads`,`shareDate`,`shareUrl`) values (180,'【视频+讲义】2014年鼎宏教育强化阶段刑诉辅导-许玉霞1-3.rar','2017-07-17 21:22:55','1078746032',0,0,'2014-06-17 21:11:00','https://pan.baidu.com/s/1hqqXpGw');

/*Table structure for table `t_yun_user` */

DROP TABLE IF EXISTS `t_yun_user`;

CREATE TABLE `t_yun_user` (
  `userUk` varchar(20) NOT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `imageUrl` varchar(500) DEFAULT NULL,
  `shareNum` int(11) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userUk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_yun_user` */

insert  into `t_yun_user`(`userUk`,`userName`,`imageUrl`,`shareNum`,`note`) values ('1077800897','152*****400','https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/a1401e39.jpg',180,'Ta还没有个人说明呢');
insert  into `t_yun_user`(`userUk`,`userName`,`imageUrl`,`shareNum`,`note`) values ('1078746032','qq8****5722','https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/15406f48.jpg',294,'Ta还没有个人说明呢');
insert  into `t_yun_user`(`userUk`,`userName`,`imageUrl`,`shareNum`,`note`) values ('1245630046','9**书会','https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/804a813a.jpg',5,'哲学与人生读书会');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
