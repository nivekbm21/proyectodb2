-- =============================================
-- Author:		Diego Sanchez, Kevin Blanco
-- Description:	Creacion de las base de datos necesarias para el funcionamiento del sistema.
-- No se incluye la inclusion del patron electoral dentro de la tabla
-- =============================================

CREATE DATABASE [Proyecto_BD2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_BD2', FILENAME = N'C:\SQL\Proyecto_BD2.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Proyecto_BD2_log', FILENAME = N'C:\SQL\Proyecto_BD2_log.ldf' , SIZE = 2048KB , FILEGROWTH = 10%)
GO
USE [Proyecto_BD2]
GO
create table Padron_Electoral(
	Cedula int not null constraint PK_Padron_Electoral_Cedula primary key,
	Sexo varchar(10) not null,
	Fecha_Nacimiento date not null,
	Nombre varchar(250) not null,
	Apellido1 varchar(250) not null,
	Apellido2 varchar(250) not null
)

create table Tipo_Acceso_Usuario(
	ID_Acceso int identity(1,1) constraint PK_TipoAccesoUsuarios_IDAcceso primary key,
	Nombre varchar(30) not null,
	Descripcion varchar(50) not null
);

create table Puesto(
	ID_Puesto int identity(1,1) constraint PK_Puesto_IDPuesto primary key,
	Nombre varchar(20) not null,
	Descripcion_Puesto varchar(50) not null
);

create table Tipo_Cliente(
	ID_Tipo_Cliente int identity(1,1) constraint PK_TipoCliente_IDTipoCliente primary key,
	Nombre_Tipo varchar(20)not null
);

create table Tipo_Telefono(
	ID_Tipo_Telefono int identity(1,1) constraint PK_TipoTelefono_IDTipoTelefono primary key,
	Tipo_Telefono varchar(20) not null
);

create table Estado (
	ID_Estado int identity(1,1) constraint PK_Estado_IDEstado Primary key,
	Nombre_Estado varchar(20)
);

create table Usuario (
	ID_Usuario int not null identity(1,1) constraint PK_Usuario_IDUsuario Primary key,
	Cedula int not null,
	[Contraseña]varchar(20),
	ID_Tipo_Acceso int not null,
	Puesto int not null,
	ID_Estado int not null
	constraint FK_Usuario_PatronElectoral_Cedula
	foreign key(Cedula) references Padron_Electoral(Cedula) on delete cascade on update cascade,
	constraint FK_Usuario_TipoAccesoUsuario_IDAcceso
	foreign key(ID_Tipo_Acceso) references Tipo_Acceso_Usuario(ID_Acceso) on delete cascade on update cascade,
	constraint FK_Usuario_Puesto_IDPuesto
	foreign key(Puesto) references Puesto(ID_puesto) on delete cascade on update cascade,
	constraint FK_Usuario_Estado_IDEstado
	foreign key(ID_Estado) references Estado(ID_Estado) on delete cascade on update cascade 
);

create table Direccion(
	Cedula int not null,
	Direccion varchar(100) not null
	constraint FK_Direccion_PadronElectoral
	foreign key(Cedula) references Padron_Electoral(Cedula) on delete cascade on update cascade,
);

create table Telefono (
	ID_Telefono int identity(1,1) constraint PK_Telefonor_IDTelefono Primary key,
	Cedula int not null,
	Telefono varchar(20) not null,
	ID_Tipo_Telefono int not null,
	ID_Estado int not null
	Constraint FK_Telefono_PadronElectoral_Cedula
	foreign key(Cedula) references Padron_Electoral(Cedula) on delete cascade on update cascade,
	constraint FK_Telefono_TipoTelefono_IDTipoTelefono
	foreign key(ID_Tipo_Telefono) references Tipo_Telefono(ID_Tipo_Telefono) on delete cascade on update cascade,
	constraint FK_Telefono_Estado_IDEstado
	foreign key(ID_Estado) references Estado(ID_Estado) on delete cascade on update cascade
);

create table Cliente(
	ID_Cliente int identity(1,1) constraint PK_Cliente_IDCliente Primary key,
	Cedula int not null,
	ID_Tipo_Cliente int not null,
	Observaciones varchar(50) not null
	constraint FK_Cliente_Persona_Cedula
	foreign key(Cedula) references Padron_Electoral(Cedula) on delete cascade on update cascade ,
	constraint FK_Cliente_TipoCliente_IDTipoCliente
	foreign key(ID_Tipo_Cliente) references Tipo_Cliente(ID_Tipo_Cliente) on delete cascade on update cascade 
);

create table Proveedor(
	ID_Proveedor int identity(1,1) constraint PK_Proveedor_IDProveedor Primary key,
	Cedula int not null,
	Nombre_Empresa varchar(20) not null,
	Direccion_Empresa varchar(100) not null,
	Numero_Cuente int not null
	constraint FK_Proveedor_Persona_Cedula
	foreign key(Cedula) references Padron_Electoral(Cedula) on update cascade on delete cascade 
);

create table Bitacora (
	ID  int identity(1,1) not null,
	Descripcion varchar(200) not null,
	Fecha_accion date not null
);

create table Producto (
	ID_Producto int identity(1,1),
	Nombre_Producto varchar(20) not null,
	Cantidad_Existentes int not null,
	Descripcion varchar(50) not null,
	Precio_Unitario int not null,
	ID_Estado int not null,
	ID_Proveedor int not null
	constraint PK_IDProducto
	primary key(ID_Producto),
	constraint FK_Producto_Estado_IDEstado
	foreign key(ID_Estado) references Estado(ID_Estado) on delete cascade on update cascade,
	constraint FK_Producto_Proveedor_IDProveedor
	foreign key(ID_Proveedor) references Proveedor(ID_Proveedor) on delete cascade on update cascade 
);

create table Factura(
	ID_Factura int identity(1,1),
	ID_Cliente int not null,
	ID_Vendedor int not null,
	Subtotal int not null,
	Impuesto int not null,
	Descuento int,
	Total int not null,
	Fecha_Factura date not null
	constraint PK_Factura_IDFactura
	primary key(ID_Factura),
	constraint  FK_Factura_Cliente_Cedula
	foreign key(ID_Cliente) references Cliente(ID_Cliente) on delete cascade on update cascade,
	constraint FK_Factura_Vendedor_IDVendedor
	foreign key(ID_Vendedor) references Usuario(ID_Usuario)
);

create table Detalle_Factura(
	ID_Factura int not null,
	Cantidad int not null,
	ID_Producto int not null,
	Total_Producto int not null
	constraint FK_DetalleFactura_Factura
	foreign key(ID_Factura) references Factura(ID_Factura) on delete cascade on update cascade,
	constraint FK_DetalleFactura_Producto
	foreign key(ID_Producto) references Producto(ID_Producto)
);

INSERT INTO [dbo].[Estado]
		   ([Nombre_Estado])
	 VALUES
		   ('Habilitado')
		   ,('Deshabilidado');

INSERT INTO [dbo].[Tipo_Acceso_Usuario]
		   ([Nombre]
		   ,[Descripcion])
	 VALUES
		   ('Administrador','Acceso total')
		   ,('Usuario','Acceso a realizar Facturas')
		   ,('Contabilidad','Acceso a Ver Facturas');


INSERT INTO [dbo].[Tipo_Telefono]
		   ([Tipo_Telefono])
	 VALUES
		   ('Habitacion')
		   ,('Empresa')
		   ,('Celular')
		   ,('Fax');

INSERT INTO [dbo].[Tipo_Cliente]
		   ([Nombre_Tipo])
	 VALUES
		   ('Personal')
		   ,('Empresa')
		   ,('Gobierno');

INSERT INTO [dbo].[Puesto]
		   ([Nombre]
		   ,[Descripcion_Puesto])
	 VALUES
		   ('Administrador','Administrador')
		   ,('Contador','Contador')
		   ,('Vendedor','Vendedor')
		   ,('Gerente','Gerente');
		   
		   
alter table Cliente
add ID_Estado int,
constraint FK_Cliente_Estado_ID
foreign key(ID_Estado) references Estado (ID_estado);

alter table Proveedor
add ID_Estado int,
constraint FK_Proveedor_Estado_ID
foreign key(ID_Estado) references Estado (ID_estado)

-- =============================================
-- Description:	Creacion de los procedimientos almacenados
-- necesarios para el funcionamiento del sistema.
-- Incluyen los CRUD de usuario,cliente,proveedor y producto
-- =============================================

use Proyecto_BD2;
go

-- Procedimiento almacenado de Clientes
CREATE PROCEDURE sp_clientes 
(
	-- Parametros que se reciben
	@Cedula int,
	@Id_Tipo_Cliete int,
	@Observaciones varchar(50),
	@ID_Estado int,
	@crud int
)
AS
BEGIN
	SET NOCOUNT ON;

	if (@crud=1)
		begin 
			if(( select count(Cedula)
				from Padron_Electoral
				where Cedula=@Cedula)>=1
				and ( select count(Cedula)
				from Cliente
				where Cedula=@Cedula)<1)
			begin
				if ((@Cedula is not null)
				and (@Id_Tipo_Cliete is not null)
				and (@Observaciones is not null)
				and (@ID_Estado is not null))
				begin 
					insert into Cliente(Cedula,ID_Tipo_Cliente,Observaciones,ID_Estado)
					VALUES(@Cedula,@Id_Tipo_Cliete,@Observaciones,@ID_Estado)
					print 'Se inserto el dato correctamente'
					end 
					else
					begin
						print 'Error en el Insert de Cliente'
					end
			end
			else
			begin
				print 'Error en cedula'
			end
		end

		ELSE IF (@crud=2)
	
			if((select COUNT(Cedula)
				from Cliente
				where Cedula=@Cedula)>=1)

			begin 
				update Cliente
				set Cedula=@Cedula,
				ID_Tipo_Cliente=@Id_Tipo_Cliete,
				Observaciones=@Observaciones,
				ID_Estado=@ID_Estado
				where Cedula=@Cedula
				print 'Se actualizo el registro'
				end


			else
			begin
				print 'Error en el Update'
			end
		ELSE IF (@crud=3)
			if((select count(Cedula)
				from Cliente
				where Cedula=@Cedula)>=1)

				begin
					update Cliente
					set ID_Estado=2
					where Cedula=@Cedula
					print 'Se elimino Registro'
				end
				else
				begin
					print 'Error de Delete'
				end
END
GO

-- Procedimiento almacenado de Proveedores
CREATE PROCEDURE sp_proveedor 
(
	-- Parametros que se reciben
	@Cedula int,
	@Nombre_Empresa varchar(20),
	@Direccion_Empresa varchar(100),
	@Numero_Cuenta int,
	@ID_Estado int,
	@crud int
)
AS
BEGIN
	SET NOCOUNT ON;
	if(@crud=1)
		begin	
			if((select count(Cedula)
			from Padron_Electoral
			where cedula=@Cedula)>=1
			and (select count(Cedula)
			from Proveedor
			where cedula=@Cedula)<1)

			begin
				if(@Cedula is not null)
				and (@Nombre_Empresa is not null)
				and(@Direccion_Empresa is not null)
				and (@Numero_Cuenta is not null)
				and (@ID_Estado is not null)

				begin
					insert into Proveedor(Cedula,Nombre_Empresa,Direccion_Empresa,Numero_Cuente,ID_Estado)
					values(@Cedula,@Nombre_Empresa,@Direccion_Empresa,@Numero_Cuenta,@ID_Estado)
					print 'Se insertaron los datos'
				end
				else
				begin
					print 'Error en insertar Proeevedor'
				end
			end

		else
		begin
			print 'Error en Cedula'
		end
		end

		ELSE IF (@crud=2)


			if((select count(Cedula)
				from Proveedor
				where Cedula=@Cedula)>=1)

				begin
					update Proveedor	
					set Cedula=@Cedula,
					Nombre_Empresa=@Nombre_Empresa,
					Direccion_Empresa=@Direccion_Empresa,
					Numero_Cuente=@Numero_Cuenta,
					ID_Estado=@ID_Estado
					where Cedula=@Cedula
					print 'Se Actualizo Proveedor '
				end

			else 
			begin
				print 'Error en Update'
			end



		ELSE IF (@crud=3)
	
		begin
			if((select count(Cedula)
				from Proveedor
				where Cedula=@Cedula)>=1)

				begin
				update Proveedor
				set ID_Estado=2
				where Cedula=@Cedula
				print 'Se Elimino Proveedor '
				end

		end

		else
		begin
			print 'Error al actualizar '
		end
	
END
GO

-- Procedimiento almacenado de Usuario
CREATE PROCEDURE sp_usuario 
(
    -- Parametros que se reciben
    @cedula int,
    @contrasena varchar(50),
    @id_tipo int,
    @puesto int,
    @id_estado int,
    @crud int
)
AS
BEGIN
    SET NOCOUNT ON;
    if (@crud = 1)
		begin
			if ((select count(Cedula) 
				from Padron_Electoral 
				where Cedula=@cedula)>=1) and (select count(Cedula) 
				from Usuario
				where Cedula=@cedula)<1
			begin
				IF ((@contrasena IS NOT NULL) 
				and (@id_tipo IS NOT NULL) 
				and (@id_estado IS NOT NULL) 
				and (@puesto IS NOT NULL))
				begin
					insert into Usuario (Cedula,Contraseña,ID_Tipo_Acceso,Puesto,ID_Estado)
					values (@cedula,@contrasena,@id_tipo,@puesto,@id_estado)
					print 'Se inserto el dato correctamente'
				end
				else
				begin
					print 'Error en el Insert';
				end
			end
			else
			begin
				print 'Error con Cedula';
			end
		end
		ELSE IF (@crud = 2)
			if ((select count(Cedula) 
				from Usuario 
				where Cedula=@cedula)>=1)
			begin
				update Usuario
				set Contraseña=@contrasena
				,ID_Tipo_Acceso=@id_tipo
				,Puesto=@puesto
				,ID_Estado=@id_estado 
				where Cedula=@cedula;
				print 'Se actualizo el registro';
			end
			else
			begin
				print 'Error de Update';
			end
		ELSE IF (@crud = 3)
			if ((select count(Cedula) 
				from Usuario 
				where Cedula=@cedula)>=1)
			begin
				update Usuario
				set ID_Estado=2 
				where Cedula=@cedula;
				print 'Se elimino el registro'
			end
			else
			begin
				print 'Error de Delete';
			end
END
GO
-- Procedimiento almacenado de Producto
CREATE PROCEDURE sp_producto
(
    -- Parametros que se reciben
    @Nombre_Producto varchar(20),
	@Cantidad_Existentes int,
	@Descripcion varchar(50),
	@Precio_Unitario int,
	@ID_Estado int,
	@ID_Proveedor int,
	@ID_Producto int,
	@Crud int
)
AS
BEGIN
    SET NOCOUNT ON;
    if(@Crud=1)
		begin
			if((@Nombre_Producto is not null)
				and (@Cantidad_Existentes is not null)
				and (@Descripcion is not null)
				and (@Precio_Unitario is not null)
				and (@ID_Estado is not null)
				and (@ID_Proveedor is not null)
				and (select count(Nombre_Producto) 
				from Producto
				where Nombre_Producto=@Nombre_Producto)<1)

				begin
					insert into Producto(Nombre_Producto,Cantidad_Existentes,Descripcion,Precio_Unitario,ID_Estado,ID_Proveedor)
					values(@Nombre_Producto,@Cantidad_Existentes,@Descripcion,@Precio_Unitario,@ID_Estado,@ID_Proveedor)
					print 'Se registra producto'

				end

				else
				begin
					print 'Error en ingresar Producto'
				end
		end
		ElSE IF(@Crud =2)
		begin
			if((select count(Nombre_Producto)
				from Producto
				where ID_Producto=@ID_Producto)>=1)

			begin
			update Producto
			set Nombre_Producto=@Nombre_Producto,
				Cantidad_Existentes=@Cantidad_Existentes,
				Descripcion=@Descripcion,
				Precio_Unitario=@Precio_Unitario,
				ID_Estado=@ID_Estado,
				ID_Proveedor =@ID_Proveedor
				where ID_Producto=@ID_Producto
				print 'Se actualiza Registro '

			end
			else 
			begin
				print 'Error en Update'	
			end
		end
		ELSE IF(@Crud=3)
		begin
			if((SELECT count (Nombre_Producto)
				from Producto
				where ID_Producto=@ID_Producto)>=1)

				begin
					update Producto
					set ID_Estado=2
					where ID_Producto=@ID_Producto
					print 'Se elimino Registo'
				end
				else
				begin
					print 'Error al eliminar'
				end
		end
END
GO
-- Procedimiento almacenado de Factura
CREATE PROCEDURE sp_factura
	--Parametros
	@ID_Cliente int,
	@ID_Vendedor int,
	@Subtotal int,
	@Impuesto int,
	@Descuento int,
	@Total int
AS
BEGIN
	SET NOCOUNT ON;
	if ((@ID_Cliente is not null)
		and (@ID_Vendedor is not null)
		and (@Subtotal is not null)
		and (@Impuesto is not null)
		and (@Descuento is not null)
		and (@Total is not null))
		begin
			insert into Factura (ID_Cliente,ID_Vendedor,Subtotal,Impuesto,Descuento,Total,Fecha_Factura)
			OUTPUT inserted.ID_Factura
			values (@ID_Cliente,@ID_Vendedor,@Subtotal,@Impuesto,@Descuento,@Total,getdate());
		end
		else
		begin
			print 'No se puede ingresar la Factura';
		end
END
GO

-- Procedimiento almacenado de Detalle Factura
CREATE PROCEDURE sp_factura_detalle
	--Parametros
	@ID_Factura int,
	@Cantidad int,
	@ID_Producto int,
	@Total_Producto int
AS
BEGIN
	SET NOCOUNT ON;
	if ((@ID_Factura is not null)
		and (@Cantidad is not null)
		and (@ID_Producto is not null)
		and (@Total_Producto is not null)
		and (select COUNT(ID_Factura) 
		from Factura
		where ID_Factura=@ID_Factura) >= 1)
		begin
			insert into Detalle_Factura (ID_Factura,Cantidad,ID_Producto,Total_Producto)
			VALUES (@ID_Factura,@Cantidad,@ID_Producto,@Total_Producto)
		end
		else
		begin
			print 'No se puede ingresar la Factura';
		end
END
GO

Create procedure [dbo].[spMostrarClientes]
as
begin
	select ID_Cliente,Cedula,ID_Tipo_Cliente,Observaciones,ID_Estado
	from Cliente
end
GO

Create procedure [dbo].[spMostrarUsuario]
as
begin
	select us.ID_Usuario,us.Cedula,pu.Descripcion_Puesto,es.Nombre_Estado,tau.Descripcion
	from Usuario us join Puesto pu on us.Puesto=pu.ID_Puesto 
	join Estado es on es.ID_Estado= us.ID_Estado 
	join Tipo_Acceso_Usuario tau on tau.ID_Acceso = us.ID_Tipo_Acceso;
end
GO

Create procedure [dbo].[spMostrarProducto]
as
begin
	select Nombre_Producto,Cantidad_Existentes,Descripcion,Precio_Unitario,ID_Estado,ID_Proveedor
	from Producto
end
GO

Create procedure [dbo].[spMostrarFactura]
as
begin
	select  ID_Factura,ID_Cliente,ID_Vendedor,Subtotal,Impuesto,Descuento,Total,Fecha_Factura
	from Factura
end
GO

Create procedure [dbo].[splogin]

@login int,
@contrasena varchar(500)
as
begin
	select [ID_Usuario]
		  ,[Cedula]
		  ,[ID_Tipo_Acceso]
		  ,[Puesto]
		  ,[ID_Estado]
		  ,[Contraseña]
	from Usuario
	where Cedula=@login and Contraseña=@contrasena;

end
GO
-- =============================================
-- Description:	Creacion de los triggers para la bitacora de 
-- clientes para cuando se eliminan,actualizan,insertan datos
-- =============================================

CREATE TRIGGER dbo.TriggerBitacoraDelete
   ON Cliente
   AFTER DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	Declare @ID int;
	Declare @NombreApellido varchar(300);
	Declare @Cedula int;

	Select @ID=ID_Cliente,@Cedula=Cedula
	from deleted;
	
	Select @NombreApellido=rtrim(Nombre)+' '+rtrim(Apellido1)+' '+rtrim(Apellido2)
	from Padron_Electoral 
	where Cedula=@Cedula;

	insert into Bitacora (Descripcion,Fecha_accion)
	values ('Se eliminó el usuario '+@NombreApellido+' con la cedula '+convert(varchar(20),@Cedula)+' y ID '+convert(varchar(20),@ID)+', desde el usuario de base de datos '+system_user,GETDATE());
END
GO

CREATE TRIGGER dbo.TriggerBitacoraInsert
   ON Cliente
   AFTER insert
AS 
BEGIN
	SET NOCOUNT ON;
	Declare @ID int;
	Declare @NombreApellido varchar(300);
	Declare @Cedula int;

	Select @ID=ID_Cliente,@Cedula=Cedula
	from inserted;
	
	Select @NombreApellido=rtrim(Nombre)+' '+rtrim(Apellido1)+' '+rtrim(Apellido2)
	from Padron_Electoral 
	where Cedula=@Cedula;

	insert into Bitacora (Descripcion,Fecha_accion)
	values ('Se insertó el usuario '+@NombreApellido+' con la cedula '+convert(varchar(20),@Cedula)+' y ID '+convert(varchar(20),@ID)+', desde el usuario de base de datos '+system_user,GETDATE());
END
GO

CREATE TRIGGER dbo.TriggerBitacoraUpdate
   ON Cliente
   AFTER update
AS 
BEGIN
	SET NOCOUNT ON;
	Declare @ID int;
	Declare @NombreApellido varchar(300);
	Declare @Cedula int;

	Select @ID=ID_Cliente,@Cedula=Cedula
	from inserted;
	
	Select @NombreApellido=rtrim(Nombre)+' '+rtrim(Apellido1)+' '+rtrim(Apellido2)
	from Padron_Electoral 
	where Cedula=@Cedula;

	insert into Bitacora (Descripcion,Fecha_accion)
	values ('Se editó el usuario '+@NombreApellido+' con la cedula '+convert(varchar(20),@Cedula)+' y ID '+convert(varchar(20),@ID)+', desde el usuario de base de datos '+system_user,GETDATE());
END
GO
