-- init.sql

CREATE DATABASE IF NOT EXISTS tienda_perritos;

CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'admin123';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON tienda_perritos.* TO 'root'@'%';

FLUSH PRIVILEGES;

USE tienda_perritos;

CREATE TABLE IF NOT EXISTS
    productos 
    (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        descripcion VARCHAR(255),
        precio DECIMAL(10,2) NOT NULL,
        stock INT NOT NULL
    )
;

INSERT INTO
    productos (nombre, descripcion, precio, stock) 
    VALUES
        ('Alimento Cachorro Premium', 'Sabor pollo, razas pequeñas', 19990, 15),
        ('Alimento Adulto Light', 'Control de peso, razas medianas', 17990, 8),
        ('Snacks Dentales', 'Ayuda a la limpieza dental', 5990, 30)
;
