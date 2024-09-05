## Query to get count of genders in customers table
SELECT gender, COUNT(*) AS count from dataspark.customers_details GROUP BY gender;

## Query to get count of customers per country
SELECT Country, COUNT(*) AS count from dataspark.customers_details GROUP BY Country ORDER BY Country;

##Query to get size of stores in sq. metres of all stores together in each country
SELECT SUM(Square_Meters) AS stores_size, Country FROM stores_details GROUP BY Country ORDER BY stores_size desc;

## Query to get  number of customers by each store
SELECT COUNT(CustomerKey) AS total_customers, StoreKey FROM sales_details GROUP BY StoreKey ORDER BY StoreKey;

##Query to get product name as per profit_margin
SELECT product_name, (Unit_Price_USD - Unit_Cost_USD) AS profit_margin FROM dataspark.products_details ORDER BY profit_margin DESC
LIMIT 5;

## Query to get top performing products revenue
SELECT product_name, SUM(Unit_Price_USD) AS total_revenue FROM dataspark.products_details GROUP BY product_name ORDER BY total_revenue DESC
LIMIT 3;

## Query to get top performing products quantity
SELECT productKey, SUM(Quantity) AS total_quantity_sold FROM dataspark.sales_details GROUP BY productKey ORDER BY ProductKey DESC
LIMIT 4;

## Query to get Totals sales in a month
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS month, SUM(ProductKey) AS total_sales FROM dataspark.sales_details GROUP BY month ORDER BY month;

## Query to get total orders and totql quantity by stores
SELECT SUM(Order_Number) as total_orders, SUM(Quantity) AS total_quantity, StoreKey FROM sales_details GROUP BY StoreKey ORDER BY StoreKey;

## Query to get number of stores opened per year
SELECT count(StoreKey) AS stores, YEAR(Open_Date) AS YEAR_opened FROM stores_details GROUP BY YEAR_opened ORDER BY stores desc LIMIT 5;


