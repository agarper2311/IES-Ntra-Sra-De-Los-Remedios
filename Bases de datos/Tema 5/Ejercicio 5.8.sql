-- Ejercicio 5.8
-- Tema 5
-- Ángel García Pérez

-- 1. Crear la Base de Datos
DROP DATABASE IF EXISTS Horarios;
CREATE DATABASE IF NOT EXISTS Horarios;
USE Horarios;

-- 2. Tabla Departamentos
DROP TABLE IF EXISTS Departamentos;
CREATE TABLE IF NOT EXISTS Departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    cod_departamento CHAR(3) NOT NULL,
    UNIQUE (cod_departamento)
);

-- 3. Tabla Profesor
DROP TABLE IF EXISTS Profesor;
CREATE TABLE IF NOT EXISTS Profesor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    email VARCHAR(35),
    fecha_ingreso DATE NOT NULL,
    especialidad VARCHAR(40) NOT NULL,
    nrp VARCHAR(50) NOT NULL,
    departamento_id INT,
    UNIQUE (email),
    UNIQUE (nrp),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id) ON DELETE SET NULL
);

-- 4. Tabla Asignatura
DROP TABLE IF EXISTS Asignatura;
CREATE TABLE IF NOT EXISTS Asignatura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    nivel CHAR(4) NOT NULL,
    cod_asignatura CHAR(7) NOT NULL,
    horas INT NOT NULL,
    departamento_id INT,
    UNIQUE (cod_asignatura),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id) ON DELETE SET NULL
);

-- 5. Tabla Horario
DROP TABLE IF EXISTS Horario;
CREATE TABLE IF NOT EXISTS Horario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    profesor_id INT NOT NULL,
    dia TINYINT NOT NULL CHECK (dia BETWEEN 1 AND 5),
    tramo TINYINT NOT NULL CHECK (tramo BETWEEN 1 AND 6),
    turno TINYINT NOT NULL CHECK (turno IN (1, 2)),
    asignatura_id INT NOT NULL,
    horas INT NOT NULL,
    FOREIGN KEY (profesor_id) REFERENCES Profesor(id) ON DELETE CASCADE,
    FOREIGN KEY (asignatura_id) REFERENCES Asignatura(id) ON DELETE CASCADE
);
