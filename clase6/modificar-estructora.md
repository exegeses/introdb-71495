# Cómo modificar la estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla    
      CHANGE nombreActual nombreNuevo tipoDato;  

    ALTER TABLE personas  
      CHANGE alta fecha date not null; 

## Cambiar tipo de dato de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato;  

    ALTER TABLE personas  
      MODIFY apellido varchar(45) not null;

## Agregar una nueva columna al final

    ALTER TABLE nombreTabla  
      ADD nombreColumna tipoDato;  

    ALTER TABLE personas   
      ADD notas varchar(500);  

## Agregar una nueva columna al después de una columna existente

    ALTER TABLE nombreTabla  
      ADD nombreColumnaNueva tipoDato  
      AFTER nombreColumnaExistente;

    ALTER TABLE personas   
      ADD notas varchar(500)
      AFTER dni;  

## Eliminar una columna  

    ALTER TABLE nombreTabla  
      DROP nombreColumna;  

    ALTER TABLE personas   
      DROP notas;

## Agregar Foreign Key  

    ALTER TABLE nombreTabla  
      ADD FOREIGN KEY ( idFK ) REFERENCES otraTabla ( idPK );

## Agregar Foreign Key (con nombre)

    ALTER TABLE nombreTabla  
      ADD CONSTRAINT nombreFK 
      FOREIGN KEY ( idFK ) REFERENCES otraTabla ( idPK );  

    alter table company 
    add constraint Company_Country 
    foreign key(CountryID) references Country(CountryID);


## Eliminar Foreign Key (con nombre)

    ALTER TABLE nombreTabla  
      DROP FOREIGN KEY nombreFK;  

    alter table company 
    DROP foreign key Company_Country;  

## Cambiar el nombre de una tabla

    RENAME TABLE nombreActual TO nombreNuevo;

    RENAME TABLE porducto TO productos;

