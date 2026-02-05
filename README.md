# 📚 Guía de MySQL Workbench - Programación Orientada a Objetos

![MySQL](https://img.shields.io/badge/MySQL-8.0+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📖 Descripción

Guía completa paso a paso para estudiantes y principiantes que desean aprender SQL utilizando MySQL Workbench. Este repositorio contiene ejercicios prácticos para la creación de bases de datos, tablas y consultas SQL básicas e intermedias.

**Universidad de Oriente - Programación Orientada a Objetos**

## 🎯 Objetivos

- Aprender a crear bases de datos y tablas en MySQL
- Dominar consultas SQL básicas
- Practicar operaciones CRUD (Create, Read, Update, Delete)
- Aplicar buenas prácticas en diseño de bases de datos

## 🚀 Prerequisitos

- **MySQL Workbench** instalado ([Descargar aquí](https://dev.mysql.com/downloads/workbench/))
- **MySQL Server** 8.0 o superior
- Conocimientos básicos de SQL (opcional)

## 📂 Estructura del Proyecto
```
├── guia-basica.sql          # Guía original simplificada
├── plantilla-completa.sql   # Ejercicios completos y avanzados
└── README.md                # Este archivo
```

## 💻 Instalación y Uso

### 1️⃣ Clonar el repositorio
```bash
git clone https://github.com/tu-usuario/mysql-workbench-guia.git
cd mysql-workbench-guia
```

### 2️⃣ Abrir MySQL Workbench
- Conectarse a tu servidor MySQL local
- Abrir un nuevo Query Tab

### 3️⃣ Ejecutar los scripts
- Copiar el contenido de `plantilla-completa.sql`
- Ejecutar línea por línea o por secciones

## 📋 Contenido de la Guía

### ✅ Nivel Básico
- Creación de base de datos
- Creación de tablas con PRIMARY KEY y AUTO_INCREMENT
- Inserción de datos
- Consultas SELECT básicas
- Uso de WHERE

### ⚡ Nivel Intermedio
- ORDER BY y LIMIT
- LIKE para búsqueda de patrones
- Operadores lógicos (AND, OR)
- Funciones de agregación (COUNT, AVG, MAX, MIN, SUM)
- GROUP BY y HAVING
- UPDATE y ALTER TABLE

## 🎓 Ejemplos de Uso

### Crear y usar la base de datos
```sql
CREATE DATABASE escuela;
USE escuela;
```

### Crear tabla de alumnos
```sql
CREATE TABLE alumno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    edad INT,
    correo VARCHAR(100)
);
```

### Consulta básica
```sql
SELECT * FROM alumno WHERE edad >= 18;
```

## 🛠️ Tecnologías

- MySQL 8.0+
- MySQL Workbench 8.0+
- SQL

## 📚 Recursos Adicionales

- [Documentación oficial de MySQL](https://dev.mysql.com/doc/)
- [Tutorial de MySQL en W3Schools](https://www.w3schools.com/mysql/)
- [MySQL Workbench Manual](https://dev.mysql.com/doc/workbench/en/)

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para cambios importantes:

1. Haz un Fork del proyecto
2. Crea una rama para tu feature (`git checkout -b feature/NuevaCaracteristica`)
3. Commit tus cambios (`git commit -m 'Agregar nueva característica'`)
4. Push a la rama (`git push origin feature/NuevaCaracteristica`)
5. Abre un Pull Request

## 👥 Autores

- **Universidad de Oriente** - *Guía Original*
- **Tu Nombre** - *Implementación y Ejercicios*

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo LICENSE para más detalles.

## ⭐ Agradecimientos

- Profesores del curso de Programación Orientada a Objetos
- Comunidad de MySQL
- Estudiantes colaboradores

---

**¿Encontraste útil esta guía?** ¡Dale una ⭐ al repositorio!
