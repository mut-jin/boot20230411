USE w3schools;
DESC MyTable13;
ALTER TABLE MyTable13
DROP COLUMN Col1; -- 위험!!!!!!
-- 연습 Col2열 삭제
ALTER TABLE MyTable13
DROP COLUMN Col2;
DESC MyTable13;