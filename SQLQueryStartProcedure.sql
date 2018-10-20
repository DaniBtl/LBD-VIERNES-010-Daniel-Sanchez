
SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio](@valor1 int)
as
begin
	
	declare @reporte nvarchar(10)
	set @reporte = 'precios'
	print(@reporte)
	select * from dbo.habitacion 
	where  PagoPDia> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 2







SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio1
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio1](@valor1 int)
as
begin
	
	declare @reporte1 nvarchar(10)
	set @reporte1 = 'TipHab'
	print(@reporte1)
	select * from dbo.habitacion 
	where  idTipoHabitacion> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 2





SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio3
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio3](@valor1 int)
as
begin
	
	declare @reporte3 nvarchar(10)

	set @reporte3 = 'disponible'
	print(@reporte3)
	select * from dbo.habitacion 
	where  idDisponibilidad> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 1


SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio4
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio4](@valor1 int)
as
begin
	
	declare @reporte4 nvarchar(10)

	set @reporte4 = 'disponible'
	print(@reporte4)
	select * from dbo.habitacion 
	where  NumPiso> @valor1
end
GO

exec  ReporteAleatorio  10 





SET QUOTED_IDENTIFIER ON
GO
drop procedure ReporteAleatorio5
GO
 CREATE  PROCEDURE [dbo].[ReporteAleatorio5](@valor1 int)
as
begin
	
	declare @reporte5 nvarchar(10)

	set @reporte5 = 'disponible'
	print(@reporte5)
	select * from dbo.Disponibilidad 
	where  idHabitacion> @valor1
end
GO

exec  ReporteAleatorio  10 

exec ReporteAleatorio 1



