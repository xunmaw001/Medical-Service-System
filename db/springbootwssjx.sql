-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootwssjx
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-12-29 09:16:58',1,1,'提问1','回复1',1),(2,'2020-12-29 09:16:58',2,2,'提问2','回复2',2),(3,'2020-12-29 09:16:58',3,3,'提问3','回复3',3),(4,'2020-12-29 09:16:58',4,4,'提问4','回复4',4),(5,'2020-12-29 09:16:58',5,5,'提问5','回复5',5),(6,'2020-12-29 09:16:58',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootwssjx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootwssjx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootwssjx/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/springbootwssjx/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/springbootwssjx/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
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
  `gonggaomingcheng` varchar(200) NOT NULL COMMENT '公告名称',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (1,'2020-12-29 09:16:58','公告名称1','公告类型1','http://localhost:8080/springbootwssjx/upload/gonggaoxinxi_tupian1.jpg','公告内容1','2020-12-29 17:16:58'),(2,'2020-12-29 09:16:58','公告名称2','公告类型2','http://localhost:8080/springbootwssjx/upload/gonggaoxinxi_tupian2.jpg','公告内容2','2020-12-29 17:16:58'),(3,'2020-12-29 09:16:58','公告名称3','公告类型3','http://localhost:8080/springbootwssjx/upload/gonggaoxinxi_tupian3.jpg','公告内容3','2020-12-29 17:16:58'),(4,'2020-12-29 09:16:58','公告名称4','公告类型4','http://localhost:8080/springbootwssjx/upload/gonggaoxinxi_tupian4.jpg','公告内容4','2020-12-29 17:16:58'),(5,'2020-12-29 09:16:58','公告名称5','公告类型5','http://localhost:8080/springbootwssjx/upload/gonggaoxinxi_tupian5.jpg','公告内容5','2020-12-29 17:16:58'),(6,'2020-12-29 09:16:58','公告名称6','公告类型6','http://localhost:8080/springbootwssjx/upload/gonggaoxinxi_tupian6.jpg','公告内容6','2020-12-29 17:16:58');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaixinxi`
--

DROP TABLE IF EXISTS `goumaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhensuoxinxi` varchar(200) DEFAULT NULL COMMENT '诊所信息',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购买信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaixinxi`
--

