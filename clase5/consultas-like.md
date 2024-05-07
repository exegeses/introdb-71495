# Consultas de coincidencia (que contenga una cadena de caracteres)

> las consultas de coincidencia se utilizan para obtener información que vamos a filtrar utilizando una cadena de caracteres
> Eso quiere decir que nuestro filtro va a explicitar que contenga una cadena de caracteres

> Traer nombre, precio y descripción
> de la tabla productos
> que en la columna descripción contenga la palabra 'Bluetooth'

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%Bluetooth%';  

> Utilizamos la palabra reservada **LIKE** 
> en combinación con el carácter de **%** (porcentaje).
> El símbolo de porcentaje funciona como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter

> Comodín de un solo carácter **_** (underscore o guión bajo)

    SELECT prdNombre, prdPrecio, prdDescripcion  
    FROM productos  
    WHERE prdNombre LIKE '_40 pro plus%';

    SELECT aerolinea, origen, destino  
      FROM vuelos  
      WHERE tramo LIKE '__16';

> Utilizamos el **_** (underscore o guión bajo) como un comodín de un solo carácter
> 