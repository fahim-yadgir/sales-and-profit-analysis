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
    
select `Ship Mode` , sum(Profit)as Total_profit
from sales_and_profit_analysis
group by `Ship Mode`;

select Category , round(sum(Discount),2)as total_discount , sum(Profit)as total_profit , count(*)as total_count
from sales_and_profit_analysis
group by Category;

select `Customer Name` , max(Sales)as max_sales , min(sales)as min_sales , count(*)as total_Count
from sales_and_profit_analysis
group by `Customer Name`
order by total_Count desc;

select State , Profit
from sales_and_profit_analysis
where Profit = (select max(Profit)as max_profit from sales_and_profit_analysis);

select State , max(Profit)as max_profit
from sales_and_profit_analysis
group by state;

select State , sum(Profit)as max_profit
from sales_and_profit_analysis
group by State;

select `Customer Name` , profit 
from sales_and_profit_analysis
where profit < 0;

select `Customer name` , Discount ,State,Profit, round(sum(Profit) over(order by `Order Date`),2)as total_loos
from sales_and_profit_analysis
where Profit < 0;