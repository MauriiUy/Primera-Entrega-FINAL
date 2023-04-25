drop schema if exists Empresa;
create schema Empresa;
use Empresa;

create table if not exists Clientes( 
idClientes int primary key auto_increment,
nombre text(30),
apellido text(20),
RazonSocial varchar(15),
NIdentidad varchar(8),
direccion text(30),
telefono varchar(15),
Frecuencia varchar(1)
);

create table if not exists Pedidos(
idPedidos int primary key auto_increment,
idClientes int,
fecha date,
idProductos varchar(30),
cantidad varchar(30),
montoApagar varchar(30),
foreign key (idClientes) references clientes (idClientes)
);


create table if not exists Productos(
idProductos int primary key auto_increment,
nombreProducto text(15),
stock varchar(4),
cantidad varchar(5),
precio varchar(4)
);

CREATE TABLE IF NOT EXISTS Pedidos_Has_Productos (
    idProductos INT,
    idClientes INT,
    idPedidos INT,
    FOREIGN KEY (idClientes) REFERENCES clientes(idClientes),
    FOREIGN KEY (idPedidos) REFERENCES Pedidos(idPedidos),
    FOREIGN KEY (idProductos) REFERENCES Productos(idProductos)
);

INSERT INTO clientes (idClientes, nombre, apellido, RazonSocial, NIdentidad, direccion, telefono, frecuencia)
VALUES 
    (1, 'Ana', 'González','AnaG', 1234567, 'Calle Falsa 123', '+5841234567', 3),
    (2, 'Juan', 'López', 'JUANL',2345678, 'Avenida Siempre Viva 742', '+5842345678',5),
    (3, 'María', 'Martínez','MariaM', 3456789, 'Calle Inexistente 456', '+5843456789',2),
    (4, 'Pedro', 'Sánchez', 'PedroS',4567890, 'Avenida Desconocida 789', '+5844567890',5),
    (5, 'Luis', 'Fernández', 'Luisito', 5678901, 'Calle Desconocida 1011', '+5845678901',1);
    
    INSERT INTO Pedidos (idPedidos, fecha, idProductos, cantidad, montoApagar) VALUES
  (1000, '2022-01-01', 123456, 23, 5678),
  (1001, '2022-02-15', 987654, 45, 4321),
  (1002, '2022-03-10', 234567, 12, 7890),
  (1003, '2022-04-20', 876543, 78, 1234),
  (1004, '2022-05-05', 345678, 56, 9876),
  (1005, '2022-06-30', 765432, 34, 2345),
  (1006, '2022-07-25', 890123, 67, 4567);
  
  DELETE FROM Pedidos
WHERE idPedidos = 1004;
  
  INSERT INTO Productos(idProductos ,nombreProducto ,stock ,cantidad ,precio)
VALUES 
 (73201, 'Martillo', 442, 520, 785),
  (81216, 'Tornillo', 778, 865, 133),
  (25098, 'Destornillador', 110, 879, 416),
  (37054, 'Sierra', 982, 874, 358),
  (63390, 'Clavo', 541, 583, 137),
  (95385, 'Pintura', 126, 318, 454),
  (12609, 'Llave inglesa', 716, 435, 219),
  (90609, 'Cinta métrica', 853, 446, 774),
  (30036, 'Martillo de bola', 614, 568, 783),
  (81122, 'Cincel', 869, 902, 528),
  (22121, 'Serrucho', 524, 235, 911),
  (75690, 'Pinzas', 757, 643, 232),
  (40153, 'Taladro', 430, 778, 336),
  (97983, 'Escalera', 504, 458, 217);

UPDATE productos
SET precio = 100
WHERE idProductos = 63390;

  