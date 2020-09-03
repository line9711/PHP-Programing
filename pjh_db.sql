-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- 호스트: localhost
-- 처리한 시간: 19-06-12 20:45 
-- 서버 버전: 5.1.41
-- PHP 버전: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `pjh_db`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `book_list`
--

CREATE TABLE IF NOT EXISTS `book_list` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `sell_state` char(10) NOT NULL,
  `hp` char(20) DEFAULT NULL,
  `title` char(50) NOT NULL,
  `author` char(20) NOT NULL,
  `publisher` char(30) NOT NULL,
  `content` text NOT NULL,
  `date_of_publish` char(30) NOT NULL,
  `price` char(20) NOT NULL,
  `state` char(30) NOT NULL,
  `regist_day` char(20) NOT NULL,
  `file_name_0` char(40) DEFAULT NULL,
  `file_name_1` char(40) DEFAULT NULL,
  `file_name_2` char(40) DEFAULT NULL,
  `file_copied_0` char(30) DEFAULT NULL,
  `file_copied_1` char(30) DEFAULT NULL,
  `file_copied_2` char(30) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 테이블의 덤프 데이터 `book_list`
--

INSERT INTO `book_list` (`num`, `name`, `nick`, `sell_state`, `hp`, `title`, `author`, `publisher`, `content`, `date_of_publish`, `price`, `state`, `regist_day`, `file_name_0`, `file_name_1`, `file_name_2`, `file_copied_0`, `file_copied_1`, `file_copied_2`) VALUES
(13, '박재현', 'aa', '거래중', '010-1111-1111', '미움받을 용기', '스티븐 기즈', '놀자', '떨이합니다 떨이~~~~ 책에 여러 교훈이 다 있습니다.. ㅠㅠ', '2019-06-07', '1000', '최상', '2019-06-12 (19:08)', 'book7.jpg', NULL, NULL, 'book7.jpg', NULL, NULL),
(12, '박재현', 'aa', '판매중', '010-5555-5553', '82년생 김지영', '조남주', '민움사', '베스트셀러죠~ 재밌어요 :)', '2019-06-10', '4000', '최상', '2019-06-12 (19:08)', 'book6.jpeg', NULL, NULL, 'book6.jpeg', NULL, NULL),
(11, '박재현', 'aa', '판매완료', '010-7777-5555', '습관의 재발견', '김수현', '알라딘', '1번 읽었어요! 상태 극 sss급!', '2019-06-01', '10000', '최상', '2019-06-12 (19:07)', 'book3.jpg', NULL, NULL, 'book3.jpg', NULL, NULL),
(10, '박재현', 'aa', '거래중', '010-5555-555', '보노보노처럼 살다니 다행이야', '김신희', '비즈니스 북스', '보노보노 힐링책 추천드려요. 저렴하게 가져가세용 :)', '2019-06-07', '3000', '중', '2019-06-12 (19:06)', 'book4.jpeg', NULL, NULL, 'book4.jpeg', NULL, NULL),
(9, '박재현', 'aa', '판매완료', '010-2222-2222', '모든 순간이 너였다', '곽현희', '행복출판사', '판매해용~~', '2019-06-07', '2000', '중', '2019-06-12 (19:05)', 'book2.jpg', NULL, NULL, 'book2.jpg', NULL, NULL),
(8, '박재현', 'aa', '판매중', '010-2222-2222', '신경끄기의 기술', '박재현', '기쁨', '헐값에 판매합니다. 상태 완전 좋아요 ^^', '2019-06-07', '5000', '최상', '2019-06-12 (19:04)', 'book1.jpg', NULL, NULL, 'book1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `free`
--

CREATE TABLE IF NOT EXISTS `free` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `subject` char(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `file_name_0` char(40) DEFAULT NULL,
  `file_name_1` char(40) DEFAULT NULL,
  `file_name_2` char(40) DEFAULT NULL,
  `file_name_3` char(40) DEFAULT NULL,
  `file_name_4` char(40) DEFAULT NULL,
  `file_copied_0` char(30) DEFAULT NULL,
  `file_copied_1` char(30) DEFAULT NULL,
  `file_copied_2` char(30) DEFAULT NULL,
  `file_copied_3` char(30) DEFAULT NULL,
  `file_copied_4` char(30) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 테이블의 덤프 데이터 `free`
--

INSERT INTO `free` (`num`, `id`, `name`, `nick`, `subject`, `content`, `regist_day`, `hit`, `is_html`, `file_name_0`, `file_name_1`, `file_name_2`, `file_name_3`, `file_name_4`, `file_copied_0`, `file_copied_1`, `file_copied_2`, `file_copied_3`, `file_copied_4`) VALUES
(1, 'line7332', 'park', 'HYUN', '요즘 이 책 어떤가요?', '보노보노 귀여워서 읽어보고 싶어요!', '2019-06-10 (22:37)', 16, '', 'book4.jpeg', '', '', NULL, NULL, '2019_06_10_22_37_13_0.jpeg', '', '', NULL, NULL),
(2, 'line7332', 'park', 'HYUN', '좋은 책 추천 좀 해주세요!', '시험기간이라 힐링 받고 싶어요 ㅠㅠ', '2019-06-10 (22:38)', 15, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(3, 'line9711', '박재현', '리카', '요새 무슨 책 읽으세요?', 'ㅎㅎ저는 요새 &lt;82년생 김지영&gt; 읽고 있어요 !', '2019-06-10 (22:43)', 15, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(4, 'happy97', '재현', '햅삐', '시험기간 공부하기 싫어요...', '책만 읽고싶어요.............', '2019-06-10 (23:40)', 14, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(5, 'angel00', '곽두팔', '두파리', '오늘 햄버거 먹었어요 ~ ^^', '근데 진짜 맛없어서 혼났네요 ㅠ...ㅠ...\r\n생존을 위해 먹는게 이런 기분일까요..', '2019-06-10 (23:49)', 5, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(6, 'line9711', '곽현희', '리카', '요즘 이 책 어떤가요?', '재밌나요???ㅎㅎ', '2019-06-12 (20:15)', 2, '', 'book3.jpg', '', '', NULL, NULL, '2019_06_12_20_15_57_0.jpg', '', '', NULL, NULL),
(7, 'line9711', '곽현희', '리카', '좋은 책 추천 좀 해주세요!', '저는 요새 이거 읽고 있어요~~', '2019-06-12 (20:18)', 1, '', '163736954.jpg', '', '', NULL, NULL, '2019_06_12_20_18_31_0.jpg', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `free_ripple`
--

CREATE TABLE IF NOT EXISTS `free_ripple` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 테이블의 덤프 데이터 `free_ripple`
--

INSERT INTO `free_ripple` (`num`, `parent`, `id`, `name`, `nick`, `content`, `regist_day`) VALUES
(2, 1, 'line9711', '박재현', '리카', '재밌어요 :)', '2019-06-10 (22:43)'),
(3, 2, 'line9711', '박재현', '리카', '보노보노 재밌어요 ㅎㅎ', '2019-06-10 (22:43)'),
(5, 1, 'happy97', '재현', '햅삐', '이 책 진짜 힐링물이에요 귀여워용 ㅎ', '2019-06-10 (23:38)'),
(7, 3, 'happy97', '재현', '햅삐', '저는 요새 자기계발쪽 책 읽고 있어요 >_<', '2019-06-10 (23:39)'),
(8, 2, 'happy97', '재현', '햅삐', '히가시노 게이고 책 완전 강추합니다!!!', '2019-06-10 (23:41)'),
(13, 4, 'angel00', '곽두팔', '두파리', '침대에 엎드려서 책만 보고 싶어여...', '2019-06-10 (23:46)'),
(14, 1, 'angel00', '곽두팔', '두파리', 'ㅋㅋㅋㅋㅋㅋㅋㅋ이런 책도 있네요????', '2019-06-10 (23:46)'),
(15, 2, 'angel00', '곽두팔', '두파리', '저는 요새 <돌이킬 수 없는 약속> 읽고 있어용 추리물 최고!', '2019-06-10 (23:47)'),
(16, 3, 'angel00', '곽두팔', '두파리', '<돌이킬 수 없는 약속> 꿀잼보장!ㅎㅎㅎ', '2019-06-10 (23:47)'),
(17, 5, 'happy97', '재현', '햅삐', '아이구 맛이 없으셨다니.. 더 맛난거 드세요 내일은!', '2019-06-10 (23:49)');

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) DEFAULT NULL,
  `hp` char(20) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`num`, `id`, `pass`, `name`, `nick`, `hp`, `email`, `regist_day`) VALUES
(1, 'line9711', '1234', '곽현희', '리카', '010-3333-7816', 'khhee@naver.com', '2019-06-12 (20:03)');

-- --------------------------------------------------------

--
-- 테이블 구조 `qna`
--

CREATE TABLE IF NOT EXISTS `qna` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 테이블의 덤프 데이터 `qna`
--

INSERT INTO `qna` (`num`, `id`, `name`, `nick`, `content`, `regist_day`) VALUES
(2, 'line9711', '박재현', '리카', '책 취향에 대해 기입하면 그에 걸맞는 책 추천을 해주는 기능도 있다면 너무너무 좋을 거 같아요 >_<', '2019-06-10 (23:08)'),
(4, 'happy97', '재현', '햅삐', '책 판매하려고 하는데, 중고가는 제가 알아서 책정하는건가용???', '2019-06-10 (23:42)');

-- --------------------------------------------------------

--
-- 테이블 구조 `qna_ripple`
--

CREATE TABLE IF NOT EXISTS `qna_ripple` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 테이블의 덤프 데이터 `qna_ripple`
--

INSERT INTO `qna_ripple` (`num`, `parent`, `id`, `name`, `nick`, `content`, `regist_day`) VALUES
(3, 2, 'line9711', '박재현', '리카', '무..무리려나요?(쭈굴)', '2019-06-10 (23:13)'),
(4, 2, 'happy97', '재현', '햅삐', '조..조금 힘들지 않을까요?ㅠㅠㅋㅋㅋㅋ', '2019-06-10 (23:41)'),
(5, 4, 'angel00', '곽두팔', '두파리', '그럴거예유! 최상~하 까지 책 상태 기입해주시구, 가격도 임의로 지정해주시면 될거예요!', '2019-06-10 (23:48)');

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `subject` char(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `file_name_0` char(40) DEFAULT NULL,
  `file_name_1` char(40) DEFAULT NULL,
  `file_name_2` char(40) DEFAULT NULL,
  `file_name_3` char(40) DEFAULT NULL,
  `file_name_4` char(40) DEFAULT NULL,
  `file_copied_0` char(30) DEFAULT NULL,
  `file_copied_1` char(30) DEFAULT NULL,
  `file_copied_2` char(30) DEFAULT NULL,
  `file_copied_3` char(30) DEFAULT NULL,
  `file_copied_4` char(30) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 테이블의 덤프 데이터 `review`
--

INSERT INTO `review` (`num`, `id`, `name`, `nick`, `subject`, `content`, `regist_day`, `hit`, `is_html`, `file_name_0`, `file_name_1`, `file_name_2`, `file_name_3`, `file_name_4`, `file_copied_0`, `file_copied_1`, `file_copied_2`, `file_copied_3`, `file_copied_4`) VALUES
(1, 'line7332', 'park', 'HYUN', '<나의 라임 오렌지 나무>', '제제야 이런 집에서 고생많았어 ㅠㅠ\r\n앞으론 더 행복해 질수 있을꺼야..!\r\n-\r\n어릴 때 읽어도 그 슬픔과 감동이 여전하다.', '2019-06-10 (22:39)', 34, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(2, 'line9711', '박재현', '리카', '<나는 남들과 무엇이 다른가>', '책에서는 10가지 방법을 혁명이라는 표현을 하고 있어요.\r\n작가는 다양한 혁명들을 통해서 자신의 강점들을 세상에 알리고 세상에 소통하는 방법을 만들으라고 하네요. 나만의 스토리, 그게 과연 무엇인지는 아직 잘 모르지만 이 책을 통해서 인생에 대해 한발짝 더 가까워진 기분입니다 ..', '2019-06-10 (23:18)', 3, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(3, 'line9711', '박재현', '리카', '<곰돌이 푸, 서두르지 않아도 괜찮아>', '&quot;천천히 가도 괜찮아. 나를 잃지만 않으면 돼&quot;\r\n-\r\n별 거 아닌 아동 책일것이라 생각했는데, 예상 외로 꽤나 힐링책이었다.\r\n힘들 때 읽으면 많은 도움이 될 것 같다. ', '2019-06-10 (23:31)', 7, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `ans1` int(11) DEFAULT NULL,
  `ans2` int(11) DEFAULT NULL,
  `ans3` int(11) DEFAULT NULL,
  `ans4` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `survey`
--

INSERT INTO `survey` (`ans1`, `ans2`, `ans3`, `ans4`) VALUES
(1, 0, 1, 2);
