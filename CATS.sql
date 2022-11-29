CREATE DATABASE pets;

CREATE TABLE cats(
    
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);

INSERT INTO cats(name,breed,age)
VALUES ('Ringo','Tabby',4),
('Cindy','Maine Coon',10),
('Dumbledore','Maine Coon',11),
('Egg','persian',4),
('Misty','Tabby',13),
('George Michael','Ragdoll',9),
('Jackson','Sphynx',7);

select name,age from cats where age<10;
select name,age from cats where age>10;
select name,age from cats where age=4;

SELECT cat_id FROM cats;
SELECT name,breed from cats;
SELECT name,age FROM cats WHERE breed = 'Tabby';
SELECT cat_id,age FROM cats WHERE cat_id=age;
