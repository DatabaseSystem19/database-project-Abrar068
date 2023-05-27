drop table sponsor;
drop table idol;
drop table attribute;
drop table style;
drop table position;
drop table player;

--creation
create table player (
  player_id number(10) primary key,
  player_name varchar(30),
  player_age number(10),
  player_height number(10,2),
  gender varchar(10)
);

Create table sponsor(
sponsor_id number(10),
sponsor_name varchar(30),
player_id number(10),
income number(10),
club varchar(30),
primary key(sponsor_id),
foreign key(player_id) references player(player_id)
);

Create table position(
position_id number(10),
position varchar(30),
player_id number(10),
jersey number(10),
extra_position varchar(30),
primary key(position_id),
foreign key(player_id) references player(player_id)
);

Create table attribute(
attribute_id number(10),
def_rate varchar(10),
att_rate varchar(10),
position_id number(10),
weakfoot_usage varchar(10),
weakfoot_accuracy varchar(10),
primary key(attribute_id),
foreign key(position_id) references position(position_id)
);

Create table style(
style_id number(10),
style varchar(30),
extra_style varchar(30),
position_id number(10),
primary key(style_id),
foreign key(position_id) references position(position_id)
);

Create table idol(
idol_id number(10),
idol varchar(30),
player_id number(10),
position_id number(10),
primary key(idol_id),
foreign key(position_id) references position(position_id),
foreign key(player_id) references player(player_id)
);

--DDl commands
--column add
alter table player add player_hometown varchar(20);
--column modify
alter table player modify player_hometown number(23);
--rename
alter table player rename column player_hometown to player_number;
--drop column
alter table player drop column player_number;


--player values

insert into player (player_id, player_name, player_age, player_height, gender)
values (1, 'Abrar', 25, 180.5, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (2, 'Proloy', 28, 165.2, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (3, 'Shureed', 32, 192.8, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (4, 'Sunzid', 30, 170.6, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (5, 'Shoeb', 23, 175.9, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (6, 'Safwana', 27, 160.4, 'Female');

insert into player (player_id, player_name, player_age, player_height, gender)
values (7, 'Robiul', 29, 185.2, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (8, 'Abtahe', 31, 170.1, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (9, 'Hridoy', 26, 178.7, 'Male');

insert into player (player_id, player_name, player_age, player_height, gender)
values (10, 'Saddie', 24, 163.8, 'Female');


--sponsor values

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (1, 'Rakuten', 1, 100000, 'Barcelona');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (2, 'Emirates', 2, 80000, 'Man City');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (3, 'Rakuten', 3, 120000, 'Chelsea');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (4, 'Nike', 4, 90000, 'Man UTD');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (5, 'Addidas', 5, 110000, 'Real Madrid');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (6, 'Nike', 6, 95000, 'Man UTD');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (7, 'Rakuten', 7, 105000, 'Liverpool');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (8, 'Addidas', 8, 115000, 'PSG');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (9, 'Nike', 9, 85000, 'Bayern');

insert into sponsor (sponsor_id, sponsor_name, player_id, income, club)
values (10, 'Addidas', 10, 100000, 'AC Milan');

--position values

insert into position (position_id, position, player_id, jersey, extra_position)
values (1, 'Forward', 1, 10, 'Left Wing');

insert into position (position_id, position, player_id, jersey, extra_position)
values (2, 'Midfielder', 2, 8, 'Central Midfield');

insert into position (position_id, position, player_id, jersey, extra_position)
values (3, 'Defender', 3, 5, 'Center Back');

insert into position (position_id, position, player_id, jersey, extra_position)
values (4, 'Goalkeeper', 4, 1, 'N/A');

insert into position (position_id, position, player_id, jersey, extra_position)
values (5, 'Forward', 5, 9, 'Right Wing');

insert into position (position_id, position, player_id, jersey, extra_position)
values (6, 'Midfielder', 6, 7, 'Attacking Midfield');

insert into position (position_id, position, player_id, jersey, extra_position)
values (7, 'Defender', 7, 3, 'Right Back');

insert into position (position_id, position, player_id, jersey, extra_position)
values (8, 'Midfielder', 8, 11, 'Left Midfield');

insert into position (position_id, position, player_id, jersey, extra_position)
values (9, 'Defender', 9, 6, 'Left Back');

insert into position (position_id, position, player_id, jersey, extra_position)
values (10, 'Midfielder', 10, 4, 'Defensive Midfield');


-- idol values

insert into idol (idol_id, idol, player_id, position_id)
values (1, 'Ronaldinho', 1, 1);

insert into idol (idol_id, idol, player_id, position_id)
values (2, 'Xavi', 2, 2);

insert into idol (idol_id, idol, player_id, position_id)
values (3, 'Sergio Ramos', 3, 3);

insert into idol (idol_id, idol, player_id, position_id)
values (4, 'Buffon', 4, 4);

insert into idol (idol_id, idol, player_id, position_id)
values (5, 'Batistuta', 5, 5);

insert into idol (idol_id, idol, player_id, position_id)
values (6, 'Iniesta', 6, 6);

insert into idol (idol_id, idol, player_id, position_id)
values (7, 'Maldini', 7, 7);

insert into idol (idol_id, idol, player_id, position_id)
values (8, 'Thiago Silva', 8, 8);

insert into idol (idol_id, idol, player_id, position_id)
values (9, 'Zinedine Zidane', 9, 9);

insert into idol (idol_id, idol, player_id, position_id)
values (10, 'Roberto Carlos', 10, 10);


-- style values

insert into style (style_id, style, extra_style, position_id)
values (1, 'Aggressive', 'Dribbler', 1);

insert into style (style_id, style, extra_style, position_id)
values (2, 'Playmaker', 'Pass Master', 2);

insert into style (style_id, style, extra_style, position_id)
values (3, 'Solid Defender', 'Aerial Dominance', 3);

insert into style (style_id, style, extra_style, position_id)
values (4, 'Commanding Goalkeeper', 'Shot Stopper', 4);

insert into style (style_id, style, extra_style, position_id)
values (5, 'Versatile Attacker', 'Speedster', 5);

insert into style (style_id, style, extra_style, position_id)
values (6, 'Creative Midfielder', 'Visionary', 6);

insert into style (style_id, style, extra_style, position_id)
values (7, 'Reliable Defender', 'Tackling Machine', 7);

insert into style (style_id, style, extra_style, position_id)
values (8, 'Dynamic Midfielder', 'Box-to-Box', 8);

insert into style (style_id, style, extra_style, position_id)
values (9, 'Solid Fullback', 'Crossing Specialist', 9);

insert into style (style_id, style, extra_style, position_id)
values (10, 'Strategic Midfielder', 'Play Breaker', 10);


--attribute values

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (1, 'High', 'High', 1, 'Right', 'Good');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (2, 'Medium', 'High', 2, 'Both', 'Excellent');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (3, 'High', 'Low', 3, 'Right', 'Average');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (4, 'Very High', 'Low', 4, 'Right', 'Poor');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (5, 'Medium', 'High', 5, 'Both', 'Excellent');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (6, 'High', 'High', 6, 'Left', 'Very Good');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (7, 'High', 'Medium', 7, 'Right', 'Good');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (8, 'Medium', 'High', 8, 'Both', 'Excellent');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (9, 'High', 'Low', 9, 'Right', 'Average');

insert into attribute (attribute_id, def_rate, att_rate, position_id, weakfoot_usage, weakfoot_accuracy)
values (10, 'Medium', 'Medium', 10, 'Both', 'Good');