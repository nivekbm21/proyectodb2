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