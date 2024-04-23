-- creación de tablas precios
-- para explicar la diferencia entre float y decimal

create table precios
(
    id tinyint unsigned primary key auto_increment not null,
    aproximado float unsigned not null,
    exacto decimal( 9, 2 ) unsigned not null
);

insert into precios
    values
        ( DEFAULT, 43.89, 19.99 ),
        ( DEFAULT, 19.99, 85.10 ),
        ( DEFAULT, 85.10, 30.4 ),
        ( DEFAULT, 30.4, 56 ),
        ( DEFAULT, 56, 70.6 ),
        ( DEFAULT, 70.6, 43.89 );

SELECT SUM(aproximado), SUM(exacto)
    FROM precios;

