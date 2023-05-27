--1
set serveroutput on
declare 
player_id player.player_id%type;
player_name player.player_name%type;
player_age number;
begin
select player_id,player_name,player_age into player_id,player_name,player_age from player where player_id=7;
dbms_output.put_line('player_id: '||player_id|| ' player_name: '||player_name || ' player_age: '||player_age);
end;
/
--2
set serveroutput on
declare 
player_id player.player_id%type:=11;
player_name player.player_name%type:='Aridb';
player_age player.player_age%type:=19;
player_height player.player_height%type:=180.9;
gender player.gender%type:='Male';
begin
insert into player values(player_id,player_name,player_age,player_height,gender);
end;
/

--3
set serveroutput on
declare 
cursor player_cursor is select * from player;
player_row player%rowtype;
begin
open player_cursor;
fetch player_cursor into player_row.player_id,player_row.player_name,player_row.player_age,player_row.player_height,player_row.gender;
while player_cursor%found loop
dbms_output.put_line('player_id: '||player_row.player_id|| ' player_name: '||player_row.player_name || ' player_age: ' ||player_row.player_age|| ' player_height: '||player_row.player_height || ' gender: '||player_row.gender);
dbms_output.put_line('Row count: '|| player_cursor%rowcount);
fetch player_cursor into player_row.player_id,player_row.player_name,player_row.player_age,player_row.player_height,player_row.gender;
end loop;
close player_cursor;
end;
/

--4
set serveroutput on
declare 
  counter number;
  player_name2 player.player_name%type;
  type nameARRAY is VARRAY(20) OF player.player_name%type; 
  A_name nameARRAY:=nameARRAY();
begin
  counter:=1;
  for x in 1..9  
  loop
    select player_name into player_name2 from player where player_id=x;
    A_name.EXTEND();
    A_name(counter):=player_name2;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_name.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_name(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

--5
DECLARE 
   counter NUMBER := 1;
   player_name2 player.player_name%type;
   type nameARRAY IS VARRAY(5) OF player.player_name%type;
   A_name nameARRAY:=nameARRAY('player 1', 'player 2', 'player 3', 'player 4', 'player 5'); 
   BEGIN
   counter := 1;
   FOR x IN 1..5 
   LOOP
      select player_name into player_name2 from player where player_id=x;
      if player_name2='Safwana' 
        then
        dbms_output.put_line(player_name2||' is a '||'Female');
      elsif player_name2='Shureed'  
        then
        dbms_output.put_line(player_name2||' is a '||'Male');
      else 
        dbms_output.put_line(player_name2||' is a '||'Male');
        end if;
   END LOOP;
END;
/
