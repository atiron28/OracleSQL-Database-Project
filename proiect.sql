-- gestiunea unei patiseri

create table angajati_patiserie(
id_ang number(4),
nume varchar2(20),
prenume varchar2(20),
telefon varchar2(20),
data_angajare date,
salariu number(8),
id_fct number(4),
constraint pk_id_ang primary key(id_ang),
constraint not_prenume check(prenume is not null),
constraint fk_i_ang foreign key(id_fct) references functii_patiserie(id_fct)
);



create table produse_patiserie(
id_prod number(4),
denumire_prod varchar2(20),
pret_prod number(8),
constraint pk_id_prod primary key(id_prod)
);


create table furnizori_patiserie(
id_frz number(4),
nume varchar2(20),
id_prod number(4),
constraint pk_id_frz primary key(id_frz),
constraint fk_id_frz foreign key(id_prod) references produse_patiserie(id_prod)
);

create table comenzi_patiserie(
id_com number(4),
modalitate varchar2(8),
data_com date,
id_cli number(4),
stare_comanda varchar2(10),
constraint pk_id_com primary key(id_com),
constraint fk_id_com foreign key(id_cli) references clienti_patiserie(id_cli)
);


create table clienti_patiserie(
id_cli number(4),
nume varchar2(20),
prenume varchar2(20),
limita_credit number(9),
email_cli varchar2(15),
sex varchar2(1),
constraint pk_id_cli primary key(id_cli)
);


create table functii_patiserie(
id_fct number(4),
denumire varchar2(20),
salariu_min number(6),
salariu_max number(8),
constraint pk_id_fct primary key(id_fct)
);


create table stoc_patiserie(
nr_stoc number(4),
cantitate number(3),
id_prod number(4),
id_frz number(4),
constraint pk_nr_stoc primary key(nr_stoc)
);

alter table produse_patiserie drop column id_cli ;























insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('10','Fursecuri cu Stafide','45');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('11','Minipateuri cu Branza','50');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('12','Minipateuri cu Carne','35');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('13','Minipateuri cu Cascaval','65');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('14','Placinta Dobrogeana','75');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('15','Minipateuri cu Ciuperci ','80');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('16','Minipateuri cu Spanac ','87');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('17','Inele cu Unt','36');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('18','Baton cu Cascaval','56');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('19','Buseu cu Nuca','66');
insert into produse_patiserie(id_prod, denumire_prod, pret_prod) values('20','Covrig Dulce cu Mac','78');

select * from produse_patiserie; 





insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('301','Ion','Alexandru','ionalexandru@email.com','M','0788456321');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('302','Burcea','Alin','burceaalin@email.com','M','0788486321');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('303','Ionescu','Andreea','ionescuandreea@email.com','F','0788456348');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('304','Popescu','Irina','popescuirina@email.com','F','0788453921');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('305','Constantin','Flavius','constantinfla@email.com','M','0744456321');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('306','Marian','Florin','marianflorin@email.com','M','0788746321');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('307','Ardeleanu','Ana','ardeleanuana@email.com','F','0783366321');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('308','Achimoi','Gabriel','achimoigabriel@email.com','M','0788464721');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('309','Alexandrescu','Teodora','alexandrteodora@email.com','F','0788456123');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('310','Tudose','Alin','tudosealin@email.com','M','0788454121');
insert into clienti_patiserie(id_cli,nume,prenume,email_cli,sex,telefon) values('311','Teodor','Vasile','teodorvasile@email.com','M','0787654321');

