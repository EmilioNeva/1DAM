/*
1. Devuelve un listado con dos columnas, donde aparezca en la primera columna el nombre de los alumnos
y en la segunda, el nombre con todos los caracteres invertidos.
*/
#SELECT nombre, REVERSE(nombre) AS 'nombre_invertido' FROM alumno;

/*
2. Devuelve un listado con dos columnas, donde aparezca en la primera columna el nombre y los apellidos
de los alumnos y en la segunda, el nombre y los apellidos con todos los caracteres invertidos.
*/
#SELECT CONCAT_WS(' ',nombre, apellido1, apellido2) AS 'nom_apellidos', REVERSE(CONCAT_WS(' ',apellido2,apellido1,nombre)) AS 'nom_ape_invertido' FROM alumno;

/*
3. Devuelve un listado con dos columnas, donde aparezca en la primera columna el nombre y los apellidos
de los alumnos en mayúscula y en la segunda, el nombre y los apellidos con todos los caracteres inverti‑
dos en minúscula.
*/
#SELECT UPPER(CONCAT_WS(' ',nombre, apellido1, apellido2)) AS 'nom_ape_mayus', REVERSE(LOWER(CONCAT_WS(' ',apellido2,apellido1,nombre))) AS 'nom_ape_invertido' FROM alumno;

/*
4. Devuelve un listado con tres columnas, donde aparezca en la primera columna el nombre y los apellidos
de los alumnos, en la segunda, el número de caracteres que tiene en total el nombre y los apellidos y en
la tercera el número de bytes que ocupa en total.
*/
#SELECT CONCAT_WS(' ',nombre, apellido1, apellido2) AS 'nom_apellidos', CHAR_LENGTH(CONCAT(nombre, apellido1, apellido2)) AS 'num_caracteres', LENGTH(CONCAT(nombre, apellido1, apellido2)) AS 'num_bytes' FROM alumno;
/*
5. Devuelve un listado con dos columnas, donde aparezca en la primera columna el nombre y los dos apelli‑
dos de los alumnos. En la segunda columna se mostrará una dirección de correo electrónico que vamos a
calcular para cada alumno. La dirección de correo estará formada por el nombre y el primer apellido, se‑
parados por el carácter . y seguidos por el dominio @iescelia.org. Tenga en cuenta que la dirección
de correo electrónico debe estar en minúscula. Utilice un alias apropiado para cada columna.
*/
#SELECT CONCAT_WS(' ',nombre, apellido1, apellido2) AS 'nom_apellidos', LOWER(CONCAT(nombre,'.', apellido1,'@iescelia.org')) AS 'correo_electronico' FROM alumno;
/*
6. Devuelve un listado con tres columnas, donde aparezca en la primera columna el nombre y los dos apelli‑
dos de los alumnos. En la segunda columna se mostrará una dirección de correo electrónico que vamos
a calcular para cada alumno. La dirección de correo estará formada por el nombre y el primer apellido,
separados por el carácter . y seguidos por el dominio @iescelia.org. Tenga en cuenta que la direc‑
ción de correo electrónico debe estar en minúscula. La tercera columna será una contraseña que vamos
a generar formada por los caracteres invertidos del segundo apellido, seguidos de los cuatro caracteres
del año de la fecha de nacimiento. Utilice un alias apropiado para cada columna.
*/
/*
SELECT 	CONCAT_WS(' ',nombre, apellido1, apellido2) AS 'nom_apellidos',
		LOWER(CONCAT(nombre,'.', apellido1,'@iescelia.org')) AS 'correo_electronico',
		CONCAT(REVERSE(apellido2), SUBSTR(fecha_nacimiento,1,4)) AS 'contraseña' 
FROM alumno;
*/