ALTER TABLE Authors MODIFY name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

INSERT INTO Authors (name) VALUES ('Ričardas Jonaitis');
INSERT INTO Authors (name) VALUES ('Kęstutis Triponis');
INSERT INTO Authors (name) VALUES ('Ramūnas Liuokaitis');

INSERT INTO Books (authorId, title, year) VALUES (8, "Mano gyvenimas", "2015");
INSERT INTO Books (authorId, title, year) VALUES (9, "Tobulas pasaulis", "2015");
INSERT INTO Books (authorId, title, year) VALUES (10, "Mokausi", "2015");

UPDATE Books SET AuthorId = 8 WHERE bookid = 7;

DELETE FROM Authors WHERE authorId = 8 OR authorId = 9 OR authorId = 10;

DELETE b FROM Books b LEFT JOIN Authors a ON b.authorId = a.authorId WHERE a.authorId IS NULL;

ALTER TABLE Books ADD COLUMN genre VARCHAR(50) NOT NULL;

CREATE TABLE Tarpine(authorId int(11) default null, bookId int(11) default null);

insert into Tarpine(authorId, bookId) select authorId, bookId from Books;

ALTER TABLE Books DROP COLUMN authorId;

INSERT INTO Tarpine (authorId, bookId) values (3, 2);
INSERT INTO Tarpine (authorId, bookId) values (5, 2);
INSERT INTO Tarpine (authorId, bookId) values (5, 5);

ALTER TABLE Books MODIFY TITLE VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;
UPDATE Books SET TITLE = "Head First Networking (ąčęėįšųūž)" WHERE bookId = 3;

