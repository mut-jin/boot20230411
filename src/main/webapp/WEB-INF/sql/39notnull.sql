-- NOT NULL : NULL 허용 안함
CREATE TABLE MyTable17 (
	Col1 INT,
    Col2 INT NOT NULL
);
INSERT INTO MyTable17 (Col1, Col2)
VALUES (100, 200); -- ok
INSERT INTO MyTable17 (Col2)
VALUES (200); -- ok
INSERT INTO MyTable17 (Col1)
VALUES (100); -- fail 
SELECT * FROM MyTable17;

-- 연습 ) MyTable18, 두개 컬럼, VARCHAR(20)
-- 두번째 컬럼만 NOT NULL 제약사항 적용
CREATE TABLE MyTable18 (
	Book VARCHAR(20),
    Music VARCHAR(20) NOT NULL
);
INSERT INTO MyTable18 (Book, Music)
VALUES ('P', 'B'); -- ok
INSERT INTO MyTable18 (Music)
VALUES ('H'); -- ok
INSERT INTO MyTable18 (Book)
VALUES ('N'); -- fail
SELECT * FROM MyTable18;
DESC MyTable18;
DESC MyTable17;

--
CREATE TABLE MyTable19 (
	Col1 INT DEFAULT 0,
    Col2 INT NOT NULL
);
DESC MyTable19;
INSERT INTO MyTable19 (Col1, Col2)
VALUES (100, 200); -- ok
INSERT INTO MyTable19 (Col2)
VALUES (200); -- ok Col1에는 0
SELECT * FROM MyTable19;
INSERT INTO MyTable19 (Col1) VALUES (100); -- fail
INSERt INTO MyTable19 (Col1, Col2) VALUES (NULL, 200); -- ok 명시적으로 NULL 삽입

-- not null default 조합 가능
CREATE TABLE MyTable20 (
	Col1 INT, -- null 허용, default 없음
    Col2 INT NOT NULL, -- null 허용 안함, default 없음
    Col3 INT DEFAULT 0, -- null 허용, default 0
    Col4 INT NOT NULL DEFAULT 0 -- null 허용안함 default 0
);  
DESC MyTable20;