select * from clienti_patiserie; 




Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('1','Bucatar','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('2','Casier','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('3','Ajutor Patiser','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('4','Curatator','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('5','Manager','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('6','Ajutor Patiser 2','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('7','Patiser 2','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('8','Curatator 2','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('9','Casier 2','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('10','Patiser 3','3000','17000');
Insert into functii_patiserie(id_fct,denumire,salariu_min,salariu_max) values('11','Ajutor Patiser 3','3000','17000');

select * from functii_patiserie;

insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('501','Card','10.April.2004','301','Finalizat','10','101');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('502','Card','10.April.2004','302','In Procesare','11','102');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('503','Card','10.April.2004','303','Finalizat','12','103');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('504','Card','10.April.2004','304','In Procesare','13','104');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('505','Card','10.April.2004','305','Finalizat','14','105');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('506','Card','10.April.2004','306','Finalizat','15','106');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('507','Card','10.April.2004','307','In Procesare','16','107');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('508','Card','10.April.2004','308','Finalizat','17','108');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('509','Card','10.April.2004','309','Finalizat','18','109');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('510','Card','10.April.2004','310','Finalizat','19','110');
insert into comenzi_patiserie(id_com,modalitate,data_com,id_cli,stare_comanda, id_prod,id_ang)values('511','Card','10.April.2004','311','In Procesare','20','111');



select * from comenzi_patiserie;








insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('1','3','10','401');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('2','4','11','402');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('3','5','12','403');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('4','6','13','404');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('5','7','14','405');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('6','8','15','406');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('7','9','16','407');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('8','10','17','408');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('9','13','18','409');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('10','23','19','410');
insert into stoc_patiserie(nr_stoc,cantitate ,id_prod,id_frz) values('11','33','20','411');

select * from stoc_patiserie;

insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('401','Milky Distrib','50' ,'Bucuresti');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('402','Milky Distrib','60' ,'Ploiesti');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('403','Milky Distrib','40' ,'Cluj');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('404','Milky Distrib','30' ,'Bistrita');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('405','Milky Distrib','100' ,'Bacau');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('406','Milky Distrib','80' ,'Constanta');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('407','Milky Distrib','70','Suceava');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('408','Milky Distrib','40' ,'Iasi');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('409','Milky Distrib','120' ,'Oradea');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('410','Milky Distrib','110' ,'Arad');
insert into furnizori_patiserie(id_frz ,nume ,cantitate_com,localitate) values('411','Milky Distrib','150' ,'Timisoara');

select * from furnizori_patiserie;





update furnizori_patiserie
set nume='Faina Distrib' 
where id_frz =403; 
select nume from furnizori_patiserie where id_frz=403;





delete from angajati_patiserie
where lower(prenume)='marin'; 
select * from angajati_patiserie;











select denumire, salariu_max*1 
from functii_patiserie
intersect
select denumire, salariu_max 
from functii_patiserie;




select nume, email_cli 
from clienti_patiserie
intersect
select nume, email_cli
from clienti_patiserie;




update functii_patiserie
set salariu_min=salariu_min*2
where id_fct =(select id_fct from functii_patiserie where id_fct=4);
rollback;
select * from functii_patiserie;

update stoc_patiserie
set cantitate=cantitate -7
where cantitate in (select cantitate from stoc_patiserie where nr_stoc=10);

select * from stoc_patiserie;


select prenume 
from clienti_patiserie
where initcap(prenume)='Florin' 
union all
select modalitate
from comenzi_patiserie
where id_com=505;





select id_frz id, localitate localitate
from furnizori_patiserie
union
select id_cli id, nume 
from clienti_patiserie;















select an.nume, an.prenume,f.denumire, f.salariu_min
from angajati_patiserie an, functii_patiserie f
where an.id_fct=f.id_fct 
order by nume desc;



select p.denumire_prod,s.cantitate, p.pret_prod 
from stoc_patiserie s, produse_patiserie p
where s.id_prod=p.id_prod 
order by pret_prod asc;


select MIN(salariu), MAX(salariu) from angajati_patiserie;


select * from angajati_patiserie
where id_ang in (select id_ang
from angajati_patiserie
where lower(nume)='pintilie');


select id_ang, nume from angajati_patiserie where nume like upper('M%');







select id_prod, denumire_prod, pret_prod, 
case when pret_prod>70 then 'produs scump'
when pret_prod between 50 and 70 then 
'pret mediu' else 'pret ieftin'
end clasificare_produse 
from produse_patiserie;



select id_fct, denumire, salariu_max*case 
when id_fct between 1 and 4 then 1.1
when id_fct between 5 and 8 then 1.2 else 1.3
end modificare_salariu_max from functii_patiserie;

select id_fct, salariu_min,
salariu_min*decode(id_fct, 2, 1.1, 6, 1.2) salariu_min__majorat from functii_patiserie;



select localitate, cantitate_com,
cantitate_com*decode(localitate, 'Cluj', 0.9, 'Bucuresti', 0.8) cantitate_com_scazuta from furnizori_patiserie;



select * from produse_patiserie where pret_prod between 30 and 50 
minus
select * from produse_patiserie where pret_prod in (80, 87);



select * from furnizori_patiserie where cantitate_com between 60 and 80 
minus
select * from furnizori_patiserie where cantitate_com in (110, 120);




select id_ang, nume, id_fct, level from angajati_patiserie
connect by prior id_ang= id_fct
start with id_ang = 101;



select id_ang, nume, id_fct, level from angajati_patiserie
connect by id_ang = prior id_fct
start with nume= 'Petrisor';



create or replace view view_angajat_106 as select * from angajati_patiserie
where id_ang=106; 
update view_angajat_106 set nume='Eric';
select * from view_angajat_106;



select * from produse_patiserie
where pret_prod between 35 and 55;
create index index_pret_prod on produse_patiserie(pret_prod);



create synonym fz for furnizori_patiserie; 
create synonym cl for clienti_patiserie; 
select * from user_synonyms;

drop sequence s_ang;


CREATE SEQUENCE seq_prod 
START WITH 1 INCREMENT BY 1
MAXVALUE 11 NOCYCLE;

INSERT INTO produse_patiserie VALUES (seq_prod.NEXTVAL,'Corn','16');

CREATE SEQUENCE seq_ang 
START WITH 1 INCREMENT BY 1
MAXVALUE 11 NOCYCLE;
insert into angajati_patiserie values (seq_ang.nextval, 'Popa','Ion','0755344269','24.April.2004','3000','4');
ROLLBACK;
DELETE FROM ANGAJATI_PATISERIE WHERE ID_ANG=1;
select * from user_sequences;


SELECT*FROM ANGAJATI_PATISERIE;


alter table angajati_patiserie 


alter table angajati_patiserie add  (id_com number(4));





alter table produse_patiserie add constraint frk_id_cli foreign key(id_cli) references clienti_patiserie(id_cli);
alter table produse_patiserie add constraint frk_id_cli foreign key(id_cli) references clienti_patiserie(id_cli);
alter table comenzi_patiserie add (id_ang number(4));
alter table comenzi_patiserie add constraint frk_id_ang foreign key(id_ang) references angajati_patiserie(id_ang);
alter table clienti_patiserie drop column id_com ;
alter table clienti_patiserie drop constraint frk_id_com;

alter table stoc_patiserie add constraint frk_id_prod foreign key(id_prod) references produse_patiserie(id_prod);
alter table stoc_patiserie add constraint frk_id_frz foreign key(id_frz) references furnizori_patiserie(id_frz);

alter table comenzi_patiserie add (id_prod number(4));
alter table comenzi_patiserie add constraint frkey_id_prod foreign key(id_prod) references produse_patiserie(id_prod);
alter table clienti_patiserie add (telefon number(9));
alter table comenzi_patiserie drop column telefon;
alter table furnizori_patiserie add (localitate varchar2(20));


alter table furnizori_patiserie drop constraint fk_id_frz;
alter table furnizori_patiserie drop column localitate_furnizor;

alter table produse_patiserie modify denumire_prod varchar2(25);
alter table clienti_patiserie modify email_cli varchar2(25);
alter table produse_patiserie modify id_prod number(5);
alter table produse_patiserie modify id_cli number(5);
alter table comenzi_patiserie modify stare_comanda varchar(15);

alter table stoc_patiserie add constraint fk_id_frz foreign key(id_frz) references furnizori_patiserie(id_frz);
alter table furnizori_patiserie add (cantitate_com number(5));

alter table clienti_patiserie drop column limita_credit;

drop table produse_patiserie;
commit;


describe furnizori_patiserie;








Drop table angajati_patiserie cascade constraints; 
flashback table angajati_patiserie to before drop;






--PROBLEME



select nume,prenume from angajati a where salariul>(select avg(salariul) from angajati b where a.id_departament=b.id_departament) and id_angajat not in(select id_angajat from comenzi where id_angajat is not null);

select denumire_functie, count(*) from functii a, istoric_functii b
where a.id_functie=b.id_functie
group by denumire_functie having count(*)=(select max(count(*)) from istoric_functii group by id_functie);


SELECT distinct categorie,
decode ('hardwarel', 'hardwarel' , 'hardware2', 2) FROM produse;


SELECT p.id_produs, p.denumire_produs, rc. cantitate, rc.pret
FROM produse p, rand_comenzi rc
WHERE p.id_produs = rc.id_produs(+);

select * from istoric_functii;
select * from comenzi;


select sum(salariul),id_departament from angajati group by id_departament;
select sum(salariul) from angajati group by id_departament having sum(salariul)>30000;
select sum (salariul) from angajati;
select sum (salariul) from angajati
group by id_departament;



select distinct cli.id_client,cli.nume_client, count(c.id_comanda), 
case when count(c.id_comanda)<2 then 0.1
when count(c.id_comanda) between 3 and 4 then 0.15
else 0.2 end 
from comenzi c,clienti cli
where cli.id_client=c.id_client 
group by cli.id_client,cli.nume_client;


select salariul, nume ,salariul*(case 
when level=2 then 1.05
else 1 end) cazuri
from angajati
connect by prior id_angajat= id_manager
start with id_angajat=100;



select p.id_produs, p.denumire_produs, rc.pret*rc.cantitate from produse p,rand_comenzi rc
where p.id_produs=rc.id_produs
and rc.pret>50;


select a.id_angajat, a.nume, a.id_functie, i.data_inceput, i.data_sfarsit
from angajati a, istoric_functii i
where a.id_functie=i.id_functie
and i.data_sfarsit is not null;











