# Táblák létrehozása 

</br>

## Tartalom Jegyzék:

- [Táblák adatai](#táblák-adatai)

- [Normalizálás](#normalizálás)


## Táblák adatai:

### 1. **Tabella** : 
	A legutolsó forduló utáni állás van elmentve itt a helyezésekkel ,az elért pontokkal és a lőtt , illetve kapott gólok számával
   - **Csapatnév** 
     - Elsődleges kulcs
   - Helyezés
   - Lőtt Gólok
   - Kapott Gólok
   - Elért Pontok
   - Megszorítások : 
     - a Helyezés csak 1 és 12 között lehet
	 - az Elért Pontok maximum 99 lehet

### 2. **Csapatok** :
	Itt a csapatok költségvetését , székhelyét és az előre megcélzott helyezéseik vannak eltárolva
   - **Csapatnév**
	 - Elsődleges kulcs
   - Költségvetés
   - Város
   - Várt Helyezés
   - Megszorítás : 
     - a Várt Helyezés csak 1 és 12 között lehet
   
### 3. **Góllövőlista** :
	Az idény legtöbb találatait elérő játékosai lesznek itt felsorolva
   - **Játékos Név**
	 - Elsődleges kulcs
   - Gólok
   - Asszisztok
   - **_Csapatnév_**
	 - Idegen kulcs
	 
## Normalizálás

**Tabella**(*CsapatNev*, Helyezés, Lőtt gól , Kapott Gól ,Elért Pontok)
- 1NF, mivel nincs benne összetett attribútum 
- 2NF, a kulcs halmaz egy elemű 
- 3NF, csak kulcsfüggőség van így teljesül 
- BCNF, is teljesül

</br>

**Csapatok**(*CsapatNev*, Koltsegvetes , Város, VártHelyezés)

- 1NF, mivel nincs benne összetett attribútum 
- 2NF, a kulcs halmaz egy elemű 
- 3NF, csak kulcsfüggőség van így teljesül 
- BCNF, is teljesül

</br>

**Góllövő lista**(*Játékos Név*  , Aszisztok , Gólok, *CsapatNev*)
- 1NF, mivel nincs benne összetett attribútum 
- 2NF, a kulcs halmaz egy elemű 
- 3NF, csak kulcsfüggőség van így teljesül 
- BCNF, is teljesül

