DROP DATABASE IF EXISTS cadena_hoteles;
CREATE DATABASE cadena_hoteles CHARACTER SET utf8mb4;
USE cadena_hoteles;

CREATE TABLE categoria (
id_cat INT KEY AUTO_INCREMENT,
nombre_cat VARCHAR(50) NOT NULL,
tipo_iva VARCHAR(50) NOT NULL,
descripcion VARCHAR(200) NOT NULL
);

CREATE TABLE hotel (
id_hotel INT PRIMARY KEY AUTO_INCREMENT,
nombre_h VARCHAR(50) NOT NULL,
direccion_h VARCHAR(100) NOT NULL,
tlf_h VARCHAR(12) NOT NULL,
año_const DATE NOT NULL,
id_cat INT NOT NULL,
FOREIGN KEY (id_cat) REFERENCES categoria (id_cat)
);

CREATE TABLE habitacion (
cod_hab INT PRIMARY KEY,
id_hotel INT NOT NULL,
tipo_hab VARCHAR(50) NOT NULL,
FOREIGN KEY (id_hotel) REFERENCES hotel (id_hotel)
);

CREATE TABLE cliente (
cod_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre_cli VARCHAR(50) NOT NULL,
direccion_cli VARCHAR(100) NOT NULL,
tlf_cli VARCHAR(12) NOT NULL
);

CREATE TABLE reserva (
cod_reserva INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
precio DECIMAL (7,2) NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
titular VARCHAR (100),
cod_cliente INT UNSIGNED NOT NULL,
cod_hab INT NOT NULL,
FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente),
FOREIGN KEY (cod_hab) REFERENCES habitacion (cod_hab)
);