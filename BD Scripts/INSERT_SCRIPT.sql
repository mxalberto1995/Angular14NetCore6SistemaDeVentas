

--INSERTAR ROLES
insert into rol(descripcion,esActivo) values
('Administrador',1),
('Empleado',1)

go

--INSERTAR USUARIOS
insert into usuario(nombreApellidos,correo,idRol,Clave,esActivo) values
('jose smith','admin@example.com',1,'12345',1),
('luis smith','employe@example.com',2,'12345',1)

go
--INSERTAR CATEGORIAS
insert into Categoria(descripcion,esActivo) values ('Laptops',1)
insert into Categoria(descripcion,esActivo) values ('Monitores',1)
insert into Categoria(descripcion,esActivo) values ('Teclados',1)
insert into Categoria(descripcion,esActivo) values ('Auriculares',1)
insert into Categoria(descripcion,esActivo) values ('Memorias',1)
insert into Categoria(descripcion,esActivo) values ('Accesorios',1)

go

--INSERTAR PRODUCTOS

insert into Producto(nombre,idCategoria,stock,precio,esActivo) values
('laptop samsung book pro',1,20,2500,1),
('laptop lenovo idea pad',1,30,2200,1),
('laptop asus zenbook duo',1,30,2100,1),
('monitor teros gaming te-2',2,25,1050,1),
('monitor samsung curvo',2,15,1400,1),
('monitor huawei gamer',2,10,1350,1),
('teclado seisen gamer',3,10,800,1),
('teclado antryx gamer',3,10,1000,1),
('teclado logitech',3,10,1000,1),
('auricular logitech gamer',4,15,800,1),
('auricular hyperx gamer',4,20,680,1),
('auricular redragon rgb',4,25,950,1),
('memoria kingston rgb',5,10,200,1),
('ventilador cooler master',6,20,200,1),
('mini ventilador lenono',6,15,200,1)

go

--INSERTAR NUMERO VENTA INICIAL
insert into NumeroDocumento(ultimo_Numero) values(0)
