create database Hotel

create table Huespedes 
(
id bigint identity (1,1) not null,
Nombre varchar (60) not null,
telefono varchar(15),
tarifaPorNoche integer not null,
noches integer not null,
fechaLlegada varchar (20) not null,
fechaSalida varchar (20) not null,



);
select * from Huespedes
insert into Huespedes values ('Daniel Sanchez','8125707285',750,2,' 1 de sep del 2018','3 de sep del 2018')
insert into Huespedes values ('Daniel Lopez','8126706265',1000,3,' 2 de sep del 2018','5 de sep del 2018')

create table Habitaciones(
 id integer,
 descripcion varchar (40),
 

);

create table empleados(
id integer, 
nombre varchar,
id_puesto integer,
telefono varchar (40),


);

create table metodosDEpago(
id integer,
nombreMetodo varchar,

);

create table Servicios(
nombre varchar,
descripcion varchar,
precio integer,


);