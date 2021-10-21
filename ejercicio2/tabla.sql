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
    FOREIGN KEY(fk_id_tabla) REFERENCES clientes(id)
)

CREATE TABLE revision(
	id INT AUTO_INCREMENT,
	fk_id_coches,
    filtro,
    aceite,
    frenos,
    numero_revisiones,
    
    
)
