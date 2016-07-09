declare @Nombre_Producto varchar(20)= 'Fanta2'
declare @Cantidad_Existentes int = 1000
declare @Descripcion varchar(50) ='prueba'
declare @Precio_Unitario int =1800
declare @ID_Estado int =2
declare @ID_Proveedor int =1
declare @ID_Producto int =1
declare @Crud int =3

if(@Crud=1)
begin
	if((@Nombre_Producto is not null)
		and (@Cantidad_Existentes is not null)
		and (@Descripcion is not null)
		and (@Precio_Unitario is not null)
		and (@ID_Estado is not null)
		and (@ID_Proveedor is not null))

		begin
			insert into Producto(Nombre_Producto,Cantidad_Existentes,Descripcion,Precio_Unitario,ID_Estado,ID_Proveedor)
			values(@Nombre_Producto,@Cantidad_Existentes,@Descripcion,@Precio_Unitario,@ID_Estado,@ID_Proveedor)
			print 'Se registra producto'

		end

		else
			print 'Error en ingresar Producto'

end




ElSE IF(@Crud =2)

begin
	if((select count(*)
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
		print 'Error en Update'	
end
	



ELSE IF(@Crud=3)

begin

	if((SELECT count (*)
		from Producto
		where ID_Producto=@ID_Producto)>=1)

		begin
			update Producto
			set ID_Estado=@ID_Estado
			print 'Se elimino Registo'
		end
		else 
			print 'Error al eliminar'


end