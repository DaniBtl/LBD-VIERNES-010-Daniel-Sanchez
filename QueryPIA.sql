
------------------ Daniel Darío Sánchez López, 1799681, Sabados de 2-4 pm-------------------------------------
-------------------------------------------------------------------------------------------------------------
----------------------------------------------TABLAS---------------------------------------------------------
create database HotelPIA

create table Huespedes 
(
idH integer,
Nombre varchar (60) not null,
telefono varchar(15),
tarifaPorNoche integer not null,
noches integer not null,
fechaLlegada varchar (20) not null,
fechaSalida varchar (20) not null,
PRIMARY KEY (idH)


);
 

create table Componente(
 idComponente integer,
 descripcion varchar (40),
 
 PRIMARY KEY (idComponente)
);

create table ComponenteHab(
 idHAB integer,
 idComponente integer,
 
 PRIMARY KEY (idHAB)
);

create table Disponibilidad(
 idDisponibilidad integer,
 idHab integer,
 descripcion varchar (40),
 PRIMARY KEY (idDisponibilidad)

);

create table Estados(
 idEstado integer,
 descripcion varchar (40),
 PRIMARY KEY (idEstado)

);

create table Reservacion(
 EstatusReservacion integer,
 Fecha varchar (40),
 CostoTotal integer,
 PRIMARY KEY (EstatusReservacion)

);

create table ReservacionDisp(
 idReservacion integer,
 idDisponibilidad integer,
 idEstatus integer,
 PRIMARY KEY (idEstatus)
 

);

create table Venta(
 idHuesped integer,
 idEmpleado integer,
 idventa integer,
 costoTotal varchar (40),
 PRIMARY KEY (idventa)
);

create table DetalleVenta(
 idVenta integer,
 idTipHab integer,
 cantidad integer,
 Precio integer,
  PRIMARY KEY (idVenta)
);

create table tipoHab(
 idTipo integer,
 descripcion varchar (40),
);

create table Habitaciones(
 idHabitacion integer,
 numPiso integer,
 PagDia integer,
 idTipo integer,
 idDisponibilidad integer,
);

create table empleados(
idEmpleado integer, 
nombre varchar,
id_puesto integer,
telefono varchar (40),


);

create table Puestos(
id_Puesto integer,
TipoDEPuesto varchar (40)
);

create table Pisos(
idPiso integer,
NumHab integer,
);
-------------------------------------------------------------------------------------------------------------
-----------------------------------------INSERT,UPDATE,DELETE------------------------------------------------
UPDATE empleados
SET id_puesto = 2
WHERE idEmpleado= 1 ;

UPDATE Puestos
SET TipoDEPuesto = 'gerente'
WHERE id_puesto = 2 ;

UPDATE Habitaciones
SET numPiso = 2
WHERE idHabitacion= 1 ;

UPDATE tipoHab
SET descripcion = 'Familiar'
WHERE idTipo= 1 ;

UPDATE Habitaciones
SET numPiso = 3
WHERE idHabitacion= 5;

UPDATE Habitaciones
SET PagDia = 400
WHERE idHabitacion= 4 ;

UPDATE Habitaciones
SET PagDia = 1000
WHERE idHabitacion= 2 ;

UPDATE Habitaciones
SET PagDia = 800
WHERE idHabitacion= 6 ;

UPDATE Habitaciones
SET PagDia = 1200
WHERE idHabitacion= 8 ;

UPDATE Habitaciones
SET PagDia = 900
WHERE idHabitacion= 15 ;



DELETE FROM Habitaciones
WHERE idHabitacion= 5;

DELETE FROM Puestos
WHERE id_Puesto=2;

DELETE FROM empleados
WHERE idEmpleado=3;

DELETE FROM Habitaciones
WHERE idHabitacion= 6;

DELETE FROM empleados
WHERE idEmpleado= 4;

DELETE FROM empleados
WHERE id_puesto=3;

DELETE FROM Habitaciones
WHERE PagDia=200;

DELETE FROM Habitaciones
WHERE numPiso=3;

DELETE FROM Pisos
WHERE idPiso=6;

