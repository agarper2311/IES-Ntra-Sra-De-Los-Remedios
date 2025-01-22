-- Ejercicio 5.10
-- Tema 5
-- Ángel García Pérez

-- Crear la base de datos con el cotejamiento UTF8_GENERAL_CI
DROP DATABASE IF EXISTS restricciones_check;
CREATE DATABASE IF NOT EXISTS restricciones_check
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- Usar la base de datos creada
USE restricciones_check;

-- Crear la tabla comparacion
DROP TABLE IF EXISTS comparacion;
CREATE TABLE IF NOT EXISTS comparacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    importe DECIMAL(10, 2) CHECK (importe > 400),
    saldo DECIMAL(10, 2) CHECK (saldo < 0),
    nombre VARCHAR(50) CHECK (nombre IS NULL),
    apellidos VARCHAR(50) CHECK (apellidos IS NULL),
    n_beneficiarios INT CHECK (n_beneficiarios >= 5),
    n_asignaturas INT CHECK (n_asignaturas <= 5),
    beca BOOLEAN CHECK (beca = 1),
    importe_beca DECIMAL(10, 2) CHECK (importe_beca < 2500),
    n_goles INT CHECK (n_goles > 20),
    anno_nacimiento YEAR CHECK (anno_nacimiento >= 1970),
    fec_nacimiento DATE CHECK (fec_nacimiento < '2000-02-21'),
    hora_llegada TIME CHECK (hora_llegada >= '12:00:00')
);

-- Crear la tabla comparacionBetween
DROP TABLE IF EXISTS comparacionBetween;
CREATE TABLE IF NOT EXISTS comparacionBetween (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ngoles INT CHECK (ngoles BETWEEN 20 AND 30),
    sueldo DECIMAL(10, 2) CHECK (sueldo BETWEEN 2000 AND 3000),
    importe DECIMAL(10, 2) CHECK (importe BETWEEN 400 AND 600),
    cantidad INT CHECK (cantidad BETWEEN 5 AND 20),
    valor DECIMAL(10, 2) CHECK (valor NOT BETWEEN 4 AND 7),
    tipodescuento DECIMAL(5, 2) CHECK (tipodescuento BETWEEN 5.25 AND 20.50),
    precio DECIMAL(10, 2) CHECK (precio BETWEEN 20 AND 30)
);

-- Crear la tabla chekin
DROP TABLE IF EXISTS chekin;
CREATE TABLE IF NOT EXISTS chekin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    provincia ENUM('Cádiz', 'Málaga', 'Sevilla'),
    poblacion ENUM('Ubrique', 'Villamartín', 'Prado del Rey', 'Olvera'),
    cicloEstudio ENUM('ESO', 'BACH', 'MEDIO', 'SUPERIOR', 'ADULTOS'),
    valores ENUM('1','2', '5', '8', '9'),
    nacionalidad ENUM('España', 'Brasil', 'Portugal', 'Argentina', 'Italia'),
    cod_empleado VARCHAR(10) CHECK (SUBSTRING(cod_empleado, 2, 2) = 'AB'),
    nrp VARCHAR(20) CHECK (RIGHT(nrp, 1) = 'Z'),
    dni CHAR(9) CHECK (SUBSTRING(dni, 1, 2) = '25')
);

-- Verificar las tablas creadas
SHOW TABLES;
