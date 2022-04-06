


insert into  usuarios (nombre, clave) values ('gatitis', '123');

insert into usuarios (nombre,clave) values ('spooky', '234');
insert into  usuarios (nombre, clave) values ('amigo', '567');
insert into usuarios (nombre,clave) values ('pantera', '789');


select* from usuarios;
select clave from  usuarios
where nombre='amigo'

alter table usuarios
add puesto varchar(20), departamento varchar (20);
alter table usuarios
add nacionalidad varchar(20), antiguedad varchar (20);


select*from usuarios;

update usuarios
set puesto= 'jefe de sistemas' where nombre='gatitis'
update usuarios
set departamento ='sistemas' where nombre='gatitis' 

update usuarios
set nacionalidad='mexicana', antiguedad ='10 años'where nombre='gatitis'
select* from usuarios;

select*from usuarios;

update usuarios 
set puesto = 'auxiliar de ventas', departamento='ventas',nacionalidad='mexicana' , antiguedad=' 5 años'where nombre='amigo'

update usuarios 
set puesto = 'auxiliar de ventas', departamento='ventas',nacionalidad='mexicana',antiguedad='10 años' where nombre ='spooky'
update usuarios 
set puesto = 'ayudante de mecanico', departamento='mecanica',nacionalidad='mexicana',antiguedad='8años'where nombre='pantera'
select*from usuarios


insert into usuarios (nombre,clave,puesto,departamento,nacionalidad,antiguedad)values('manchas','256','gerente','compras','americana','20 años')


select *from  usuarios where nombre='manchas'
select*from usuarios 


select top 2* from usuarios

select antiguedad, nombre , clave from usuarios where nacionalidad='mexicana'
order by  nombre desc

select*from usuarios
order by nombre desc

select* from usuarios

create table discos5(
id int identity (10,2),
album varchar (30) not null,
primary key (album),
banda varchar (30) not null,
sello varchar (30) null,
precio float null,
cantidad integer null
);

select * from discos5



insert into discos5 (album, banda, sello, precio, cantidad)values('nevermind','nirvana','geffen',22.30,7);
insert into discos5 (album,banda, sello, precio,cantidad)values('sexpistols','sexpistols','parental',19.30,9);
insert into discos5 (album, banda, sello, precio, cantidad)values('foo','foofighters','geffen',2.30,8);
insert into discos5 (album,banda, sello, precio,cantidad)values('tres','trescuatro','parental',15.30,34);
select*from discos5

delete from  discos5 
truncate table discos5

select cantidad , album, banda from discos4
where id = 1

select*from discos
alter table discos2
add genero  varchar(30)  null
select *from discos2

alter table discos2
add primary key (banda)


select banda, precio from discos2
 where genero  is null


alter table discos
add genero varchar(30);
select *from discos;
update discos
set genero= 'rock' where album='nevermind'
update discos
set genero='rock' where album='sexpistols'
update discos
set genero='rock' where album='foo'
update discos
set genero='regional'where album='tres'
exec sp_columns discos
exec sp_tables @table_owner='dbo'
select* from discos
where album<>'nirvana'

select album,precio
from discos
where precio>20

select album ,precio, sello
from discos
where precio<16

select* from discos
delete from discos 
where album='tres'

alter table discos
add id int identity

select top 2* from discos



select banda, sello, precio, cantidad from discos
where ID= 1

delete from discos 
where banda = 'sexpistols'
select * from discos

insert into discos (album, banda, sello, precio, cantidad )values('the doors', 'the doors', 'parental', 56.90, 34)
insert into discos (album, banda, sello, precio, cantidad) values ('gabagaba', 'gabagaba','parental', 89.90,89)
select *from discos

update discos
set genero='rock' where id = 6
update discos
set genero='rock' where id = 7
update discos 
set genero='rockabilly' where id =8 --probando comentarios 
update discos 
set genero='rockabilly' where id =9/* probando comentarios*/ 


select * from discos
select id , album, banda, genero   from discos
where genero = 'rockabilly'

delete from discos
where banda = 'the doors'

