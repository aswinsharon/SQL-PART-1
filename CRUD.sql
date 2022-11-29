CREATE DATABASE shirts_db;
USE shirts_db;
SET SQL_SAFE_UPDATES = 0;
CREATE TABLE SHIRTS(
    SHIRT_ID INT AUTO_INCREMENT,
    ARTICLE VARCHAR(25) NOT NULL,
    COLOR VARCHAR(25) NOT NULL,
    SHIRT_SIZE VARCHAR(25) NOT NULL,
    LAST_WORN VARCHAR(25) NOT NULL,
    PRIMARY KEY (SHIRT_ID)
);
--  ----------------------------------
INSERT INTO SHIRTS(ARTICLE,COLOR,SHIRT_SIZE,LAST_WORN)
VALUES('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
--  ----------------------------------
INSERT INTO SHIRTS(ARTICLE,COLOR,SHIRT_SIZE,LAST_WORN)
VALUES('polo shirt','purple','M',50);
--  ----------------------------------
SELECT ARTICLE,COLOR FROM SHIRTS;
--  ----------------------------------
SELECT 
    ARTICLE, COLOR, SHIRT_SIZE, LAST_WORN
FROM
    SHIRTS
WHERE
    SHIRT_SIZE = 'M';
--  ---------------------------------
UPDATE SHIRTS                 
SET 
    SHIRT_SIZE = 'L'
WHERE
    ARTICLE = 'polo shirt';
--  ----------------------------------
UPDATE SHIRTS SET LAST_WORN = 0 WHERE LAST_WORN = 15;
--  ----------------------------------
UPDATE SHIRTS SET SHIRT_SIZE = 'XS',COLOR = 'off white' WHERE COLOR = 'white';
--  ----------------------------------
DELETE FROM SHIRTS WHERE LAST_WORN = 200;

DELETE FROM SHIRTS WHERE ARTICLE = 'tank top';

DELETE FROM SHIRTS;

DROP TABLE SHIRTS;