SELECT város ,count (Város) from Csapatok
GROUP by "VÁROS"
having count("VÁROS") > 1; 

SELECT Város ,avg(koltsegvetes) from CSAPATOK
GROUP BY "VÁROS"; 


SELECT CsapatNev ,count (CsapatNev) from GOLLOVOLISTA
GROUP by CsapatNev
having count(CsapatNev) > 1; 

select Helyezes,CsapatNev
  from Tabella
  where CsapatNev IN(
  select CSAPATNEV
  from Csapatok
  where Koltsegvetes > 350);

SELECT HELYEZES,CSAPATNEV
FROM TABELLA
WHERE KapottGól > ANY
(SELECT KapottGól FROM TABELLA WHERE KapottGól > 40 );

SELECT HELYEZES,CSAPATNEV
FROM TABELLA
WHERE "LŐTTGÓL" <= ALL
(SELECT LőttGól FROM TABELLA WHERE LőttGól <= 30); 

