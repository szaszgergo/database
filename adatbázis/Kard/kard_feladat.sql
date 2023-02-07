-- 1. Importálja a tabla.sql fájl tartalmát az adatbázisába!

-- 2. Importálja az egyeni.sql fájl tartalmát az előző pontban létrehozott táblába!
	
-- 3. Adja meg az aranyérmesek nevét, olimpia idejét, helyszínét, időpont alapján növekvő sorrendben


-- 4. Adja meg a müncheni olimpia érmeseinek nevét, helyezését!
SELECT nev,helyezes
FROM `kard_egyeni` 
WHERE helyszin="München"

-- 5. Kárpáti Rudolf melyik olimpián és milyen helyezést ért el?
SELECT helyszin ,helyezes
FROM `kard_egyeni` 
WHERE  nev='Kárpáti Rudolf'

-- 5/a Kik voltak a Stockholmi olimpia érmesei?
SELECT nev
FROM `kard_egyeni`
WHERE helyszin='Stockholm'

-- 6. Hány dobogós helyezést értek el a magyarok?

SELECT COUNT(nev)
FROM `kard_egyeni` 
WHERE orszag="MA"
-- 6/a Fuchs Jenő hány olimpiai érmet szerzett?

SELECT COUNT(helyezes)
FROM `kard_egyeni` 
WHERE nev='Fuchs Jenő'
-- 7. Melyik olimpián (év, város) szereztek az olaszok először érmet?

SELECT ev ,helyszin
FROM `kard_egyeni` 
WHERE orszag='OL' AND order by ev  asc LIMIT 1
-- 8. Kik a magyar dobogósok? Mindenki csak egyszer szerepeljen a helyezések számával.
SELECT nev,helyezes
FROM `kard_egyeni` 
GROUP BY nev
ORDER BY orszag='MA'

-- 9. Adja meg az 1900 és 1950 közötti nem magyar érmesek nevét, országát, időpontját, helyezését!
SELECT nev
FROM `kard_egyeni` 
WHERE  orszag!='MA' AND ev >1900 AND ev <1950


-- 10. Ki nyert többször aranyérmet?

SELECT nev,COUNT(helyezes)
FROM `kard_egyeni` 
WHERE  helyezes='1'
GROUP BY nev
HAVING COUNT(helyezes)>1
-- 11. Melyik ország hány aranyérmet szerzett?







-- 12. Melyik városban rendeztek többször olimpiát?


-- 13. 1950 előtt ki nyert azonos érmet Kovács Pállal?






	