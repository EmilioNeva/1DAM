-- Ejercicio 1
#SELECT * FROM alumno WHERE id=1;

-- Ejercicio 2
#SELECT * FROM alumno WHERE teléfono=692735409;

-- Ejercicio 3
#SELECT * FROM alumno WHERE es_repetidor='sí';

-- Ejercicio 4
#SELECT * FROM alumno WHERE NOT es_repetidor='sí';
#SELECT * FROM alumno WHERE es_repetidor='no';

-- Ejercicio 5
#SELECT * FROM alumno WHERE fecha_nacimiento<'1993/01/01';

-- Ejercicio 1 BETWEEN
#SELECT * FROM alumno WHERE fecha_nacimiento BETWEEN '1998/01/01' AND '1998/05/31';

-- Ejercicio 2 BETWEEN
#SELECT * FROM alumno WHERE fecha_nacimiento NOT BETWEEN '1998/01/01' AND '1998/05/31';