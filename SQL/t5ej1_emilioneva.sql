-- EJERCICIOS FUNCIONES

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

-- EJERCICIOS FECHAS

/*1. Devuelva un listado con cuatro columnas, donde aparezca en la primera columna la fecha de nacimiento
completa de los alumnos, en la segunda columna el día, en la tercera el mes y en la cuarta el año. Utilice
las funciones DAY, MONTH y YEAR. */
/*
SELECT fecha_nacimiento, 
	DAY(fecha_nacimiento) AS 'Día',
    MONTH(fecha_nacimiento) AS 'Mes',
    YEAR(fecha_nacimiento) AS 'Año'
FROM alumno; 
*/

/*2. Devuelva un listado con tres columnas, donde aparezca en la primera columna la fecha de nacimiento de
los alumnos, en la segunda el nombre del día de la semana de la fecha de nacimiento y en la tercera el
nombre del mes de la fecha de nacimiento.
• Resuelva la consulta utilizando las funciones DAYNAME y MONTHNAME.
• Resuelva la consulta utilizando la función DATE_FORMAT. */
/*
SELECT fecha_nacimiento, 
	DAYNAME(fecha_nacimiento) AS 'Nombre del día',
    MONTHNAME(fecha_nacimiento) AS 'Nombre del mes'
FROM alumno;
*/
/*
SELECT fecha_nacimiento, 
	DATE_FORMAT(fecha_nacimiento, '%W') AS 'Nombre del día',
    DATE_FORMAT(fecha_nacimiento, '%M') AS 'Nombre del mes'
FROM alumno;
*/

/*3. Devuelva un listado con dos columnas, donde aparezca en la primera columna la fecha de nacimiento de
los alumnos y en la segunda columna el número de días que han pasado desde la fecha actual hasta la
fecha de nacimiento. Utilice lasfuncionesDATEDIFFyNOW.Consulte la documentación oficial de MySQL
para DATEDIFF.*/
/*
SELECT fecha_nacimiento, DATEDIFF(NOW(),fecha_nacimiento) AS 'Diferencia hasta hoy' FROM alumno;
*/

/*4. Devuelva un listado con dos columnas, donde aparezca en la primera columna la fecha de nacimiento
de los alumnos y en la segunda columna la edad de cada alumno/a. La edad (aproximada) la podemos
calcular realizando las siguientes operaciones:
• Calcula el número de días que han pasado desde la fecha actual hasta la fecha de nacimiento. Utilice las
funciones DATEDIFF y NOW.
• Divida entre 365.25 el resultado que ha obtenido en el paso anterior. (El 0.25 es para compensar los años
bisiestos que han podido existir entre la fecha de nacimiento y la fecha actual).
• Trunca las cifras decimales del número obtenido */
/*
SELECT fecha_nacimiento, TRUNCATE(DATEDIFF(NOW(),fecha_nacimiento)/365.25,0) AS 'Edad' FROM alumno;
*/
