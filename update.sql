ALTER TABLE Authors MODIFY name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

DELETE FROM Books WHERE authorId IS NULL;

ALTER TABLE Books ADD COLUMN genre VARCHAR(50) NOT NULL;

CREATE TABLE Tarpine(
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
);

INSERT INTO Tarpine(authorId, bookId) SELECT authorId, bookId FROM Books;

ALTER TABLE Books DROP COLUMN authorId;

INSERT INTO Tarpine (authorId, bookId) values (3, 2);
INSERT INTO Tarpine (authorId, bookId) values (5, 2);
INSERT INTO Tarpine (authorId, bookId) values (5, 5);

ALTER TABLE Books MODIFY TITLE VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;
UPDATE Books SET TITLE = "Head First Networking (ąčęėįšųūž)" WHERE bookId = 3;

