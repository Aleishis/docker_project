CREATE TABLE zoo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40),
    especie VARCHAR(40),
    color VARCHAR(40)
);

INSERT INTO zoo (nombre, especie, color) VALUES
    ('Menfiz', 'Gato', 'Gris'),
    ('Pantera Rosa', 'Pantera', 'Rosa');