DROP DATABASE IF EXISTS pizza;
CREATE DATABASE pizza CHARACTER SET utf8mb4;
USE pizza;

CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    codigo_postal INT NOT NULL,
    localidad VARCHAR(50) NOT NULL,
    provincia VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL UNIQUE
);
CREATE TABLE categorias (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(25)
);

CREATE TABLE productos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('bebida','hamburguesa','pizza') NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    imagen VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

CREATE TABLE tiendas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(50) NOT NULL,
    codigo_postal INT NOT NULL,
    localidad VARCHAR(50) NOT NULL,
    provincia VARCHAR(25) NOT NULL
);

CREATE TABLE empleados (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    NIF VARCHAR(9) NOT NULL UNIQUE,
    telefono VARCHAR(12) NOT NULL,
    rol ENUM('cocinero','repartidor') NOT NULL,
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES tiendas (id)
);


CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    fecha VARCHAR(10) NOT NULL,
    hora VARCHAR(12) NOT NULL,
    tipo ENUM('delivery','recogida') NOT NULL,
    cant_bebida INT,
    cant_hamburguesa INT,
    cant_pizza INT,
    precio INT NOT NULL,
    cliente_id INT NOT NULL,
    tienda_id INT NOT NULL,
    empleado_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes (id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas (id),
    FOREIGN KEY (empleado_id) REFERENCES empleados (id)
);


insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Ferne', 'Speariett', '46944 Calypso Point', 18265, 'Terrassa', 'Cataluña', '170-532-9637');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Eden', 'Greensitt', '4 Golden Leaf Drive', 18358, 'Badalona', 'Cataluña', '612-958-3236');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Sanson', 'Brazier', '3086 Dryden Street', 18967, 'Terrassa', 'Cataluña', '914-405-0492');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Julie', 'Bennie', '439 Lien Drive', 18278, 'Badalona', 'Cataluña', '221-456-3492');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Flo', 'Mougeot', '10477 Stuart Circle', 18914, 'Terrassa', 'Cataluña', '745-135-9028');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Heath', 'Hourstan', '1 Iowa Alley', 18346, 'Terrassa', 'Cataluña', '473-264-1411');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Mike', 'Jewar', '774 Tomscot Park', 18850, 'Terrassa', 'Cataluña', '468-729-4272');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Daron', 'Brecknall', '0 Oak Valley Plaza', 18812, 'Terrassa', 'Cataluña', '870-996-5952');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Lazar', 'Lovel', '0 Lukken Street', 18655, 'Badalona', 'Cataluña', '866-259-4119');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Vinni', 'Samms', '7 Atwood Terrace', 18899, 'Barcelona', 'Cataluña', '818-874-5568');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Tadd', 'Gribbell', '00 Maple Road', 18802, 'L Hospitalet de LLobregat', 'Cataluña', '947-908-3442');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Farr', 'Ripper', '87 Service Crossing', 18519, 'L Hospitalet de LLobregat', 'Cataluña', '709-973-1847');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Glenn', 'Haylor', '9857 Park Meadow Parkway', 18579, 'L Hospitalet de LLobregat', 'Cataluña', '109-262-6573');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Urbain', 'Pechet', '21 Meadow Ridge Drive', 18860, 'Badalona', 'Cataluña', '356-593-6801');
insert into clientes (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono) values ('Marlo', 'Mattityahou', '50930 Butternut Hill', 18760, 'Barcelona', 'Cataluña', '783-687-7800');


INSERT INTO categorias (nombre)
VALUES
('carvinovora'),('vegetariana'),('italiana trad');


