CREATE TABLE uralkodok_uralkodo (
  az int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nev varchar(50) NOT NULL,
  kezdo int(4) NOT NULL,
  vegso int(4) NOT NULL
);

--1.
select nev
from uralkodok_uralkodo 
where nev asc;
--2.
select nev vegso-kezdo
from uralkodok_uralkodo 
where nev like'%László%';
--3.
select nev vegso-kezdo
from uralkodok_uralkodo 
where vegso-kezdo asc;
--4.
select count(nev)
from  uralkodok_uralkodo
where nev like'%István%';
--5.
select nev
from uralkodok_uralkodo
where kezdo < 1347 between vegso >1347;
--6.
select nev
from uralkodok_uralkodo
where kezdo>10 between vegso asc;
--7.
select count(nev)
from uralkodok_uralkodo
where 1300 between 1399;
--8.
select count(nev)
from uralkodok_uralkodo
where  vegso >(select kezdo from uralkodok_uralkodo where nev = 'Mátyás')
--9.
select nev
from uralkodok_uralkodo
where vegso-kezdo max desc limit 1; 

