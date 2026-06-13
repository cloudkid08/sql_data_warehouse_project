/* Creating bronze layer and loading the data into it full loading and batch processing. */


create or alter procedure bronze.layer_bronze as
Begin

	Print ' ============================================= '
	Print			' Loading Bronze Layer'
	Print ' ============================================= '
	Print ' ============================================= '
	Print			' Loading CRM Table'
	Print ' ============================================= '
	Print ' --------------------------------------------- '
	Print ' Truncating bronze.crm_cust_info table'
	Print '---------------------------------------------- '
	truncate table bronze.crm_cust_info;
	Print '---------------------------------------------- '
	Print ' Inserting bronze.crm_cust_info table'
	Print '---------------------------------------------- '
	bulk insert bronze.crm_cust_info
	from 'C:\Program Files (x86)\Microsoft SQL Server\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	with (firstrow = 2,
	fieldterminator = ',',
	tablock
	);


	select count(*) totalrows from bronze.crm_cust_info;
	Print ' --------------------------------------------- '
	Print ' Truncating bronze.crm_prd_info table'
	Print '---------------------------------------------- '
	
	truncate table bronze.crm_prd_info;
	Print '---------------------------------------------- '
	Print ' Inserting bronze.crm_prd_info table'
	Print '---------------------------------------------- '

	bulk insert bronze.crm_prd_info
	from 'C:\Program Files (x86)\Microsoft SQL Server\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	with (firstrow = 2,
	fieldterminator = ',',
	tablock
	);


	select count(*) totalrows from bronze.crm_prd_info;
	Print ' --------------------------------------------- '
	Print ' Truncating bronze.crm_sales_details table'
	Print '---------------------------------------------- '
	

	truncate table bronze.crm_sales_details;
	Print '---------------------------------------------- '
	Print ' Inserting bronze.crm_sales_details table'
	Print '---------------------------------------------- '


	bulk insert bronze.crm_sales_details
	from 'C:\Program Files (x86)\Microsoft SQL Server\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	with (firstrow = 2,
	fieldterminator = ',',
	tablock
	);


	select count(*) totalrows from bronze.crm_sales_details;

	Print ' ============================================= '
	Print			' Loading ERP Table'
	Print ' ============================================= '

	
	Print '---------------------------------------------- '
	Print ' Truncating bronze.erp_cust_az12 table'
	Print '---------------------------------------------- '

	truncate table bronze.erp_cust_az12;

	Print '---------------------------------------------- '
	Print ' Inserting bronze.erp_cust_az12 table'
	Print '---------------------------------------------- '

	bulk insert bronze.erp_cust_az12
	from 'C:\Program Files (x86)\Microsoft SQL Server\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
	with (firstrow = 2,
	fieldterminator = ',',
	tablock
	);

	select count(*) totalrows from bronze.erp_cust_az12;

	Print '---------------------------------------------- '
	Print ' Truncating bronze.erp_loc_a101 table'
	Print '---------------------------------------------- '

	truncate table bronze.erp_loc_a101;

	Print '---------------------------------------------- '
	Print ' Inserting bronze.erp_loc_a101 table'
	Print '---------------------------------------------- '


	bulk insert bronze.erp_loc_a101
	from 'C:\Program Files (x86)\Microsoft SQL Server\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
	with (firstrow = 2,
	fieldterminator = ',',
	tablock
	);


	select count(*) totalrows from bronze.erp_loc_a101;

	Print '---------------------------------------------- '
	Print ' Truncating bronze.erp_px_cat_g1v2 table'
	Print '---------------------------------------------- '



	truncate table bronze.erp_px_cat_g1v2;

	Print '---------------------------------------------- '
	Print ' Inserting bronze.erp_px_cat_g1v2 table'
	Print '---------------------------------------------- '


	bulk insert bronze.erp_px_cat_g1v2
	from 'C:\Program Files (x86)\Microsoft SQL Server\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
	with (firstrow = 2,
	fieldterminator = ',',
	tablock
	);


	select count(*) totalrows from bronze.erp_px_cat_g1v2;

End


exec bronze.layer_bronze

