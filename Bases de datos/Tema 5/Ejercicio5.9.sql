-- Ejercicio 5.9
-- Tema 5
-- Ángel García Pérez

-- Crear la base de datos con el cotejamiento UTF8_GENERAL_CI
DROP DATABASE IF EXISTS RestriccionesDefault;
CREATE DATABASE IF NOT EXISTS RestriccionesDefault
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- Usar la base de datos creada
USE RestriccionesDefault;

-- Crear la tabla ResDEFAULT con las columnas y valores predeterminados
DROP TABLE IF EXISTS ResDEFAULT;
CREATE TABLE IF NOT EXISTS ResDEFAULT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    poblacion VARCHAR(50) DEFAULT 'Ubrique',
    provincia VARCHAR(50) DEFAULT 'Cádiz',
    nacionalidad VARCHAR(50) DEFAULT 'España',
    precio DECIMAL(10, 2) DEFAULT 10.20,
    sueldo DECIMAL(10, 2) DEFAULT 1500.00,
    fecha_hora_llegada DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_llegada DATE DEFAULT CURRENT_TIME,
    hora_llegada TIME DEFAULT CURRENT_TIME,
    casado BOOLEAN DEFAULT 1,
    carnet_conducir BOOLEAN DEFAULT 1
);

-- Insertar al menos 3 registros válidos en la tabla
INSERT INTO ResDEFAULT (poblacion, provincia, nacionalidad, precio, sueldo, fecha_hora_llegada, casado, carnet_conducir)
VALUES
    ('Sevilla', 'Sevilla', 'España', 15.50, 1800.00, NOW(), 0, 1),
    ('Granada', 'Granada', 'España', 20.00, 1600.00, NOW(), 1, 0),
    ('Jerez', 'Cádiz', 'España', 12.00, 1700.00, NOW(), 1, 1);

-- Mostrar los registros para verificar
SELECT * FROM ResDEFAULT;
