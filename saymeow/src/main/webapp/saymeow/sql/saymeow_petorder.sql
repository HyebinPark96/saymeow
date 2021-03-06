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

-- 테이블 saymeow.petorder 구조 내보내기
DROP TABLE IF EXISTS `petorder`;
CREATE TABLE IF NOT EXISTS `petorder` (
  `onum` int NOT NULL AUTO_INCREMENT,
  `pnum` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price1` int DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `oid` varchar(50) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `oaddress` varchar(200) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`onum`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- 테이블 데이터 saymeow.petorder:~340 rows (대략적) 내보내기
DELETE FROM `petorder`;
/*!40000 ALTER TABLE `petorder` DISABLE KEYS */;
INSERT INTO `petorder` (`onum`, `pnum`, `qty`, `price1`, `pname`, `oid`, `regdate`, `oaddress`, `state`) VALUES
	(1, 9, 6, 33000, '건식사료1', 'aaa', '2019-06-02', '서울', '2'),
	(2, 76, 2, 29000, '건식사료2', 'bbb', '2019-06-03', '경기', '2'),
	(3, 73, 3, 22000, '건식사료3', 'ccc', '2019-06-06', '인천', '2'),
	(4, 69, 2, 28000, '건식사료4', 'che', '2019-06-15', '부산', '2'),
	(5, 40, 1, 25000, '건식사료5', 'jqy', '2019-06-20', '부산', '2'),
	(6, 56, 2, 40000, '건식사료6', 'gix', '2019-06-21', '서울', '2'),
	(7, 47, 4, 30000, '건식사료7', 'cyg', '2019-06-24', '경기', '2'),
	(8, 32, 5, 36000, '건식사료8', 'rny', '2019-06-26', '인천', '2'),
	(9, 59, 2, 37000, '건식사료9', 'tgx', '2019-07-01', '제주도', '2'),
	(10, 36, 2, 27000, '건식사료10', 'bzr', '2019-07-01', '경남', '2'),
	(11, 79, 2, 29000, '습식사료1', 'bng', '2019-07-06', '경북', '2'),
	(12, 67, 9, 33000, '습식사료2', 'vlk', '2019-07-10', '충북', '2'),
	(13, 25, 6, 35000, '습식사료3', 'sqe', '2019-07-11', '충남', '2'),
	(14, 31, 5, 39000, '습식사료4', 'may', '2019-07-18', '부산', '2'),
	(15, 52, 1, 42000, '습식사료5', 'len', '2019-07-19', '서울', '2'),
	(16, 1, 9, 49000, '습식사료6', 'aij', '2019-07-21', '서울', '2'),
	(17, 7, 2, 55000, '습식사료7', 'mkp', '2019-07-23', '인천', '2'),
	(18, 75, 6, 65000, '습식사료8', 'dog', '2019-07-28', '인천', '2'),
	(19, 44, 5, 80000, '습식사료9', 'tty', '2019-07-28', '부산', '2'),
	(20, 55, 8, 67000, '습식사료10', 'nib', '2019-08-02', '강원도', '2'),
	(21, 13, 9, 12000, '스낵간식1', 'ucn', '2019-08-07', '대구', '2'),
	(22, 10, 8, 15000, '스낵간식2', 'aaa', '2019-08-07', '서울', '2'),
	(23, 45, 7, 11000, '스낵간식3', 'bbb', '2019-08-08', '경기', '2'),
	(24, 71, 7, 19000, '스낵간식4', 'ccc', '2019-08-14', '인천', '2'),
	(25, 41, 3, 25000, '스낵간식5', 'che', '2019-08-20', '부산', '2'),
	(26, 8, 7, 22000, '스낵간식6', 'jqy', '2019-08-23', '부산', '2'),
	(27, 16, 10, 31000, '스낵간식7', 'gix', '2019-08-24', '서울', '2'),
	(28, 77, 2, 36000, '스낵간식8', 'cyg', '2019-08-24', '경기', '2'),
	(29, 46, 2, 29000, '스낵간식9', 'rny', '2019-08-28', '인천', '2'),
	(30, 33, 6, 42000, '스낵간식10', 'tgx', '2019-09-07', '제주도', '2'),
	(31, 49, 1, 22000, '스틱간식1', 'bzr', '2019-09-08', '경남', '2'),
	(32, 3, 2, 26000, '스틱간식2', 'bng', '2019-09-26', '경북', '2'),
	(33, 48, 2, 19000, '스틱간식3', 'vlk', '2019-09-26', '충북', '2'),
	(34, 23, 7, 9000, '스틱간식4', 'sqe', '2019-09-27', '충남', '2'),
	(35, 14, 7, 13000, '스틱간식5', 'may', '2019-09-29', '부산', '2'),
	(36, 18, 3, 24000, '스틱간식6', 'len', '2019-10-02', '서울', '2'),
	(37, 37, 4, 27000, '스틱간식7', 'aij', '2019-10-02', '서울', '2'),
	(38, 12, 3, 8800, '스틱간식8', 'mkp', '2019-10-03', '인천', '2'),
	(39, 5, 8, 14000, '스틱간식9', 'dog', '2019-10-12', '인천', '2'),
	(40, 28, 2, 30000, '스틱간식10', 'tty', '2019-10-17', '부산', '2'),
	(41, 43, 1, 29000, '카샤카샤1', 'nib', '2019-10-20', '강원도', '2'),
	(42, 61, 3, 33000, '카샤카샤2', 'ucn', '2019-10-23', '대구', '2'),
	(43, 38, 2, 15000, '카샤카샤3', 'aaa', '2019-10-27', '서울', '2'),
	(44, 4, 1, 18000, '카샤카샤4', 'bbb', '2019-10-28', '경기', '2'),
	(45, 64, 1, 19000, '카샤카샤5', 'ccc', '2019-11-04', '인천', '2'),
	(46, 78, 1, 25000, '카샤카샤6', 'che', '2019-11-07', '부산', '2'),
	(47, 74, 4, 28000, '카샤카샤7', 'jqy', '2019-11-12', '부산', '2'),
	(48, 26, 2, 27000, '카샤카샤8', 'gix', '2019-11-17', '서울', '2'),
	(49, 65, 2, 40000, '카샤카샤9', 'cyg', '2019-11-22', '경기', '2'),
	(50, 35, 3, 36000, '카샤카샤10', 'rny', '2019-12-03', '인천', '2'),
	(51, 53, 8, 3000, '인형1', 'tgx', '2019-12-10', '제주도', '2'),
	(52, 24, 7, 9900, '인형2', 'bzr', '2019-12-13', '경남', '2'),
	(53, 70, 6, 7000, '인형3', 'bng', '2019-12-14', '경북', '2'),
	(54, 19, 3, 10000, '인형4', 'vlk', '2019-12-19', '충북', '2'),
	(55, 63, 1, 5100, '인형5', 'sqe', '2019-12-20', '충남', '2'),
	(56, 17, 4, 12000, '인형6', 'may', '2019-12-25', '부산', '2'),
	(57, 20, 3, 18000, '인형7', 'len', '2019-12-26', '서울', '2'),
	(58, 60, 4, 26000, '인형8', 'aij', '2019-12-27', '서울', '2'),
	(59, 42, 5, 30000, '인형9', 'mkp', '2019-12-30', '인천', '2'),
	(60, 62, 5, 2000, '인형10', 'dog', '2019-12-30', '인천', '2'),
	(61, 6, 1, 50000, '모래1', 'tty', '2020-01-02', '부산', '2'),
	(62, 54, 3, 45000, '모래2', 'nib', '2020-01-05', '강원도', '2'),
	(63, 58, 3, 48000, '모래3', 'ucn', '2020-01-05', '대구', '2'),
	(64, 34, 3, 44000, '모래4', 'aaa', '2020-01-21', '서울', '2'),
	(65, 72, 4, 39000, '모래5', 'bbb', '2020-01-22', '경기', '2'),
	(66, 51, 2, 36000, '모래6', 'ccc', '2020-01-26', '인천', '2'),
	(67, 15, 4, 51000, '모래7', 'che', '2020-01-28', '부산', '2'),
	(68, 2, 2, 54000, '모래8', 'jqy', '2020-01-28', '부산', '2'),
	(69, 27, 2, 70000, '모래9', 'gix', '2020-01-29', '서울', '2'),
	(70, 22, 2, 60000, '모래10', 'cyg', '2020-01-30', '경기', '2'),
	(71, 30, 3, 70000, '화장실1', 'rny', '2020-02-08', '인천', '2'),
	(72, 57, 1, 68000, '화장실2', 'tgx', '2020-02-09', '제주도', '2'),
	(73, 21, 1, 80000, '화장실3', 'bzr', '2020-02-14', '경남', '2'),
	(74, 11, 1, 85000, '화장실4', 'bng', '2020-02-16', '경북', '2'),
	(75, 39, 2, 77000, '화장실5', 'vlk', '2020-02-18', '충북', '2'),
	(76, 68, 2, 90000, '화장실6', 'sqe', '2020-02-20', '충남', '2'),
	(77, 29, 2, 100000, '화장실7', 'may', '2020-02-22', '부산', '2'),
	(78, 66, 3, 130000, '화장실8', 'len', '2020-02-22', '서울', '2'),
	(79, 50, 2, 99000, '화장실9', 'aij', '2020-02-26', '서울', '2'),
	(80, 80, 1, 170000, '화장실10', 'mkp', '2020-02-27', '인천', '2'),
	(81, 9, 1, 33000, '건식사료1', 'dog', '2020-02-29', '인천', '2'),
	(82, 76, 6, 29000, '건식사료2', 'tty', '2020-03-07', '부산', '2'),
	(83, 73, 2, 22000, '건식사료3', 'nib', '2020-03-10', '강원도', '2'),
	(84, 69, 6, 28000, '건식사료4', 'ucn', '2020-03-15', '대구', '2'),
	(85, 40, 1, 25000, '건식사료5', 'aaa', '2020-03-19', '서울', '2'),
	(86, 56, 6, 40000, '건식사료6', 'bbb', '2020-03-20', '경기', '2'),
	(87, 47, 5, 30000, '건식사료7', 'ccc', '2020-03-25', '인천', '2'),
	(88, 32, 3, 36000, '건식사료8', 'che', '2020-03-29', '부산', '2'),
	(89, 59, 4, 37000, '건식사료9', 'jqy', '2020-03-31', '부산', '2'),
	(90, 36, 10, 27000, '건식사료10', 'gix', '2020-04-09', '서울', '2'),
	(91, 79, 8, 29000, '습식사료1', 'cyg', '2020-04-11', '경기', '2'),
	(92, 67, 4, 33000, '습식사료2', 'rny', '2020-04-11', '인천', '2'),
	(93, 25, 9, 35000, '습식사료3', 'tgx', '2020-04-12', '제주도', '2'),
	(94, 31, 5, 39000, '습식사료4', 'bzr', '2020-04-19', '경남', '2'),
	(95, 52, 9, 42000, '습식사료5', 'bng', '2020-04-20', '경북', '2'),
	(96, 1, 9, 49000, '습식사료6', 'vlk', '2020-04-23', '충북', '2'),
	(97, 7, 9, 55000, '습식사료7', 'sqe', '2020-05-01', '충남', '2'),
	(98, 75, 9, 65000, '습식사료8', 'may', '2020-05-03', '부산', '2'),
	(99, 44, 1, 80000, '습식사료9', 'len', '2020-05-04', '서울', '2'),
	(100, 55, 8, 67000, '습식사료10', 'aij', '2020-05-07', '서울', '2'),
	(101, 13, 4, 12000, '스낵간식1', 'mkp', '2020-05-08', '인천', '2'),
	(102, 10, 8, 15000, '스낵간식2', 'dog', '2020-05-12', '인천', '2'),
	(103, 45, 2, 11000, '스낵간식3', 'tty', '2020-05-20', '부산', '2'),
	(104, 71, 8, 19000, '스낵간식4', 'nib', '2020-05-25', '강원도', '2'),
	(105, 41, 9, 25000, '스낵간식5', 'aaa', '2020-05-30', '대구', '2'),
	(106, 8, 1, 22000, '스낵간식6', 'bbb', '2020-06-03', '서울', '2'),
	(107, 16, 6, 31000, '스낵간식7', 'ccc', '2020-06-07', '경기', '2'),
	(108, 77, 5, 36000, '스낵간식8', 'che', '2020-06-08', '인천', '2'),
	(109, 46, 4, 29000, '스낵간식9', 'jqy', '2020-06-11', '부산', '2'),
	(110, 33, 5, 42000, '스낵간식10', 'gix', '2020-06-13', '부산', '2'),
	(111, 49, 7, 22000, '스틱간식1', 'cyg', '2020-06-15', '서울', '2'),
	(112, 3, 6, 26000, '스틱간식2', 'rny', '2020-06-22', '경기', '2'),
	(113, 48, 5, 19000, '스틱간식3', 'tgx', '2020-06-24', '인천', '2'),
	(114, 23, 8, 9000, '스틱간식4', 'bzr', '2020-06-27', '제주도', '2'),
	(115, 14, 4, 13000, '스틱간식5', 'bng', '2020-07-02', '경남', '2'),
	(116, 18, 10, 24000, '스틱간식6', 'vlk', '2020-07-06', '경북', '2'),
	(117, 37, 3, 27000, '스틱간식7', 'sqe', '2020-07-07', '충북', '2'),
	(118, 12, 9, 8800, '스틱간식8', 'may', '2020-07-10', '충남', '2'),
	(119, 5, 2, 14000, '스틱간식9', 'len', '2020-07-10', '부산', '2'),
	(120, 28, 5, 30000, '스틱간식10', 'aij', '2020-07-15', '서울', '2'),
	(121, 43, 3, 29000, '카샤카샤1', 'mkp', '2020-07-17', '서울', '2'),
	(122, 61, 8, 33000, '카샤카샤2', 'dog', '2020-07-19', '인천', '2'),
	(123, 38, 4, 15000, '카샤카샤3', 'tty', '2020-07-23', '인천', '2'),
	(124, 4, 5, 18000, '카샤카샤4', 'nib', '2020-07-25', '부산', '2'),
	(125, 64, 8, 19000, '카샤카샤5', 'ccc', '2020-07-28', '강원도', '2'),
	(126, 78, 3, 25000, '카샤카샤6', 'che', '2020-07-29', '대구', '2'),
	(127, 74, 4, 28000, '카샤카샤7', 'jqy', '2020-07-30', '서울', '2'),
	(128, 26, 5, 27000, '카샤카샤8', 'gix', '2020-07-31', '경기', '2'),
	(129, 65, 7, 40000, '카샤카샤9', 'cyg', '2020-08-02', '인천', '2'),
	(130, 35, 8, 36000, '카샤카샤10', 'rny', '2020-08-06', '부산', '2'),
	(131, 53, 2, 3000, '인형1', 'tgx', '2020-08-10', '부산', '2'),
	(132, 24, 9, 9900, '인형2', 'bzr', '2020-08-16', '서울', '2'),
	(133, 70, 4, 7000, '인형3', 'bng', '2020-08-17', '경기', '2'),
	(134, 19, 7, 10000, '인형4', 'vlk', '2020-08-18', '인천', '2'),
	(135, 63, 4, 5100, '인형5', 'sqe', '2020-08-20', '제주도', '2'),
	(136, 17, 8, 12000, '인형6', 'may', '2020-08-25', '경남', '2'),
	(137, 20, 7, 18000, '인형7', 'len', '2020-09-03', '경북', '2'),
	(138, 60, 5, 26000, '인형8', 'aij', '2020-09-09', '충북', '2'),
	(139, 42, 7, 30000, '인형9', 'mkp', '2020-09-15', '충남', '2'),
	(140, 62, 4, 2000, '인형10', 'dog', '2020-09-18', '부산', '2'),
	(141, 6, 6, 50000, '모래1', 'tty', '2020-09-26', '서울', '2'),
	(142, 54, 2, 45000, '모래2', 'nib', '2020-09-26', '서울', '2'),
	(143, 58, 4, 48000, '모래3', 'may', '2020-09-28', '인천', '2'),
	(144, 34, 3, 44000, '모래4', 'len', '2020-09-29', '인천', '2'),
	(145, 72, 4, 39000, '모래5', 'aij', '2020-09-30', '부산', '2'),
	(146, 51, 1, 36000, '모래6', 'mkp', '2020-10-03', '강원도', '2'),
	(147, 15, 7, 51000, '모래7', 'dog', '2020-10-27', '대구', '2'),
	(148, 2, 4, 54000, '모래8', 'tty', '2020-10-27', '서울', '2'),
	(149, 27, 9, 70000, '모래9', 'nib', '2020-11-03', '경기', '2'),
	(150, 22, 6, 60000, '모래10', 'ucn', '2020-11-06', '인천', '2'),
	(151, 30, 2, 70000, '화장실1', 'aaa', '2020-11-08', '부산', '2'),
	(152, 57, 3, 68000, '화장실2', 'bbb', '2020-11-09', '부산', '2'),
	(153, 21, 3, 80000, '화장실3', 'ccc', '2020-11-17', '서울', '2'),
	(154, 11, 1, 85000, '화장실4', 'che', '2020-11-20', '경기', '2'),
	(155, 39, 1, 77000, '화장실5', 'jqy', '2020-11-20', '인천', '2'),
	(156, 68, 1, 90000, '화장실6', 'gix', '2020-12-03', '제주도', '2'),
	(157, 29, 2, 100000, '화장실7', 'cyg', '2020-12-04', '경남', '2'),
	(158, 66, 1, 130000, '화장실8', 'rny', '2020-12-05', '경북', '2'),
	(159, 50, 1, 99000, '화장실9', 'tgx', '2020-12-05', '충북', '2'),
	(160, 80, 4, 170000, '화장실10', 'bzr', '2020-12-05', '충남', '2'),
	(161, 9, 6, 33000, '건식사료1', 'bng', '2020-12-10', '부산', '2'),
	(162, 76, 3, 29000, '건식사료2', 'vlk', '2020-12-10', '서울', '2'),
	(163, 73, 7, 22000, '건식사료3', 'sqe', '2020-12-12', '서울', '2'),
	(164, 69, 6, 28000, '건식사료4', 'may', '2020-12-16', '인천', '2'),
	(165, 40, 5, 25000, '건식사료5', 'len', '2020-12-17', '인천', '2'),
	(166, 56, 6, 40000, '건식사료6', 'aij', '2020-12-19', '부산', '2'),
	(167, 47, 7, 30000, '건식사료7', 'aaa', '2020-12-20', '강원도', '2'),
	(168, 32, 3, 36000, '건식사료8', 'bbb', '2020-12-29', '대구', '2'),
	(169, 59, 9, 37000, '건식사료9', 'ccc', '2021-01-02', '서울', '2'),
	(170, 36, 4, 27000, '건식사료10', 'che', '2021-01-06', '경기', '2'),
	(171, 79, 2, 29000, '습식사료1', 'jqy', '2021-01-07', '인천', '2'),
	(172, 67, 9, 33000, '습식사료2', 'gix', '2021-01-22', '부산', '2'),
	(173, 25, 4, 35000, '습식사료3', 'cyg', '2021-01-24', '부산', '2'),
	(174, 31, 4, 39000, '습식사료4', 'rny', '2021-02-01', '서울', '2'),
	(175, 52, 1, 42000, '습식사료5', 'tgx', '2021-02-07', '경기', '2'),
	(176, 1, 6, 49000, '습식사료6', 'bzr', '2021-02-11', '인천', '2'),
	(177, 7, 5, 55000, '습식사료7', 'bng', '2021-02-16', '제주도', '2'),
	(178, 75, 3, 65000, '습식사료8', 'vlk', '2021-02-16', '경남', '2'),
	(179, 44, 5, 80000, '습식사료9', 'sqe', '2021-02-17', '경북', '2'),
	(180, 55, 1, 67000, '습식사료10', 'may', '2021-02-19', '충북', '2'),
	(181, 13, 6, 12000, '스낵간식1', 'len', '2021-02-19', '충남', '2'),
	(182, 10, 2, 15000, '스낵간식2', 'tgx', '2021-02-21', '부산', '2'),
	(183, 45, 4, 11000, '스낵간식3', 'bzr', '2021-02-22', '서울', '2'),
	(184, 71, 9, 19000, '스낵간식4', 'bng', '2021-02-23', '서울', '2'),
	(185, 41, 8, 25000, '스낵간식5', 'vlk', '2021-02-25', '인천', '2'),
	(186, 8, 2, 22000, '스낵간식6', 'sqe', '2021-03-05', '인천', '2'),
	(187, 16, 7, 31000, '스낵간식7', 'may', '2021-03-09', '부산', '2'),
	(188, 77, 6, 36000, '스낵간식8', 'len', '2021-03-09', '강원도', '2'),
	(189, 46, 5, 29000, '스낵간식9', 'aij', '2021-03-12', '대구', '2'),
	(190, 33, 4, 42000, '스낵간식10', 'gix', '2021-03-21', '서울', '2'),
	(191, 49, 1, 22000, '스틱간식1', 'cyg', '2021-03-22', '경기', '2'),
	(192, 3, 3, 26000, '스틱간식2', 'rny', '2021-03-24', '인천', '2'),
	(193, 48, 3, 19000, '스틱간식3', 'tgx', '2021-03-27', '부산', '2'),
	(194, 23, 2, 9000, '스틱간식4', 'bzr', '2021-03-30', '부산', '2'),
	(195, 14, 6, 13000, '스틱간식5', 'bng', '2021-04-02', '서울', '2'),
	(196, 18, 7, 24000, '스틱간식6', 'vlk', '2021-04-03', '경기', '2'),
	(197, 37, 6, 27000, '스틱간식7', 'sqe', '2021-04-06', '인천', '2'),
	(198, 12, 5, 8800, '스틱간식8', 'may', '2021-04-08', '제주도', '2'),
	(199, 5, 7, 14000, '스틱간식9', 'len', '2021-04-11', '경남', '2'),
	(200, 28, 7, 30000, '스틱간식10', 'tgx', '2021-04-14', '경북', '2'),
	(201, 43, 8, 29000, '카샤카샤1', 'bzr', '2021-04-17', '충북', '2'),
	(202, 61, 8, 33000, '카샤카샤2', 'bng', '2021-04-30', '충남', '2'),
	(203, 38, 3, 15000, '카샤카샤3', 'vlk', '2021-05-04', '부산', '2'),
	(204, 4, 8, 18000, '카샤카샤4', 'sqe', '2021-05-07', '서울', '2'),
	(205, 64, 6, 19000, '카샤카샤5', 'may', '2021-05-08', '서울', '2'),
	(206, 78, 8, 25000, '카샤카샤6', 'gix', '2021-05-13', '인천', '2'),
	(207, 74, 6, 28000, '카샤카샤7', 'cyg', '2021-05-18', '인천', '2'),
	(208, 26, 8, 27000, '카샤카샤8', 'rny', '2021-05-21', '부산', '2'),
	(209, 65, 8, 40000, '카샤카샤9', 'tgx', '2021-05-22', '강원도', '2'),
	(210, 35, 2, 36000, '카샤카샤10', 'bzr', '2021-05-22', '대구', '2'),
	(211, 53, 8, 3000, '인형1', 'bng', '2021-05-25', '서울', '2'),
	(212, 24, 3, 9900, '인형2', 'vlk', '2021-05-27', '경기', '2'),
	(213, 70, 4, 7000, '인형3', 'sqe', '2021-05-29', '인천', '2'),
	(214, 19, 8, 10000, '인형4', 'may', '2021-06-04', '부산', '2'),
	(215, 63, 6, 5100, '인형5', 'len', '2021-06-05', '부산', '2'),
	(216, 17, 9, 12000, '인형6', 'tgx', '2021-06-05', '서울', '2'),
	(217, 20, 4, 18000, '인형7', 'bzr', '2021-06-17', '경기', '2'),
	(218, 60, 9, 26000, '인형8', 'bng', '2021-06-20', '인천', '2'),
	(219, 42, 8, 30000, '인형9', 'vlk', '2021-06-24', '제주도', '2'),
	(220, 62, 7, 2000, '인형10', 'sqe', '2021-06-24', '경남', '2'),
	(221, 6, 4, 50000, '모래1', 'may', '2021-06-29', '경북', '2'),
	(222, 54, 4, 45000, '모래2', 'gix', '2021-07-02', '충북', '2'),
	(223, 58, 5, 48000, '모래3', 'cyg', '2021-07-03', '충남', '2'),
	(224, 34, 4, 44000, '모래4', 'rny', '2021-07-06', '부산', '2'),
	(225, 72, 8, 39000, '모래5', 'tgx', '2021-07-07', '서울', '2'),
	(226, 51, 3, 36000, '모래6', 'bzr', '2021-07-14', '서울', '2'),
	(227, 15, 7, 51000, '모래7', 'bng', '2021-07-20', '인천', '2'),
	(228, 2, 6, 54000, '모래8', 'vlk', '2021-07-20', '인천', '2'),
	(229, 27, 7, 70000, '모래9', 'sqe', '2021-07-21', '부산', '2'),
	(230, 22, 8, 60000, '모래10', 'may', '2021-07-28', '강원도', '2'),
	(231, 30, 6, 70000, '화장실1', 'len', '2021-08-04', '대구', '2'),
	(232, 57, 2, 68000, '화장실2', 'tgx', '2021-08-08', '서울', '2'),
	(233, 21, 7, 80000, '화장실3', 'bzr', '2021-08-11', '경기', '2'),
	(234, 11, 4, 85000, '화장실4', 'bng', '2021-08-11', '인천', '2'),
	(235, 39, 8, 77000, '화장실5', 'vlk', '2021-08-12', '부산', '2'),
	(236, 68, 7, 90000, '화장실6', 'sqe', '2021-08-19', '부산', '2'),
	(237, 29, 4, 100000, '화장실7', 'may', '2021-08-22', '서울', '2'),
	(238, 66, 4, 130000, '화장실8', 'aaa', '2021-08-25', '경기', '2'),
	(239, 50, 9, 99000, '화장실9', 'dog', '2021-09-05', '인천', '2'),
	(240, 80, 3, 170000, '화장실10', 'tty', '2021-09-08', '제주도', '2'),
	(241, 9, 8, 33000, '건식사료1', 'aaa', '2021-09-10', '경남', '2'),
	(242, 76, 3, 29000, '건식사료2', 'bbb', '2021-09-13', '경북', '2'),
	(243, 73, 3, 22000, '건식사료3', 'ccc', '2021-09-24', '충북', '2'),
	(244, 69, 7, 28000, '건식사료4', 'che', '2021-09-25', '충남', '2'),
	(245, 40, 4, 25000, '건식사료5', 'jqy', '2021-10-03', '부산', '2'),
	(246, 56, 8, 40000, '건식사료6', 'gix', '2021-10-06', '서울', '2'),
	(247, 47, 2, 30000, '건식사료7', 'cyg', '2021-10-07', '서울', '2'),
	(248, 32, 6, 36000, '건식사료8', 'rny', '2021-10-09', '인천', '2'),
	(249, 59, 6, 37000, '건식사료9', 'tgx', '2021-10-12', '인천', '2'),
	(250, 36, 4, 27000, '건식사료10', 'bzr', '2021-10-13', '부산', '2'),
	(251, 79, 6, 29000, '습식사료1', 'bng', '2021-10-14', '강원도', '2'),
	(252, 67, 4, 33000, '습식사료2', 'vlk', '2021-10-16', '대구', '2'),
	(253, 25, 9, 35000, '습식사료3', 'sqe', '2021-10-21', '서울', '2'),
	(254, 31, 3, 39000, '습식사료4', 'may', '2021-10-30', '경기', '2'),
	(255, 52, 5, 42000, '습식사료5', 'len', '2021-10-31', '인천', '2'),
	(256, 1, 3, 49000, '습식사료6', 'aij', '2021-11-01', '부산', '2'),
	(257, 7, 3, 55000, '습식사료7', 'mkp', '2021-11-01', '부산', '2'),
	(258, 75, 1, 65000, '습식사료8', 'dog', '2021-11-02', '서울', '2'),
	(259, 44, 6, 80000, '습식사료9', 'tty', '2021-11-05', '경기', '2'),
	(260, 55, 4, 67000, '습식사료10', 'sqe', '2021-11-16', '인천', '2'),
	(261, 13, 1, 12000, '스낵간식1', 'may', '2021-11-19', '제주도', '2'),
	(262, 10, 1, 15000, '스낵간식2', 'len', '2021-11-24', '경남', '2'),
	(263, 45, 5, 11000, '스낵간식3', 'tgx', '2021-12-01', '경북', '2'),
	(264, 71, 5, 19000, '스낵간식4', 'bzr', '2021-12-12', '충북', '2'),
	(265, 41, 6, 25000, '스낵간식5', 'bng', '2021-12-12', '충남', '2'),
	(266, 8, 3, 22000, '스낵간식6', 'vlk', '2021-12-13', '부산', '2'),
	(267, 16, 4, 31000, '스낵간식7', 'sqe', '2021-12-18', '서울', '2'),
	(268, 77, 6, 36000, '스낵간식8', 'may', '2021-12-22', '서울', '2'),
	(269, 46, 8, 29000, '스낵간식9', 'aaa', '2021-12-24', '인천', '2'),
	(270, 33, 5, 42000, '스낵간식10', 'dog', '2021-12-25', '인천', '2'),
	(271, 49, 9, 22000, '스틱간식1', 'tty', '2021-12-27', '부산', '2'),
	(272, 3, 4, 26000, '스틱간식2', 'aaa', '2021-12-28', '강원도', '2'),
	(273, 48, 6, 19000, '스틱간식3', 'bbb', '2021-12-29', '대구', '2'),
	(274, 23, 7, 9000, '스틱간식4', 'ccc', '2021-12-30', '서울', '2'),
	(275, 14, 1, 13000, '스틱간식5', 'che', '2022-01-02', '경기', '2'),
	(276, 18, 3, 24000, '스틱간식6', 'jqy', '2022-01-02', '인천', '2'),
	(277, 37, 7, 27000, '스틱간식7', 'gix', '2022-01-04', '부산', '2'),
	(278, 12, 3, 8800, '스틱간식8', 'cyg', '2022-01-07', '부산', '2'),
	(279, 5, 6, 14000, '스틱간식9', 'rny', '2022-01-08', '서울', '2'),
	(280, 28, 6, 30000, '스틱간식10', 'tgx', '2022-01-17', '경기', '2'),
	(281, 43, 6, 29000, '카샤카샤1', 'bzr', '2022-01-21', '인천', '2'),
	(282, 61, 4, 33000, '카샤카샤2', 'bng', '2022-01-23', '제주도', '2'),
	(283, 38, 6, 15000, '카샤카샤3', 'vlk', '2022-01-25', '경남', '2'),
	(284, 4, 5, 18000, '카샤카샤4', 'sqe', '2022-01-27', '경북', '2'),
	(285, 64, 2, 19000, '카샤카샤5', 'may', '2022-01-28', '충북', '2'),
	(286, 78, 3, 25000, '카샤카샤6', 'len', '2022-01-28', '충남', '2'),
	(287, 74, 4, 28000, '카샤카샤7', 'aij', '2022-01-31', '부산', '2'),
	(288, 26, 7, 27000, '카샤카샤8', 'mkp', '2022-02-07', '서울', '2'),
	(289, 65, 7, 40000, '카샤카샤9', 'dog', '2022-02-12', '서울', '2'),
	(290, 35, 2, 36000, '카샤카샤10', 'tty', '2022-02-14', '인천', '2'),
	(291, 53, 2, 3000, '인형1', 'sqe', '2022-02-16', '인천', '2'),
	(292, 24, 3, 9900, '인형2', 'may', '2022-02-19', '부산', '2'),
	(293, 70, 3, 7000, '인형3', 'len', '2022-02-26', '강원도', '2'),
	(294, 19, 4, 10000, '인형4', 'tgx', '2022-02-28', '대구', '2'),
	(295, 63, 2, 5100, '인형5', 'bzr', '2022-03-09', '서울', '2'),
	(296, 17, 4, 12000, '인형6', 'bng', '2022-03-11', '경기', '2'),
	(297, 20, 6, 18000, '인형7', 'vlk', '2022-03-15', '인천', '2'),
	(298, 60, 3, 26000, '인형8', 'sqe', '2022-03-15', '부산', '2'),
	(299, 42, 2, 30000, '인형9', 'may', '2022-03-24', '부산', '2'),
	(300, 62, 2, 2000, '인형10', 'aaa', '2022-03-27', '서울', '2'),
	(301, 6, 2, 50000, '모래1', 'dog', '2022-03-31', '경기', '2'),
	(302, 54, 5, 45000, '모래2', 'tty', '2022-03-31', '인천', '2'),
	(303, 58, 2, 48000, '모래3', 'aaa', '2022-04-05', '제주도', '2'),
	(304, 34, 4, 44000, '모래4', 'bbb', '2022-04-18', '경남', '2'),
	(305, 72, 1, 39000, '모래5', 'ccc', '2022-04-19', '경북', '2'),
	(306, 51, 2, 36000, '모래6', 'che', '2022-04-20', '충북', '2'),
	(307, 15, 2, 51000, '모래7', 'jqy', '2022-04-21', '충남', '2'),
	(308, 2, 5, 54000, '모래8', 'gix', '2022-04-24', '부산', '2'),
	(309, 27, 4, 70000, '모래9', 'cyg', '2022-04-26', '서울', '2'),
	(310, 22, 3, 60000, '모래10', 'rny', '2022-04-30', '서울', '2'),
	(311, 30, 3, 70000, '화장실1', 'tgx', '2022-05-01', '인천', '2'),
	(312, 57, 2, 68000, '화장실2', 'bzr', '2022-05-01', '인천', '2'),
	(313, 21, 1, 80000, '화장실3', 'bng', '2022-05-02', '부산', '2'),
	(314, 11, 3, 85000, '화장실4', 'vlk', '2022-05-02', '강원도', '2'),
	(315, 39, 1, 77000, '화장실5', 'sqe', '2022-05-07', '대구', '2'),
	(316, 68, 1, 90000, '화장실6', 'may', '2022-05-07', '서울', '2'),
	(317, 29, 1, 100000, '화장실7', 'len', '2022-05-08', '경기', '2'),
	(318, 66, 2, 130000, '화장실8', 'aij', '2022-05-11', '인천', '2'),
	(319, 50, 2, 99000, '화장실9', 'mkp', '2022-05-14', '부산', '2'),
	(320, 80, 1, 170000, '화장실10', 'dog', '2022-05-23', '부산', '2');
/*!40000 ALTER TABLE `petorder` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
