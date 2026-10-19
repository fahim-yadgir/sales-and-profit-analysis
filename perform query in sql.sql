create database sales_and_profit_analysis;
use sales_and_profit_analysis;

select * from sales_and_profit_analysis_for_sql;

alter table sales_and_profit_analysis_for_sql
rename sales_and_profit_analysis;

SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1;

select * from sales_and_profit_analysis;

alter table sales_and_profit_analysis
rename column `ï»¿Order ID` to order_id;

update sales_and_profit_analysis
set 	
	`Order Date` = str_to_date(`Order Date`,'%d-%m-%Y');
    

update sales_and_profit_analysis
set 	
	`Ship Date` = str_to_date(`Ship Date`,'%d-%m-%Y');