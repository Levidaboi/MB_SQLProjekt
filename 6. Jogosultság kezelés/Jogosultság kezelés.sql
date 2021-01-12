create role Rendszergazda; 
grant drop any table, create any table, create any view, backup any table, alter any table, create session to Rendszergazda;

 create role Felhasználó; grant select any table, select any sequence, create procedure, create sequence, insert any table, update any table, create session to Felhasználó; 

create user Máté identified by "Máté"; 

create user Peti identified by "Peti"; 

create user Bence identified by " Bence ";

 create user Roli identified by "Roli"; 

grant Rendszergazda to Máté; 

grant Felhasználó to Peti; 

grant Rendszergazda to Bence; 

grant Felhasználó  to Roli; 

