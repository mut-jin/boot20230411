DESC MyTable10;
CREATE TABLE MyTable11 (
	Title VARCHAR(100)
);

-- SHOW CREATE TABLE : 테이블 생성 명령 보기
SHOW CREATE TABLE MyTable10;

-- 복붙해서 MyTable11 만들기
CREATE TABLE `MyTable11` (
   `Book` varchar(100) DEFAULT NULL,
   `Writer` varchar(20) DEFAULT NULL,
   `Print` varchar(20) DEFAULT NULL,
   `Year` date DEFAULT NULL,
   `Page` int(11) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
 DESC MyTable10;
 DESC MyTable11;
 
 -- 같은 컬럼명, 데이터타입으로 새로운 테이블 만들기, 데이터도 같이 들어감
CREATE TABLE MyTable12 AS SELECT * FROM MyTable10;
DESC MyTable12; 
SELECT * FROM MyTable12;
 
 
 
 
 
 
 
 
 