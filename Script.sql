/*3.1*/
/*insert into book values
(3, 'TROY', 978405944465, 'Fry Sthephen', '2021-03-03'),
(4, 'Fahrenheit 451', 9785041165062, 'Ray Bradbury', '2003-04-05'),
(5, 'The Dandelion Wine', 9785041053703, 'Ray Bradbury', '1988-03-05'),
(6, '1984', 9785041163747, 'George Orwell', '1994-05-28'),
(1, '1984', 9780140817744, 'George Orwell', '1996-06-13')
insert into publishing_house values
(1, 'Penguin books ltd', 'Allen Lane'),
(2, 'EXMO', 'Oleg Novikov')
insert into book (id_book, title, isbn, author, release_date) values
(2, 'The Help', 9780241956540, 'Kathryn Stockett', '2020-06-26')
insert into published_book (id_book) select id_book from book*/

/*3.2*/
/*truncate book, publishing_house, published_book, publishing_house cascade
delete from book where author = 'George Orwell'*/

/*3.3*/
/*update publishing_house set owner = 'Allen Lane'
update publishing_house set owner = 'Oleg Novikov' where name = 'EXMO'
update publishing_house set capitalization = 355916576, owner = 'Andrey Gredasov' where name = 'EXMO'*/

/*3.4*/
/*select title from book
select * from published_book
select * from book where author = 'George Orwell'*/

/*3.5*/
/*select * from book order by release_date asc
select * from book order by release_date desc
select * from book order by release_date, author limit 2
select title, author from book order by 1*/

/*3.6*/
/*select * from book where release_date < '2000-01-01'
select * from book where release_date between '1990-01-01' and '2000-01-01'
select title, author, extract(year from release_date) from book*/

/*3.7*/
/*select count(*) from book
select count(distinct author) from book
select distinct author from book
select max(capitalization) from publishing_house
select min(capitalization) from publishing_house
select count(title), author from book group by author, title*/

/*3.8*/
/*select price, id_book from book_in_store group by price, id_book having price < 30
select title, author from book group by title, author having author = 'George Orwell'
select name, owner from publishing_house group by name, owner having owner <> 'Allen Lane'*/

/*3.9*/
/*select name, id_book from publishing_house left join published_book on id_publishing_house = published_book.id_publisher where name = 'EXMO'
select title, id_publisher from book inner join published_book on published_book.id_book = book.id_book
select name, id_book from published_book right join publishing_house on id_publishing_house = published_book.id_publisher where name = 'EXMO'
select title, name 
from book left join published_book
on book.id_book = published_book.id_book
left join publishing_house
on published_book.id_publisher = id_publishing_house*/

/*3.10*/
/*select * from book where author in ('George Orwell', 'Ray Bradbury')
select title, (author = 'George Orwell') from book
select * from book_in_store
where price between 25 and (select max(price) from book_in_store)
select * from book_store
join (select * from book_in_store where price > 25) as books on id_store = book_store.id_book_store*/
