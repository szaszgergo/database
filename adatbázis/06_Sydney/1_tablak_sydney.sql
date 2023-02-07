CREATE TABLE Sydney_pontszerzok (
  az int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nev varchar(200) NOT NULL,
  sportag varchar(50) NOT NULL,
  versenyszam varchar(50) NOT NULL,
  egyeni BOOLEAN,
  helyezes int(3) NOT NULL
);
--3.
select nev sportag helyezes
from Sydney_pontszerzok
where helyezes desc nev asc ;
--4.
select helyezes sportag versenyszam
from Sydney_pontszerzok;
--5.

