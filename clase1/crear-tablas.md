# Crear tablas dentro de una base de datos

> Para crear una tabla 
> utilizamos el comando **CREATE TABLE***

> Sintáxis: 

    CREATE TABLE nombreTabla    
    (   
        nombreColumna1 tipoDato...,  
        nombreColumna2 tipoDato...,  
        nombreColumna3 tipoDato...,  
        nombreColumna4 tipoDato...
    );

> Ejemplo práctico: 

    CREATE TABLE personas    
    (   
        id tinyint unsigned ...,  
        apellido varchar(30)...,  
        nombre varchar(30)...,  
        dni int unsigned...,    
        alta date...    
    );  