LOCK TABLES `goumaixinxi` WRITE;
/*!40000 ALTER TABLE `goumaixinxi` DISABLE KEYS */;
INSERT INTO `goumaixinxi` VALUES (1,'2020-12-29 09:16:58','订单编号1','名称1','类型1',1,1,1,'2020-12-29','账号1','诊所信息1','否','','未支付'),(2,'2020-12-29 09:16:58','订单编号2','名称2','类型2',2,2,2,'2020-12-29','账号2','诊所信息2','否','','未支付'),(3,'2020-12-29 09:16:58','订单编号3','名称3','类型3',3,3,3,'2020-12-29','账号3','诊所信息3','否','','未支付'),(4,'2020-12-29 09:16:58','订单编号4','名称4','类型4',4,4,4,'2020-12-29','账号4','诊所信息4','否','','未支付'),(5,'2020-12-29 09:16:58','订单编号5','名称5','类型5',5,5,5,'2020-12-29','账号5','诊所信息5','否','','未支付'),(6,'2020-12-29 09:16:58','订单编号6','名称6','类型6',6,6,6,'2020-12-29','账号6','诊所信息6','否','','未支付');
/*!40000 ALTER TABLE `goumaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangdangan`
--

DROP TABLE IF EXISTS `jiankangdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `danganmingcheng` varchar(200) DEFAULT NULL COMMENT '档案名称',
  `danganleixing` varchar(200) DEFAULT NULL COMMENT '档案类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `muqianzhuangkuang` longtext COMMENT '目前状况',
  `bingshi` longtext COMMENT '病史',
  `jiuzhenyiyuan` varchar(200) DEFAULT NULL COMMENT '就诊医院',
  `danganwenjian` varchar(200) DEFAULT NULL COMMENT '档案文件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='健康档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangdangan`
--

LOCK TABLES `jiankangdangan` WRITE;
/*!40000 ALTER TABLE `jiankangdangan` DISABLE KEYS */;
INSERT INTO `jiankangdangan` VALUES (1,'2020-12-29 09:16:58','档案编号1','档案名称1','无疾病档案','用户名1','姓名1','性别1','目前状况1','病史1','就诊医院1','','2020-12-29'),(2,'2020-12-29 09:16:58','档案编号2','档案名称2','无疾病档案','用户名2','姓名2','性别2','目前状况2','病史2','就诊医院2','','2020-12-29'),(3,'2020-12-29 09:16:58','档案编号3','档案名称3','无疾病档案','用户名3','姓名3','性别3','目前状况3','病史3','就诊医院3','','2020-12-29'),(4,'2020-12-29 09:16:58','档案编号4','档案名称4','无疾病档案','用户名4','姓名4','性别4','目前状况4','病史4','就诊医院4','','2020-12-29'),(5,'2020-12-29 09:16:58','档案编号5','档案名称5','无疾病档案','用户名5','姓名5','性别5','目前状况5','病史5','就诊医院5','','2020-12-29'),(6,'2020-12-29 09:16:58','档案编号6','档案名称6','无疾病档案','用户名6','姓名6','性别6','目前状况6','病史6','就诊医院6','','2020-12-29');
/*!40000 ALTER TABLE `jiankangdangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinjishigu`
--

DROP TABLE IF EXISTS `jinjishigu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinjishigu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fashengshijian` datetime DEFAULT NULL COMMENT '发生时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='紧急事故';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinjishigu`
--

LOCK TABLES `jinjishigu` WRITE;
/*!40000 ALTER TABLE `jinjishigu` DISABLE KEYS */;
INSERT INTO `jinjishigu` VALUES (1,'2020-12-29 09:16:58','标题1','内容1','2020-12-29 17:16:58','用户名1','姓名1','否',''),(2,'2020-12-29 09:16:58','标题2','内容2','2020-12-29 17:16:58','用户名2','姓名2','否',''),(3,'2020-12-29 09:16:58','标题3','内容3','2020-12-29 17:16:58','用户名3','姓名3','否',''),(4,'2020-12-29 09:16:58','标题4','内容4','2020-12-29 17:16:58','用户名4','姓名4','否',''),(5,'2020-12-29 09:16:58','标题5','内容5','2020-12-29 17:16:58','用户名5','姓名5','否',''),(6,'2020-12-29 09:16:58','标题6','内容6','2020-12-29 17:16:58','用户名6','姓名6','否','');
/*!40000 ALTER TABLE `jinjishigu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaohexinxi`
--

DROP TABLE IF EXISTS `kaohexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaohexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kaoheqingkuang` varchar(200) DEFAULT NULL COMMENT '考核情况',
  `jiangli` varchar(200) DEFAULT NULL COMMENT '奖励',
  `pingyu` longtext COMMENT '评语',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='考核信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaohexinxi`
--

LOCK TABLES `kaohexinxi` WRITE;
/*!40000 ALTER TABLE `kaohexinxi` DISABLE KEYS */;
INSERT INTO `kaohexinxi` VALUES (1,'2020-12-29 09:16:58','名称1','账号1','姓名1','考核情况1','奖励1','评语1','2020-12-29'),(2,'2020-12-29 09:16:58','名称2','账号2','姓名2','考核情况2','奖励2','评语2','2020-12-29'),(3,'2020-12-29 09:16:58','名称3','账号3','姓名3','考核情况3','奖励3','评语3','2020-12-29'),(4,'2020-12-29 09:16:58','名称4','账号4','姓名4','考核情况4','奖励4','评语4','2020-12-29'),(5,'2020-12-29 09:16:58','名称5','账号5','姓名5','考核情况5','奖励5','评语5','2020-12-29'),(6,'2020-12-29 09:16:58','名称6','账号6','姓名6','考核情况6','奖励6','评语6','2020-12-29');
/*!40000 ALTER TABLE `kaohexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leixingxinxi`
--

DROP TABLE IF EXISTS `leixingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leixingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='类型信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leixingxinxi`
--

LOCK TABLES `leixingxinxi` WRITE;
/*!40000 ALTER TABLE `leixingxinxi` DISABLE KEYS */;
INSERT INTO `leixingxinxi` VALUES (1,'2020-12-29 09:16:58','类型1'),(2,'2020-12-29 09:16:58','类型2'),(3,'2020-12-29 09:16:58','类型3'),(4,'2020-12-29 09:16:58','类型4'),(5,'2020-12-29 09:16:58','类型5'),(6,'2020-12-29 09:16:58','类型6');
/*!40000 ALTER TABLE `leixingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2020-12-29 09:16:58',1,'用户名1','留言内容1','回复内容1'),(2,'2020-12-29 09:16:58',2,'用户名2','留言内容2','回复内容2'),(3,'2020-12-29 09:16:58',3,'用户名3','留言内容3','回复内容3'),(4,'2020-12-29 09:16:58',4,'用户名4','留言内容4','回复内容4'),(5,'2020-12-29 09:16:58',5,'用户名5','留言内容5','回复内容5'),(6,'2020-12-29 09:16:58',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `putongcunmin`
--

DROP TABLE IF EXISTS `putongcunmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `putongcunmin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1609233644600 DEFAULT CHARSET=utf8 COMMENT='普通村民';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `putongcunmin`
--

LOCK TABLES `putongcunmin` WRITE;
/*!40000 ALTER TABLE `putongcunmin` DISABLE KEYS */;
INSERT INTO `putongcunmin` VALUES (1,'2020-12-29 09:16:58','普通村民1','123456','姓名1','男','http://localhost:8080/springbootwssjx/upload/putongcunmin_touxiang1.jpg','身份证1','13823888881','773890001@qq.com'),(2,'2020-12-29 09:16:58','普通村民2','123456','姓名2','男','http://localhost:8080/springbootwssjx/upload/putongcunmin_touxiang2.jpg','身份证2','13823888882','773890002@qq.com'),(3,'2020-12-29 09:16:58','普通村民3','123456','姓名3','男','http://localhost:8080/springbootwssjx/upload/putongcunmin_touxiang3.jpg','身份证3','13823888883','773890003@qq.com'),(4,'2020-12-29 09:16:58','普通村民4','123456','姓名4','男','http://localhost:8080/springbootwssjx/upload/putongcunmin_touxiang4.jpg','身份证4','13823888884','773890004@qq.com'),(5,'2020-12-29 09:16:58','普通村民5','123456','姓名5','男','http://localhost:8080/springbootwssjx/upload/putongcunmin_touxiang5.jpg','身份证5','13823888885','773890005@qq.com'),(6,'2020-12-29 09:16:58','普通村民6','123456','姓名6','男','http://localhost:8080/springbootwssjx/upload/putongcunmin_touxiang6.jpg','身份证6','13823888886','773890006@qq.com'),(1609233644599,'2020-12-29 09:20:44','001','001',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `putongcunmin` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1609233644599,'001','putongcunmin','普通村民','42r70r7d3iu49ueh8ewy4j4we8yx31t7','2020-12-29 09:20:49','2020-12-29 02:20:49');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-29 09:16:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangcunyisheng`
--

DROP TABLE IF EXISTS `xiangcunyisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangcunyisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhensuoxinxi` varchar(200) DEFAULT NULL COMMENT '诊所信息',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乡村医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangcunyisheng`
--

