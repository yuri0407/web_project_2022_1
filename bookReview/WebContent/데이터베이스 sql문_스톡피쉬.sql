-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.24-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- yuridb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `yuridb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yuridb`;

-- 테이블 yuridb.br_book 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_book` (
  `bNo` int(3) NOT NULL AUTO_INCREMENT,
  `bName` varchar(70) NOT NULL,
  `writer` varchar(40) NOT NULL,
  `publisher` varchar(70) NOT NULL,
  `pDate` varchar(30) NOT NULL,
  `category` varchar(3) NOT NULL,
  `bContent` varchar(20000) NOT NULL,
  PRIMARY KEY (`bNo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_book:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_book` DISABLE KEYS */;
INSERT INTO `br_book` (`bNo`, `bName`, `writer`, `publisher`, `pDate`, `category`, `bContent`) VALUES
	(2, 'the midnight library', 'Haig, matt', 'Cannongate', '2021-02-18', '800', '밤 12시, 죽기 바로 전에만 열리는 마법의 도서관에서\r\n			인생의 두 번째 기회를 드립니다<br>\r\n			<br><br>\r\n			★★★★★국내 주요 서점 종합 베스트셀러 1위, 2021년 올해의 책 선정<br>\r\n			★★★★★《뉴욕타임스》 베스트셀러 1위, 영국 아마존 종합 베스트셀러 1위<br>\r\n			<br><br>\r\n			매트 헤이그의 소설 《미드나잇 라이브러리》는 2021년 4월 출간 이후 10개월 만에 30만 독자의 마음을 사로잡으며 눈물과 웃음, 가슴 뭉클한 감동을 선사하고 있다.\r\n			죽기로 결심한 주인공 ‘노라 시드’가 삶과 죽음 사이에 존재하는 미스터리한 도서관 ‘미드나잇 라이브러리’에서 눈을 뜨며 인생의 두 번째 기회를 얻는 이 소설은,\r\n			노라의 가장 완벽한 삶을 찾는 모험을 따라가며 ‘살아 있음’과 ‘살아가는 것’에 대한 깊은 통찰을 보여준다.\r\n			<br><br>\r\n			“책을 덮는 순간 내일이 기대된다!” “내 인생의 반려책을 만났다” “다시 살아봐야겠다는 힘을 얻었다” 등 이 책을 읽은 독자들의 뜨거운 반응에 힘입어\r\n			주요 서점에서 2021 올해의 책으로 선정되었고, 그 열기는 여전히 계속되고 있다. 타인의 삶에 대한 공감, 자신의 삶에 대한 긍정,\r\n			살아 있는 것 자체가 살아야 할 이유라는 깊은 통찰력까지 매트 헤이그 작가가 보내는 공감과 위로의 메시지는 세대와 성별을 아우르며 전 세계 독자들의 마음을 사로잡았다.\r\n			《뉴욕타임스》 베스트셀러 1위, 영국 아마존 종합 베스트셀러 1위를 기록했고, 미국 아마존과 《뉴욕타임스》 60주 이상, 독일 《슈피겔》에서도 38주 연속 장기 베스트셀러에 올랐다.\r\n			현재 덴마크, 이탈리아, 스페인, 루마니아, 타이완, 이란 등 세계 각지에서 출간되며 글로벌한 인기를 누리고 있다.');
/*!40000 ALTER TABLE `br_book` ENABLE KEYS */;

-- 테이블 yuridb.br_manager 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_manager` (
  `mNum` varchar(10) NOT NULL,
  `id` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  PRIMARY KEY (`mNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_manager:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_manager` DISABLE KEYS */;
INSERT INTO `br_manager` (`mNum`, `id`, `pwd`) VALUES
	('52419', 'yumi225', 'dbal!@0225');
/*!40000 ALTER TABLE `br_manager` ENABLE KEYS */;

-- 테이블 yuridb.br_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_member` (
  `id` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_member:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_member` DISABLE KEYS */;
INSERT INTO `br_member` (`id`, `pwd`, `email`) VALUES
	('asdf', '1234567', 'asdfasdfasdf'),
	('dbfl47', 'dbal!@0225', 'wjddbal225@gmail.com'),
	('rh.Stella', 'wjddbfl1234', 'wjddbfl0407@naver.com');
/*!40000 ALTER TABLE `br_member` ENABLE KEYS */;

-- 테이블 yuridb.br_notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_notice` (
  `noNum` int(3) NOT NULL AUTO_INCREMENT,
  `nTitle` varchar(100) NOT NULL,
  `nContent` varchar(3000) NOT NULL,
  `nDate` varchar(30) NOT NULL,
  PRIMARY KEY (`noNum`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_notice:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_notice` DISABLE KEYS */;
INSERT INTO `br_notice` (`noNum`, `nTitle`, `nContent`, `nDate`) VALUES
	(2, '신규등록도서 목록입니다.', '1. Tuesdays with Morrie(Mitch Albom)<br>\r\n                        2. 오늘부터 개발자(김병욱)<br>\r\n                        3. 통계학, 빅데이터를 잡다(조재근)<br>\r\n                        <br><br><br>\r\n                        도서 상세 정보는 도서목록에서 확인 가능합니다.', '2022-06-21');
/*!40000 ALTER TABLE `br_notice` ENABLE KEYS */;

-- 테이블 yuridb.br_question 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_question` (
  `qNo` int(3) NOT NULL AUTO_INCREMENT,
  `qTitle` varchar(500) NOT NULL,
  `qContent` varchar(1000) NOT NULL,
  `qDate` varchar(30) NOT NULL,
  `mAnswer` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`qNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_question:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_question` DISABLE KEYS */;
INSERT INTO `br_question` (`qNo`, `qTitle`, `qContent`, `qDate`, `mAnswer`) VALUES
	(1, '로그인 관련해서 질문있습니다.', '아이디를 잊어버려서 찾고 싶은데 이 사이트에 가입할 때 등록했던 이메일이 지금은 사용할 수 없는\r\n                    메일주소라서 아이디를 찾을 수가 없습니다.. 어떻게 해야 할지 알려주시면 감사하겠습니다.', '2022-06-21', '');
/*!40000 ALTER TABLE `br_question` ENABLE KEYS */;

-- 테이블 yuridb.br_request 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_request` (
  `rNo` int(3) NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `rContent` varchar(1000) NOT NULL,
  `rDate` varchar(30) NOT NULL,
  PRIMARY KEY (`rNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_request:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `br_request` ENABLE KEYS */;

-- 테이블 yuridb.br_review 구조 내보내기
CREATE TABLE IF NOT EXISTS `br_review` (
  `rNum` int(3) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(30) NOT NULL,
  `bname` varchar(70) NOT NULL,
  `content` varchar(3000) NOT NULL,
  PRIMARY KEY (`rNum`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yuridb.br_review:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `br_review` DISABLE KEYS */;
INSERT INTO `br_review` (`rNum`, `nickName`, `bname`, `content`) VALUES
	(18, 'Stella', 'the midnight library', '영어공부하기 좋은 책이었던 거 같아요. 재미도 있었습니다.'),
	(20, 'sfdg', 'daa', 'dsffdg');
/*!40000 ALTER TABLE `br_review` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