DELETE FROM Puestos
WHERE id_Puesto=5;
----------------------
INSERT INTO Componente(idComponente, descripcion)
VALUES (1, 'Bañera');
INSERT INTO Componente(idComponente, descripcion)
VALUES (2, 'Terraza');
INSERT INTO Componente(idComponente, descripcion)
VALUES (3, 'frigobar');
INSERT INTO Componente(idComponente, descripcion)
VALUES (4, 'Minibar');
INSERT INTO Componente(idComponente, descripcion)
VALUES (5, 'cajaFuerte');
INSERT INTO Componente(idComponente, descripcion)
VALUES (6, 'sillon');
INSERT INTO Componente(idComponente, descripcion)
VALUES (7, 'television');
INSERT INTO Componente(idComponente, descripcion)
VALUES (8, 'ropero');
INSERT INTO Componente(idComponente, descripcion)
VALUES (9, 'alfombra');
INSERT INTO Componente(idComponente, descripcion)
VALUES (10, 'estufa');
INSERT INTO Componente(idComponente, descripcion)
VALUES (11, 'lavaplatos');

INSERT INTO Pisos(idPiso, NumHab)
VALUES (1,10);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (2,12);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (3,14);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (4,15);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (5,16);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (6,17);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (7,19);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (8,21);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (9,22);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (10,15);
INSERT INTO Pisos(idPiso, NumHab)
VALUES (11,5);

INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (1,'gerente');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (2,'mucama');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (3,'cocinero');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (4,'tecnico');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (5,'asistente');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (6,'Recepcionista');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (7,'fontanero');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (8,'sastre');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (9,'medico');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (10,'Limpieza general');
INSERT INTO Puestos(id_Puesto,TipoDEPuesto)
VALUES (11,'electricista');

INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'simple');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (2,'doble');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (3,'estandar');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (4,'ejecutiva');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (5,'triple');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (6,'individual');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (7,'doble_individual');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (8,'junior suite');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (9,'Suites');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (10,'Suite nupcial');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (11,'con cama suplementaria');

INSERT INTO Estados(idEstado,descripcion)
VALUES (1,'Disponible');
INSERT INTO Estados(idEstado,descripcion)
VALUES (2,'No disponible');

INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (1,'Javier Espiricueta',1 ,'8125707284');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (2,'Walter white',3 ,'8234564433');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (3,'Jhon Marston',4 ,'6234564321');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (4,'Tuco Salamanca',10 ,'8543657632');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (5,'Saul Goodman',1 ,'8123658790');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (6,'Jimmy Mcgill',7 ,'3344769812');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (7,'Daniel Lopez',1 ,'8125707285');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (8,'Geralt the rivia',8 ,'8123964890');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (9,'Osvaldo Gonzales',10 ,'8573605048');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (10,'Hector Romero',6 ,'8156378902');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (12,'Jackie Chan',11 ,'9066553944');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (13,'Ip man',10 ,'90655693944');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (14,'Mat Murdock',5 ,'4036854910');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (15,'Kim maxwell',2 , '4433227788');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (16,'Dario Sanchez',9 ,'9046553944');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (17,'Javi lopez',6 ,'9066773944');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (18,'Tony stark',11 , '9033468491');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (19,'Jessica Jones',5 , '1023546728');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (20,'Clark kent',7 , '3365849385');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (21,'James bon',4 , '4356738291');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (22,'tomas wayne',4 , '5465768798');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (23,'Bruce waynne',8 , '3298765432');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (24,'James Gordon',10 , '1243657385');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (25,'Peter Parker',8 , '1342647385');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (26,'Otto Octavius',11 , '3322536491');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (27,'Harry Osborn',7 , '5263829201');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (28,'James Potter',10 , '3263849301');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (29,'yoda',1 , '8384850282');
INSERT INTO empleados(idEmpleado,nombre,id_puesto,telefono)
VALUES (30,'Patricio Estrella',5 , '2034748491');


