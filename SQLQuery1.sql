--CreAR BASE DE DATOS
CREATE DATABASE Clase;
--Para poder usar la base de datos
use Clase;
--Para crear las tablas de la base de datos
create table Clientes(
ID_Cliente int not null IDENTITY(1,1) PRIMARY KEY,
NombreCliente VARCHAR(50) NOT NULL,
Dirección VARCHAR(50) NOT NULL,
Ciudad varchar(50) not null,
CP VARCHAR(50) NOT NULL,
PAIS VARCHAR(50) NOT NULL
);
--Para ver si se creo la tabla y verla
select * from Clientes;

--CREAR TABLA EMPLEADOS
Create table Empleados (
ID_Empleados int not null identity(1,1) primary key,
Apellido varchar(50) not null,
Nombre varchar(50) not null,
Nacimiento datetime not null,
Notas varchar(50) not null
);
--ver la tabla creada
select * from Empleados;

--crear tabla ordenes
create table Ordenes(
ID_Orden int not null identity(1,1) primary key,
FechaOrden datetime not null,
ID_Empleado int not null foreign key references Empleados(ID_Empleados),
ID_Cliente int not null foreign key references Clientes(ID_Cliente)
);
select * from Ordenes;


--alter y drop
use clase;
--ejemplo alter
select * from Ordenes;
alter table Ordenes
add Cantidad int not null;

--cambiar tipo de dato
alter table ordenes
alter column cantidad varchar(10);

--ejemplo drop




