# Consultas en SQL

## Consultas a servidor de base de datos

    -- listar todas las bases de datos  
    SHOW DATABASES; 

    -- listar las tablas dentro de una base de datos    
    SHOW TABLES;  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;

> La palabra reservada más importante o al menos la más utilizada para realizar consultas es la palabra **SELECT**  

    -- mostrar la base de datos activa  
    SELECT DATABASE();

## Consultas a tablas dentro de una base de datos

> Para realizar consultas a una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  

    SELECT * FROM regiones;  
    SELECT * FROM destinos;  

> Nota: Cuándo hacemos select*from nombretabla
> Lo que estamos trayendo es todos los registros de todas las columnas de una tabla

> Si queremos traer los datos de **algunas** columnas de una tabla tenemos que mencionar dichas columnas separadas por comas

    SELECT nombreColumna, nombreColumna   
      FROM nombreTabla;  

    SELECT aeropuerto, precio  
      FROM destinos;  

### Orden de resultados
> Para ordenar los resultados de una consulta 
> utilizamos **ORDER BY**

    SELECT * FROM regiones  
    ORDER BY idRegion;  

    SELECT aeropuerto, precio  
    FROM destinos  
    ORDER BY precio DESC;

    SELECT aeropuerto, precio  
    FROM destinos  
    ORDER BY idRegion, precio;  

### Filtrado de resultados
> Filtrar resultados de una consulta significa traer solamente los registros que cumplan con una condición dada.

> Para implementar un filtro utilizamos 
> la palabra reservada **WHERE** seguida de una condición

---
> Consigna: 
> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio  
    FROM destinos  
    WHERE precio <= 8000;

> Traer todos los destinos con un precio 
> entre 6600 y 8000

    SELECT aeropuerto, precio  
    FROM destinos  
    WHERE precio >= 6600  
    AND	precio <= 8000;

    SELECT aeropuerto, precio  
    FROM destinos  
    WHERE precio BETWEEN 6600 AND 8000;