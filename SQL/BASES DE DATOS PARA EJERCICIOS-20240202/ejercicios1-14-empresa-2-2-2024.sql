/* 4.1.- Determinar el salario máximo para el conjunto de todos los empleados. */
-- SELECT MAX(SALAR) FROM temple;

/* 4.2.- Averiguar el salario máximo para los empleados del departamento 100. */
-- SELECT MAX(SALAR) FROM temple WHERE NUMDE=100;

/* 4.4.- Hallar el nombre, la fecha de ingreso y los días trabajados hasta la fecha
actual de cada empleado del departamento 110, de mayor a menor. */
-- SELECT NOMEM, FECIN, DATEDIFF(now(),FECIN) AS "Días trabajados" FROM temple WHERE NUMDE=110 ORDER BY "Días trabajados" DESC;

/* 4.5.- Averiguar, de cada empleado del departamento 110: el nombre, la fecha de ingreso y los días trabajados hasta el 01-11-2010,
 ordenados de más a menos antigüedad. */
-- SELECT NOMEM, FECIN, DATEDIFF('2010-11-1',FECIN) AS "Días has 1-11-2010" FROM temple WHERE NUMDE=110 ORDER BY "Días has 1-11-2010" DESC;

/* 4.6.- Obtener el número de semanas de diferencia entre el empleado que entró primero y el que entró último en 1988. */
-- SELECT DATEDIFF((DATEDIFF(now(),FECIN),DATEDIFF(NOW(),(SELECT FECIN FROM TEMPLE WHERE )) AS "Semanas trabajadas" FROM temple;
-- No funciona
/* 4.7.- Determinar la edad en años cumplidos del empleado más viejo del departamento 110. */
-- SELECT NOMEM, FECNA, truncate(DATEDIFF(now(),FECNA)/365.25,0) AS "Edad" FROM temple WHERE NUMDE=110 ORDER BY "Edad" DESC LIMIT 1;

/* 4.8.- Contar el número de empleados de la empresa. */
-- SELECT COUNT(*) AS "NÚMERO DE EMPLEADOS" FROM TEMPLE;

/* 4.9.- Hallar el número de empleados y de extensiones telefónicas (téngase en cuenta que muchos empleados comparten teléfono) del departamento 112. */
-- SELECT COUNT(*), count(DISTINCT extel) FROM temple WHERE NUMDE=112;

/* 4.10.- Calcular cuántos empleados hay cuya fecha de nacimiento sea anterior al año 1980. */
-- SELECT count(*) AS "Emp_mayores_1980" FROM temple WHERE year(FECNA)<1980;

/* 4.11.- Conseguir del departamento 112: el número de empleados, cuántos cobran comisión, y la suma y la media de sus comisiones. */
-- SELECT COUNT(*) AS "N_EMPLEADOS",COUNT(distiNCT COMIS) AS "COBRAN_COMISION", sum(COMIS) AS "SUMA", avg(COMIS) AS "MEDIA" FROM temple WHERE NUMDE=112;

/* 4.12.- Calcular cuántas comisiones diferentes hay y su valor medio */
-- SELECT COUNT(DISTINCT COMIS), AVG(COMIS) FROM TEMPLE;

/* 4.13.- Determinar la edad media de los empleados del departamento 100. */
-- SELECT truncate(AVG(DATEDIFF(now(),FECNA)/365.25),0) FROM TEMPLE WHERE NUMDE=100;

/* 4.14.- Obtener la media del nº de hijos de los empleados del departamento 123 */
-- SELECT AVG(NUMHI) AS "media_hijos" FROM TEMPLE WHERE NUMDE=123;