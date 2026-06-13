-- ============================================================================ --
				-- CREATING DATAWAREHOUSE AND SCHEMAS---
-- ============================================================================ --
/* i)First checking whether the Datawarehouse exists or not in the sql server database.
   ii) IF not creating a new database called datawarehouse
   iii) Creating three schemas for three layers bronze, silver, and gold.
 */

 -- Checking existing database
Go
If exists (select 1 from sys.databases where name ='Datawarehouse')
Begin
Alter database Datawarehouse set multi_user with rollback immediate;
Drop database DataWarehouse;
end;

--Creating Database

Create Database DataWarehouse;
Go

--- Using Database
use DataWarehouse;
Go

--Creating Schemas

create schema bronze;
Go
create schema silver;
Go
create schema gold;
Go
