# Csoportos- és Allekérdezések

## Csoportos Lekérdezések

1. Azon városok amelyekből több csapat is jelen van a ligában:
   - SELECT **város** ,count (**Város**) from **Csapatok** </br>
GROUP by "**VÁROS**"
having count(**"VÁROS"**) > 1; 

2. Az egyes városok csapatainak átlagköltségvetése :
   - SELECT **Város** ,avg(**koltsegvetes**) from **CSAPATOK** </br>
GROUP BY **"VÁROS"**; 

3. Azok a városok amelyekből csak egy játékos szerepel a góllövőlistán :
   - SELECT **CsapatNev** ,count (**CsapatNev**) from **GOLLOVOLISTA** </br>
GROUP by **CsapatNev**
having count(**CsapatNev**) = 1; 

## Allekérdezések

1. Azok a csapatok , helyezéseikkel együtt , amelyek költségvetései nagyobb mint 350 ezer euró :

   - select **Helyezes**,**CsapatNev**
  from **Tabella**
  where **CsapatNev** IN </br> (
  select **CSAPATNEV**
  from **Csapatok**
  where **Koltsegvetes** > 350);
2. Azok a csapatok amelyek több mint 40 gólt kaptak : 
   - SELECT **HELYEZES**,**CSAPATNEV**
FROM **TABELLA** </br>
WHERE **KapottGól** > ANY
(SELECT **KapottGó**l FROM **TABELLA** WHERE **KapottGól** > 40 );
3. Azon csapatok melyek kevesebb mint 30 gólt szereztek :
   - SELECT **HELYEZES**,**CSAPATNEV**
FROM **TABELLA**  </br>
WHERE **"LŐTTGÓL"** <= ALL
(SELECT **LőttGól** FROM **TABELLA** WHERE **LőttGól** <= 30); 
 