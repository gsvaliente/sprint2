DROP DATABASE IF EXISTS optica;
CREATE DATABASE optica CHARACTER SET utf8mb4;
USE optica;

CREATE TABLE proveedores(
	id INT NOT NULL AUTO_INCREMENT UNIQUE ,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    calle VARCHAR(150),
    numero INT,
    piso INT,
    puerta INT,
    ciudad VARCHAR(50),
    codigo_postal INT,
    pais VARCHAR(50),
    telefono VARCHAR(25) UNIQUE,
    fax VARCHAR (25),
    nif VARCHAR (25) UNIQUE,
    PRIMARY KEY (id)
);

insert into proveedores (nombre, calle, numero, piso, puerta, ciudad, pais, telefono, fax, NIF) values ('Hartmann-Keebler', 'Mcguire', 82, 3, 1, 'Santiago De Compostela', 'Spain', '618-823-7070', '734-781-5483', '79924922P');
insert into proveedores (nombre, calle, numero, piso, puerta, ciudad, pais, telefono, fax, NIF) values ('Bartoletti, Stark and Bogisich', 'Russell', 16, 2, 4, 'Albacete', 'Spain', '125-210-8346', '415-482-2302', '58299159R');
insert into proveedores (nombre, calle, numero, piso, puerta, ciudad, pais, telefono, fax, NIF) values ('Buckridge LLC', 'Heffernan', 96, 5, 1, 'Toledo', 'Spain', '580-264-7756', '375-120-3314', '30056962T');
insert into proveedores (nombre, calle, numero, piso, puerta, ciudad, pais, telefono, fax, NIF) values ('Davis-Herzog', 'Kings', 100, 2, 4, 'Toledo', 'Spain', '459-315-6218', '810-574-6349', '87260295R');
insert into proveedores (nombre, calle, numero, piso, puerta, ciudad, pais, telefono, fax, NIF) values ('Waelchi, DuBuque and Koch', 'Badeau', 94, 10, 1, 'Almeria', 'Spain', '713-423-9335', '395-829-6008', '43451538F');

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    codigo_postal VARCHAR(25) NOT NULL,
    correo_electronico VARCHAR (100),
    fecha_registro VARCHAR(25) NOT NULL,
    recomendado_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (recomendado_id) REFERENCES clientes (id)  
);

insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Mariette', 'Adne', 18671, 'madne0@dot.gov', '8/26/2022', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Bernardine', 'Chaplain', 18352, 'bchaplain1@blinklist.com', '6/4/2022', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Harold', 'Roswarne', 18177, 'hroswarne2@answers.com', '3/14/2021', 1);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Geri', 'Servante', 18375, 'gservante3@canalblog.com', '10/30/2021', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Ernesta', 'Galland', 18287, 'egalland4@vistaprint.com', '1/26/2022', 2);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Anson', 'Makey', 18302, 'amakey5@forbes.com', '5/18/2022', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Carroll', 'Bouchier', 18220, 'cbouchier6@archive.org', '11/3/2021', 4);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Gregoor', 'Covelle', 18291, 'gcovelle7@live.com', '2/20/2021', 3);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Georgi', 'Joanic', 18903, 'gjoanic8@jalbum.net', '5/9/2022', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Margalit', 'Blaxter', 18847, 'mblaxter9@vinaora.com', '3/26/2022', 5);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Ynez', 'Ratcliffe', 18266, 'yratcliffea@va.gov', '10/30/2021', 1);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Carol-jean', 'Wetherell', 18248, 'cwetherellb@xrea.com', '12/30/2021', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Verge', 'Vibert', 18445, 'vvibertc@mozilla.com', '10/10/2021', 4);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Prentice', 'Oslar', 18942, 'poslard@mayoclinic.com', '7/8/2022', 2);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Bobbe', 'MacEnelly', 18069, 'bmacenellye@ning.com', '5/5/2021', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Cori', 'Sopp', 18882, 'csoppf@smh.com.au', '7/5/2021', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Dalt', 'Ritchman', 18921, 'dritchmang@archive.org', '12/10/2021', 5);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Richmond', 'Shasnan', 18461, 'rshasnanh@craigslist.org', '6/9/2021', null);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Lauritz', 'Eyrl', 18995, 'leyrli@amazonaws.com', '2/14/2021', 7);
insert into clientes (nombre, apellido, codigo_postal, correo_electronico, fecha_registro, recomendado_id) values ('Rodney', 'Farmiloe', 18850, 'rfarmiloej@seattletimes.com', '4/11/2021', 9);

CREATE TABLE empleados (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    nif VARCHAR (25) UNIQUE,
    PRIMARY KEY (id)
);

