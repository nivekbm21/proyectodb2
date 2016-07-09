CREATE DATABASE Proyecto_BD2;

USE Proyecto_BD2;

CREATE TABLE Padron_Electoral (
    Cedula INT NOT NULL PRIMARY KEY,
    Codigo_Electoral INT NOT NULL,
    Sexo VARCHAR(10) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Junta_Receptora_Votos INT,
    Nombre VARCHAR(250) NOT NULL,
    Apellido1 VARCHAR(250) NOT NULL,
    Apellido2 VARCHAR(250) NOT NULL
);
CREATE TABLE Estados_Ingreso (
    ID_Estado_Ingreso INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Estado VARCHAR(20) NOT NULL
);

CREATE TABLE Tipo_Acceso_Usuario (
    ID_Acceso INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE Puesto (
    ID_Puesto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Descripcion_Puesto VARCHAR(50) NOT NULL
);

CREATE TABLE Tipo_Cliente (
    ID_Tipo_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Tipo VARCHAR(20) NOT NULL
);

CREATE TABLE Tipo_Telefono (
    ID_Tipo_Telefono INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Telefono VARCHAR(20) NOT NULL
);

CREATE TABLE Estado (
    ID_Estado INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Estado VARCHAR(20)
);

CREATE TABLE Usuario (
    ID_Usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Cedula INT NOT NULL,
    Contrasena VARCHAR(50),
    ID_Tipo_Acceso INT NOT NULL,
    Puesto INT NOT NULL,
    ID_Estado INT NOT NULL,
    FOREIGN KEY (Cedula)
        REFERENCES Padron_Electoral (Cedula)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Tipo_Acceso)
        REFERENCES Tipo_Acceso_Usuario (ID_Acceso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Puesto)
        REFERENCES Puesto (ID_puesto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Estado)
        REFERENCES Estado (ID_Estado)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Bitacora (
    ID_Usuario INT NOT NULL,
    Fecha_Ingreso DATE NOT NULL,
    ID_Estado_Ingreso INT NOT NULL,
    FOREIGN KEY (ID_Estado_Ingreso)
        REFERENCES Estados_Ingreso (ID_Estado_Ingreso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Usuario)
        REFERENCES Usuario (ID_Usuario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Direccion (
    Cedula INT NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    FOREIGN KEY (Cedula)
        REFERENCES Padron_Electoral (Cedula)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Telefono (
    ID_Telefono INT AUTO_INCREMENT PRIMARY KEY,
    Cedula INT NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    ID_Tipo_Telefono INT NOT NULL,
    ID_Estado INT NOT NULL,
    FOREIGN KEY (Cedula)
        REFERENCES Padron_Electoral (Cedula)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Tipo_Telefono)
        REFERENCES Tipo_Telefono (ID_Tipo_Telefono)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Estado)
        REFERENCES Estado (ID_Estado)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Vendedor (
    ID_Vendedor INT AUTO_INCREMENT PRIMARY KEY,
    Cedula INT NOT NULL,
    Comision INT NOT NULL,
    Horario VARCHAR(50) NOT NULL,
    ID_Estado_Vendedor INT NOT NULL,
    FOREIGN KEY (Cedula)
        REFERENCES Padron_Electoral (Cedula)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Estado_Vendedor)
        REFERENCES Estado (ID_Estado)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Cedula INT NOT NULL,
    ID_Tipo_Cliente INT NOT NULL,
    Observaciones VARCHAR(50) NOT NULL,
    FOREIGN KEY (Cedula)
        REFERENCES Padron_Electoral (Cedula)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Tipo_Cliente)
        REFERENCES Tipo_Cliente (ID_Tipo_Cliente)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Proveedor (
    ID_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Cedula INT NOT NULL,
    Nombre_Empresa VARCHAR(20) NOT NULL,
    Direccion_Empresa VARCHAR(100) NOT NULL,
    Numero_Cuente INT NOT NULL,
    FOREIGN KEY (Cedula)
        REFERENCES Padron_Electoral (Cedula)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Producto (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Producto VARCHAR(20) NOT NULL,
    Cantidad_Existentes INT NOT NULL,
    Descripcion VARCHAR(50) NOT NULL,
    Precio_Unitario INT NOT NULL,
    ID_Estado INT NOT NULL,
    ID_Proveedor INT NOT NULL,
    FOREIGN KEY (ID_Estado)
        REFERENCES Estado (ID_Estado)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Proveedor)
        REFERENCES Proveedor (ID_Proveedor)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Factura (
    ID_Factura INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    ID_Vendedor INT NOT NULL,
    Subtotal INT NOT NULL,
    Impuesto INT NOT NULL,
    Descuento INT,
    Total INT NOT NULL,
    Fecha_Factura DATE NOT NULL,
    FOREIGN KEY (ID_Cliente)
        REFERENCES Cliente (ID_Cliente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Vendedor)
        REFERENCES Vendedor (ID_Vendedor)
);

CREATE TABLE Detalle_Factura (
    ID_Factura INT NOT NULL,
    Cantidad INT NOT NULL,
    IP_Producto INT NOT NULL,
    Total_Producto INT NOT NULL,
    FOREIGN KEY (ID_Factura)
        REFERENCES Factura (ID_Factura)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (IP_Producto)
        REFERENCES Producto (ID_Producto)
);