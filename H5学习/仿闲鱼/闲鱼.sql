-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 demo.idlefish_association 结构
CREATE TABLE IF NOT EXISTS `idlefish_association` (
  `id` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `fishpondId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 demo.idlefish_buy 结构
CREATE TABLE IF NOT EXISTS `idlefish_buy` (
  `id` varchar(50) NOT NULL,
  `publishId` varchar(50) NOT NULL,
  `goodsName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 demo.idlefish_fishpond 结构
CREATE TABLE IF NOT EXISTS `idlefish_fishpond` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `publishCount` int(11) DEFAULT NULL,
  `curLng` varchar(50) DEFAULT NULL,
  `curLat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 demo.idlefish_publish 结构
CREATE TABLE IF NOT EXISTS `idlefish_publish` (
  `id` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `image1` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `reverse` varchar(50) DEFAULT NULL,
  `createTime` varchar(50) DEFAULT NULL,
  `fishpondId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 demo.idlefish_user 结构
CREATE TABLE IF NOT EXISTS `idlefish_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
