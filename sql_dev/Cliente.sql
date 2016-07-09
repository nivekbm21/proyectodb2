declare @Cedula int = 115330667
declare @Id_Tipo_Cliete int=1
declare @Observaciones varchar(50)= 'Pruebaupdate'
declare @ID_Estado int=1
declare @crud int = 3

if (@crud=1)
begin 
	if(( select count(*)
		from Padron_Electoral
		where Cedula=@Cedula)>=1)
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
				print 'Error en el Insert de Cliente'
			
	end
	else
		print 'Error en cedula'
end

ELSE IF (@crud=2)
	
	if((select COUNT(*)
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
		print 'Error en el Update'

ELSE IF (@crud=3)
	if((select count(*)
		from Cliente
		where Cedula=@Cedula)>=1)

		begin
			update Cliente
			set ID_Estado=2
			where Cedula=@Cedula
			print 'Se elimino Registro'
		end
		else
			print 'Error de Delete'
		

