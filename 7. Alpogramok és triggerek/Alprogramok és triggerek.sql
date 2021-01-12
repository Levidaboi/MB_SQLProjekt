create or replace procedure GollovoJatekos(nev  varchar) is
golszam number;
begin
select gólok into golszam from GOLLOVOLISTA 
where lower(JATEKOSNEV) = lower(nev);

dbms_output.put_line('Jatekos :'  || nev  );
dbms_output.put_line('Góljai :'  || golszam  );
end;



create or replace procedure Vanejatekos(csnev  varchar) is
jatekosok gollovolista%rowtype;
begin
for jatekosok in (select * from GOLLOVOLISTA)
loop 
if jatekosok.csapatnev = csnev
then 
dbms_output.put_line('Jatekos:'  || jatekosok.jatekosnev  );
end if;
end loop;
end;


create or replace procedure csapatHelyezese(csnev  varchar) is
helyezese number;
begin
select helyezes into helyezese from tabella 
where CSAPATNEV = csnev;
dbms_output.put_line( csnev || '  helyezése: '  || helyezese  );
end;


create or replace Trigger  UjJAtekos
after insert ON Gollovolista
for each row
BEGIN
dbms_output.put_line('Új Játékos : '|| :new.jatekosnev);

END;


after DELETE ON Gollovolista
for each row
BEGIN
dbms_output.put_line('Törölt Játékos : '|| :old.jatekosnev);

END;

create or replace Trigger  CsapatFrissitve
after Update ON Csapatok
for each row
BEGIN
	dbms_output.put_line('Frissített csapat : '|| :old.csapatnev);
END;

