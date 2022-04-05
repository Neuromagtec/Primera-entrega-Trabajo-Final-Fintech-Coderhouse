CREATE SCHEMA BANCA;

USE BANCA;

-- Creado por Francisco Carlos Ruiz, 1era entrega del trabajo final. 
-- Se trata de una base de datos de clientes bancarios y usuarios Fintech con sus respectivos productos, sucursales, etc.
-- Ultima modificación 4/4/2022

-- tables
-- Table: Clientes_banca
CREATE TABLE Clientes_banca (
    id_cliente int NOT NULL,
    DNI int NOT NULL,
    nombre varchar(50) NOT NULL,
    apellido varchar (50) NOT NULL,
    Id_sucursal int NOT NULL,
    mail varchar (50) NULL,
    telefono int NULL,
    dirección varchar (50) NULL,
    CONSTRAINT PK_Clientes_Banca PRIMARY KEY (id_cliente)
);

-- Table: Segmento
CREATE TABLE SEGMENTO (
    id_cliente int NOT NULL,
	Nombre_Segmento varchar(50) NOT NULL,
    CONSTRAINT PK_Nombre_Segmento PRIMARY KEY (Nombre_Segmento)
);

-- Table: Sucursal
CREATE TABLE SUCURSAL (
ID_Sucursal int NOT NULL,
ID_Cliente Int NOT NULL,
Nombre_Sucursal varchar (50) NOT NULL,
CONSTRAINT PK_ID_Sucursal PRIMARY KEY (ID_Sucursal)
);

-- Table Producto
CREATE TABLE PRODUCTO (
Id_producto int NOT NULL,
ID_cliente Int NOT NULL,
Nombre varchar (50) NOT NULL,
CONSTRAINT PK_ID_producto PRIMARY KEY (ID_producto)
);

-- Table Clientes Fintech
CREATE TABLE Clientes_Fintech (
DNI int NOT NULL,
id_cliente int NULL,
Id_nombre varchar (50) NOT NULL,
apellido varchar (50) NOT NULL,
mail varchar (50) NOT NULL,
CONSTRAINT PK_DNI PRIMARY KEY (DNI)
);

-- References: Foreign Keys
-- Reference: FK tabla Clientes_Banca
ALTER TABLE Clientes_Banca
ADD FOREIGN KEY (Id_sucursal) REFERENCES Sucursal (Id_sucursal);

-- Reference: FK tabla segmento
ALTER TABLE Segmento
ADD FOREIGN KEY (Id_cliente) REFERENCES Clientes_banca (Id_cliente);

-- Reference: FK tabla Sucursal
ALTER TABLE Sucursal
ADD FOREIGN KEY (Id_cliente) REFERENCES Clientes_banca (Id_cliente);

-- Reference: FK tabla producto
ALTER TABLE PRODUCTO
ADD FOREIGN KEY (Id_cliente) REFERENCES Clientes_banca (Id_cliente);

-- Reference: FK tabla Clientes_fintech
ALTER TABLE Clientes_fintech
ADD FOREIGN KEY (Id_cliente) REFERENCES Clientes_banca (Id_cliente);

-- Fin script.




