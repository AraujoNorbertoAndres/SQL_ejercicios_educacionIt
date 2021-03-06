show databases;
create database Libreria;
/*
	en este ejercicio basicamente solo se crean distintas tablas, la dificultaad radica en que en algunas
    tablas se debe agregar mas de una primary key, utilizare el comando:
		ALTER TABLE nombre_de_la_tabla ADD PRIMARY KEY(valor1, valor2, ...)
*/
use libreria;
show tables;

create table Autores(
	AutorId varchar(11),
    Apellido varchar(20),
    Nombre varchar(20),
    Telefono varchar(12),
    direccion varchar(40),
    Ciudad varchar(20),
    Provincia char (2),
    CodigoPostal char(5),
    Estado tinyint(1)
);

alter table Autores add primary key (AutorId);

create table Ventas(
	LocalidadId char(4),
    FacturaNumero varchar(20),
    Fecha datetime,
    cantidad smallint,
    FormaDePago varchar(12),
    LibroId varchar(6)
);
alter table Ventas
modify LocalidadId char(4) ;

alter table Ventas add primary key(LocalidadId, FacturaNumero, LibroId);

create table Locales(
	LocalId char(4),
    Nombre varchar(40),
    Direccion varchar(40),
    Ciudad varchar (20),
    Provincia char(2),
    CodigoPostal char(5)
);

alter table Locales add primary key (LocalId);

create table editoriales(
	EditorialesId char(4),
    Nombre varchar(40),
    Ciudad varchar(20),
    Provincia char(2),
    Pais varchar(30)
);

alter table editoriales add primary key(EditorialesId);

create table  libros (
	LibroId varchar(6),
    Titulo varchar(80),
    Categoria char(12),
    EditorialId char(4) ,
    Precio double unsigned,
    Comentarios varchar (200),
    FechaPublicacion datetime
);

alter table libros add primary key(LibroId, EditorialId);

create table libroAutor(
	AutorId varchar(11),
    LibroId varchar (6)
);

alter table libroAutor add primary key(AutorId, LibroId);

create table empleados(
	EmpleadoId char(9),
    Nombre varchar(20),
    Apellido varchar (30),
    PuestoId smallint,
    EditorialId char(4),
    fechaIngreso datetime
);

alter table empleados add primary key(EmpleadoId);

create table puestos (
	PuestoId smallint,
    Descripcion varchar(50)
);

alter table puestos  add primary key(PuestoId);



INSERT INTO Autores 
VALUES	('172321176','Quiroga','Horacio','44967223','','Salto','ER','4025',1),
		('213468915','Bioy Casares','Adolfo','49867020','','Buenos Aires','CF','4618',1),
		('238957766','Vargas LLosa','Mario','45487723','','Lima','LI','4705',1),
		('267412394','Giardinelli','Mempo','42862428','','Resistencia','CH','5128',1),
		('274809391','Ocampo','Victoria','48342919','','Beccar','BA','4609',1),
		('341221782','Walsh','Rodolfo','98430462','','Choele Choel','R','6044',0),
		('409567008','Lugones','Leopoldo','46589932','','R??o Seco','CO','4705',1),
		('427172319','Echeverr??a','Esteba','48367128','','','','',1),
		('472272349','Kafka','Frank','79386445','','Praga','AU','5428',1),
		('486291786','S??bato','Ernesto','45854620','','Rojas','BA','4130',1),
		('527723246','Borges','Jorge Luis','62972723','','Buenos Aires','CF','7215',0),
		('648921872','Martinez','Tomas Eloy','57456402','','San Miguel','TU','7330',1),
		('672713249','Arlt','Roberto','49354228','','Flores','CF','4595',1),
		('712451867','Dolina','Alejandro','69968275','','Morse','BA','8105',1),
		('722515454','Pigna','Felipe','25479982','','Mercedes','BA','6403',1),
		('724089931','Cortazar','Julio','48432991','','Ixelles','BE','4609',0),
		('724809391','Piglia','Ricardo','43547128','','Adrogu??','BA','4612',1),
		('756307391','Saer','Juan Jos??','45349219','','Serodino','SF','4609',1),
		('807916654','Ocampo','Silvina','39468853','','Microcentro','CF','8853',1),
		('846927186','Puig','Manuel','48367128','','General Villegas','BA','4301',1),
		('893721158','Hern??ndez','Jos??','74484982','','Chacras de Perdirel','BA','5688',0),
		('899462035','Di Benedetto','Antonio','88260752','','Bermejo','ME','4152',1),
		('998723567','Fogwill','Rodolfo','49810752','','Quilmes','BA','4152',1);


