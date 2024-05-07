# Vistas
/*
  En el caso en que necesitemos realizar algunas consultas de manera repetitiva.
  Podemos almacenar esa consulta dentro de la base de datos
   !! NOTA: Parece una tabla independiente, pero en realidad no lo es
*/

CREATE VIEW lista_precios
    AS
    SELECT 	idProducto AS id,
              prdNombre AS Producto,
              prdPrecio AS Contado,
              prdPrecio * 1.05 AS Lista,
              mkNombre AS Marca,
              catNombre AS Categoría
    FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria
    ORDER BY id;

-- llamado a una vista
SELECT * FROM lista_precios;

-- Obtener listado de todas las vistas en una base de datos
SHOW FULL TABLES
    IN introdb
    WHERE Table_type = 'VIEW';

