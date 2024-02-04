-- Ejercicio 1
 -- SELECT LOWER(CONCAT_WS(' ',nombre, apellido1, apellido2)) AS 'Nombres en minúscula' FROM alumno;
 
 -- Ejercicio 2
-- SELECT UPPER(CONCAT_WS(' ',nombre, apellido1, apellido2)) AS 'Nombres en mayúscula' FROM alumno;
 
-- SELECT UPPER(CONCAT(nombre,' ', apellido1,' ', apellido2)) AS 'Nombres en mayúscula' FROM alumno;

-- Ejercicio 3
 SELECT CONCAT(
    IFNULL(
    UPPER(CONCAT(nombre,' ', apellido1,' ', apellido2)),
    CONCAT_WS(' ',nombre, apellido1, apellido2)
    )
) AS ejercicio3
FROM alumno;
