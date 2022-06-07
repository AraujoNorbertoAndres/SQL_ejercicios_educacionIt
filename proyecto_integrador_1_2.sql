drop database laboratorio;
create database laboratorio;
use laboratorio;

/*
	1. Modificar la tabla FACTURAS:
		a. Cambiar el nombre del campo ClienteID por IDCliente
        b. Cambiar el nombre del campo ArticuloID por IDArticulo
        c. Asignar la restricción UNSIGNED al campoMonto
        
	2. Modificar la tabla ARTICULOS:
		a. Cambiar el nombre del campo ArticuloID por IDArticulo
        b. Cambiar el tipo de dato del campo Nombre para que admita hasta 75 caracteres
        c. Asignar las restricciones UNSIGNED y NOT NULL al campo Precio
        d. Asignar las restricciones UNSIGNED y NOT NULL al campo Stock

	3. Modificar la tabla CLIENTES
        a. Cambiar el nombre del campo ClienteID por IDCliente
        b. Cambiar el tipo de dato del campo Nombre para que admita hasta 30 caracteres
			-Que la carga sea obligatoria 
		c. Cambiar el tipo de dato del campo Apellido para que admita hasta 35 caracteres
        d. Cambiar el nombre del campo Comentarios por Observaciones y su tipo de dato para que admita hasta
		255 caracteres.

        
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

alter table facturas
change ClienteId IdCliente int,
change ArticuloId IdArticulo int;
alter table facturas
modify monto double unsigned;

desc facturas;	## comando para verificar que todos los cambios sean correctos 

create table articulo(
	ArticuloId int primary key,
    Nombre varchar(50),
    Precio double,
    Stock int unsigned
);

alter table articulo
change ArticuloId IdArticulo int ,
modify Nombre varchar(75),
modify Precio double unsigned not null,
modify Stock int unsigned not null; 

desc articulo;	## comando para verificar que todos los cambios sean correctos 

create table cliente (
	ClienteId int primary key,
    Nombre varchar(25),
    Apellido varchar(25),
    CUIT char(16),
    Direccion varchar(50),
    Comentario varchar(50)
);

alter table cliente 
change ClienteId IdCliente int,
modify Nombre varchar(30) not null,
modify Apellido varchar(35),
change Comentario Observaciones varchar(255);

desc cliente;	## comando para verificar que todos los cambios sean correctos 

show tables;

