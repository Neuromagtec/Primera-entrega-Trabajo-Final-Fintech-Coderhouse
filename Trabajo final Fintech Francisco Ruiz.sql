CREATE TABLE `fintech`.`clientes` (
  `Id_clientes` INT NOT NULL,
  `Dni` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apelido` VARCHAR(45) NOT NULL,
  `Sucursal` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_clientes`))
COMMENT = 'Tabla que contiene los datos de los clientes';

CREATE TABLE `fintech`.`producto` (
  `idProducto` INT NOT NULL,
  `IdCliente` INT NOT NULL,
  `NombreProducto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProducto`));

CREATE TABLE `fintech`.`segmento` (
  `idSegmento` INT NOT NULL,
  `IdCliente` INT NOT NULL,
  `NombreSegmento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSegmento`));
