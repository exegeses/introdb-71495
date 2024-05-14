-- creación de tablas proveedores
create table proveedores
(
    idProveedor tinyint unsigned auto_increment primary key not null,
    prvNombre varchar(50) unique not null,
    prvCUIT bigint unsigned unique not null,
    prvTelefono varchar(20) not null,
    prvDireccion varchar(50),
    prvEmail varchar(100) not null
);

-- Inserción de datos
insert into proveedores
values
    ( DEFAULT, 'Proveedor de cámaras', 20111111112, 44444444, 'Dirección proveedor 1', 'info@mail.com' ),
    ( DEFAULT, 'Proveedor de Audio', 20222222222, 44444445, 'Dirección proveedor 2', 'info@mail.com' ),
    ( DEFAULT, 'Proveedor de Apple', 20333333332, 44444446, 'Dirección proveedor 3', 'info@mail.com' ),
    ( DEFAULT, 'Proveedor de todo un poco', 20444444442, 44444447, 'Dirección proveedor 4', 'info@mail.com' );