INSERT INTO productos (tipo,nombre,descripcion,imagen,precio,categoria_id)
VALUES
('hamburguesa','ternera','una hamburguesa con una solo carne tradicional', 'shorturl.at/flp78',10.99, null),
('hamburguesa','ternera doble','una hamburguesa de DOBLE carne tradicional', 'shorturl.at/BFHNV',12.99, null),
('hamburguesa','pollo','una hamburguesa de pollo a la plancha','shorturl.at/dkuG4',9.99, null),
('bebida','coca-cola','una lata de coca cola','shorturl.at/dlEMU',2.99,null),
('bebida','smoothie de chocolate','un smoothie de chocolate','shorturl.at/ekNQ5',5.99, null),
('bebida','smoothie de fresa','un smoothie de fresa','shorturl.at/kSW46',5.99, null),
('pizza','pepperoni','pizza tradicional con queso y pepperoni','shorturl.at/lJW25',8.99,1),
('pizza','jamon','pizza tradicional con queso y jamon','shorturl.at/GLOZ5',8.99,1),
('pizza','hongos y queso','pizza tradicional con hongos y queso vegetariano','shorturl.at/CRS57',9.99,2),
('pizza','espinaca y queso','pizza tradicional con hongos y queso vegetariano','shorturl.at/uwyQ3',9.99,2),
('pizza','margherita','queso mozzarella, tomate y oreganato','shorturl.at/bKOWX',10.99,3),
('pizza','diavola','tomate, mozzarella, salami y aceite de oliva','shorturl.at/dEOS3',10.99,3);


INSERT INTO tiendas (direccion,codigo_postal,localidad,provincia)
VALUES 
("La Font d'en Fargues",08032,'Barcelona','Cataluña'),
("Raval de Montserrat",08221,'Terrassa','Cataluña'),
("Av. de Josep Tarradellas",08901,"L'Hospitalet del Llobregat",'Cataluña'),
("Carrer de Luxemburg",08917,'Badalona','Cataluña');

insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Trista', 'Sullens', '29991526T', '685-876-3629', 'cocinero', 1);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Jacquelyn', 'Vannacci', '18264268F', '462-646-8287', 'repartidor', 1);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Ronni', 'Grix', '40800025P', '929-602-6392', 'repartidor', 1);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Dougie', 'Van Eeden', '78070507T', '737-614-4284', 'cocinero', 2);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Garrik', 'Weeden', '40281747G', '380-866-2163', 'repartidor', 2);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Maisey', 'Vanyukhin', '47984412R', '284-228-9388', 'repartidor', 2);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Elga', 'Dawes', '39670376P', '150-563-6490', 'cocinero', 3);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Legra', 'Sturton', '66892415Y', '116-190-0639', 'repartidor', 3);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Lanny', 'Ladewig', '28217456R', '937-694-0946', 'repartidor', 3);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Vania', 'Skule', '81664347P', '387-270-4627', 'cocinero', 4);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Neile', 'Moxstead', '24850330M', '253-610-2336', 'repartidor', 4);
insert into empleados (nombre, apellido, NIF, telefono, rol, tienda_id) values ('Penelopa', 'Burnip', '71254998R', '819-306-9731', 'repartidor', 4);


insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('28/09/2022', '10:37:26 AM', 'delivery', 0, 1, 1, 12.13, 13, 4, 12);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('31/01/2021', '10:07:31 AM', 'delivery', 0, 2, 0, 22.92, 2, 4, 11);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('03/10/2021', '8:51:29 PM', 'delivery', 3, 3, 0, 52.23, 5, 4, 12);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('28/09/2021', '6:22:35 PM', 'recogida', 0, 2, 2, 41.15, 11, 1, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('13/02/2021', '9:07:10 PM', 'delivery', 1, 1, 2, 31.51, 1, 3, 8);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('24/09/2021', '7:45:25 PM', 'delivery', 2, 1, 1, 32.68, 7, 2, 5);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('24/01/2021', '11:53:43 AM', 'delivery', 0, 1, 3, 38.75, 7, 2, 5);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('04/10/2021', '11:53:57 AM', 'delivery', 3, 1, 2, 51.69, 3, 4, 12);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('14/10/2021', '8:14:39 PM', 'delivery', 1, 3, 1, 41.06, 13, 4, 11);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('04/01/2022', '11:46:22 AM', 'recogida', 0, 0, 1, 12.94, 6, 2, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('06/03/2021', '5:12:15 PM', 'recogida', 0, 3, 1, 31.8, 11, 4, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('16/08/2022', '9:51:25 PM', 'delivery', 3, 0, 1, 22.63, 4, 4, 11);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('12/02/2021', '4:06:39 PM', 'delivery', 0, 3, 2, 42.56, 9, 2, 6);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('12/09/2021', '6:49:27 PM', 'delivery', 3, 3, 3, 62.42, 7, 4, 12);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('14/09/2022', '12:02:29 PM', 'recogida', 3, 3, 1, 51.17, 7, 4, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('17/03/2021', '8:43:12 PM', 'delivery', 3, 3, 2, 62.28, 10, 3, 9);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('27/05/2021', '2:52:22 PM', 'recogida', 3, 3, 3, 72.08, 6, 3, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('29/08/2022', '6:26:44 PM', 'delivery', 1, 0, 3, 42.57, 14, 1, 2);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('11/12/2021', '3:21:35 PM', 'recogida', 3, 3, 3, 71.14, 12, 3, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('11/08/2022', '11:09:22 AM', 'recogida', 0, 1, 1, 22.71, 4, 2, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('05/05/2022', '11:13:09 AM', 'delivery', 2, 0, 2, 22.17, 2, 2, 5);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('15/01/2021', '1:49:26 PM', 'delivery', 3, 3, 1, 58.43, 2, 3, 8);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('26/05/2021', '8:53:09 PM', 'delivery', 0, 3, 1, 42.73, 10, 1, 2);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('16/07/2021', '1:06:40 PM', 'recogida', 1, 3, 2, 58.84, 4, 4, null);
insert into pedidos (fecha, hora, tipo, cant_bebida, cant_hamburguesa, cant_pizza, precio, cliente_id, tienda_id, empleado_id) values ('08/04/2022', '6:23:36 PM', 'delivery', 3, 2, 2, 42.31, 3, 2, 6);

CREATE TABLE orden_pedido (
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos (id),
    FOREIGN KEY (producto_id) REFERENCES productos (id)
);

INSERT INTO orden_pedido (pedido_id, producto_id, cantidad)
VALUES
(1,1,1),
(1,7,1),
(2,1,2),
(3,4,3),
(3,1,3),
(4,1,2),
(4,9,2),
(5,2,1),
(5,5,1),
(5,8,2),
(6,4,2),
(6,3,1),
(6,9,10),
(7,1,1),
(7,12,3),
(8,4,1),
(8,3,1),
(8,11,2),
(9,2,3),
(9,5,1),
(9,9,1),
(10,12,1),
(11,1,3),
(11,9,1),
(12,4,3),
(12,11,1),
(13,3,3),
(13,9,2),
(14,5,3),
(14,1,3),
(14,10,3),
(15,4,3),
(15,2,3),
(15,9,1),
(16,4,3),
(16,3,3),
(16,12,2),
(17,4,3),
(17,2,3),
(17,7,3),
(18,5,1),
(18,9,3),
(19,5,3),
(19,3,3),
(19,11,3),
(20,1,1),
(20,9,1),
(21,4,2),
(21,8,2),
(22,4,3),
(22,1,3),
(22,7,1),
(23, 1,2),
(23,2,1),
(23,7,1),
(24,4,1),
(24,1,3),
(24,7,2),
(25,4,3),
(25,1,2),
(25,7,2);

SELECT SUM(pedidos.cant_bebida) AS 'cantidad de bebidas vendidas', tiendas.id FROM pedidos
JOIN tiendas 
ON tiendas.id = pedidos.tienda_id
GROUP BY tiendas.id;


SELECT COUNT(*) AS 'numero de pedidos' FROM pedidos WHERE empleado_id = 5;