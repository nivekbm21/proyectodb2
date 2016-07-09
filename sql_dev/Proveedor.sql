/*alter table Proveedor
add ID_Estado int,
constraint FK_Proveedor_Estado_ID
foreign key(ID_Estado) references Estado (ID_estado)
*/


declare @Cedula int =115330667
declare @Nombre_Empresa varchar(20)='Patitos sa'
declare @Direccion_Empresa varchar(100)='Calle blancos tercera etapa2'
declare @Numero_Cuenta int =1
declare @ID_Estado int =2
declare @crud int=3


if(@crud=1)
begin	
	if((select count(*)
	from Padron_Electoral
	where cedula=@Cedula)>=1)

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
			print 'Error en insertar Proeevedor'

	end

else
	print 'Error en Cedula'

end

ELSE IF (@crud=2)


	if((select count(*)
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
		print 'Error en Update'




ELSE IF (@crud=3)
	
begin
	if((select count(*)
		from Proveedor
		where Cedula=@Cedula)>=1)

		begin
		update Proveedor
		set ID_Estado=@ID_Estado
		where Cedula=@Cedula
		print 'Se Elimino Proveedor '
		end

end

else
	print 'Error al actualizar '
