CREATE DATABASE supply_chain
USE supply_chain
SELECT * FROM supply_chain_data
-------------------------------------------------------------------
SELECT SUM(revenue_generated) AS total_revenue
FROM supply_chain_data
------------------------------------------------------------------------
SELECT SUM(revenue_generated) - SUM(manufacturing_costs) AS net_profit
FROM supply_chain_data;
------------------------------------------------------------
SELECT SUM(number_of_products_sold) AS total_sold
FROM supply_chain_data;
----------------------------------------------------------------------------------
SELECT SUM(manufacturing_costs) AS total_cost
FROM supply_chain_data;
---------------------------------------------------------------------------------
SELECT product_type, 
       SUM(revenue_generated) - SUM(manufacturing_costs) AS net_profit,
       (SUM(revenue_generated) - SUM(manufacturing_costs)) * 100 / 
       (SELECT SUM(revenue_generated) - SUM(manufacturing_costs) FROM supply_chain_data) AS net_profit_percentage
FROM supply_chain_data
GROUP BY product_type;
--------------------------------------------------------------------------------------------
SELECT 
    Product_type, 
    AVG(Revenue_generated) AS avg_revenue
FROM 
    supply_chain_data
GROUP BY 
    Product_type
ORDER BY 
    avg_revenue DESC;

-----------------------------------------------------------------------------------
	SELECT 
    Number_of_products_sold, 
    Revenue_generated
FROM 
    supply_chain_data;
----------------------------------------------------------------------------------------

	SELECT 
    Shipping_carriers, 
    AVG(Shipping_costs) AS avg_shipping_cost
FROM 
    supply_chain_data
GROUP BY 
    Shipping_carriers
ORDER BY 
    avg_shipping_cost ASC;
--------------------------------------------------------------------------------


	SELECT 
    Supplier_name, 
    AVG(Defect_rates) AS avg_defect_rate
FROM 
    supply_chain_data
GROUP BY 
    Supplier_name
ORDER BY 
    avg_defect_rate ASC;
------------------------------------------------------------------------------------------

	SELECT 
    Customer_demographics, 
    AVG(Revenue_generated) AS avg_revenue
FROM 
    supply_chain_data
GROUP BY 
    Customer_demographics
ORDER BY 
    avg_revenue DESC;
	-------------------------------------------------------------------------------------

	SELECT 
    Shipping_times, 
    AVG(Revenue_generated) AS avg_revenue
FROM 
    supply_chain_data
GROUP BY 
    Shipping_times
ORDER BY 
    Shipping_times;
-------------------------------------------------------------------------------------------
	SELECT 
    Stock_levels, 
    Number_of_products_sold
FROM 
    supply_chain_data;


