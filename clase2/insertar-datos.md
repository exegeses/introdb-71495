# Insertar datos en una tabla

> En SQL tenemos tres maneras de insertar datos en una tabla

## Sintáxis usando **SET**

    INSERT INTO nombretabla 
        SET     
            nombreColumna = valor,  
            nombreColumna2 = valor2,    
            nombreColumna3 = valor3,    
            nombreColumna4 = valor4;    

> Ejemplo práctico: 

    INSERT INTO personas    
        SET 
            id = 1, 
            apellido = 'García',    
            nombre = 'Javier',  
            dni = 25852410, 
            alta = '2008-12-12';
 
    INSERT INTO personas    
        SET
            apellido = 'González',
            nombre = 'Mónica',  
            dni = 36520147, 
            alta = '2005-09-30';


## Sintáxis completa ( se mencionan las columas )

    INSERT INTO nombretabla  
        ( col2, col3, col5 )  
      VALUES  
        ( valor2, valor3, valor5 );  

> Ejemplo práctico: 

    INSERT INTO personas    
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );   


## Sintáxis simplificada ( NO se mencionan las columas )

    INSERT INTO nombretabla  
      VALUES  
        ( valID, valor2, valor3, valor4, valor5 );  

> Ejemplo práctico: 

    INSERT INTO personas    
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );


---
### Inserción múltiple (varios registros en un solo **INSERT**)

> versión completa

    INSERT INTO personas 
        ( apellido, nombre, dni, alta ) 
      VALUES    
        ( 'Page', 'Jimmy', 18543219, '1954-01-09' ), 
        ( 'Plant', 'Robert', 18543220, '1960-01-09' ),
        ( 'Bonham', 'Bonzo', 18543221, '1960-01-09' ),
        ( 'Jones', 'John', 18543222, '1960-01-09' );

> versión simplificada 

    INSERT INTO personas
      VALUES    
        ( DEFAULT, 'Page', 'Jimmy', 18543219, '1954-01-09' ), 
        ( DEFAULT, 'Plant', 'Robert', 18543220, '1960-01-09' ),
        ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1960-01-09' ),
        ( DEFAULT, 'Jones', 'John', 18543222, '1960-01-09' );
