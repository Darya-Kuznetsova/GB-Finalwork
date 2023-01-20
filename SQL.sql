use animal_friends;
create table pack_animals
(id int primary key auto_increment);
create table pet_animals
(id int primary key auto_increment);
use animal_friends;
create table dogs
(
id int primary key auto_increment,
animal_id int,
dog_name varchar(45) not null, 
command varchar(45) not null,
date_birth date,
foreign key (animal_id) references pet_animals (id)
);
create table cats
(
id int primary key auto_increment,
animal_id int,
cat_name varchar(45) not null, 
command varchar(45) not null,
date_birth date,
foreign key (animal_id) references pet_animals (id)
);
create table humsters
(
id int primary key auto_increment,
animal_id int,
humster_name varchar(45) not null, 
command varchar(45) not null,
date_birth date,
foreign key (animal_id) references pet_animals (id)
);
create table donkey
(
id int primary key auto_increment,
animal_id int,
donkey_name varchar(45) not null, 
skill varchar(45) not null,
date_birth date,
foreign key (animal_id) references pack_animals (id)
);
create table horse
(
id int primary key auto_increment,
animal_id int,
horse_name varchar(45) not null, 
skill varchar(45) not null,
date_birth date,
foreign key (animal_id) references pack_animals (id)
);
create table camel
(
id int primary key auto_increment,
animal_id int,
camel_name varchar(45) not null, 
skill varchar(45) not null,
date_birth date,
foreign key (animal_id) references pack_animals (id)
);
insert into dogs
(dog_name, command, date_birth)
values 
('Gabi', 'Bark', '2019-02-05'),
('Lora', 'Run', '2017-04-15'),
('Kasper', 'Jump', '2021-06-09');
insert into cats
(cat_name, command, date_birth)
values 
('Barsik', 'Meow', '2020-03-19'),
('Judi', 'Eat', '2016-08-25'),
('Umi', 'Play', '2022-06-03');
insert into humsters
(humster_name, command, date_birth)
values 
('Peach', 'Wheel', '2022-09-12'),
('Fluffy', 'Eat', '2022-03-05');
insert into horse
(horse_name, skill, date_birth)
values 
('Wind', 'Run', '2019-10-16'),
('Sky', 'Go', '2021-07-12');
insert into donkey
(donkey_name, skill, date_birth)
values 
('Jasper', 'Go', '2020-01-17'),
('Mellow', 'Go', '2021-12-07');
drop table camel;
create  table young_animals
select dog_name as name, command as skill, date_birth
from dogs
where date_birth between '2020-01-20' and '2022-01-20'
union
select cat_name, command, date_birth
from cats
where date_birth between '2020-01-20' and '2022-01-20'
union
select humster_name, command, date_birth
from humsters
where date_birth between '2020-01-20' and '2022-01-20'
union
select horse_name, skill, date_birth
from horse
where date_birth between '2020-01-20' and '2022-01-20'
union
select donkey_name, skill, date_birth
from donkey
where date_birth between '2020-01-20' and '2022-01-20';

create table all_animals
select id, dog_name as name, command as skill, date_birth
from dogs
union 
select id, cat_name, command, date_birth
from cats
union
select id, humster_name, command, date_birth
from humsters
union
select id, donkey_name, skill, date_birth
from donkey
union
select id, horse_name, skill, date_birth
from horse;


