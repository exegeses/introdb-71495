create table proveedores
(
    idProveedor tinyint unsigned auto_increment primary key not null,
    prvNombre varchar(50) unique not null,
    prvCUIT bigint unsigned unique not null,
    prvTelefono varchar(20) not null,
    prvDireccion varchar(50),
    prvEmail varchar(100) not null
);

create table productos_proveedores
(
    idPP mediumint unsigned auto_increment primary key not null,
    idProducto mediumint unsigned not null,
    idProveedor tinyint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores(idProveedor)
);