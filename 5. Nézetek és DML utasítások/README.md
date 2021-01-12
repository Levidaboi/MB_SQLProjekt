# Nézetek és  DML utasítások

## Nézetek

1. Egy nézet a budapesti csapatok megjelenítésére :
   - CREATE VIEW **pestiek** AS
SELECT **CsapatNev**,**város**
FROM **CSAPATOK** </br>
WHERE **város** like 'Budapest'; </br>
select * from **pestiek**;

2. Egy nézet a kieső csapatoknak :
   - CREATE VIEW **kiesők** AS
  SELECT **CsapatNev**,**helyezes** , **elértpontok**
  FROM **Tabella** </br> 
  WHERE **helyezes** > 10; </br>
  select * from **kiesők**;

## DML utasítások 

1. Honvéd játékosok kitörlése a góllövőlistáról :
   - DELETE FROM **GOLLOVOLISTA** </br>
WHERE **CSAPATNEV** = 'Budapest Honvéd';

2. Sándor Tamás hozzáadása a góllövőlistához :
   - INSERT INTO **GOLLOVOLISTA** </br>
VALUES ('Sándor Tamás',24,6,'Debreceni VSC');

3. A Paksot felvásárolta egy kínai üzletember , frissíteni kell a költségvetésüket :
   - update **Csapatok** 
set **KOLTSEGVETES** = 150000  </br> where **Csapatnev** ='Paksi FC';




