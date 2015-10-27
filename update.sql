ALTER TABLE `Authors` MODIFY `name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

DELETE FROM `Books` WHERE `authorId` IS NULL;

ALTER TABLE `Books` ADD COLUMN `genre` VARCHAR(50) NOT NULL;

CREATE TABLE `book2authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

UPDATE `Authors` SET name = TRIM(name);

INSERT INTO `book2authors` (`authorId`, `bookId`) SELECT `authorId`, `bookId` FROM `Books`;

ALTER TABLE `Books` DROP COLUMN `authorId`;

INSERT INTO `book2authors` (`authorId`, `bookId`) VALUES
(3, 2),
(5, 2),
(5, 5);

ALTER TABLE `Books` MODIFY `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;
UPDATE `Books` SET `title` = "Head First Networking (ąčęėįšųūž)" WHERE `bookId` = 3;

