#DROP DATABASE prueba;
CREATE DATABASE taller;

USE taller;

CREATE TABLE coches(
	id INT AUTO_INCREMENT,
    fk_id_cliente INT,
    matricula VARCHAR(7),
    marca VARCHAR(20),
    modelo VARCHAR(20),
    color VARCHAR(20),
    precio_venta DECIMAL
    PRIMARY KEY(id),
    FOREIGN KEY(fk_id_cliente) REFERENCES clientes(id)
)

CREATE TABLE revision(
	id INT AUTO_INCREMENT,
	fk_id_coches INT,
    filtro BOOL,
    aceite BOOL,
    frenos VARCHAR(200),
    numero_revisiones TINYINT,
    PRIMARY KEY(id),
    FOREIGN KEY(fk_id_coche) REFERENCE coches(id)
)

CREATE TABLE cliente(
	id INT AUTO_INCREMENT,
    direccion VARCHAR(200),
    ciudad VARCHAR(50),
    telefono TINYINT, 
    nif VARCHAR(9),
    nombre VARCHAR(30),
    PRIMARY KEY(id)
)
