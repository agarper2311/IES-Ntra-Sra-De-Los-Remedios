-- Ejercicio 5.6
-- Tema 5
-- Ángel García Pérez


-- Creación de la base de datos
DROP DATABASE IF EXISTS test;
CREATE DATABASE IF NOT EXISTS test;
USE test;

-- Tabla alumnos
CREATE TABLE alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20),
    apellidos VARCHAR(45),
    dni CHAR(9),
    fecha_nac DATE,
    edad INT,
    poblacion VARCHAR(20),
    direccion VARCHAR(255),
    cpostal CHAR(4),
    provincia VARCHAR(20),
    nacionalidad VARCHAR(20),
    telefono VARCHAR(13),
    email VARCHAR(60)
);

-- Tabla artículos
CREATE TABLE articulo (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255),
    referencia VARCHAR(50),
    precio_coste DECIMAL(10,2),
    precio_venta DECIMAL(10,2),
    descuento DECIMAL(5,2),
    imagen VARCHAR(255),
    categoria VARCHAR(50),
    stock INT,
    stock_min INT,
    stock_max INT
);

-- Tabla registro_llegadas
CREATE TABLE registro_llegadas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    fecha_hora_salida DATETIME,
    fecha_hora_llegada DATETIME,
    tiempo_realizado TIME,
    id_corredor INT
)

