-- Ejercicio 5.12
-- Tema 5
-- Ángel García Pérez

-- Crear la base de datos
DROP DATABASE IF EXISTS Taller;
CREATE DATABASE IF NOT EXISTS Taller;
USE Taller;

-- Crear la tabla Maquinas
DROP TABLE IF EXISTS Maquinas;
CREATE TABLE IF NOT EXISTS Maquinas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    fecha_compra DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

-- Crear la tabla Partes_produccion
DROP TABLE IF EXISTS Partes_produccion;
CREATE TABLE IF NOT EXISTS Partes_produccion (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    num_parte VARCHAR(50) NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_final DATE NOT NULL,
    coste_total DECIMAL(10, 2) NOT NULL
);

-- Crear la tabla Articulos
DROP TABLE IF EXISTS Articulos;
CREATE TABLE IF NOT EXISTS Articulos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    coste DECIMAL(10, 2) NOT NULL
);

-- Crear la tabla Talleres SIN la clave foránea jefe_id inicialmente
DROP TABLE IF EXISTS Talleres;
CREATE TABLE IF NOT EXISTS Talleres (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    funcion VARCHAR(255) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    jefe_id INT -- Clave foránea será añadida más tarde
);

-- Crear la tabla Empleados SIN la clave foránea taller_id inicialmente
DROP TABLE IF EXISTS Empleados;
CREATE TABLE IF NOT EXISTS Empleados (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    dni VARCHAR(9) NOT NULL UNIQUE,
    taller_id INT -- Clave foránea será añadida más tarde
);

-- Agregar la clave foránea jefe_id en la tabla Talleres
ALTER TABLE Talleres
ADD CONSTRAINT fk_taller_jefe FOREIGN KEY (jefe_id) REFERENCES Empleados(id);

-- Agregar la clave foránea taller_id en la tabla Empleados
ALTER TABLE Empleados
ADD CONSTRAINT fk_empleado_taller FOREIGN KEY (taller_id) REFERENCES Talleres(id);

-- Crear la tabla Maquina_utiliza_taller
DROP TABLE IF EXISTS Maquina_utiliza_taller;
CREATE TABLE IF NOT EXISTS Maquina_utiliza_taller (
    taller_id INT NOT NULL,
    maquina_id INT NOT NULL,
    inicio DATE NOT NULL,
    fin DATE NOT NULL,
    tiempo_d DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (taller_id, maquina_id),
    CONSTRAINT fk_maquina_taller FOREIGN KEY (taller_id) REFERENCES Talleres(id),
    CONSTRAINT fk_taller_maquina FOREIGN KEY (maquina_id) REFERENCES Maquinas(id)
);

-- Crear la tabla Partes_produccion_talleres
DROP TABLE IF EXISTS Partes_produccion_talleres;
CREATE TABLE IF NOT EXISTS Partes_produccion_talleres (
    taller_id INT NOT NULL,
    parte_produccion_id INT NOT NULL,
    PRIMARY KEY (taller_id, parte_produccion_id),
    CONSTRAINT fk_parte_taller FOREIGN KEY (taller_id) REFERENCES Talleres(id),
    CONSTRAINT fk_taller_parte FOREIGN KEY (parte_produccion_id) REFERENCES Partes_produccion(id)
);

-- Crear la tabla Fabrica
DROP TABLE IF EXISTS Fabrica;
CREATE TABLE IF NOT EXISTS Fabrica (
    parte_produccion_id INT NOT NULL,
    articulo_id INT NOT NULL,
    tiempo DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (parte_produccion_id, articulo_id),
    CONSTRAINT fk_fabrica_parte FOREIGN KEY (parte_produccion_id) REFERENCES Partes_produccion(id),
    CONSTRAINT fk_fabrica_articulo FOREIGN KEY (articulo_id) REFERENCES Articulos(id)
);
