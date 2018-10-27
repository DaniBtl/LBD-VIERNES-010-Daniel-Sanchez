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
VALUES (1,'doble');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'estandar');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'ejecutiva');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'triple');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'individual');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'doble_individual');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'junior suite');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'Suites');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'Suite nupcial');
INSERT INTO tipoHab(idTipo,descripcion)
VALUES (1,'con cama suplementaria');

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

select * from Huespedes
insert into Huespedes values ('Daniel Sanchez','8125707285',750,2,' 1 de sep del 2018','3 de sep del 2018')
insert into Huespedes values ('Daniel Lopez','8126706265',1000,3,' 2 de sep del 2018','5 de sep del 2018')
insert into Huespedes values ('Marty Macfly','8125716265',1200,1,' 2 de sep del 2018','6 de sep del 2018')

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


