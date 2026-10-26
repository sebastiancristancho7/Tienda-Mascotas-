CREATE DATABASE IF NOT EXISTS tienda_mascotas
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE tienda_mascotas;

-- Tabla 1: categorías
CREATE TABLE categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(200)
);

-- Tabla 2: productos
CREATE TABLE productos (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL DEFAULT 0,
  id_categoria INT NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- Datos de ejemplo
INSERT INTO categorias (nombre, descripcion) VALUES
('Perros', 'Productos para perros'),
('Gatos', 'Productos para gatos'),
('Conejos', 'Productos para conejos');

INSERT INTO productos (nombre, precio, stock, id_categoria) VALUES
('Alimento para perro', 50000.00, 20, 1),
('Alimento para gato',  45000.00, 15, 2),
('Juguete para conejo', 20000.00, 30, 3);