INSERT INTO editoriales 
VALUES	('0736','Losada','Buenos Aires','CF','Argentina'),
		('0877','Ediciones de la Flor','Buenos Aires','CF','Argentina'),
		('1389','Abeledo-Perrot','Buenos Aires','CF','Argentina'),
		('1622','Amorrortu Editores','Buenos Aires','CF','Argentina'),
		('1756','Editorial Atl??ntida','Buenos Aires','CF','Argentina'),
		('9901','Centro Editor de Am??rica Latina','Buenos Aires','CF','Argentina'),
		('9952','Editorial Columba','Buenos Aires','CF','Argentina'),
		('9999','Editorial Emec??','Buenos Aires','CF','Argentina');
        
INSERT INTO empleados 
VALUES	('PMA42628M','Paolo','Accorti',13,'0877','1992-08-27 00:00:00'),
		('PSA89086M','Pedro','Afonso',14,'1389','1990-12-24 00:00:00'),
		('VPA30890F','Victoria','Ashworth',6,'0877','1990-09-13 00:00:00'),
		('H-B39728F','Hele','Bennett',12,'0877','1989-09-21 00:00:00'),
		('L-B31947F','Lesley','Brow',7,'0877','1991-02-13 00:00:00'),
		('F-C16315M','Francisco','Chang',4,'9952','1990-11-03 00:00:00'),
		('PTC11962M','Philip','Cramer',2,'9952','1989-11-11 00:00:00'),
		('A-C71970F','Aria','Cruz',10,'1389','1991-10-26 00:00:00'),
		('AMD15433F','An','Devo',3,'9952','1991-07-16 00:00:00'),
		('ARD36773F','Anabela','Domingues',8,'0877','1993-01-27 00:00:00'),
		('PHF38899M','Peter','Franke',10,'0877','1992-05-17 00:00:00'),
		('PXH22250M','Paul','Henriot',5,'0877','1993-08-19 00:00:00'),
		('CFH28514M','Carlos','Hernandez',5,'9999','1989-04-21 00:00:00'),
		('PDI47470M','Palle','Ibse',7,'0736','1993-05-09 00:00:00'),
		('KJJ92907F','Karla','Jablonski',9,'9999','1994-03-11 00:00:00'),
		('KFJ64308F','Kari','Josephs',14,'0736','1992-10-17 00:00:00'),
		('MGK44605M','Matti','Karttune',6,'0736','1994-05-01 00:00:00'),
		('POK93028M','Pirkko','Koskitalo',10,'9999','1993-11-29 00:00:00'),
		('JYL26161F','Janine','Labrune',5,'9901','1991-05-26 00:00:00'),
		('M-L67958F','Maria','Larsso',7,'1389','1992-03-27 00:00:00'),
		('Y-L77953M','Yoshi','Latimer',12,'1389','1989-06-11 00:00:00'),
		('LAL21447M','Laurence','Lebiha',5,'0736','1990-06-03 00:00:00'),
		('ENL44273F','Elizabeth','Lincol',14,'0877','1990-07-24 00:00:00'),
		('PCM98509F','Patricia','McKenna',11,'9999','1989-08-01 00:00:00'),
		('R-M53550M','Roland','Mendel',11,'0736','1991-09-05 00:00:00'),
		('RBM23061F','Rita','Muller',5,'1622','1993-10-09 00:00:00'),
		('HAN90777M','Helvetius','Nagy',7,'9999','1993-03-19 00:00:00'),
		('TPO55093M','Timothy','O\'Rourke',13,'0736','1988-06-19 00:00:00'),
		('SKO22412M','Sve','Ottlieb',5,'1389','1991-04-05 00:00:00'),
		('MAP77183M','Miguel','Paolino',11,'1389','1992-12-07 00:00:00'),
		('PSP68661F','Paula','Parente',8,'1389','1994-01-19 00:00:00'),
		('M-P91209M','Manuel','Pereira',8,'9999','1989-01-09 00:00:00'),
		('MJP25939M','Maria','Pontes',5,'1756','1989-03-01 00:00:00'),
		('M-R38834F','Martine','Rance',9,'0877','1992-02-05 00:00:00'),
		('DWR65030M','Diego','Roel',6,'1389','1991-12-16 00:00:00'),
		('A-R89858F','Annette','Roulet',6,'9999','1990-02-21 00:00:00'),
		('MMS49649F','Mary','Saveley',8,'0736','1993-06-29 00:00:00'),
		('CGS88322F','Carine','Schmitt',13,'1389','1992-07-07 00:00:00'),
		('MAS70474F','Margaret','Smith',9,'1389','1988-09-29 00:00:00'),
		('HAS54740M','Howard','Snyder',12,'0736','1988-11-19 00:00:00'),
		('MFS52347M','Marti','Sommer',10,'0736','1990-04-13 00:00:00'),
		('GHT50241M','Gary','Thomas',9,'0736','1988-08-09 00:00:00'),
		('DBT39435M','Daniel','Tonini',11,'0877','1990-01-01 00:00:00');

