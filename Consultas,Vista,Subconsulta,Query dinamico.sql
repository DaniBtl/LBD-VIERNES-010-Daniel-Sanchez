CREATE TABLE habitacion 
(idHabitacion integer PRIMARY KEY, 
NumPiso integer,
PagoPDia int,
Descripcion varchar,
idTipoHabitacion integer,
idDisponibilidad integer
);

CREATE TABLE ComponentesDeHabitacion
(idHabitacion integer PRIMARY KEY, 
idComponente integer
);

CREATE TABLE Componente  
(idComponente integer PRIMARY KEY, 

Descripcion varchar

);

CREATE TABLE Disponibilidad 
(idDisponibilidad integer PRIMARY KEY, 
idHabitacion integer,
Fecha date,
idEstatus integer
);


CREATE TABLE Estados 
(idEstado integer PRIMARY KEY, 
Estado varchar(20) 
);

CREATE TABLE TipoHabitacion 
(idTipoHabitacion integer PRIMARY KEY, 
Tipos varchar(40) 
);

insert into Estados values (1,'Disponible') 

insert into Estados VALUES (2,'No disponible')

INSERT INTO TipoHabitacion VALUES (1,'Sencilla')
INSERT INTO TipoHabitacion VALUES (2,'Doble')
INSERT INTO TipoHabitacion VALUES (3,'Deluxe')
INSERT INTO TipoHabitacion VALUES (4,'Familiar')

INSERT INTO Disponibilidad VALUES (1,1,'2018-10-13',1) 
INSERT INTO Disponibilidad VALUES (2,2,'2018-9-12',2) 
INSERT INTO Disponibilidad VALUES (3,3,'2018-9-3',1) 

INSERT INTO Componente VALUES (1,'Bañera')
INSERT INTO Disponibilidad VALUES (2,'Balcon') 
INSERT INTO Disponibilidad VALUES (3,'Computadora') 
INSERT INTO Disponibilidad VALUES (4,'Television') 
INSERT INTO Disponibilidad VALUES (5,'Radio') 


INSERT INTO	ComponentesDeHabitacion VALUES (1,2)
INSERT INTO ComponentesDeHabitacion VALUES (2,3)
INSERT INTO ComponentesDeHabitacion VALUES (3,4)
INSERT INTO ComponentesDeHabitacion VALUES (4,2)   


INSERT INTO habitacion VALUES (1,2,300,'Grande',2,1)
----- Sub Consultas 

Select idhabitacion from Habitacion 

SELECT * from ( Select idTipohabitacion,COUNT(idtipoHabitacion) AS [Cantidad]
				from TipoHabitacion  
				GROUP BY idTipoHabitacion) AS NH 
where NH.cantidad > 1

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


CREATE VIEW Componente AS (select * from Componente)

select * from Componente

CREATE view reporte AS SELECT * FROM (SELECT idDisponibilidad from Disponibilidad)

CREATE view reporte AS (---query------)

CREATE view reporte AS (---query------)




---Query dinamico 

DECLARE @query nvarchar(MAX)
 DECLARE @nomcol nvarchar(MAX)= 'NOMBRE DEL cliente ' 

 SET @query = 'select nombre as' + @nomcol + 'from Reservacion'
 print(@query)
 EXEC(@query)


CREATE view reporte AS (---query------)





