CREATE VIEW pestiek AS
SELECT CsapatNev,város
FROM CSAPATOK
WHERE város like 'Budapest';
select * from pestiek;


CREATE VIEW kiesők AS
  SELECT CsapatNev,helyezes , elértpontok
  FROM Tabella
  WHERE helyezes > 10;
  select * from kiesők;


DELETE FROM GOLLOVOLISTA
WHERE CSAPATNEV = 'Budapest Honvéd';


INSERT INTO GOLLOVOLISTA
VALUES ('Sándor Tamás',24,6,'Debreceni VSC');


update Csapatok
set KOLTSEGVETES = 150000 where Csapatnev ='Paksi FC';

