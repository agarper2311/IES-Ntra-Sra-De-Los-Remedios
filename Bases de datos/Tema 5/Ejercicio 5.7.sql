-- Ejercicio 5.7
-- Tema 5
-- Ángel García Pérez

-- 1.
USE test;

-- 2.
DROP TABLE IF EXISTS pacientes;
CREATE TABLE IF NOT EXISTS pacientes(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(35) NOT NULL,
    nss CHAR(13) NOT NULL,
    email TINYTEXT UNIQUE,
    telefono CHAR(13) UNIQUE,
    poblacion VARCHAR(30) NOT NULL,
    expediente TEXT NOT NULL,
    dni CHAR(9) NOT NULL,
    historial_clinico TEXT NOT NULL,
    fecha_nac DATE NOT NULL,
    edad DATE NOT NULL
);