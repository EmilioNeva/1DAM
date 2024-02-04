-- Ejemplo 1
#SELECT * FROM resultado LIMIT 5;

-- Ejemplo 2
#SELECT * FROM resultado LIMIT 5,5;
#SELECT * FROM resultado LIMIT 5 OFFSET 5;
-- Ejemplo 3
#SELECT * FROM resultado LIMIT 10,5;
SELECT * FROM resultado LIMIT 5 OFFSET 10;