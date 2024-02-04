DROP DATABASE IF EXISTS pubs_provincia;
CREATE DATABASE pubs_provincia CHARACTER SET utf8mb4;
USE pubs_provincia;

CREATE TABLE localidad (
cod_localidad INT UNSIGNED PRIMARY KEY,
nombre VARCHAR	(100) NOT NULL
);

CREATE TABLE pub (
cod_pub VARCHAR (50) PRIMARY KEY,
nombre VARCHAR	(100) NOT NULL,
licencia_fiscal  VARCHAR	(100) NOT NULL,
domicilio VARCHAR (100),
fecha_apertura DATE NOT NULL,
horario VARCHAR(50) CHECK (horario IN ('HOR1', 'HOR2', 'HOR3')) NOT NULL,
cod_localidad INT UNSIGNED NOT NULL,
FOREIGN KEY (cod_localidad) REFERENCES localidad(cod_localidad)
);

CREATE TABLE titular (
dni_titular VARCHAR (50) PRIMARY KEY,
nombre VARCHAR	(100) NOT NULL,
domicilio VARCHAR (100),
cod_pub VARCHAR (50) NOT NULL,
FOREIGN KEY (cod_pub) REFERENCES pub(cod_pub)
);

CREATE TABLE empleado (
dni_empleado VARCHAR(9) PRIMARY KEY,
nombre VARCHAR	(100) NOT NULL,
domicilio VARCHAR (100)
);

CREATE TABLE existencias (
cod_articulo VARCHAR(9) PRIMARY KEY,
nombre VARCHAR	(100) NOT NULL,
cantidad INT UNSIGNED NOT NULL,
precio INT UNSIGNED NOT NULL CHECK (precio>0),
cod_pub VARCHAR (50) NOT NULL,
FOREIGN KEY (cod_pub) REFERENCES pub(cod_pub)
);

CREATE TABLE pub_empleado (
cod_pub VARCHAR (50) NOT NULL,
dni_empleado VARCHAR(9) NOT NULL,
funcion VARCHAR (10) CHECK (funcion IN ('camarero', 'seguridad', 'limpieza')) NOT NULL,
FOREIGN KEY (cod_pub) REFERENCES pub(cod_pub),
FOREIGN KEY (dni_empleado) REFERENCES empleado(dni_empleado),
PRIMARY KEY (dni_empleado, cod_pub, funcion)
);