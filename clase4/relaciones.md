# Relaciones entre tablas

> Si queremos consultar datos de dos o más tablas tenemos dos técnicas para lograrlo

## 1.- Table relation

> La técnica del **table relation** se logra mencionando en el listado de las tablas (después del **FROM**) 
> cada una de las tablas necesarias separadas por comas.
> Y luego mediante un filtro (**WHERE**) igualamos la columna en común
> La columna en común es la clave foránea de la primera tabla que se debe igualar contra la clave primaria de la segunda tabla.

> Sintáxis: 

    SELECT colTabla1, colTabla1, coltabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;


    SELECT aeropuerto, precio, nombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
       AND productos.idCategoria = categorias.idCategoria;


## 2.- JOIN

> En la técnica **JOIN** no se menciona en el listado de tablas (después del **FROM**) las tablas necesarias.
> Sólo se menciona la tabla principal
> Utilizamos la palabra reservada **JOIN** para mencionar la tabla secundaria
> Y finalizamos igualando la columna en común después de la palabra **ON**


> Sintáxis:

    SELECT colTabla1, colTabla1, coltabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;


    SELECT aeropuerto, precio, nombre  
      FROM destinos  
      JOIN regiones  
        ON destinos.idRegion = regiones.idRegion;

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;

