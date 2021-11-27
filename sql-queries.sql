
UPDATE ek.dbo.zing
SET path = 'Istanbul'
WHERE path like '%stanb%';

UPDATE ek.dbo.zing
SET path = 'Izmir'
WHERE path like '%zmir%';

ALTER TABLE ek.dbo.zing ALTER COLUMN tarih DATETIME;
ALTER TABLE ek.dbo.ek2 ALTER COLUMN tarih DATETIME;

SELECT tarih, emlak, konut_satis, ad
FROM     ek.dbo.ek2;

SELECT *
FROM     ek.dbo.zing AS a LEFT OUTER JOIN
                  ek.dbo.ek2 AS b ON a.path = b.ad
WHERE  (MONTH(a.tarih) = MONTH(b.tarih)) AND (YEAR(a.tarih) = YEAR(b.tarih));

--modification

UPDATE ek2.dbo.zing2
SET path = 'Istanbul'
WHERE path like '%stanb%';

UPDATE ek2.dbo.zing2
SET path = 'Izmir'
WHERE path like '%zmir%';
  
ALTER TABLE ek2.dbo.zing2 ALTER COLUMN tarih DATETIME;
ALTER TABLE ek2.dbo.ekler2 ALTER COLUMN tarih DATETIME;

UPDATE ek2.dbo.ekler2
  SET tarih = DATEADD(YEAR, +1, tarih);

SELECT tarih, emlak, konut_satis, ad
FROM     ek2.dbo.ekler2;

SELECT *
FROM     ek2.dbo.zing2 AS c LEFT OUTER JOIN
                  ek2.dbo.ekler2 AS d ON c.path = d.ad
WHERE  (MONTH(c.tarih) = MONTH(d.tarih)) AND (YEAR(c.tarih) = YEAR(d.tarih));
