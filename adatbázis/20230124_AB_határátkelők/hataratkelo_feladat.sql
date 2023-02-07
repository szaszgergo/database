Hozza létre a hataratkelo adatbázist!
CREATE DATABASE hataratkelo 
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;
-- Importálaja az 1_tablak.sql fájlt az adatbázisába!


CREATE TABLE hataratkelo_hatar ( az int PRIMARY KEY AUTO_INCREMENT NOT NULL, magyarh varchar(50) NOT NULL, szomszedh varchar(50) NOT NULL, orszag varchar(50) NOT NULL, tipus varchar(20) NOT NULL )

CREATE TABLE hataratkelo_telepules ( nev varchar(50) PRIMARY KEY NOT NULL, tipus varchar(20) NOT NULL, megye varchar(25) NOT NULL )
-- Importálaja az 2_hatar.sql fájlt az adatbázisába!
INSERT INTO hataratkelo_hatar (magyarh,szomszedh,orszag,tipus) VALUES ('Rajka','Dunacsún','Szlovákia','közúti'), ('Rajka','Oroszvár','Szlovákia','közúti'), ('Vámosszabadi','Medve','Szlovákia','közúti'), ('Komárom','Komárom','Szlovákia','közúti'), ('Esztergom','Párkány','Szlovákia','közúti'), ('Letkés','Szalka','Szlovákia','közúti'), ('Tésa','Ipolyvisk','Szlovákia','közúti'), ('Parassapuszta','Ipolyság','Szlovákia','közúti'), ('Balassagyarmat','Tótgyarmat','Szlovákia','közúti'), ('Ipolytarnóc','Kalonda','Szlovákia','közúti'), ('Somoskőújfalu','Sátorosbánya','Szlovákia','közúti'), ('Cered','Tajti','Szlovákia','közúti'), ('Bánréve','Sajólénártfalva','Szlovákia','közúti'), ('Bánréve','Sajószentkirály','Szlovákia','közúti'), ('Aggtelek','Domica','Szlovákia','közúti'), ('Tornanádaska','Bódvavendégi','Szlovákia','közúti'), ('Hidvégardó','Bódvavendégi','Szlovákia','közúti'), ('Szemere','Buzita','Szlovákia','közúti'), ('Tornyosnémeti','Migléc','Szlovákia','közúti'), ('Sátora[...]
-- Importálaja az 3_telepules.sql fájlt az adatbázisába!
INSERT INTO hataratkelo_telepules(nev, tipus, megye) VALUES ('Aba','nagyközség','Fejér'), ('Abádszalók','város','Jász-Nagykun-Szolnok'), ('Abaliget','község','Baranya'), ('Abasár','község','Heves'), ('Abaújalpár','község','Borsod-Abaúj-Zemplén'), ('Abaújkér','község','Borsod-Abaúj-Zemplén'), ('Abaújlak','község','Borsod-Abaúj-Zemplén'), ('Abaújszántó','város','Borsod-Abaúj-Zemplén'), ('Abaújszolnok','község','Borsod-Abaúj-Zemplén'), ('Abaújvár','község','Borsod-Abaúj-Zemplén'), ('Abda','község','Győr-Moson-Sopron'), ('Abod','község','Borsod-Abaúj-Zemplén'), ('Abony','város','Pest'), ('Ábrahámhegy','község','Veszprém'), ('Ács','város','Komárom-Esztergom'), ('Acsa','község','Pest'), ('Acsád','község','Vas'), ('Acsalag','község','Győr-Moson-Sopron'), ('Ácsteszér','község','Komárom-Esztergom'), ('Adács','község','Heves'), ('Ádánd','község','Somogy'), ('Adásztevel','község','Veszprém'), ('Adony','város','Fejér'), ('Adorjánháza','község','Veszprém'), ('Adorjás','közs[...]

-- Készítsen lekérdezést, amely azoknak a közúti határátkelőknek a magyar és a szerb településnevét sorolja fel előbbi szerint ábécérendben, ahol Szerbiába lehet átlépni!
SELECT hataratkelo_hatar.magyarh , hataratkelo_hatar.szomszedh  
FROM hataratkelo_telepules, hataratkelo_hatar
WHERE  hataratkelo_hatar.orszag LIKE '%Szerbia%' AND hataratkelo_hatar.tipus LIKE '%Közúti%'
GROUP BY hataratkelo_hatar.szomszedh 
   

-- Adja meg lekérdezés segítségével azoknak a községeknek a nevét, ahol határátkelő üzemel! Az eredményben minden község neve egyszer jelenjen meg!
SELECT DISTINCT hataratkelo_hatar.magyarh
FROM hataratkelo_telepules
INNER JOIN hataratkelo_hatar
ON hataratkelo_telepules.nev=hataratkelo_hatar.magyarh
WHERE  hataratkelo_telepules.tipus ='község';


-----------------------másik megoldás------------------------

SELECT  hataratkelo_hatar.magyarh
FROM hataratkelo_telepules
INNER JOIN hataratkelo_hatar
ON hataratkelo_telepules.nev=hataratkelo_hatar.magyarh
WHERE  hataratkelo_telepules.tipus ='község'
GROUP BY hataratkelo_telepules.nev 


-- Lekérdezés segítségével határozza meg, hogy a környező országok felé országonként hány vasúti határátkelő van! Az eredmény a darabszám szerint csökkenően jelenjen meg!
 

-- Adja meg lekérdezés segítségével, hogy megyénként hány határátkelő szerepel az adatbázisban! Az eredményben csak a határátkelővel rendelkező megyék neve és az átkelők száma jelenjen meg az utóbbi szerint csökkenő sorrendben!





