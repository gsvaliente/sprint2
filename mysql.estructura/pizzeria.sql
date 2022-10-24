CREATE DATABASE pizzeria;
USE pizzeria;

CREATE TABLE clientes(
	id INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(150),
    codigo_postal INT,
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    telefono VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE tiendas(
	id INT AUTO_INCREMENT,
    direccion VARCHAR(150),
    codigo_postal INT,
    localidad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE empleados(
	id INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    NIF VARCHAR(50),
    telefono VARCHAR(20),
    rol VARCHAR(50),
    tienda_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
);

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT,
    fecha DATE,
    hora TIME,
    cliente_id INT,
    total DECIMAL (5,2),
    cant_pizzas INT,
    cant_hamburguesas INT,
    cant_bebidas INT,
    empleado_id INT,
    tienda_id INT,
    tipo VARCHAR(50),
    PRIMARY KEY (id),
    FOREIGN KEY(cliente_id) REFERENCES clientes(id),
    FOREIGN KEY(empleado_id) REFERENCES empleados(id),
    FOREIGN KEY(tienda_id) REFERENCES tiendas(id),
    FOREIGN KEY(cant_pizzas) REFERENCES pizzas(id),
    FOREIGN KEY(cant_hamburguesas) REFERENCES hamburguesas(id),
    FOREIGN KEY(cant_bebidas) REFERENCES bebidas(id)
);

DROP TABLE pedidos;

INSERT INTO pedidos (fecha,hora,cliente_id,total,cant_pizzas,cant_hamburguesas,cant_bebidas,empleado_id,tienda_id,tipo)
VALUES
(19/10/2022,'15:00',1,25.25,1,1,NULL,5,1,'delivery');

SELECT * FROM pedidos;

CREATE TABLE hamburguesas (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(250),
    imagen VARCHAR(100),
    precio DECIMAL(4,2),
    PRIMARY KEY (id)
);
INSERT INTO hamburguesas (nombre,descripcion,imagen,precio)
VALUES
('ternera','una hamburguesa con una solo carne tradicional', 'shorturl.at/flp78',10.99),
('ternera doble','una hamburguesa de DOBLE carne tradicional', 'shorturl.at/BFHNV',12.99),
('pollo','una hamburguesa de pollo a la plancha','shorturl.at/dkuG4',9.99);

CREATE TABLE bebidas (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(250),
    imagen VARCHAR(100),
    precio DECIMAL(4,2),
    PRIMARY KEY (id)
);

INSERT INTO bebidas (nombre,descripcion,imagen,precio)
VALUES
('coca-cola','una lata de coca cola','shorturl.at/dlEMU',2.99),
('smoothie de chocolate','un smoothie de chocolate','shorturl.at/ekNQ5',5.99),
('smoothie de fresa','un smoothie de fresa','shorturl.at/kSW46',5.99);

SELECT * FROM bebidas;

CREATE TABLE pizzas (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    descripcion VARCHAR(250),
    imagen VARCHAR(100),
    precio DECIMAL(4,2),
    PRIMARY KEY(id)
);
INSERT INTO pizzas (nombre,categoria,descripcion,imagen,precio)
VALUES
('pepperoni','carnivora','pizza tradicional con queso y pepperoni','shorturl.at/lJW25',8.99),
('jamon','carnivora','pizza tradicional con queso y jamon','shorturl.at/GLOZ5',8.99),
('hongos y queso','vegetariana','pizza tradicional con hongos y queso vegetariano','shorturl.at/CRS57',9.99),
('espinaca y queso','vegetariana','pizza tradicional con hongos y queso vegetariano','shorturl.at/uwyQ3',9.99),
('margherita','tradicional','queso mozzarella, tomate y oreganato','shorturl.at/bKOWX',10.99),
('diavola','tradicional','tomate, mozzarella, salami picante y aceite de oliva al pepperondo','shorturl.at/dEOS3',10.99);



INSERT INTO tiendas (direccion,codigo_postal,localidad,provincia)
VALUES 
("La Font d'en Fargues",08032,'Barcelona','Cataluña'),
("Raval de Montserrat",08221,'Terrassa','Cataluña'),
("Av. de Josep Tarradellas",08901,"L'Hospitalet del Llobregat",'Cataluña'),
("Carrer de Luxemburg",08917,'Badalona','Cataluña');


SHOW TABLES;