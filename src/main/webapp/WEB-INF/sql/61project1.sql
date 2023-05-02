USE Board;

DESC Board;

CREATE TABLE FileName (
	id INT PRIMARY KEY AUTO_INCREMENT,
	boardId INT NOT NULL,
	fileName VARCHAR(300) NOT NULL,
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

SELECT * FROM FileName;
SELECT * FROM Board b JOIN FileName f 
ON b.id = f.boardId
WHERE b.id = 4121; -- file 있는 게시물
SELECT * FROM Board b LEFT JOIN FileName f 
ON b.id = f.boardId
WHERE b.id = 4119; -- file 없는 게시물
SELECT * FROM Board WHERE id = 4119;