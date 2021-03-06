declare @cedula int = 114940134
declare @contrasena varchar(50) = 'Hola1'
declare @id_tipo int = 1
declare @puesto int = 1
declare @id_estado int = 2
declare @crud int = 3

if (@crud = 1)
begin
	if ((select count(*) 
		from Padron_Electoral 
		where Cedula=@cedula)>=1) and (select count(*) 
		from Usuario
		where Cedula=@cedula)<0
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
			print 'Error en el Insert';
	end
	else
		print 'Error con Cedula';
end
ELSE IF (@crud = 2)
	if ((select count(*) 
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
		print 'Error de Update';

ELSE IF (@crud = 3)
	if ((select count(*) 
		from Usuario 
		where Cedula=@cedula)>=1)
	begin
		update Usuario
		set ID_Estado=2 
		where Cedula=@cedula;
		print 'Se elimino el registro'
	end
	else
		print 'Error de Delete';