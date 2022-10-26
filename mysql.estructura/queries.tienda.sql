SELECT nombre FROM producto;
SELECT nombre,precio FROM producto;
DESC producto;
SELECT nombre,precio, ROUND((precio * 0.98),2) FROM producto;
SELECT nombre AS 'nombre de producto', precio AS euros, ROUND((precio*0.98),2) AS dolares FROM producto;
SELECT UPPER(nombre),precio FROM producto;
SELECT LOWER(nombre),precio FROM producto;
SELECT nombre, CONCAT(UPPER(LEFT(nombre,2))) FROM fabricante;
SELECT nombre, precio,ROUND(precio,0) FROM producto;

SELECT codigo_fabricante FROM producto;
SELECT DISTINCT(codigo_fabricante) FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre FROM producto ORDER BY nombre, precio;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 3,2;
SELECT nombre, precio FROM producto ORDER BY precio LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
SELECT fabricante.nombre, producto.nombre, producto.precio FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT fabricante.nombre, producto.nombre, producto.precio FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre;
SELECT producto.codigo,producto.nombre,fabricante.codigo,fabricante.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre,producto.precio,fabricante.nombre FROM producto JOIN fabricante ORDER BY producto.precio LIMIT 1;
SELECT producto.nombre,producto.precio,fabricante.nombre FROM producto JOIN fabricante ORDER BY producto.precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');
SELECT nombre, precio FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Crucial' AND producto.precio > 200);
-- 28 no resuelto
SELECT nombre FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus' OR 'Hewlett-Packard' OR 'Seagate');
-- 29 no resuelto
SELECT nombre FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre IN 'Asus' OR 'Hewlett-Packard' OR 'Seagate');
SELECT producto.nombre, producto.precio FROM producto JOIN fabricante ON fabricante.nombre LIKE '%e' AND producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre, producto.precio FROM producto JOIN fabricante ON fabricante.nombre LIKE '%w%' AND producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto JOIN fabricante ON producto.precio >= 180 AND producto.codigo_fabricante = fabricante.codigo ORDER BY producto.precio DESC, producto.nombre;
SELECT DISTINCT fabricante.codigo,fabricante.nombre FROM fabricante JOIN producto ON producto.codigo_fabricante = fabricante.codigo;
SELECT fabricante.nombre, producto.nombre FROM fabricante LEFT JOIN producto ON producto.codigo_fabricante = fabricante.codigo;
SELECT fabricante.nombre FROM fabricante JOIN producto ON producto.codigo_fabricante = fabricante.codigo AND producto.nombre IS NULL;
