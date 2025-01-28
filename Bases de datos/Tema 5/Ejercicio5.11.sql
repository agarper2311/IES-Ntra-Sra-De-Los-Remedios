-- Ejercicio 5.11
-- Tema 5
-- Ángel García Pérez

-- Crear la base de datos
DROP DATABASE IF EXISTS restricciones_check;
CREATE DATABASE IF NOT EXISTS restricciones_check;
USE restricciones_check;

-- Crear la tabla operadorLike
DROP TABLE IF EXISTS operadorLike;
CREATE TABLE IF NOT EXISTS operadorLike (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    email VARCHAR(20) NOT NULL,
    password VARCHAR(15) NOT NULL,
    cpostal CHAR(5) NOT NULL,
    codigo CHAR(7) NOT NULL,
    CHECK (descripcion LIKE 'a%'), -- La descripción debe empezar con 'a'
    CHECK (nombre LIKE 'ju%'), -- El nombre debe empezar con 'ju'
    CHECK (email LIKE '%@%'), -- El email debe contener '@'
    CHECK (CHAR_LENGTH(password) >= 7 AND SUBSTRING(password, 3, 1) = 'M'), -- Password con 7 caracteres, tercero es 'M'
    CHECK (cpostal REGEXP '^11[0-9]{3}$'), -- cpostal con 5 números, empieza con '11'
    CHECK (codigo REGEXP '^ES.{4}9$') -- Código con 7 caracteres, empieza con 'ES' y termina en '9'
);
