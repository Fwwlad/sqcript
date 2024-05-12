USE [SKstudio]
GO
CREATE LOGIN production with password = ;
GO
CREATE USER production FOR LOGIN production;
GO
ALTER ROLE db_datareader ADD MEMBER production;
GO
ALTER ROLE db_datawriter ADD MEMBER production;
GO
