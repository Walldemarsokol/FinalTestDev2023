## Create schema `humanFriendsdb`;
## drop schema `humanFriendsdb`;
use `humanFriendsdb`;

## Создаем низкоуровневые таблицы
create table cat (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


create table dog (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


create table hamster (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);



create table horse (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);


create table camel (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);


create table donkey (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);

## Создаем таблицы уровня выше
create table pet (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


create table packAnimal (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

## Создаем общую таблицу
create table humanFriend(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday Date
    );
    
## Заполняем данными низкоуровневые таблицы
    
    insert into cat (Name, Command, Birthday) values
    ('Мурзик', 'Спать', '2022-01-01'),
    ('Масик', 'Спать', '2017-06-06'),
	('Пуся', 'Спать', '2023-01-06'),
    ('Мурка', 'Спать', '2021-03-17');
    
    select * from cat;

    insert into dog (Name, Command, Birthday) values
    ('Спот', 'Лежать', '2022-01-01'),
    ('Дружок', 'Лежать', '2017-06-06'),
	('Рыжуха', 'Лежать', '2023-01-06'),
    ('Джули', 'Лежать', '2021-03-17');
	
    select * from dog;
 
	insert into hamster (Name, Command, Birthday) values
    ('Пушок', 'Бежать', '2022-01-01'),
    ('Шура', 'Бежать', '2017-06-06'),
	('Быструн', 'Бежать', '2023-01-06'),
    ('Белка', 'Бежать', '2021-03-17');
	
    select * from hamster;
     
	insert into camel (camelName, camelCommand, camelLiftWeight, camelBirthday) values
    ('Горбатый', 'Поднять', 100, '2022-01-01'),
    ('Быструн', 'Поднять', 200, '2017-06-06'),
	('Камелот', 'Поднять', 400, '2023-01-06'),
    ('Иван', 'Поднять', 50, '2021-03-17');
	
    select * from camel;
     
	insert into horse (Name, Command, liftWeight, Birthday) values
    ('Сервелат', 'Галоп', 150, '2022-01-01'),
    ('Плешивый', 'Галоп', 50, '2017-06-06'),
	('Таракан', 'Галоп', 200, '2023-01-06'),
    ('Поня', 'Галоп', 250, '2021-03-17');
	
    select * from horse;    
     
	insert into donkey (Name, Command, liftWeight, Birthday) values
    ('Джек', 'Жевать', 35, '2022-01-01'),
    ('Носильщик', 'Жевать', 10, '2017-06-06'),
	('Осел', 'Жевать', 20, '2023-01-06'),
    ('Шрек', 'Жевать', 100, '2021-03-17');
	
    select * from donkey;  	
 
 ## Удаление таблицы верблюдов
 delete from camel where id > 0;
 select * from camel;
 
## Объединение таблицы лошадей и ослов в одну таблицу.
create table packAnimalNew (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command, 
        Birthday
from horse union 
select  Name, 
        Command, 
        Birthday
from donkey;

select * from packAnimalNew;

## Создание таблицы, в которой все животные в возрасте от 1 до 3 лет.
INSERT into pet (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from cat union 
select  Name, 
        Command, 
        Birthday
from dog union
select  Name, 
        Command, 
        Birthday
from hamster;
select * from pet;

INSERT into humanFriend (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from pet union 
select  Name, 
        Command, 
        Birthday
from packAnimalNew;
select * from humanFriend;

create table youngAnimals (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select Name, 
        Command, 
        Birthday,
        Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) as age
from humanFriend
where Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) > 1 
	and Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) < 3;
select * from youngAnimals;

## Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.

create table newhumanFriend (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command,
        Birthday,
        'cat' as oldTable
from cat union 
select  Name, 
        Command, 
        Birthday,
        'dog' as oldTable
from dog union
select  Name, 
        Command, 
        Birthday,
        'hamster' as oldTable
from hamster union 
select  Name, 
        Command, 
        Birthday,
        'horse' as oldTable
from horse union 
select  Name, 
        Command, 
        Birthday,
        'donkey' as oldTable
from donkey;

select * from newhumanFriend;

