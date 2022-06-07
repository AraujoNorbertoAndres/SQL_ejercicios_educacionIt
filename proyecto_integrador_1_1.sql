#ejercicio propuesto por educacion it 

/*
	1. Crear una base de datos con el nombre
	LABORATORIO. En el caso de que la base de
	datos exista previamente, eliminarla antes de
	iniciar el laboratorio.

*/
drop database laboratorio;
create database laboratorio;

/*
	2. Poner en uso la base de datos generada en el
	paso anterior.
*/

use laboratorio;

/*
	3. Crear una tabla con el nombre FACTURAS
    letra char pk
    numero int pk
    clienteid int
    articuloid int 
    fecha date
    monto double 
*/

create table facturas(
	letra char,
    numero char,
    primary key (letra, numero),
    
    ClienteID int,
    ArticuloId int,
    fecha date,
    monto double
);

/*
	4. Crear una tabla con el nombre ARTÍCULOS
	articulo int pk
    nombre varchar(50)
    precio double
    stock int
*/

create table articulo(
	ArticuloId int primary key,
    Nombre varchar(50),
    Precio double ,
    Stock int unsigned
);

/*
	5. Crear una tabla con el nombre CLIENTES
    ClienteId int pk
    Nombre varchar(25)
    Apellido varchar(25)
    CUIT char(16)
    Direccion varchar(50)
    Comentario varchar(50)
*/

create table cliente (
	ClienteId int primary key,
    Nombre varchar(25),
    Apellido varchar(25),
    CUIT char(16),
    Direccion varchar(50),
    Comentario varchar(50)
);

##6. Muestra un listado de todas las bases de datos alojadas en el servidor.
show databases;

##7. Muestra un listado de todas las tablas
##8. Comenta la instrucción que lista las tablas

show tables; ## muestra la tabla

## 9.Describe la estructura de la tabla CLIENTES.
desc cliente;
