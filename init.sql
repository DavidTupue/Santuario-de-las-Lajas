CREATE DATABASE mi_base_de_datos;
USE santuario_web;

CREATE TABLE comentarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  email VARCHAR(100),
  pais VARCHAR(100),
  comentario TEXT,
  estado ENUM('en_espera', 'aprobado', 'rechazado') DEFAULT 'en_espera',
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE eventos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255),
  descripcion TEXT,
  fecha_evento DATE,
  imagen VARCHAR(255),
  fecha_creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contactos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  email VARCHAR(100),
  fecha_visita DATE,
  mensaje TEXT,
  respondido BOOLEAN DEFAULT FALSE
);

CREATE TABLE admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE recomendaciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre_entidad VARCHAR(150) NOT NULL,
  tipo_entidad ENUM('Hotel', 'Restaurante', 'Agencia de viajes', 'Otro') NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  correo VARCHAR(100) NOT NULL,
  telefono VARCHAR(50) NOT NULL,
  descripcion TEXT DEFAULT NULL,
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
