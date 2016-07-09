-- Incluir Detalle Factura
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
