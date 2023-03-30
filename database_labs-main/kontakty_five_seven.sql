--CREATE DATABASE newdb;
USE newdb;

/*
--5lab
--CREATE TABLES

create table district(
id_district int not null primary key identity(1,1),
district nvarchar(50) not null
)
create table field_of_industry(
id_field int not null primary key identity(1,1),
field_of_industry nvarchar(50) not null
)
create table tip_klienta(
id_tip_klienta int not null primary key identity(1,1),
tip_klienta nvarchar(50) not null
)

create table klient(
id_klient int not null primary key identity(1,1),
first_name nvarchar(50) not null,
middle_name nvarchar(50) not null,
last_name nvarchar(50) not null,
record_date date not null,
office nvarchar(50),
position nvarchar(50), 
comments nvarchar(50),
id_tip_klienta int  foreign key  references tip_klienta(id_tip_klienta) not null,
id_field_of_industry int  foreign key  references field_of_industry(id_field) not null,
id_district int  foreign key  references district(id_district) not null
)

create table tip_kontaktov(
id_tip_kontaktov int not null primary key identity(1,1),
tip_kontaktov nvarchar(50) not null
)

create table kontakty(
id_kontakty int not null primary key identity(1,1),
kontakty nvarchar(50) not null,
id_tip_kontaktov int  foreign key  references tip_kontaktov(id_tip_kontaktov),
id_klient int  foreign key  references klient(id_klient)
)


--FILLING IN TABLES

INSERT district VALUES
('Первомайский'),
('Сверловский'),
('Октябрьский'),
('Ленинский');

INSERT field_of_industry VALUES
('Реклама'),
('Маркетинг'),
('Бухгалтерия');

INSERT tip_klienta VALUES 
('Физические лица'),
('Юридические лица');

INSERT tip_kontaktov VALUES
('e_mail'),
('телефон'),
('insta'),
('WhatsApp'),
('Viber'),
('skype');

('Иванов','Иван','Иванович','2018-02-01','spacex','tester','no comments',1,1,1),
('Петров','Петр','Петрович','2018-03-01','spacex','tester','no comments',1,3,2),
('Сидоров','Сидор','Сидорович','2018-06-01','ОсОО Арашан','manager','no comments',2,1,3),
('Краснова','Ирина','Петровна','2018-05-01','studio day','producer','no comments',1,3,4);

INSERT kontakty VALUES
('ivan@bk.ru',1,2),
('0312235689',2,2),
('pertrovich@mail.ru',1,3);
*/





/*
--5lab (update info)

delete 
from kontakty 
WHERE id_klient > 10;

update dbo.klient 
set last_name = 'Иванов'
where id_klient = 3


update dbo.klient
set id_district=3
where id_district=1

update dbo.klient
set first_name = 'Asan',
middle_name = ' Asylbekovich',
last_name = ' Asanov'
where id_klient = 1
*/




/*
--6  laba

1.  SELECT *
FROM dbo.klient
WHERE id_klient = 3

2.  SELECT *
FROM dbo.klient
WHERE id_field_of_industry = (SELECT id_field FROM dbo.field_of_industry WHERE field_of_industry = 'Бухгалтерия')

3.  SELECT *
FROM dbo.klient
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Первомайский')

4.  SELECT kontakty
FROM dbo.kontakty
WHERE id_klient = (SELECT id_klient FROM dbo.klient WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Октябрьский'))

5. SELECT *
FROM dbo.kontakty
WHERE id_klient = (SELECT id_klient FROM dbo.klient WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Первомайский') AND id_field_of_industry = 
(SELECT id_field FROM dbo.field_of_industry WHERE field_of_industry = 'Маркетинг'))

7. SELECT *
FROM dbo.klient 
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Первомайский') and first_name LIKE'C%'

8. SELECT count(id_klient)
FROM dbo.klient
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Первомайский')

9. SELECT * 
FROM dbo.klient
WHERE id_klient = (SELECT id_klient FROM dbo.kontakty WHERE id_kontakty = 1)

11. SELECT id_district, id_tip_klienta, id_field_of_industry, last_name
FROM klient
WHERE id_klient = (SELECT id_klient FROM kontakty WHERE kontakty = 'ivan@bk.ru')

12. SELECT id_district, id_tip_klienta, id_field_of_industry, last_name
FROM klient
WHERE id_klient = (SELECT id_klient FROM kontakty WHERE id_kontakty = 6)

13. SELECT * 
FROM kontakty
WHERE id_kontakty <= 5;

15. SELECT *
FROM dbo.klient
WHERE id_klient = 3
UNION 
SELECT *
FROM dbo.klient
WHERE id_field_of_industry = (SELECT id_field FROM dbo.field_of_industry WHERE field_of_industry = 'Buchgaltary')
UNION
SELECT *
FROM dbo.klient
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'First')	

*/


/*
--7 laba

1. SELECT count(*)
FROM dbo.district

1. SELECT count(*)
FROM dbo.field_of_industry

1. SELECT count(*)
FROM dbo.klient

1. SELECT count(*)
FROM dbo.kontakty

1. SELECT count(*)
FROM dbo.tip_klienta

1. SELECT count(*)
FROM dbo.tip_kontaktov

1. SELECT count(*)
FROM dbo.tip_kontaktov

2. SELECT count(*)
FROM dbo.klient
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Первомайский')

3. SELECT count(*)
FROM dbo.klient
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Первомайский') OR id_district = (SELECT id_district FROM dbo.district WHERE district = 'Сверловский')

4. SELECT count(*)
FROM dbo.klient
WHERE record_date <= '2018-05-01';

5. SELECT count(*)
FROM dbo.kontakty
WHERE id_klient = 1;

7. USE klient
SELECT *	
FROM klient
Where id_klient NOT IN (SELECT id_klient FROM kontakty)
*/