insert into Huespedes(idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (1,'Matt Murdock','4365678732',500 ,2 ,' 2 de Octubre del 2018',' 4 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (2,'Pablo picapiedras','4465566732',700 ,2 ,' 6 de Octubre del 2018',' 8 de Octubre del 2018')
insert into Huespedes 

values (3,'Etzio Auditore','5677678992',1000 ,2 ,' 7 de Octubre del 2018',' 9 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (4,'Timmy Turner','4365678732',500 ,2 ,' 2 de Octubre del 2018',' 5 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (5,'Bob esponja','4365558732',450 ,3 ,' 2 de Octubre del 2018',' 5 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (6,'Hannia lozano','4677998731',500 ,5 ,' 2 de Octubre del 2018',' 7 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (7,'Brenda espinoza','5663371332',800 ,2 ,' 2 de Octubre del 2018',' 4 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (8,'Sandy velabarry','6367688932',500 ,4 ,' 2 de Octubre del 2018',' 6 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (9,'Israel Flores','9365668732',800 ,2 ,' 2 de Octubre del 2018',' 4 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (10,'Abril Otero','2365678732',600 ,3 ,' 2 de Octubre del 2018',' 5 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (11,'Jhony Bravo','7365678732',800 ,3 ,' 2 de Octubre del 2018',' 5 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (12,'Tejada lozano','3345678732',900 ,3 ,' 2 de Octubre del 2018',' 5 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (13,'Harry Potter','5378678732',500 ,4 ,' 2 de Octubre del 2018',' 6 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (14,'Will Smith','9365678732',2000 ,3 ,' 10 de Octubre del 2018',' 13 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (15,'Valeria Lizeth','4365678732',500 ,5 ,' 2 de Octubre del 2018',' 7 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (16,'Valeria Briones','3465678732',900 ,5 ,' 10 de Octubre del 2018',' 15 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (17,'Mariel Pesina','6785678732',600 ,2 ,' 12 de Octubre del 2018',' 14 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (18,'Missael Valderrama','6523678732',500 ,2 ,' 12 de Octubre del 2018','14 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (19,'Jessica Flores','6765908732',800 ,5 ,' 10 de Octubre del 2018','15 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (20,'Karen Regalado','6193678732',700 ,4 ,' 12 de Octubre del 2018','16 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (21,'Jonathan Garcia','1214678732',500 ,2 ,' 11 de Octubre del 2018','13 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (22,'Ana Tamez','4365538742',900 ,2 ,' 15 de Octubre del 2018',' 17 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (23,'Alejandra Lopez','5892678797',1200 ,5 ,'10 de Octubre del 2018',' 15 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (24,'Jennifer Garcia','4365678732',500 ,3 ,' 2 de Octubre del 2018',' 5 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (25,'Jessica Perez','4365016941',500 ,4 ,' 20 de Octubre del 2018',' 24 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (26,'Nahomi contreras','8265638732',1100 ,5 ,'20 de Octubre del 2018','25 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (27,'Darian llamas','5365558212',1500 ,3 ,' 20 de Octubre del 2018','23 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (28,'Devany Esparza','3378678732',1500 ,2 ,'20 de Octubre del 2018','23 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (29,'Pepe Macias','3650678732',500 ,2 ,' 22 de Octubre del 2018','24 de Octubre del 2018')
insert into Huespedes (idH,Nombre ,telefono ,tarifaPorNoche ,noches,fechaLlegada ,fechaSalida) 
values (30,'Dave Grohl','4365678732',500 ,2 ,' 29 de Octubre del 2018',' 31 de Octubre del 2018')


-------------------------------------------------------------------------------------------------------------
------------------------------------------TRIGERS------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tr_insert]
on [dbo].[Componente]
instead of insert,update, delete 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[tr_insert1]
on [dbo].[habitaciones]
instead of update 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tr_insert2]
on [dbo].[huespedes]
instead of insert 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tr_delete]
on [dbo].[Empleados]
instead of  delete 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  


-------------------------------------------------------------------------------------------------------------
---------------------------------------STARTPROCEDURE--------------------------------------------------------

SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio](@valor1 int)
as
begin
	
	declare @reporte nvarchar(10)
	set @reporte = 'precios'
	print(@reporte)
	select * from dbo.Habitaciones 
	where  PagDia> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 2







SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio1
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio1](@valor1 int)
as
begin
	
	declare @reporte1 nvarchar(10)
	set @reporte1 = 'TipHab'
	print(@reporte1)
	select * from dbo.tipoHab 
	where  idTipo> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 2





SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio3
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio3](@valor1 int)
as
begin
	
	declare @reporte3 nvarchar(10)

	set @reporte3 = 'disponible'
	print(@reporte3)
	select * from dbo.Habitaciones 
	where  idDisponibilidad> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 1


SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio4
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio4](@valor1 int)
as
begin
	
	declare @reporte4 nvarchar(10)

	set @reporte4 = 'disponible'
	print(@reporte4)
	select * from dbo.Habitaciones 
	where  NumPiso> @valor1
end
GO

exec  ReporteAleatorio  10 





SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio5
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio5](@valor1 int)
as
begin
	
	declare @reporte5 nvarchar(10)

	set @reporte5 = 'disponible'
	print(@reporte5)
	select * from dbo.Disponibilidad 
	where  idDisponibilidad> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 1

-------------------------------------------------------------------------------------------------------------
----------------------------------- Sub Consultas,VISTAS,CONSULTAS,QUERY DINAMICO ---------------------------

Select idhabitacion from Habitaciones 

SELECT * from ( Select idTipo,COUNT(idTipo) AS [Cantidad]
				from tipoHab  
				GROUP BY idTipo) AS NH 
where NH.cantidad > 1

SELECT * from ( Select PagDia,COUNT(PagDia) AS [Cantidad]
				from Habitaciones  
				GROUP BY PagDia) AS Ganancia 
where Ganancia.cantidad > 1

SELECT * from ( Select idH,COUNT(idH) AS [Cantidad]
				from Huespedes  
				GROUP BY idH) AS H 
where H.cantidad > 1

SELECT * from ( Select idComponente,COUNT(idComponente) AS [Cantidad]
				from Componente  
				GROUP BY idComponente) AS NC 
where NC.cantidad > 4

SELECT * from ( Select idComponente,COUNT(idComponente) AS [Cantidad]
				from Componente  
				GROUP BY idComponente) AS NC 
where NC.cantidad > 4

SELECT * FROM (SELECT idDisponibilidad from Disponibilidad)

---Vistas --


CREATE VIEW Componente AS select * from ComponenteHab

CREATE VIEW vista1
 AS SELECT idEmpleado,id_puesto
 FROM empleados
 WHERE id_puesto = 1;

 CREATE VIEW vista2
 AS SELECT idEmpleado,id_puesto
 FROM empleados
 WHERE id_puesto = 2;

 CREATE VIEW vista3
 AS SELECT PagDia
 FROM Habitaciones
 WHERE PagDia = 1000;

 CREATE VIEW vista4
 AS SELECT idH
 FROM Huespedes
 WHERE idH = 1;

 CREATE VIEW vista5
 AS SELECT idEmpleado,id_puesto
 FROM empleados
 WHERE id_puesto = 5;

select * from Componente

CREATE view reporte AS SELECT * FROM (SELECT idDisponibilidad from Disponibilidad)


---Query dinamico 

 DECLARE @query nvarchar(MAX)

 DECLARE @nomcol nvarchar(MAX)= 'NOMBRE DEL cliente ' 

 SET @query = 'select nombre as' + @nomcol + 'from Reservacion'
 print(@query)
 EXEC(@query)


 ------------------------------------------------------------------------------------------------------------
 -----------------------------------------SELECTS------------------------------------------------------------

 Select idComponente AS idCom from Componente 

 Select PagDia AS pago, (PagDia*.16) as iva from Habitaciones

 Select PagDia AS pago, min(PagDia) from Habitaciones

 Select idH as numero_Huesped from Huespedes as tabH

 Select idHuesped as Comprador,idEmpleado as vendedor from Venta


 Select idComponente AS idCom from Componente 


 SELECT  T1.idTipo,T2.idTipo
FROM Habitaciones T1 INNER JOIN tipoHab T2 ON T1.idTipo = T2.idTipo

SELECT  T1.idTipo,T2.idTipo
FROM Habitaciones T1 LEFT JOIN tipoHab T2 ON T1.idTipo = T2.idTipo

SELECT  T1.idTipo,T2.idTipo
FROM Habitaciones T1 CROSS JOIN tipoHab T2 ON T1.idTipo = T2.idTipo

SELECT  T1.idTipo,T2.idTipo
FROM Habitaciones T1 RIGHT JOIN tipoHab T2 ON T1.idTipo = T2.idTipo

Select idComponente AS idCom from Componente where idComponente=1

Select idComponente AS idCom from Componente  where idComponente>1

select PagDia,idDisponibilidad,idHabitacion,numPiso from Habitaciones where PagDia>1000

select PagDia,idDisponibilidad,idHabitacion,numPiso from Habitaciones where PagDia<1000

select PagDia,idDisponibilidad,idHabitacion,numPiso from Habitaciones where PagDia>500

Select idTipHab,idVenta,cantidad from DetalleVenta
where cantidad>500

Select idTipHab,idVenta,cantidad from DetalleVenta
where cantidad<200

Select idTipHab,idVenta,cantidad from DetalleVenta
GROUP BY idVenta
where cantidad>=1000


Select idComponente,COUNT(idComponente) AS [Cantidad]
				from Componente  
				GROUP BY idComponente AS NC 
where NC.cantidad > 2

Select idComponente,MAX(idComponente) AS [Cantidad]
				from Componente  
				GROUP BY idComponente AS NC 
where NC.cantidad > 5

Select idComponente,MIN(idComponente) AS [Cantidad]
				from Componente  
				GROUP BY idComponente AS NC 
where cantidad > 4

Select idComponente,COUNT(idComponente) AS [Cantidad]
				from Componente  
				

Select idComponente,COUNT(idComponente) AS Cantidad
				from Componente  
				
where idComponente > 3




------------------ Daniel Darío Sánchez López, 1799681, Sabados de 2-4 pm-------------------------------------