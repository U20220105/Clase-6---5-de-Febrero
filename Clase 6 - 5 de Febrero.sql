-- ============================================
-- UNIVERSIDAD DE ORIENTE
-- PROGRAMACIÓN ORIENTADA A OBJETOS
-- GUÍA COMPLETA: MySQL Workbench - Ejercicios
-- ============================================

-- ============================================
-- 1. CREACIÓN DE BASE DE DATOS
-- ============================================
CREATE DATABASE escuela;
USE escuela;

-- ============================================
-- 2. CREACIÓN DE TABLAS
-- ============================================

-- Tabla: alumno
CREATE TABLE alumno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    edad INT,
    correo VARCHAR(100)
);

-- Tabla: cursos
CREATE TABLE cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre_curso VARCHAR(100),
    creditos INT,
    profesor VARCHAR(100)
);

-- ============================================
-- 3. INSERCIÓN DE DATOS
-- ============================================

-- Datos para tabla alumno
INSERT INTO alumno (nombre, edad, correo) VALUES
('Juan Pérez', 20, 'juan@email.com'),
('María López', 17, 'maria@email.com'),
('Carlos Gómez', 22, 'carlos@email.com'),
('Ana Martínez', 19, 'ana@email.com'),
('Pedro Rodríguez', 21, 'pedro@email.com'),
('Laura Fernández', 18, 'laura@email.com'),
('Diego Silva', 16, 'diego@email.com'),
('Sofía Torres', 23, 'sofia@email.com');

-- Datos para tabla cursos
INSERT INTO cursos (nombre_curso, creditos, profesor) VALUES
('Programación Orientada a Objetos', 4, 'Dr. García'),
('Base de Datos', 4, 'Dra. Morales'),
('Estructuras de Datos', 3, 'Ing. Ramírez'),
('Desarrollo Web', 3, 'Lic. Hernández'),
('Redes de Computadoras', 4, 'Dr. García'),
('Inteligencia Artificial', 5, 'Dra. Morales');

-- ============================================
-- 4. CONSULTAS BÁSICAS
-- ============================================

-- 4.1 Consultar todos los registros
SELECT * FROM alumno;
SELECT * FROM cursos;

-- 4.2 Consultar columnas específicas
SELECT nombre, correo FROM alumno;
SELECT nombre_curso, creditos FROM cursos;

-- 4.3 Consultas con condición WHERE
SELECT * FROM alumno WHERE edad >= 18;
SELECT * FROM alumno WHERE edad < 18;
SELECT * FROM cursos WHERE creditos >= 4;
SELECT * FROM cursos WHERE profesor = 'Dr. García';

-- ============================================
-- 5. CONSULTAS AVANZADAS
-- ============================================

-- 5.1 Ordenar resultados
SELECT * FROM alumno ORDER BY edad DESC;
SELECT * FROM alumno ORDER BY nombre ASC;
SELECT * FROM cursos ORDER BY creditos DESC;
SELECT * FROM cursos ORDER BY nombre_curso ASC;

-- 5.2 Limitar resultados
SELECT * FROM alumno LIMIT 3;
SELECT * FROM alumno ORDER BY edad DESC LIMIT 5;
SELECT * FROM cursos LIMIT 4;

-- 5.3 Buscar patrones con LIKE
SELECT * FROM alumno WHERE nombre LIKE 'Mar%';
SELECT * FROM alumno WHERE nombre LIKE '%ez';
SELECT * FROM alumno WHERE correo LIKE '%@email.com';
SELECT * FROM cursos WHERE nombre_curso LIKE '%Datos%';
SELECT * FROM cursos WHERE profesor LIKE 'Dr.%';

-- 5.4 Múltiples condiciones (AND, OR)
SELECT * FROM alumno WHERE edad >= 18 AND nombre LIKE 'A%';
SELECT * FROM alumno WHERE edad < 18 OR edad > 21;
SELECT * FROM cursos WHERE creditos >= 4 AND profesor = 'Dr. García';
SELECT * FROM cursos WHERE profesor = 'Dra. Morales' OR creditos = 5;

-- 5.5 Operadores de comparación
SELECT * FROM alumno WHERE edad BETWEEN 18 AND 21;
SELECT * FROM alumno WHERE edad IN (18, 20, 22);
SELECT * FROM cursos WHERE creditos NOT IN (3);