LOCK TABLES `xiangcunyisheng` WRITE;
/*!40000 ALTER TABLE `xiangcunyisheng` DISABLE KEYS */;
INSERT INTO `xiangcunyisheng` VALUES (1,'2020-12-29 09:16:58','乡村医生1','123456','姓名1','男','http://localhost:8080/springbootwssjx/upload/xiangcunyisheng_touxiang1.jpg','诊所信息1','440300199101010001','13823888881'),(2,'2020-12-29 09:16:58','乡村医生2','123456','姓名2','男','http://localhost:8080/springbootwssjx/upload/xiangcunyisheng_touxiang2.jpg','诊所信息2','440300199202020002','13823888882'),(3,'2020-12-29 09:16:58','乡村医生3','123456','姓名3','男','http://localhost:8080/springbootwssjx/upload/xiangcunyisheng_touxiang3.jpg','诊所信息3','440300199303030003','13823888883'),(4,'2020-12-29 09:16:58','乡村医生4','123456','姓名4','男','http://localhost:8080/springbootwssjx/upload/xiangcunyisheng_touxiang4.jpg','诊所信息4','440300199404040004','13823888884'),(5,'2020-12-29 09:16:58','乡村医生5','123456','姓名5','男','http://localhost:8080/springbootwssjx/upload/xiangcunyisheng_touxiang5.jpg','诊所信息5','440300199505050005','13823888885'),(6,'2020-12-29 09:16:58','乡村医生6','123456','姓名6','男','http://localhost:8080/springbootwssjx/upload/xiangcunyisheng_touxiang6.jpg','诊所信息6','440300199606060006','13823888886');
/*!40000 ALTER TABLE `xiangcunyisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangcunzhenshi`
--

DROP TABLE IF EXISTS `xiangcunzhenshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangcunzhenshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhensuomingcheng` varchar(200) NOT NULL COMMENT '诊所名称',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zigezhengshu` varchar(200) DEFAULT NULL COMMENT '资格证书',
  `jianjie` longtext COMMENT '简介',
  `xianyourenshu` varchar(200) DEFAULT NULL COMMENT '现有人数',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乡村诊室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangcunzhenshi`
--

LOCK TABLES `xiangcunzhenshi` WRITE;
/*!40000 ALTER TABLE `xiangcunzhenshi` DISABLE KEYS */;
INSERT INTO `xiangcunzhenshi` VALUES (1,'2020-12-29 09:16:58','诊所名称1','大型','国有','','简介1','现有人数1','020-89819991','账号1','姓名1','否','',1,1,'宇宙银河系地球1号'),(2,'2020-12-29 09:16:58','诊所名称2','大型','国有','','简介2','现有人数2','020-89819992','账号2','姓名2','否','',2,2,'宇宙银河系地球2号'),(3,'2020-12-29 09:16:58','诊所名称3','大型','国有','','简介3','现有人数3','020-89819993','账号3','姓名3','否','',3,3,'宇宙银河系地球3号'),(4,'2020-12-29 09:16:58','诊所名称4','大型','国有','','简介4','现有人数4','020-89819994','账号4','姓名4','否','',4,4,'宇宙银河系地球4号'),(5,'2020-12-29 09:16:58','诊所名称5','大型','国有','','简介5','现有人数5','020-89819995','账号5','姓名5','否','',5,5,'宇宙银河系地球5号'),(6,'2020-12-29 09:16:58','诊所名称6','大型','国有','','简介6','现有人数6','020-89819996','账号6','姓名6','否','',6,6,'宇宙银河系地球6号');
/*!40000 ALTER TABLE `xiangcunzhenshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexipeixun`
--

DROP TABLE IF EXISTS `xuexipeixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexipeixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `peixunxiangmu` varchar(200) DEFAULT NULL COMMENT '培训项目',
  `peixunduixiang` varchar(200) DEFAULT NULL COMMENT '培训对象',
  `peixunneirong` longtext COMMENT '培训内容',
  `peixunshijian` varchar(200) DEFAULT NULL COMMENT '培训时间',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学习培训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexipeixun`
--

LOCK TABLES `xuexipeixun` WRITE;
/*!40000 ALTER TABLE `xuexipeixun` DISABLE KEYS */;
INSERT INTO `xuexipeixun` VALUES (1,'2020-12-29 09:16:58','名称1','培训项目1','培训对象1','培训内容1','培训时间1','2020-12-29'),(2,'2020-12-29 09:16:58','名称2','培训项目2','培训对象2','培训内容2','培训时间2','2020-12-29'),(3,'2020-12-29 09:16:58','名称3','培训项目3','培训对象3','培训内容3','培训时间3','2020-12-29'),(4,'2020-12-29 09:16:58','名称4','培训项目4','培训对象4','培训内容4','培训时间4','2020-12-29'),(5,'2020-12-29 09:16:58','名称5','培训项目5','培训对象5','培训内容5','培训时间5','2020-12-29'),(6,'2020-12-29 09:16:58','名称6','培训项目6','培训对象6','培训内容6','培训时间6','2020-12-29');
/*!40000 ALTER TABLE `xuexipeixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiliaoditu`
--

DROP TABLE IF EXISTS `yiliaoditu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiliaoditu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='医疗地图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiliaoditu`
--

LOCK TABLES `yiliaoditu` WRITE;
/*!40000 ALTER TABLE `yiliaoditu` DISABLE KEYS */;
INSERT INTO `yiliaoditu` VALUES (1,'2020-12-29 09:16:58','名称1','市区','医院','http://localhost:8080/springbootwssjx/upload/yiliaoditu_tupian1.jpg','详情1',1,1,'宇宙银河系地球1号'),(2,'2020-12-29 09:16:58','名称2','市区','医院','http://localhost:8080/springbootwssjx/upload/yiliaoditu_tupian2.jpg','详情2',2,2,'宇宙银河系地球2号'),(3,'2020-12-29 09:16:58','名称3','市区','医院','http://localhost:8080/springbootwssjx/upload/yiliaoditu_tupian3.jpg','详情3',3,3,'宇宙银河系地球3号'),(4,'2020-12-29 09:16:58','名称4','市区','医院','http://localhost:8080/springbootwssjx/upload/yiliaoditu_tupian4.jpg','详情4',4,4,'宇宙银河系地球4号'),(5,'2020-12-29 09:16:58','名称5','市区','医院','http://localhost:8080/springbootwssjx/upload/yiliaoditu_tupian5.jpg','详情5',5,5,'宇宙银河系地球5号'),(6,'2020-12-29 09:16:58','名称6','市区','医院','http://localhost:8080/springbootwssjx/upload/yiliaoditu_tupian6.jpg','详情6',6,6,'宇宙银河系地球6号');
/*!40000 ALTER TABLE `yiliaoditu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiliaoyaopin`
--

DROP TABLE IF EXISTS `yiliaoyaopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiliaoyaopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshao` longtext COMMENT '介绍',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `youxiaoqi` varchar(200) DEFAULT NULL COMMENT '有效期',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='医疗药品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiliaoyaopin`
--

LOCK TABLES `yiliaoyaopin` WRITE;
/*!40000 ALTER TABLE `yiliaoyaopin` DISABLE KEYS */;
INSERT INTO `yiliaoyaopin` VALUES (1,'2020-12-29 09:16:58','编号1','名称1','类型1','http://localhost:8080/springbootwssjx/upload/yiliaoyaopin_tupian1.jpg','介绍1',1,'有效期1','2020-12-29'),(2,'2020-12-29 09:16:58','编号2','名称2','类型2','http://localhost:8080/springbootwssjx/upload/yiliaoyaopin_tupian2.jpg','介绍2',2,'有效期2','2020-12-29'),(3,'2020-12-29 09:16:58','编号3','名称3','类型3','http://localhost:8080/springbootwssjx/upload/yiliaoyaopin_tupian3.jpg','介绍3',3,'有效期3','2020-12-29'),(4,'2020-12-29 09:16:58','编号4','名称4','类型4','http://localhost:8080/springbootwssjx/upload/yiliaoyaopin_tupian4.jpg','介绍4',4,'有效期4','2020-12-29'),(5,'2020-12-29 09:16:58','编号5','名称5','类型5','http://localhost:8080/springbootwssjx/upload/yiliaoyaopin_tupian5.jpg','介绍5',5,'有效期5','2020-12-29'),(6,'2020-12-29 09:16:58','编号6','名称6','类型6','http://localhost:8080/springbootwssjx/upload/yiliaoyaopin_tupian6.jpg','介绍6',6,'有效期6','2020-12-29');
/*!40000 ALTER TABLE `yiliaoyaopin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 15:06:55