INSERT INTO libroAutor
VALUES	('172-32-1176','PS3333'),
		('213-46-8915','BU1032'),
		('213-46-8915','BU2075'),
		('238-95-7766','PC1035'),
		('267-41-2394','BU1111'),
		('267-41-2394','TC7777'),
		('274-80-9391','BU7832'),
		('409-56-7008','BU1033'),
		('427-17-2319','PC8888'),
		('472-27-2349','TC7778'),
		('486-29-1786','PC9999'),
		('486-29-1786','PS7777'),
		('648-92-1872','TC4203'),
		('672-71-3249','TC7779'),
		('712-45-1867','MC2222'),
		('722-51-5454','MC3021'),
		('724-80-9391','BU1112'),
		('724-80-9391','PS1372'),
		('756-30-7391','PS1373'),
		('807-91-6654','TC3218'),
		('846-92-7186','PC8889'),
		('899-46-2035','MC3022'),
		('899-46-2035','PS2091'),
		('998-72-3567','PS2092'),
		('998-72-3567','PS2106');


INSERT INTO libros 
VALUES	('BU1032','La invenci??n de Morel','Novelas','1389',19.99,'','1991-06-12 00:00:00'),
		('BU1033','El Imperio jesu??tico','Ensayos','0877',22.98,NULL,'1904-06-12 00:00:00'),
		('BU1111','El castigo de Dios','Cuentos','1389',11.95,'','1991-06-09 00:00:00'),
		('BU1112','Los casos del comisario Croce','Cuentos','0736',20,NULL,'2018-12-01 00:00:00'),
		('BU2075','De las cosas maravillosas','Ensayos','0736',29.9,'','1991-06-30 00:00:00'),
		('BU7832','La mujer y su expresi??','Ensayos','1389',19.99,'','1991-06-22 00:00:00'),
		('MC2222','Cr??nicas del angel gris','Relato','0877',19.99,'','1991-06-09 00:00:00'),
		('MC3021','El mundo contempor??neo','Historia','0877',29.9,'','1991-06-18 00:00:00'),
		('MC3022','El silenciero','Novelas','9901',32,NULL,'1964-03-10 00:00:00'),
		('MC3026','The Psychology of Computer Cooking','Sin asignar','0877',NULL,'','2004-12-13 00:00:00'),
		('PC1035','Pantale??n y las visitadoras','Novelas','1389',22.95,'','1991-06-30 00:00:00'),
		('PC8888','El matadero','Cuentos','1389',20,'','1994-06-12 00:00:00'),
		('PC8889','Sangre de amor correspondido','Novelas','1756',13,NULL,'1982-01-01 00:00:00'),
		('PC9999','La robotizaci??n del hombre y otras p??ginas','Antolog??as','1389',NULL,'','2004-12-13 00:00:00'),
		('PS1372','La ciudad ausente','Novelas','0877',21.59,'','1991-10-21 00:00:00'),
		('PS1373','Nadie nada nunca','Novelas','1622',20,NULL,'1980-06-12 00:00:00'),
		('PS2091','Caballo en el salitral','Antolog??as','0736',10.95,'','1991-06-15 00:00:00'),
		('PS2092','Memoria romana','Cuentos','9952',13.5,NULL,'2018-05-29 00:00:00'),
		('PS2106','Vivir afuera','Novelas','0736',70,'','1991-10-05 00:00:00'),
		('PS3333','Cuentos de Amor, de Locura y Muerte','Cuentos','0736',19.99,'','1991-06-12 00:00:00'),
		('PS7777','Sobre h??roes y tumbas','Novelas','0736',79.9,'','1991-06-12 00:00:00'),
		('TC3218','La promesa','Novelas','0877',20.95,'','1991-10-21 00:00:00'),
		('TC4203','La pasi??n seg??n Trelew','Cr??nicas','0877',11.95,'','1991-06-12 00:00:00'),
		('TC7777','La revoluci??n en bicicleta','Novelas','0877',14.99,'','1991-06-12 00:00:00'),
		('TC7778','La metamorfosis','Novelas','9999',18,NULL,'1975-05-05 00:00:00'),
		('TC7779','El juguete rabioso','Novelas','9999',22,NULL,'1964-01-15 00:00:00');
        
