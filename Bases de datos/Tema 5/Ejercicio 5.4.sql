-- Ejercicio 5.4
-- Tema 5
-- Ángel García Pérez

-- 1.

DROP DATABASE IF EXISTS tipos_datos_string;
CREATE DATABASE IF NOT EXISTS tipos_datos_string;

-- 2.

DROP TABLE IF EXISTS tipos_datos_string;

-- 3.

CREATE TABLE tipos_datos_string(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
codigo_postal CHAR(5),
telefono CHAR(13),
apellidos VARCHAR(50),
nombre VARCHAR(20),
nombre_acronimo VARCHAR(3),
historial TEXT,
direccion_postal CHAR(25),
provincia VARCHAR(15),
observaciones TEXT,
contenido_libro LONGTEXT,
categoría SET('Primera', 'Segunda', 'Tercera', 'Regional')
);

-- 4.

INSERT INTO tipos_datos_string VALUES
(
NULL,
'11600',
'34888999777',
'Díaz Vázquez',
'Héctor',
'HDV',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Calle Calvario 18',
'Cádiz',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Primaria'
)

-- 5.

INSERT INTO tipos_datos_string VALUES
(
NULL,
'11600',
'34999888777',
'Gonzalez Romero',
'Juan',
'JGR',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Calle Calvario 16',
'Cádiz',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Segunda'
)

-- 6.

INSERT INTO tipos_datos_string VALUES
(
NULL,
'11600',
'34777888999',
'Toro Romero',
'Jesús',
'JTR',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Calle Villaluenga 15',
'Cádiz',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (anónimo) usó una galera de tipos y los mezcló de tal manera que logró fabricar un libro de muestras tipográficas. No sólo sobrevivió cinco siglos, sino que también ingresó a la composición tipográfica electrónica, permaneciendo esencialmente inalterado. Se popularizó en la década de 1960 con la publicación de las hojas Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con el uso de software de autoedición como Aldus PageMaker, que incluía versiones de Lorem Ipsum.',
'Tercera'
)

