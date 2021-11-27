
UPDATE ek.dbo.zing
SET path = 'Istanbul'
WHERE path like '%stanb%';

UPDATE ek.dbo.zing
SET path = 'Izmir'
WHERE path like '%zmir%';



ALTER TABLE ek.dbo.zing alter column tarih datetime;
ALTER TABLE ek.dbo.ek2 alter column tarih datetime;


select * from ek.dbo.ek2;

select *
from ek.dbo.zing a
left join ek.dbo.ek2 b on a.path = b.ad
where  month(a.tarih) = month(b.tarih) and year(a.tarih) = year(b.tarih);

test modification

UPDATE ek2.dbo.zing2
SET path = 'Istanbul'
WHERE path like '%stanb%';

UPDATE ek2.dbo.zing2
SET path = 'Izmir'
WHERE path like '%zmir%';



ALTER TABLE ek2.dbo.zing2 alter column tarih datetime;
ALTER TABLE ek2.dbo.ekler2 alter column tarih datetime;

UPDATE ek2.dbo.ekler2
  SET tarih = DATEADD(YEAR, +1, tarih);

select * from ek2.dbo.ekler2;

select * from ek2.dbo.zing2 c
left join ek2.dbo.ekler2 d on c.path = d.ad
where  month(c.tarih) = month(d.tarih) and year(c.tarih) = year(d.tarih);