-- 5.6 Funciones de agregación
SELECT COUNT(*) FROM alumno;
SELECT COUNT(*) FROM alumno WHERE edad >= 18;
SELECT AVG(edad) AS edad_promedio FROM alumno;
SELECT MAX(edad) AS edad_maxima FROM alumno;
SELECT MIN(edad) AS edad_minima FROM alumno;
SELECT SUM(creditos) AS total_creditos FROM cursos;

-- 5.7 Agrupar datos (GROUP BY)
SELECT edad, COUNT(*) AS cantidad FROM alumno GROUP BY edad;
SELECT profesor, COUNT(*) AS cursos_impartidos FROM cursos GROUP BY profesor;
SELECT creditos, COUNT(*) AS cantidad_cursos FROM cursos GROUP BY creditos;

-- 5.8 Filtrar grupos (HAVING)
SELECT profesor, COUNT(*) AS total_cursos 
FROM cursos 
GROUP BY profesor 
HAVING COUNT(*) > 1;

-- ============================================
-- 6. COMANDOS DE UTILIDAD
-- ============================================

-- Ver estructura de tablas
DESCRIBE alumno;
DESCRIBE cursos;

-- ============================================
-- 7. MODIFICACIÓN DE DATOS
-- ============================================

-- Actualizar registros
UPDATE alumno SET correo = 'juanperez@universidad.com' WHERE id = 1;
UPDATE cursos SET creditos = 5 WHERE id_curso = 3;

-- Agregar nueva columna
ALTER TABLE alumno ADD COLUMN carrera VARCHAR(100);
ALTER TABLE alumno ADD COLUMN semestre INT;

-- Actualizar nuevas columnas
UPDATE alumno SET carrera = 'Ingeniería en Sistemas', semestre = 5 WHERE id = 1;
UPDATE alumno SET carrera = 'Ingeniería Civil', semestre = 3 WHERE id = 2;
UPDATE alumno SET carrera = 'Ingeniería en Sistemas', semestre = 7 WHERE id = 3;

-- ============================================
-- 8. CONSULTAS DE PRÁCTICA
-- ============================================

-- Ejercicio 1: Alumnos mayores de edad ordenados por nombre
SELECT nombre, edad FROM alumno WHERE edad >= 18 ORDER BY nombre ASC;

-- Ejercicio 2: Cursos de más de 3 créditos
SELECT nombre_curso, creditos, profesor FROM cursos WHERE creditos > 3;

-- Ejercicio 3: Edad promedio de los alumnos
SELECT AVG(edad) AS edad_promedio FROM alumno;

-- Ejercicio 4: Total de créditos por profesor
SELECT profesor, SUM(creditos) AS total_creditos FROM cursos GROUP BY profesor;

-- Ejercicio 5: Alumnos cuyo nombre empieza con vocal
SELECT * FROM alumno WHERE nombre LIKE 'A%' OR nombre LIKE 'E%' OR nombre LIKE 'I%' OR nombre LIKE 'O%' OR nombre LIKE 'U%';

-- Ejercicio 6: Cursos ordenados por créditos y nombre
SELECT * FROM cursos ORDER BY creditos DESC, nombre_curso ASC;

-- Ejercicio 7: Contar alumnos por rango de edad
SELECT 
    CASE 
        WHEN edad < 18 THEN 'Menor de edad'
        WHEN edad BETWEEN 18 AND 21 THEN '18-21 años'
        ELSE 'Mayor de 21'
    END AS rango_edad,
    COUNT(*) AS cantidad
FROM alumno
GROUP BY rango_edad;

-- ============================================
-- 9. ELIMINACIÓN DE DATOS (CUIDADO)
-- ============================================

-- Eliminar un registro específico
-- DELETE FROM alumno WHERE id = 7;

-- Eliminar registros con condición
-- DELETE FROM alumno WHERE edad < 16;

-- ============================================
-- 10. LIMPIEZA (OPCIONAL - CUIDADO)
-- ============================================

-- Vaciar tabla (eliminar todos los registros)
-- TRUNCATE TABLE alumno;

-- Eliminar tabla
-- DROP TABLE cursos;

-- Eliminar base de datos
-- DROP DATABASE escuela;

-- ============================================
-- FIN DE LA PLANTILLA
-- ============================================