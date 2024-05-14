CREATE TABLE `categorias`(
    `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `catNombre` VARCHAR(45) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_catnombre_unique`(`catNombre`);

CREATE TABLE `productos`(
    `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `prdNombre` VARCHAR(45) NOT NULL,
    `prdPrecio` DECIMAL(8, 2) UNSIGNED NOT NULL,
    `idMarca` TINYINT UNSIGNED NOT NULL,
    `idCategoria` TINYINT UNSIGNED NOT NULL,
    `prdDescripcion` VARCHAR(1000) NOT NULL,
    `prdImagen` VARCHAR(45) NOT NULL,
    `prdActivo` TINYINT(1) NOT NULL
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_prdnombre_unique`(`prdNombre`);

CREATE TABLE `marcas`(
    `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `mkNombre` VARCHAR(45) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_mknombre_unique`(`mkNombre`);

CREATE TABLE `productos_proveedores`(
    `idPP` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `idProducto` MEDIUMINT UNSIGNED NOT NULL,
    `idProveedor` TINYINT UNSIGNED NOT NULL
);

CREATE TABLE `proveedores`(
    `idProveedor` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `prvNombre` VARCHAR(50) NOT NULL,
    `prvCUIT` BIGINT UNSIGNED NOT NULL,
    `prvTelefono` VARCHAR(20) NOT NULL,
    `prvDireccion` VARCHAR(50) NULL,
    `prvEmail` VARCHAR(100) NOT NULL
);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_prvnombre_unique`(`prvNombre`);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_prvcuit_unique`(`prvCUIT`);
ALTER TABLE
    `productos_proveedores` ADD CONSTRAINT `productos_proveedores_idproducto_foreign` FOREIGN KEY(`idProducto`) REFERENCES `productos`(`idProducto`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign` FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);
ALTER TABLE
    `productos_proveedores` ADD CONSTRAINT `productos_proveedores_idproveedor_foreign` FOREIGN KEY(`idProveedor`) REFERENCES `proveedores`(`idProveedor`);