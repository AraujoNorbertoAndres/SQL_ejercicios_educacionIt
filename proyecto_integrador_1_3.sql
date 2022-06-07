use laboratorio;
/*
	
*/
show tables; ## corroboro que esten las tablas necesarias para continuar
desc facturas;

/*
	modifique el campo numero de char a int debido a que me generaba un error 

*/

insert  into facturas
values ('A', 28, 14, 335, '2022-03-18', 1589.50),
       ('A', 39, 26, 157, '2022-04-12', 979.75 ),
       ('B', 8, 17, 95, '2022-04-25', 513.35),
       ('B', 12, 5, 411, '2022-05-03', 2385.70),
       ('B', 19, 50, 157, '2022-05-26', 979.75  );
       
alter table facturas
modify numero int ;
       
select * from facturas;

insert into articulo
values (95,'Webcam con Micrófono Plug & Play',513.35, 39 ),
	   (157,'Apple AirPods Pro',979.75, 152 ),
       (335,': Lavasecarropas Automático Samsung', 1589.50, 12),
	   (411,'Gloria Trevi / Gloria / CD+DVD',2385.70, 2);

select * from articulo;

insert into cliente
values 	(5, 'Santiago', 'Gonzalez', '23-24582359-9','Uriburu 558 - 7ºA','VIP'),
		(14,'Gloria','Fernandez','23-35965852-5','Constitución 323','GBA'),
        (17,'Gonzalez','Lopez','23-33587416-0','Arias 2624','GBA'),
        (26,'Carlos','Garcia','23-42321230-9','Pasteur 322 - 2ºC','VIP'),
		(50,'Micaela','Altieri','23-22885566-5','Santamarina 1255','GBA');
        
select * from cliente;