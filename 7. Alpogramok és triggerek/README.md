# Alprogramok és triggerek

## Alprogramok

1. Egy procedúra , amely bemenete egy játékos neve , kimenete pedig a játékos által rúgott gólok száma a szezonban : 
   - create or replace procedure **GollovoJatekos**(nev  varchar) is  </br> **golszam** number; </br>
begin </br> 
select **gólok** into **golszam** from **GOLLOVOLISTA** </br> 
where lower(**JATEKOSNEV**) = lower(**nev**); </br> 
dbms_output.put_line('Jatekos :'  || **nev**  ); </br> 
dbms_output.put_line('Góljai :'  || **golszam**  ); </br> 
end;

2. Egy procedúra , amely bemenete egy csapat nev, kimenete pedig a góllövő listán szereplő játékosok neve az adott csapatból :
   - create or replace procedure **Vanejatekos**(csnev  varchar) is </br>**jatekosok** gollovolista%rowtype; </br>
begin </br> 
for **jatekosok** in (select * from **GOLLOVOLISTA**)
loop  </br> 
if **jatekosok.csapatnev** = csnev 
then  </br> 
dbms_output.put_line('Jatekos:'  || **jatekosok.jatekosnev**  ); </br> 
end if; </br> 
end loop; </br> 
end;

3. Egy procedúra , amely bemenete egy csapat nev, kimenete pedig az adott csapat helyzése a tabellán :
   - create or replace procedure **csapatHelyezese**(csnev  varchar) is </br>**helyezese** number; </br> 
begin </br> 
select **helyezes** into **helyezese** from **tabella**  </br> 
where **CSAPATNEV** = **csnev**; </br> 
dbms_output.put_line( **csnev** || '  helyezése: '  || **helyezese**  ); </br>
end;


## Triggerek

1. Egy trigger, ami egy új játékos beszúrása után aktiválódik és kiírja az újonnan beszúrt játékos nevét :
   - create or replace Trigger  **UjJAtekos**
after insert ON **Gollovolista** </br> 
for each row  </br>
BEGIN </br> 
dbms_output.put_line('Új Játékos : '|| :**new.jatekosnev**); </br>
END;

2. Egy triggert, ami egy új játékos törlése után aktiválódik és kiírja a törölt játékos nevét :
   - create or replace Trigger  **JatekosTorolve**
after DELETE ON **Gollovolista** </br> 
for each row </br> 
BEGIN </br> 
dbms_output.put_line('Törölt Játékos : '|| **:old.jatekosnev**); </br>
END;

3. Egy trigger, ami egy csapat frissítése után kiírja a frissített csapat nevét : 
   - create or replace Trigger  **CsapatFrissitve**
after Update ON **Csapatok** </br> 
for each row </br>
BEGIN </br> 
	dbms_output.put_line('Frissített csapat : '|| **:old.csapatnev**); </br> 
	END;



