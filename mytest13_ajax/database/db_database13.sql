
create database db_database13;




use db_database13;

CREATE TABLE `tb_bbsinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `content` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


INSERT INTO `tb_bbsinfo` (`id`,`title`,`content`) VALUES
                                                         (1,'明日科技编程即将面市！','明日科技编程词典即将面市！'),
                                                         (2,'今明两天气温有所回升！','今明两天气温有所回升！'),
                                                         (3,'关于元旦放假的通知！','关于元旦放假的通知！');



DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookName` varchar(100) NOT NULL,
  `introduce` varchar(1000) NOT NULL,
  `author` varchar(30) NOT NULL COMMENT '作者',
  `picture` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;


INSERT INTO `tb_book` (`id`,`bookName`,`introduce`,`author`,`picture`) VALUES
                                                                              (1,'Java Web程序开范例宝典','本书精选了469个典型实例，所选实例覆盖了开发中的热点问题和关键问题。全书按实际应用进行分类，可以使读者在短时间内掌握更多有用的技术，快速提高编程水平。','明日科技','javawebcxkfflbd.jpg'),
                                                                              (2,'Java范例完全自学手册','本书是一本集查询、使用、学习和练习为一体的自学手册，书中介绍了应用Java进行开发的各种技术和技巧。','明日科技','javaslwqzxsc.jpg'),
                                                                              (3,'Java Web开发典型模块大全','本书以关键技术为核心，通过21个典型模块系统，全面地介绍了如何使用JSP进行各领域的程序开发。','明日科技','javawebdxmkdq.jpg'),
                                                                              (4,'JSP项目开发全程实录','本书提供了10个经典案例。这10个案例不仅按照软件工程的开发流程进行实施，而且在书中更是按照开发背景、需求分析、系统功能分析、数据库分析、数据库建模和系统开发的顺序进行讲解，务求使读者切实体会循序渐近的开发过程。','周桓、王殊宇','jspxmkfqcsl.jpg');


CREATE TABLE `tb_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` varchar(300) NOT NULL COMMENT '内容',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO `tb_news` (`id`,`title`,`content`,`addTime`) VALUES
                                                                (1,'新闻1','内容1','2009-11-27 16:01:57'),
                                                                (2,'新闻2','内容2','2009-11-27 16:17:02');


