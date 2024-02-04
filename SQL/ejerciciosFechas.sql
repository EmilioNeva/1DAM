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
