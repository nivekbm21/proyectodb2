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
