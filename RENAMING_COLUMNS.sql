USE BOOK_SHOP;
ALTER TABLE BOOKS_DATA;


ALTER TABLE BOOKS_DATA CHANGE `0380795272` ID BIGINT;
ALTER TABLE BOOKS_DATA CHANGE `Krondor: The Betrayal` TITLE VARCHAR(50);
ALTER TABLE BOOKS_DATA CHANGE `Raymond E. Feist` AUTHOR VARCHAR(50);
ALTER TABLE BOOKS_DATA CHANGE `1998` DATE VARCHAR(25);
DESC BOOKS_DATA;