insert into empleados (nombre, apellido, nif) values ('Kynthia', 'Birkbeck', '67926375R');
insert into empleados (nombre, apellido, nif) values ('Galina', 'Chatteris', '83591690P');
insert into empleados (nombre, apellido, nif) values ('Nathaniel', 'Tesche', '55065776D');
insert into empleados (nombre, apellido, nif) values ('Lynelle', 'Tugwell', '52664535R');
insert into empleados (nombre, apellido, nif) values ('Rene', 'Durden', '83447650T');

CREATE TABLE ventas (
	id INT NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    cliente_id INT NOT NULL,
    empleado_id INT NOT NULL,
    gafa_id INT NOT NULL,
    marca VARCHAR (50) NOT NULL,
    graduacion INT,
    tipo_montura VARCHAR (50),
    color_montura VARCHAR (50),
    color_cristal VARCHAR (50),
    precio INT NOT NULL,
    proveedor_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES clientes (id),
    FOREIGN KEY (empleado_id) REFERENCES empleados (id),
	FOREIGN KEY (proveedor_id) REFERENCES proveedores (id)
);

insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-09-22', 13, 4, 1, 'Ray-Ban', 2, 'metálica', 'dorado', 'negro', 139.89, 3);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-04-02', 9, 5, 2, 'Carrera', 0, 'metálica', 'negro', 'negro', 97.74, 4);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-10-15', 13, 5, 3, 'Ray-Ban', -2, 'pasta', 'negro', 'azul', 78.44, 3);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-02-24', 7, 2, 4, 'Lobster', 0, 'pasta', 'azul', 'amarillo', 103.02, 2);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-09-25', 2, 2, 5, 'Ray-Ban', 0, 'pasta', 'gris', 'negro', 103.5, 3);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-08-01', 7, 5, 6, 'Tom Ford', 2, 'metálica', 'azul', 'transparente', 93.18, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-09-28', 9, 5, 7, 'Tom Ford', 1, 'pasta', 'azul', 'transparente', 144.48, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-11-03', 9, 5, 8, 'Lobster', 0, 'metálica', 'azul', 'negro', 117.56, 2);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-03-31', 10, 2, 9, 'Lobster', -1, 'pasta', 'gris', 'negro', 139.02, 2);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-06-26', 6, 1, 10, 'Tom Ford', 2, 'flotante', 'gris', 'amarillo', 71.04, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-07-14', 5, 3, 11, 'Prada', 0, 'metálica', 'negro', 'amarillo', 148.58, 1);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-05-31', 7, 1, 12, 'Prada', -1, 'pasta', 'gris', 'azul', 109.45, 1);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-01-17', 4, 5, 13, 'Tom Ford', 0, 'metálica', 'negro', 'azul', 138.32, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-08-25', 12, 4, 14, 'Ray-Ban', 0, 'metálica', 'azul', 'azul', 148.31, 3);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-05-01', 5, 2, 15, 'Prada', 1, 'flotante', 'gris', 'azul', 136.97, 1);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-01-02', 9, 5, 16, 'Oakley', 1, 'flotante', 'negro', 'azul', 123.4, 2);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2022-05-22', 4, 3, 17, 'Carrera', 0, 'metálica', 'azul', 'azul', 111.26, 4);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-03-09', 12, 1, 18, 'Tom Ford', 0, 'metálica', 'dorado', 'negro', 77.74, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-11-17', 14, 4, 19, 'Ray-Ban', -1, 'metálica', 'gris', 'transparente', 90.79, 3);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-03-12', 7, 3, 20, 'Lobster', -2, 'pasta', 'dorado', 'azul', 86.58, 2);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-07-09', 14, 4, 21, 'Tom Ford', -1, 'metálica', 'azul', 'azul', 132.38, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-11-19', 4, 2, 22, 'Carrera', 1, 'flotante', 'dorado', 'negro', 92.44, 4);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-10-20', 10, 4, 23, 'Ray-Ban', -1, 'flotante', 'negro', 'amarillo', 101.02, 3);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-09-09', 6, 3, 24, 'Dior', 0, 'metálica', 'dorado', 'negro', 145.27, 5);
insert into ventas (fecha, cliente_id, empleado_id, gafa_id, marca, graduacion, tipo_montura, color_montura, color_cristal, precio, proveedor_id) values ('2021-04-15', 8, 1, 25, 'Ray-Ban', 0, 'flotante', 'negro', 'negro', 98.41, 3);

SELECT * FROM ventas WHERE cliente_id = 1;
SELECT DISTINCT * FROM ventas WHERE empleado_id = 1 AND fecha BETWEEN '2021-01-01' AND '2021-12-31';
SELECT DISTINCT proveedores.nombre FROM proveedores JOIN ventas ON proveedores.id = ventas.proveedor_id;



