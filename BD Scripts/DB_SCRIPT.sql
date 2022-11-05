
create database DBVentaAngular

go

use DBVentaAngular

go

create table Rol(
idRol int primary key identity(1,1),
descripcion varchar(50),
esActivo bit,
fechaRegistro datetime default getdate()
)

go

create table Usuario(
idUsuario int primary key identity(1,1),
nombreApellidos varchar(100),
correo varchar(40),
idRol int references Rol(idRol),
clave varchar(40),
esActivo bit
)

go

create table Categoria(
idCategoria int primary key identity(1,1),
descripcion varchar(50),
esActivo bit,
fechaRegistro datetime default getdate()
)


go 
create table Producto (
idProducto int primary key identity(1,1),
nombre varchar(100),
idCategoria int references Categoria(idCategoria),
stock int,
precio decimal(10,2),
esActivo bit,
fechaRegistro datetime default getdate()
)

go

create table NumeroDocumento(
idNumeroDocumento int primary key identity(1,1),
ultimo_Numero int not null,
fechaRegistro datetime default getdate()
)
go

create table Venta(
idVenta int primary key identity(1,1),
numeroDocumento varchar(40),
tipoPago varchar(50),
fechaRegistro datetime default getdate(),
total decimal(10,2)
)
go

create table DetalleVenta(
idDetalleVenta int primary key identity(1,1),
idVenta int references Venta(idVenta),
idProducto int references Producto(idProducto),
cantidad int,
precio decimal(10,2),
total decimal(10,2)
)
