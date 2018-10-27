SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tr_insert]
on [dbo].[Componente]
instead of insert,update, delete 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[tr_insert1]
on [dbo].[habitaciones]
instead of update 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tr_insert2]
on [dbo].[huespedes]
instead of insert 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tr_delete]
on [dbo].[Empleados]
instead of  delete 
as 
begin

	select *
	from INSERTED
	select *
	from DELETED
END  
