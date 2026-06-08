/*  Create Database and Schemas
=======================================
Purpose:
	This Script creates a new database named 'DataWarehouse' after checking if it already exist. If so, the database
	will be dropped and recreated. Along with this there are 3 schemas within the datbase named: bronze, silver and gold.

	WARNING: Running this script will drop the entire 'DataWarehouse' database if it exists. All data will be permanently deleted.
	Proceed with caution and ensure there are proper backups before running this script
	*/




--Create Database 'DataWarehouse'
USE master;
GO

--Searches for 'DataWarehouse' databases
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;

GO

--Create the DataWarehouse data
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

--Creating Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
