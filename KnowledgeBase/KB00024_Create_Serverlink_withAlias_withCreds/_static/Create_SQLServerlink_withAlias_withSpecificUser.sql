﻿-- Creates an SQL Server Link to the specified Server, provides an Alias with 'XXX' as placeholder for an Suffix. Specify an SQL User that is used for the Connection in the last lines.

USE [master]
GO
EXEC master.dbo.sp_addlinkedserver @server = N'SIM_CONFIGMGR_XXX', @srvproduct=N'sql_server', @provider=N'SQLNCLI11', @datasrc=N'SQLSERVERNAME'
-- Specify SQL Servername like this "simserver,1433" or specify the instance via backslash. 
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'SIM_CONFIGMGR_XXX', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'SIM_CONFIGMGR_XXX', @locallogin = NULL , @useself = N'False', @rmtuser = N'SQLUSERNAME', @rmtpassword = N'SQLUSERPASSWORD'
GO
