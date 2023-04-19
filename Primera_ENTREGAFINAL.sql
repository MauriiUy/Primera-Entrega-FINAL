drop schema if exists Empresa;
create schema Empresa;
use Empresa;

create table if not exists Clientes( 
idClientes int primary key auto_increment,
nombre text(30),
apellido text(20),
RazonSocial varchar(15),
NIdentidad varchar(30),
direccion text(30),
telefono varchar(20),
Frecuencia varchar(1)
);

create table if not exists Pedidos(
idPedidos int primary key auto_increment,
fecha date,
idProductos varchar(30),
cantidad varchar(30),
montoApagar varchar(30),
foreign key (idClientes) references clientes (idClientes)
);


create table if not exists Productos(
idProductos int primary key auto_increment,
descripcion text(30),
stock varchar(30),
cantidad varchar(30),
precio varchar(100)
);

create table if not exists Pedidos_Has_Productos(
foreign key (Cliente) references clientes(idClientes),
foreign key (Pedido_Cliente) references Pedidos(idPedidos),
foreign key (Producto) references Productos(idProductos));
