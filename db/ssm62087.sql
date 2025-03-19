-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm62087
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm62087/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm62087/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm62087/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620625772361 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (71,'2021-05-10 05:36:56',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-05-10 05:36:56',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-05-10 05:36:56',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-05-10 05:36:56',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-05-10 05:36:56',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-05-10 05:36:56',6,6,'用户名6','评论内容6','回复内容6'),(1620625772360,'2021-05-10 05:49:31',31,1620625521899,'11','还可以',NULL);
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyougonglve`
--

DROP TABLE IF EXISTS `discusslvyougonglve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyougonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='旅游攻略评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyougonglve`
--

LOCK TABLES `discusslvyougonglve` WRITE;
/*!40000 ALTER TABLE `discusslvyougonglve` DISABLE KEYS */;
INSERT INTO `discusslvyougonglve` VALUES (81,'2021-05-10 05:36:56',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-05-10 05:36:56',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-05-10 05:36:56',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-05-10 05:36:56',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-05-10 05:36:56',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-05-10 05:36:56',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslvyougonglve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (21,'2021-05-10 05:36:56','标题1','http://localhost:8080/ssm62087/upload/gonggaoxinxi_tupian1.jpg','公告内容1','2021-05-10'),(22,'2021-05-10 05:36:56','标题2','http://localhost:8080/ssm62087/upload/gonggaoxinxi_tupian2.jpg','公告内容2','2021-05-10'),(23,'2021-05-10 05:36:56','标题3','http://localhost:8080/ssm62087/upload/gonggaoxinxi_tupian3.jpg','公告内容3','2021-05-10'),(24,'2021-05-10 05:36:56','标题4','http://localhost:8080/ssm62087/upload/gonggaoxinxi_tupian4.jpg','公告内容4','2021-05-10'),(25,'2021-05-10 05:36:56','标题5','http://localhost:8080/ssm62087/upload/gonggaoxinxi_tupian5.jpg','公告内容5','2021-05-10'),(26,'2021-05-10 05:36:56','标题6','http://localhost:8080/ssm62087/upload/gonggaoxinxi_tupian6.jpg','公告内容6','2021-05-10');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jingdianxingji` varchar(200) DEFAULT NULL COMMENT '景点星级',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jingdianxiangqing` longtext COMMENT '景点详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (31,'2021-05-10 05:36:56','景点名称1','http://localhost:8080/ssm62087/upload/jingdianxinxi_tupian1.jpg','四星','88','8:00-17:30','景点地址1','020-89819991','<p>景点详情1</p>'),(32,'2021-05-10 05:36:56','景点名称2','http://localhost:8080/ssm62087/upload/jingdianxinxi_tupian2.jpg','三星','60','8:30-18:00','景点地址2','020-89819992','<p>景点详情2</p>'),(33,'2021-05-10 05:36:56','景点名称3','http://localhost:8080/ssm62087/upload/jingdianxinxi_tupian3.jpg','一星','门票价格3','营业时间3','景点地址3','020-89819993','景点详情3'),(34,'2021-05-10 05:36:56','景点名称4','http://localhost:8080/ssm62087/upload/jingdianxinxi_tupian4.jpg','一星','门票价格4','营业时间4','景点地址4','020-89819994','景点详情4'),(35,'2021-05-10 05:36:56','景点名称5','http://localhost:8080/ssm62087/upload/jingdianxinxi_tupian5.jpg','一星','门票价格5','营业时间5','景点地址5','020-89819995','景点详情5'),(36,'2021-05-10 05:36:56','景点名称6','http://localhost:8080/ssm62087/upload/jingdianxinxi_tupian6.jpg','一星','门票价格6','营业时间6','景点地址6','020-89819996','景点详情6');
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianxinxi`
--

DROP TABLE IF EXISTS `jiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiudianxingji` varchar(200) DEFAULT NULL COMMENT '酒店星级',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiudianxiangqing` longtext COMMENT '酒店详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='酒店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianxinxi`
--

LOCK TABLES `jiudianxinxi` WRITE;
/*!40000 ALTER TABLE `jiudianxinxi` DISABLE KEYS */;
INSERT INTO `jiudianxinxi` VALUES (51,'2021-05-10 05:36:56','酒店名称1','http://localhost:8080/ssm62087/upload/jiudianxinxi_tupian1.jpg','四星','豪华酒店','酒店地址1','13823888881','<p>酒店详情1</p>'),(52,'2021-05-10 05:36:56','酒店名称2','http://localhost:8080/ssm62087/upload/jiudianxinxi_tupian2.jpg','一星','豪华酒店','酒店地址2','13823888882','酒店详情2'),(53,'2021-05-10 05:36:56','酒店名称3','http://localhost:8080/ssm62087/upload/jiudianxinxi_tupian3.jpg','一星','豪华酒店','酒店地址3','13823888883','酒店详情3'),(54,'2021-05-10 05:36:56','酒店名称4','http://localhost:8080/ssm62087/upload/jiudianxinxi_tupian4.jpg','一星','豪华酒店','酒店地址4','13823888884','酒店详情4'),(55,'2021-05-10 05:36:56','酒店名称5','http://localhost:8080/ssm62087/upload/jiudianxinxi_tupian5.jpg','一星','豪华酒店','酒店地址5','13823888885','酒店详情5'),(56,'2021-05-10 05:36:56','酒店名称6','http://localhost:8080/ssm62087/upload/jiudianxinxi_tupian6.jpg','一星','豪华酒店','酒店地址6','13823888886','酒店详情6');
/*!40000 ALTER TABLE `jiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyougonglve`
--

DROP TABLE IF EXISTS `lvyougonglve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyougonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonglve` longtext COMMENT '攻略',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620625729338 DEFAULT CHARSET=utf8 COMMENT='旅游攻略';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyougonglve`
--

LOCK TABLES `lvyougonglve` WRITE;
/*!40000 ALTER TABLE `lvyougonglve` DISABLE KEYS */;
INSERT INTO `lvyougonglve` VALUES (61,'2021-05-10 05:36:56','标题1','http://localhost:8080/ssm62087/upload/lvyougonglve_tupian1.jpg','攻略1','2021-05-10','用户名1','用户姓名1'),(62,'2021-05-10 05:36:56','标题2','http://localhost:8080/ssm62087/upload/lvyougonglve_tupian2.jpg','攻略2','2021-05-10','用户名2','用户姓名2'),(63,'2021-05-10 05:36:56','标题3','http://localhost:8080/ssm62087/upload/lvyougonglve_tupian3.jpg','攻略3','2021-05-10','用户名3','用户姓名3'),(64,'2021-05-10 05:36:56','标题4','http://localhost:8080/ssm62087/upload/lvyougonglve_tupian4.jpg','攻略4','2021-05-10','用户名4','用户姓名4'),(65,'2021-05-10 05:36:56','标题5','http://localhost:8080/ssm62087/upload/lvyougonglve_tupian5.jpg','攻略5','2021-05-10','用户名5','用户姓名5'),(66,'2021-05-10 05:36:56','标题6','http://localhost:8080/ssm62087/upload/lvyougonglve_tupian6.jpg','攻略6','2021-05-10','用户名6','用户姓名6'),(1620625729337,'2021-05-10 05:48:49','旅游攻略','http://localhost:8080/ssm62087/upload/1620625712364.jpg','<p>sdgsgsdgdsgsxcbcbvdfhfdh</p>','2021-05-12','11','杨丽');
/*!40000 ALTER TABLE `lvyougonglve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menpiaogoumai`
--

DROP TABLE IF EXISTS `menpiaogoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menpiaogoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620625632521 DEFAULT CHARSET=utf8 COMMENT='门票购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menpiaogoumai`
--

LOCK TABLES `menpiaogoumai` WRITE;
/*!40000 ALTER TABLE `menpiaogoumai` DISABLE KEYS */;
INSERT INTO `menpiaogoumai` VALUES (41,'2021-05-10 05:36:56','景点名称1','门票价格1','景点地址1','联系电话1','2021-05-10 13:36:56','用户名1','用户姓名1','手机号码1','未支付'),(42,'2021-05-10 05:36:56','景点名称2','门票价格2','景点地址2','联系电话2','2021-05-10 13:36:56','用户名2','用户姓名2','手机号码2','未支付'),(43,'2021-05-10 05:36:56','景点名称3','门票价格3','景点地址3','联系电话3','2021-05-10 13:36:56','用户名3','用户姓名3','手机号码3','未支付'),(44,'2021-05-10 05:36:56','景点名称4','门票价格4','景点地址4','联系电话4','2021-05-10 13:36:56','用户名4','用户姓名4','手机号码4','未支付'),(45,'2021-05-10 05:36:56','景点名称5','门票价格5','景点地址5','联系电话5','2021-05-10 13:36:56','用户名5','用户姓名5','手机号码5','未支付'),(46,'2021-05-10 05:36:56','景点名称6','门票价格6','景点地址6','联系电话6','2021-05-10 13:36:56','用户名6','用户姓名6','手机号码6','未支付'),(1620625632520,'2021-05-10 05:47:11','景点名称1','88','景点地址1','020-89819991','2021-05-10 13:46:51','11','杨丽','13823899999','已支付');
/*!40000 ALTER TABLE `menpiaogoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','68rm1gwel1t40711e4c74e308wko8pv2','2021-05-10 05:38:05','2021-05-10 06:38:06'),(2,1,'abo','users','管理员','rq25ism9bykstw3okzlh7nchl73ejckc','2021-05-10 05:38:49','2021-05-10 06:50:16'),(3,1620625521899,'11','yonghu','用户','1y7d09voidpjdlxw3530e2d4onpmp7ry','2021-05-10 05:45:47','2021-05-10 06:45:48');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-05-10 05:36:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620625521900 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-05-10 05:36:56','用户1','123456','用户姓名1','http://localhost:8080/ssm62087/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com'),(12,'2021-05-10 05:36:56','用户2','123456','用户姓名2','http://localhost:8080/ssm62087/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com'),(13,'2021-05-10 05:36:56','用户3','123456','用户姓名3','http://localhost:8080/ssm62087/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com'),(14,'2021-05-10 05:36:56','用户4','123456','用户姓名4','http://localhost:8080/ssm62087/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com'),(15,'2021-05-10 05:36:56','用户5','123456','用户姓名5','http://localhost:8080/ssm62087/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com'),(16,'2021-05-10 05:36:56','用户6','123456','用户姓名6','http://localhost:8080/ssm62087/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com'),(1620625521899,'2021-05-10 05:45:21','11','123456','杨丽','http://localhost:8080/ssm62087/upload/1620625562157.jpg','女','30','13823899999','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-11 17:08:30
