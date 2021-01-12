# Táblák létrehozása 

</br>

 
- Tabella: a legutolsó forduló utáni állás van elmentve itt a helyezésekkel ,az elért pontokkal és a lőtt , illetve kapott gólok számával

- Csapatok: itt a csapatok költségvetését , székhelyét és az előre megcélzott helyezéseik 

- Góllövőlista: az idény legtöbb találatait elérő játékosai lesznek itt felsorolva

## Táblák adatai:

1. Tabella 
   - **Csapatnév** 
     - Elsődleges kulcs
   - Helyezés
   - Lőtt Gólok
   - Kapott Gólok
   - Elért Pontok
   - Megszorítások : 
     - a Helyezés csak 1 és 12 között lehet
	 - az Elért Pontok maximum 99 lehet

2. Csapatok
   - **Csapatnév**
	 - Elsődleges kulcs
   - Költségvetés
   - Város
   - Várt Helyezés
   - Megszorítás : a Várt Helyezés csak 1 és 12 között lehet
   
3. Góllövőlista
   - **Játékos Név**
	 - Elsődleges kulcs
   - Gólok
   - Asszisztok
   - **_Csapatnév_**
	 - Idegen kulcs
	 
## Normalizálás

**Tabella**(CsapatNev, Helyezés, Lőtt gól , Kapott Gól ,Elért Pontok)
- 1NF, mivel nincs benne összetett attribútum 
- 2NF, a kulcs halmaz egy elemű 
- 3NF, csak kulcsfüggőség van így teljesül 
- BCNF, is teljesül
**Csapatok**(CsapatNev , Koltsegvetes , Város, VártHelyezés)
- 1NF, mivel nincs benne összetett attribútum 
- 2NF, a kulcs halmaz egy elemű 
- 3NF, csak kulcsfüggőség van így teljesül 
- BCNF, is teljesül
**Góllövő lista**(Játékos Név  , Aszisztok , Gólok, CsapatNev)
- 1NF, mivel nincs benne összetett attribútum 
- 2NF, a kulcs halmaz egy elemű 
- 3NF, csak kulcsfüggőség van így teljesül 
- BCNF, is teljesül

