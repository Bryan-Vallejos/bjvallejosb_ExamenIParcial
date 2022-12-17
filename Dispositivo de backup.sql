--Crea un dispositivo de backups--
use master 
go 

EXEC sp_addumpdevice 'disk', 'AwDv_wsanchezg',
'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER2019\MSSQL\Backup\AwDv_wsanchezg.bak';
go

EXEC sp_dropdevice 'AwDv_wsanchezg' , 'delfile';
go

--Crea un backup en el dispositivo--
DECLARE @Backup_Name nvarchar(100)
SET @Backup_Name = N'AwBk_' + FORMAT(GETDATE(), 'yyyyMMdd_hhmmss')
BACKUP DATABASE AdventureWorks2019
TO AwDv_wsanchezg
WITH NOFORMAT, NOINIT, NAME = @Backup_Name;
GO


