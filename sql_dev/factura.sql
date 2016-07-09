-- Incluir factura
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
