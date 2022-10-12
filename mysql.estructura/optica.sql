CREATE DATABASE optica;
USE optica;

ALTER TABLE proveedor ADD nif VARCHAR(25) UNIQUE;

CREATE TABLE proveedor(
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

CREATE TABLE gafas (
	id INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR (50) NOT NULL,
    gradiacion INT,
    tipo_montura VARCHAR (50),
    color_montura VARCHAR (50),
    color_vidrio VARCHAR (50),
    precio INT,
    proveedor_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (proveedor_id) REFERENCES proveedor(id)
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    codigo_postal VARCHAR(25) NOT NULL,
    correo_electronico VARCHAR (100),
    fecha_registro VARCHAR(25) NOT NULL,
    recomendado_por INT,
    PRIMARY KEY (id)
    
);

CREATE TABLE empleados (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    nif VARCHAR (25) UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE ventas (
	id INT NOT NULL AUTO_INCREMENT,
    fecha VARCHAR(50) NOT NULL,
    cliente_id INT NOT NULL,
    empleado_id INT NOT NULL,
    gafa_id INT NOT NULL,
    proveedor_id INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (cliente_id) REFERENCES clientes (id),
    FOREIGN KEY (empleado_id) REFERENCES empleados (id),
    FOREIGN KEY (gafa_id) REFERENCES gafas (id),
	FOREIGN KEY (proveedor_id) REFERENCES proveedor (id)
    
);



