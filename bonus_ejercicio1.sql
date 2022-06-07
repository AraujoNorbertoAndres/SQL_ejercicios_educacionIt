/*1. Crear una base de datos con el nombre BONUS_TRACK. */
create database bonusTrack;

/* 2. Poner en uso la base de datos generada en el paso anterior.*/
use bonusTrack;

/* 3. Crear una tabla con el nombre “AGENDA”*/
/* 4. Comentar el código SQL generado para la creación de la tabla “AGENDA”*/
## creaciond de agenda
create table agenda(
	IdContacto int primary key,
    Nombre varchar(20) not null,
    Apellido varchar(15)not null,
    Domicilio varchar(50),
    Telefono integer not null
);

/* 5. Visualizar las tablas existentes*/
show tables;
/* 6. Visualizar la estructura de la tabla “AGENDA”.*/
desc agenda;

/*7. Agregar el campo MAIL a la tabla. Este campo deberá contener como máximo 50 caracteres y su carga es obligatoria. */

alter table agenda
add Email varchar(50);
alter table agenda
modify Email varchar(50) not null;

/*8. Insertar 4 registros en la tabla “AGENDA”.*/

insert  into agenda 
values	(0,'Andres','Araujo','jujuy 3274 5to D','1168653357','andres.n.araujo@gmail.com'),
		(1,'Berenice','Paez','moreno 1817 9no F','1165446677','baerupaez13@gmail.com'),
        (2,'Sol', 'Milagros', 'Marcelo Gamboa 4907','1122334455','solxaraujo@gmail.com'),
        (3,'Elva', 'Ojeda', 'Marcelo Gamboa 4907','22445566','##no tiene##');

