docker exec -it mysql mysql -uroot -p
# pass: Test1235

# Manejo de la DB

SHOW DATABASES;

CREATE DATABASE nombre_base_de_datos;

USE nombre_base_de_datos;

SHOW TABLES;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO usuarios (nombre, email) VALUES
  ('Juan', 'juan@example.com'),
  ('María', 'maria@example.com'),
  ('Pedro', 'pedro@example.com'),
  ('Laura', 'laura@example.com'),
  ('Carlos', 'carlos@example.com');

SELECT * FROM usuarios;