INSERT INTO locales 
VALUES	('6380','Yenny  El Ateneo','Petaonal San Martin 732','Paran??','ER','98056'),
		('7066','Librer??a Hern??ndez','Diagonal 104 1436','La Plata','BA','92789'),
		('7067','Librer??a Santa Fe','Ovidio Lagos 3253','Rosario','SF','96745'),
		('7131','Librer??a C??spide','Av San Martin 931','Capital','ME','98014'),
		('7896','SBS Librer??as','Av Rivadavia 4791','Capital','CO','90019'),
		('8042','Planeta de Libros','Av Independencia 1682','Buenos Aires','CF','89076');
        
INSERT INTO puestos 
VALUES	(1,'Nuevo Ingreso - Puesto no definido'),
		(2,'CEO'),
		(3,'Director de Operaciones de Negocio'),
		(4,'CFO'),
		(5,'Editorialista'),
		(6,'Director de Edici??n'),
		(7,'Director de Marketing'),
		(8,'Director de Relaciones P??blicas'),
		(9,'Director de Compras'),
		(10,'Director de Producci??n'),
		(11,'Director de Operaciones'),
		(12,'Editor'),
		(13,'Representante de Ventas'),
		(14,'Dise??ador');
        
        
INSERT INTO ventas
VALUES	('6380','6871','1994-09-14 00:00:00',5,'Efectivo','BU1032'),
		('6380','722','1994-09-13 00:00:00',3,'Efectivo','PS2091'),
		('7066','2976','1993-05-24 00:00:00',50,'Cheque','PC8888'),
		('7066','7442','1994-09-13 00:00:00',75,'Transf','PS2091'),
		('7067','4482','1994-09-14 00:00:00',10,'Efectivo','PS2091'),
		('7067','2121','1992-06-15 00:00:00',40,'Cheque','TC3218'),
		('7067','2121','1992-06-15 00:00:00',20,'Cheque','TC4203'),
		('7067','2121','1992-06-15 00:00:00',20,'Cheque','TC7777'),
		('7131','914008','1994-09-14 00:00:00',20,'Cheque','PS2091'),
		('7131','914014','1994-09-14 00:00:00',25,'Cheque','MC3021'),
		('7131','3087','1993-05-29 00:00:00',20,'Efectivo','PS1372'),
		('7131','3087','1993-05-29 00:00:00',25,'Efectivo','PS2106'),
		('7131','3087','1993-05-29 00:00:00',15,'Efectivo','PS3333'),
		('7131','3087','1993-05-29 00:00:00',25,'Efectivo','PS7777'),
		('7896','2299','1993-10-28 00:00:00',15,'Efectivo','BU7832'),
		('7896','456','1993-12-12 00:00:00',10,'Efectivo','MC2222'),
		('7896','999','1993-02-21 00:00:00',35,'Transf','BU2075'),
		('8042','423','1994-09-14 00:00:00',15,'Transf','MC3021'),
		('8042','423','1994-09-14 00:00:00',10,'Transf','BU1032'),
		('8042','723','1993-03-11 00:00:00',25,'Cheque','BU1111'),
		('8042','8791','1993-05-22 00:00:00',30,'Cheque','PC1035');




