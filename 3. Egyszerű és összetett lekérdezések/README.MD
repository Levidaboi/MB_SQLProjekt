# Egyszerű és többtáblás lekérdezések
</br>

## Egyszerű  lekérdezések

1. Pozitív gólkülönbségű játékosok kilistázása :
   - select **Csapatnev** from **Tabella** </br>
      where "LŐTTGÓL"-"KAPOTTGÓL" > 0;
	  
2. Fővárosi csapatok kilistázása:
	- select **Csapatnev** as Budapestiek  </br>
		from **Csapatok** where "VÁROS" = 'Budapest'; 
		
3. Góllövőlistán található játékosok csapatai(egy csapat csak egyszer szerepelhet) :
	- select distinct **CsapatNev** from **GOLLOVOLISTA**;
	
## Többtáblás lekérdezések

1. A 7. helyen végzett csapatjátékosai , akik szerepelnek a góllövőlistán :

	- select **JatekosNev** , **Gólok** from **GOLLOVOLISTA** go </br>
join **TABELLA** tl on **go.CsapatNev** = **tl.CSAPATNEV**
where **tl.HELYEZE**S = 7;

2. Azon csapatok adatai, amelyek legalább 40 pontot értek el a szezon során :

	select **Helyezes**, **Koltsegvetes** , **Város** , **VártHelyezés** from **Tabella** ta </br> 
	join **Csapatok** cs on **ta.CSAPATNEV** = **cs.CSAPATNEV**
where **ta."ELÉRTPONTOK"** >= 40
order by **ta.HELYEZES**;

3. Azon csapatok amelyek teljesítették az elvárt helyezéseiket:

	select **tb.CsapatNev** ,**VártHelyezés** , **Helyezes** from **Tabella** tb
join **Csapatok** cs on **tb.CSAPATNEV** = **cs.CSAPATNEV** </br>
where **tb.HELYEZES**  <= **cs."VÁRTHELYEZÉS"**;

