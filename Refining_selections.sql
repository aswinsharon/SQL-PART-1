use book_shop;

insert into books(title,author_fname,author_lname,released_year,stock_quantity,pages)

   values('10% Happier','Dan','Harris',2014,29,256),
        ('fake_book','Freida','Harris',2001,287,428),
        ('Lincoln In the Bardo','George','Saunders',2017,1000,367);
        
select distinct author_lname from books;
-- ------------------------------------
select distinct concat_ws(' ',author_fname,author_lname) from books;
-- or
select distinct author_fname,author_lname from books;
-- ------------------------------------
select id,author_fname,author_lname from books order by author_lname;

select id,author_fname,author_lname,pages from books order by 4 desc; 

select author_lname,released_year from books order by author_lname,released_year desc; 

-- ------------------------------------
select id,title,released_year from books order by released_year limit 5;
select id,title,released_year from books order by released_year desc limit 2,5;
-- ------------------------------------
select author_fname,author_lname,released_year from books where author_fname like '%da%';
select author_fname,author_lname,released_year from books where author_fname like '____';
select author_fname,author_lname,released_year from books where author_fname like '%n';

-- ------------------------------------
select author_fname,author_lname,title,released_year from books where title like '%\_%';
--  -----------------------------------
-- exercise
select title from books where title like '%stories';
select title,pages from books order by pages desc limit 1; 
select concat_ws('-',title,released_year) as summary from books order by released_year desc limit 3;
select title,author_lname from books where author_lname like '% %';
select title,released_year,stock_quantity from books order by stock_quantity asc limit 3;
select title,author_lname from books order by author_lname,title;
select concat_ws(' ','My favourite author is',ucase(author_fname),ucase(author_lname),'!') as yell from books ORDER BY author_lname;