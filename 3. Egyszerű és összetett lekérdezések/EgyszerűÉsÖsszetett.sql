select Csapatnev from Tabella
where "LŐTTGÓL"-"KAPOTTGÓL" > 0; 


select Csapatnev as Budapestiek
from Csapatok where "VÁROS" = 'Budapest'; 



select distinct CsapatNev from GOLLOVOLISTA;




select JatekosNev , Gólok from GOLLOVOLISTA go
join TABELLA tl on go.CsapatNev = tl.CSAPATNEV
where tl.HELYEZES = 7;


select Helyezes, Koltsegvetes , Város , VártHelyezés from Tabella ta join Csapatok cs
on ta.CSAPATNEV = cs.CSAPATNEV
where ta."ELÉRTPONTOK" >= 40
order by ta.HELYEZES;


select tb.CsapatNev ,VártHelyezés , Helyezes from Tabella tb
join Csapatok cs on tb.CSAPATNEV = cs.CSAPATNEV
where tb.HELYEZES  <= cs."VÁRTHELYEZÉS";

