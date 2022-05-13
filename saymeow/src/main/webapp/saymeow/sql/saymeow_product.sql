-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.21 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 saymeow.product 구조 내보내기
CREATE TABLE IF NOT EXISTS `product` (
  `pnum` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) NOT NULL,
  `mclass` varchar(20) NOT NULL,
  `sclass` varchar(20) NOT NULL,
  `price1` int DEFAULT NULL,
  `price2` int DEFAULT NULL,
  `price3` int DEFAULT NULL,
  `image` varchar(20) DEFAULT 'ready.png',
  `detail` varchar(20) DEFAULT NULL,
  `pstat` tinyint DEFAULT '1',
  `stock` int DEFAULT '0',
  PRIMARY KEY (`pnum`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- 테이블 데이터 saymeow.product:~80 rows (대략적) 내보내기
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`pnum`, `pname`, `mclass`, `sclass`, `price1`, `price2`, `price3`, `image`, `detail`, `pstat`, `stock`) VALUES
	(1, '건식사료1', 'food', 'dry', 33000, 21000, 12000, 'dry1.png', 'detail1.png', 1, 100),
	(2, '건식사료2', 'food', 'dry', 29000, 17000, 12000, 'dry2.png', 'detail2.png', 1, 100),
	(3, '건식사료3', 'food', 'dry', 22000, 10000, 12000, 'dry3.png', 'detail3.png', 1, 100),
	(4, '건식사료4', 'food', 'dry', 28000, 21000, 7000, 'dry4.png', 'detail1.png', 1, 100),
	(5, '건식사료5', 'food', 'dry', 25000, 18750, 6250, 'dry1.png', 'detail2.png', 1, 100),
	(6, '건식사료6', 'food', 'dry', 40000, 30000, 10000, 'dry2.png', 'detail3.png', 1, 100),
	(7, '건식사료7', 'food', 'dry', 30000, 22500, 7500, 'dry3.png', 'detail1.png', 1, 100),
	(8, '건식사료8', 'food', 'dry', 36000, 27000, 9000, 'dry4.png', 'detail2.png', 1, 100),
	(9, '건식사료9', 'food', 'dry', 37000, 27750, 9250, 'dry3.png', 'detail3.png', 1, 100),
	(10, '건식사료10', 'food', 'dry', 27000, 20250, 6750, 'ready.png', 'detail1.png', 1, 100),
	(11, '습식사료1', 'food', 'wet', 29000, 21750, 7250, 'wet1.png', 'detail2.png', 1, 100),
	(12, '습식사료2', 'food', 'wet', 33000, 24750, 8250, 'wet2.png', 'detail3.png', 1, 100),
	(13, '습식사료3', 'food', 'wet', 35000, 26250, 8750, 'wet3.png', 'detail1.png', 1, 100),
	(14, '습식사료4', 'food', 'wet', 39000, 29250, 9750, 'wet4.png', 'detail2.png', 1, 100),
	(15, '습식사료5', 'food', 'wet', 42000, 31500, 10500, 'wet2.png', 'detail3.png', 1, 100),
	(16, '습식사료6', 'food', 'wet', 49000, 36750, 12250, 'wet3.png', 'detail1.png', 1, 100),
	(17, '습식사료7', 'food', 'wet', 55000, 41250, 13750, 'wet1.png', 'detail2.png', 1, 100),
	(18, '습식사료8', 'food', 'wet', 65000, 48750, 16250, 'ready.png', 'detail3.png', 1, 100),
	(19, '습식사료9', 'food', 'wet', 80000, 60000, 20000, 'wet3.png', 'detail1.png', 1, 100),
	(20, '습식사료10', 'food', 'wet', 67000, 50250, 16750, 'wet1.png', 'detail2.png', 1, 100),
	(21, '스낵간식1', 'treat', 'snack', 12000, 9000, 3000, 'snack1.png', 'detail3.png', 1, 100),
	(22, '스낵간식2', 'treat', 'snack', 15000, 11250, 3750, 'snack2.png', 'detail1.png', 1, 100),
	(23, '스낵간식3', 'treat', 'snack', 11000, 8250, 2750, 'snack3.png', 'detail2.png', 1, 100),
	(24, '스낵간식4', 'treat', 'snack', 19000, 14250, 4750, 'snack4.png', 'detail3.png', 1, 100),
	(25, '스낵간식5', 'treat', 'snack', 25000, 18750, 6250, 'snack1.png', 'detail1.png', 1, 100),
	(26, '스낵간식6', 'treat', 'snack', 22000, 16500, 5500, 'snack3.png', 'detail2.png', 1, 100),
	(27, '스낵간식7', 'treat', 'snack', 31000, 23250, 7750, 'snack4.png', 'detail3.png', 1, 100),
	(28, '스낵간식8', 'treat', 'snack', 36000, 27000, 9000, 'ready.png', 'detail1.png', 1, 100),
	(29, '스낵간식9', 'treat', 'snack', 29000, 21750, 7250, 'snack1.png', 'detail2.png', 1, 100),
	(30, '스낵간식10', 'treat', 'snack', 42000, 31500, 10500, 'snack2.png', 'detail3.png', 1, 100),
	(31, '스틱간식1', 'treat', 'stick', 22000, 16500, 5500, 'stick1.png', 'detail1.png', 1, 100),
	(32, '스틱간식2', 'treat', 'stick', 26000, 19500, 6500, 'stick2.png', 'detail2.png', 1, 100),
	(33, '스틱간식3', 'treat', 'stick', 19000, 14250, 4750, 'stick3.png', 'detail3.png', 1, 100),
	(34, '스틱간식4', 'treat', 'stick', 9000, 6750, 2250, 'stick4.png', 'detail1.png', 1, 100),
	(35, '스틱간식5', 'treat', 'stick', 13000, 9750, 3250, 'stick1.png', 'detail2.png', 1, 100),
	(36, '스틱간식6', 'treat', 'stick', 24000, 18000, 6000, 'stick2.png', 'detail3.png', 1, 100),
	(37, '스틱간식7', 'treat', 'stick', 27000, 20250, 6750, 'stick3.png', 'detail1.png', 1, 100),
	(38, '스틱간식8', 'treat', 'stick', 8800, 6600, 2200, 'stick4.png', 'detail2.png', 1, 100),
	(39, '스틱간식9', 'treat', 'stick', 14000, 10500, 3500, 'ready.png', 'detail3.png', 1, 100),
	(40, '스틱간식10', 'treat', 'stick', 30000, 22500, 7500, 'stick2.png', 'detail1.png', 1, 100),
	(41, '카샤카샤1', 'toy', 'pole', 29000, 21750, 7250, 'pole1.png', 'detail2.png', 1, 100),
	(42, '카샤카샤2', 'toy', 'pole', 33000, 24750, 8250, 'pole2.png', 'detail3.png', 1, 100),
	(43, '카샤카샤3', 'toy', 'pole', 15000, 11250, 3750, 'pole3.png', 'detail1.png', 1, 100),
	(44, '카샤카샤4', 'toy', 'pole', 18000, 13500, 4500, 'pole4.png', 'detail2.png', 1, 100),
	(45, '카샤카샤5', 'toy', 'pole', 19000, 14250, 4750, 'ready.png', 'detail3.png', 1, 100),
	(46, '카샤카샤6', 'toy', 'pole', 25000, 18750, 6250, 'ready3.png', 'detail1.png', 1, 100),
	(47, '카샤카샤7', 'toy', 'pole', 28000, 21000, 7000, 'ready4.png', 'detail2.png', 1, 100),
	(48, '카샤카샤8', 'toy', 'pole', 27000, 20250, 6750, 'ready5.png', 'detail3.png', 1, 100),
	(49, '카샤카샤9', 'toy', 'pole', 40000, 30000, 10000, 'ready6.png', 'detail1.png', 1, 100),
	(50, '카샤카샤10', 'toy', 'pole', 36000, 27000, 9000, 'ready3.png', 'detail2.png', 1, 100),
	(51, '인형1', 'toy', 'plush', 3000, 2250, 750, 'plush1.png', 'detail3.png', 1, 100),
	(52, '인형2', 'toy', 'plush', 9900, 7425, 2475, 'plush2.png', 'detail1.png', 1, 100),
	(53, '인형3', 'toy', 'plush', 7000, 5250, 1750, 'plush3.png', 'detail2.png', 1, 100),
	(54, '인형4', 'toy', 'plush', 10000, 7500, 2500, 'plush4.png', 'detail3.png', 1, 100),
	(55, '인형5', 'toy', 'plush', 5100, 3825, 1275, 'plush2.png', 'detail1.png', 1, 100),
	(56, '인형6', 'toy', 'plush', 12000, 9000, 3000, 'plush3.png', 'detail2.png', 1, 100),
	(57, '인형7', 'toy', 'plush', 18000, 13500, 4500, 'plush4.png', 'detail3.png', 1, 100),
	(58, '인형8', 'toy', 'plush', 26000, 19500, 6500, 'ready.png', 'detail1.png', 1, 100),
	(59, '인형9', 'toy', 'plush', 30000, 22500, 7500, 'plush2.png', 'detail2.png', 1, 100),
	(60, '인형10', 'toy', 'plush', 2000, 1500, 500, 'plush3.png', 'detail3.png', 1, 100),
	(61, '모래1', 'litter', 'sand', 50000, 37500, 12500, 'sand1.png', 'detail1.png', 1, 100),
	(62, '모래2', 'litter', 'sand', 45000, 33750, 11250, 'sand2.png', 'detail2.png', 1, 100),
	(63, '모래3', 'litter', 'sand', 48000, 36000, 12000, 'sand3.png', 'detail3.png', 1, 100),
	(64, '모래4', 'litter', 'sand', 44000, 33000, 11000, 'sand4.png', 'detail1.png', 1, 100),
	(65, '모래5', 'litter', 'sand', 39000, 29250, 9750, 'sand2.png', 'detail2.png', 1, 100),
	(66, '모래6', 'litter', 'sand', 36000, 27000, 9000, 'sand4.png', 'detail3.png', 1, 100),
	(67, '모래7', 'litter', 'sand', 51000, 38250, 12750, 'sand3.png', 'detail1.png', 1, 100),
	(68, '모래8', 'litter', 'sand', 54000, 40500, 13500, 'sand1.png', 'detail2.png', 1, 100),
	(69, '모래9', 'litter', 'sand', 70000, 52500, 17500, 'ready.png', 'detail3.png', 1, 100),
	(70, '모래10', 'litter', 'sand', 60000, 45000, 15000, 'sand3.png', 'detail1.png', 1, 100),
	(71, '화장실1', 'litter', 'box', 70000, 52500, 17500, 'box2.png', 'detail2.png', 1, 100),
	(72, '화장실2', 'litter', 'box', 68000, 51000, 17000, 'box4.png', 'detail3.png', 1, 100),
	(73, '화장실3', 'litter', 'box', 80000, 60000, 20000, 'box1.png', 'detail1.png', 1, 100),
	(74, '화장실4', 'litter', 'box', 85000, 63750, 21250, 'box3.png', 'detail2.png', 1, 100),
	(75, '화장실5', 'litter', 'box', 77000, 57750, 19250, 'box4.png', 'detail3.png', 1, 100),
	(76, '화장실6', 'litter', 'box', 90000, 67500, 22500, 'box1.png', 'detail1.png', 1, 100),
	(77, '화장실7', 'litter', 'box', 100000, 75000, 25000, 'box2.png', 'detail2.png', 1, 100),
	(78, '화장실8', 'litter', 'box', 130000, 97500, 32500, 'box3.png', 'detail3.png', 1, 100),
	(79, '화장실9', 'litter', 'box', 99000, 74250, 24750, 'ready.png', 'detail2.png', 1, 100),
	(80, '화장실10', 'litter', 'box', 170000, 127500, 42500, 'box2.png', 'detail3.png', 1, 100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
