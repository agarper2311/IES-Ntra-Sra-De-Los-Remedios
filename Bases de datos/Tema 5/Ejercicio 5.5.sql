-- Ejercicio 5.5
-- Tema 5.
-- Ángel García Pérez

-- 1.

DROP DATABASE IF EXISTS datos_fechas;
CREATE DATABASE IF NOT EXISTS datos_fechas;

-- 2.

USE datos_fechas;

-- 3.
DROP TABLE IF EXISTS tipos_datos_fechas;

-- 4.

CREATE TABLE IF NOT EXISTS tipos_datos_fechas(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
fecha_nacimiento DATE,
fecha_hora_nacimiento DATETIME,
hora_llegada TIME,
hora_salida TIME,
anno_nacimiento YEAR,
anno_fundacion YEAR,
fecha_hora_salida datetime(3),
fecha_hora_llegada datetime(3),
fecha_hora_actual datetime(2) DEFAULT CURRENT_TIMESTAMP,
tiempo_llegada TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
edad TINYINT UNSIGNED,
create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5.

INSERT INTO tipos_datos_fechas VALUES
(
NULL, -- id
'2005/04/11', -- fecha_nacimiento
'2005/04/11' '15:30:54', -- fecha_hora_nacimiento
'13:45:45', -- hora_llegada
'12:45:45', -- hora_salida
'2005', -- anno_nacimiento
'2000', -- anno_fundacion
'2025/01/10 10:30:35.499', -- fecha_hora_salida
'2025/01/12 10:25:30.500', -- fecha_hora_llegada
DEFAULT, -- fecha_hora_actual
'2025/01/15 14:28:35.543211', -- timepo_llegada
'19', -- edad
default,
default
),
(
NULL, -- id
'2004/05/12', -- fecha_nacimiento
'2004/05/12' '15:30:54', -- fecha_hora_nacimiento
'12:40:50', -- hora_llegada
'10:45:45', -- hora_salida
'2004', -- anno_nacimiento
'2001', -- anno_fundacion
'2025/01/11 10:30:35.499', -- fecha_hora_salida
'2025/01/13 10:25:30.500', -- fecha_hora_llegada
DEFAULT, -- fecha_hora_actual
'2025/08/05 11:22:48.564123', -- timepo_llegada
'20', -- edad
NOW(),
NOW()
),
(
NULL, -- id
'2003/04/12', -- fecha_nacimiento
'2003/04/12' '10:30:00', -- fecha_hora_nacimiento
'10:40:50', -- hora_llegada
'09:45:45', -- hora_salida
'2004', -- anno_nacimiento
'2006', -- anno_fundacion
'2025/05/11 09:30:35.499', -- fecha_hora_salida
'2025/05/13 10:10:30.500', -- fecha_hora_llegada
DEFAULT, -- fecha_hora_actual
'2025/05/11 13:15:53.345621', -- timepo_llegada
'25', -- edad
NOW(),
NOW()
)