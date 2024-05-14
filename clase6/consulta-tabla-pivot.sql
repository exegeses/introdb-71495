# consulta a través de una tabla intermedia (pivote)

-- traer el nombre de producto (productos)
-- traer el nombre de proveedor (prodores)

SELECT
        prdNombre AS Producto,
        prvNombre AS proveedor
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON proveedores.idProveedor = productos_proveedores.idProveedor
    ORDER BY productos.idProducto;


-- traer el nombre de producto (productos)
-- traer el precio de producto (productos)
-- traer el nombre de marca (marcas)
-- traer el nombre de categoria (categoría)
-- traer el nombre de proveedor (proveedores)

SELECT
    prdNombre AS Producto,
    prdPrecio AS Precio,
    mkNombre AS Marca,
    catNombre AS Categoría,
    prvNombre AS Proveedor
FROM productos
    JOIN marcas
        ON productos.idMarca = marcas.idMarca
    JOIN categorias
        ON productos.idCategoria = categorias.idCategoria
    JOIN productos_proveedores
        ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
        ON proveedores.idProveedor = productos_proveedores.idProveedor
ORDER BY productos.idProducto;

