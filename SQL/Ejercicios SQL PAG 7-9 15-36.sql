/* 15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma
 ascendente y en segundo lugar por el precio de forma descendente. */
-- SELECT nombre FROM producto ORDER BY nombre ASC;

-- SELECT nombre FROM producto ORDER BY nombre DESC;

-- SELECT nombre AS "ascendente", nombre AS "descendente" FROM producto ORDER BY nombre ASC,nombre DESC;

/* 16. Devuelve una lista con las 5 primeras filas de la tabla fabricante. */
-- SELECT * FROM fabricante LIMIT 5;

/* 17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante.
 La cuarta fila también se debe incluir en la respuesta. */
-- SELECT * FROM fabricante LIMIT 2 OFFSET 3;

/* 18. Lista el nombre y el precio del producto más barato. (Utilice solamente las
 cláusulasORDER BYyLIMIT) */
-- SELECT nombre,precio FROM producto ORDER BY precio LIMIT 1;

/* 19. Lista el nombre y el precio del producto más caro. (Utilice solamente las
 cláusulas ORDER BY y LIMIT) */
-- SELECT nombre,precio FROM producto ORDER BY precio DESC LIMIT 1;

/* 20. Lista el nombre de todos los productos del fabricante cuyo identificador de
 fabricante es igual a 2. */
-- SELECT nombre FROM producto WHERE id_fabricante=2;

/* 21. Lista el nombre de los productos que tienen un precio menor o igual a 120€. */
-- SELECT nombre FROM producto WHERE precio<=120;

/* 22. Lista el nombre de los productos que tienen un precio mayor o igual a 400€. */
-- SELECT nombre FROM producto WHERE precio>=400;

/* 23. Lista el nombre de los productos que no tienen un precio mayor o igual a 400€ */
-- SELECT nombre FROM producto WHERE NOT precio>=400;

/* 24. Lista todos los productos que tengan un precio entre 80€ y 300€.
 Sin utilizar el operador BETWEEN. */
-- SELECT * FROM producto WHERE precio>=80 && precio<=300;

/* 25. Lista todos los productos que tengan un precio entre 60€ y 200€.
 Utilizando el operador BETWEEN. */
-- SELECT * FROM producto WHERE precio BETWEEN 60 AND 200;

/* 26. Lista todos los productos que tengan un precio mayor que 200€ y 
que el identificador de fabricante sea igual a 6. */
-- SELECT * FROM producto WHERE precio>200 AND id_fabricante=6;

/* 27. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5.
 Sin utilizar el operador IN. */
-- SELECT * FROM producto WHERE id_fabricante=1 OR id_fabricante=3 OR id_fabricante=5;

/* 28. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5.
 Utilizando el operador IN */
-- SELECT * FROM producto WHERE id_fabricante IN (1,3,5);

/* 29. Lista el nombre y el precio de los productos en céntimos (Habrá quemultiplicar
 por 100 el valor del precio). Cree un alias para la columna que contiene el precio que
 se llame céntimos. */
-- SELECT nombre,precio*100 AS "céntimos" FROM producto;

/* 30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra S */
-- SELECT nombre FROM fabricante WHERE nombre LIKE 'S%';

/* 31. Lista los nombres de los fabricantes cuyo nombre termine por la vocal e. */
-- SELECT nombre FROM fabricante WHERE nombre LIKE '%e';

/* 32. Lista los nombres de los fabricantes cuyo nombre contenga el carácter w. */
-- SELECT nombre FROM fabricante WHERE nombre LIKE '%w%';

/* 33. Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres. */
-- SELECT nombre FROM fabricante WHERE nombre LIKE '____';

/* 34. Devuelve una lista con el nombre de todos los productos que contienen la
 cadena Portátil en el nombre. */
-- SELECT nombre FROM producto WHERE nombre LIKE '%Portátil%';

/* 35. Devuelve una lista con el nombre de todos los productos que contienen la
 cadena Monitor en el nombre y tienen un precio inferior a 215 €. */
-- SELECT nombre FROM producto WHERE nombre LIKE '%Monitor%' AND precio<215;

/* 36. Lista el nombre y el precio de todos los productos que tengan un precio 
mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden
descendente) y en segundo lugar por el nombre (en orden ascendente). */
-- SELECT nombre,precio FROM producto WHERE precio>=180 ORDER BY precio DESC, nombre ASC;