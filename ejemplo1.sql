create database curso;
use curso;

create table contacto(
	id int unsigned not null auto_increment primary key,
    apellido varchar(25) not null,
    nombre varchar(25) not null,
    fecha_nacimiento date,
    dni int unique
);

describe contacto;

alter table contacto
add observaciones varchar(100);

alter table contacto
add telefono varchar(10) not null

alter table contacto 
change observaciones comentarios varchar(150);

alter table contacto
modify comentarios varchar(150) not null;

alter table contacto 
drop comentarios,
drop telefono;

rename table contacto to clientes;

insert into clientes
set apellido='Araujo', nombre = 'Andres', fecha_nacimiento = '1994-07-12',
dni = '38354911' ;

select * from clientes;

insert into clientes
values (0, 'ricciana', 'sofia', '1985-11-01', 29786234),
	   (0,'miquela', 'malenia', '2000-12-01', 40455678),
       (0,'ricard','one','1990-08-17', 35765123);
       
select * from clientes;