drop table if exists student;

create table student (
    id int primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    years_of_experience int not null,
    start_date date not null
);

insert student values(100,'Eric','Ephram',2,'2016-03-31');
insert student values(110,'Greg','Gould',6,'2016-09-30');
insert student values(120,'Adam','Ant',5,'2016-06-02');
insert student values(130,'Howard','Hess',1,'2016-02-28');
insert student values(140,'Charles','Caldwell',7,'2016-05-07');
insert student values(150,'James','Joyce',9,'2016-08-27');
insert student values(160,'Doug','Dumas',13,'2016-07-04');
insert student values(170,'Kevin','Kraft',3,'2016-04-15');
insert student values(180,'Frank','Fountain',8,'2016-01-31');
insert student values(190,'Brian','Biggs',4,'2015-12-25');