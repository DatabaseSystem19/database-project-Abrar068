--dml
--1
select * from player where player_age>=26;
--2
select * from player where player_id in (select player_id from position where position_name='Defender');
--3
update idol set idol_name='Didier drogba' where idol_id=3;
--4 union
select player_name from player where player_id=3 union select position_name from position where position_id=3;
--5
select count(*) from player;
--6
select count(player_name) as number_of_player from player;
--7
select count(distinct player_name) as number_of_player from player;
--8
select avg(player_age) from player;
select sum(player_age) from player;
--9
select max(player_age) from player;
select min(player_age) from player;
--10
select gender,avg(player_age) from player group by gender;
--11
select gender,avg(player_age) from player group by gender having avg(player_age)>25;
--12 nested
select player_name from player where player_id=(select player_id from position where position_id=(select position_id from idol where idol_name='Sergio Ramos'));
--13 intersect
select player_id from player intersect select player_id from position;
--14set membership and
 select * from player where gender='Male' and player_id in (select player_id from position where position_id>=3);
 --15 or
  select * from player where gender='Male' or player_id in (select player_id from position where position_id>=7);
  --16 exists
  select * from player where player_age>=25 and exists(select * from player where player_name like 'Sa%');
  --17 string operations
  select * from player where player_name like 'Sa%';
select * from player where player_name like '%d';
select * from player where player_name like '%a%w%';
select * from player where player_name like '__biu_' or player_name like 'A__ahe' or player_name like '___ree_';
--18 join
select * from player natural join position where player_id=7;
select * from player natural join position;
select player_name,position_name from player join position using(player_id);
--19 view
drop view custom;
drop view player_detail;
create view player_detail as select player_id,player_name from player;
select *from player_detail;
create view  custom as select * from player_details where player_id>=3;
select * from custom; 


