A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


1. feladat:
CREATE DATABASE maratonvalto
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

2.feladat:

3. feladat:
INSERT INTO `eredmenyek`(`futo`, `kor`, `ido`) 
VALUES (1044,4,15765);

4. feladat:
SELECT fnev,szulev
FROM futok
WHERE ffi=0 
ORDER BY fnev ASC

5. feladat:
SELECT fnev AS futo, 2016-szulev AS kor
FROM futok
WHERE 2016-szulev >= 42
ORDER BY szulev DESC;


6. feladat:
SELECT futok.fnev AS futo,eredmenyek.ido
FROM futok 
INNER JOIN eredmenyek ON futok.fid=eredmenyek.futo
WHERE futok.ffi = 1 
ORDER BY eredmenyek.ido asc limit 10;

7. feladat:

