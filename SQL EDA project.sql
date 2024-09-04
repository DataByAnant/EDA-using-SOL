 -- Select all columns from the SuperMarket table in the eda schema
SELECT * FROM eda.SuperMarket;

-- Set the current database to the eda schema
USE eda;

-- Select the first 5 records from the supermarket table
SELECT * FROM supermarket LIMIT 5;

-- Select the last 5 records from the supermarket table ordered by 'invoice id' in descending order
SELECT * FROM supermarket ORDER BY `invoice id` DESC LIMIT 5;

-- Select 5 random records from the supermarket table
SELECT * FROM supermarket ORDER BY RAND() LIMIT 5;

-- Calculate and display summary statistics (count, min, max, average, standard deviation) for gross income
SELECT COUNT(`gross income`) AS TotalGrossIncome,
       MIN(`gross income`) AS MinGrossIncome,
       MAX(`gross income`) AS MaxGrossIncome,
       AVG(`gross income`) AS AvgGrossIncome,
       STD(`gross income`) AS StdGrossIncome
FROM supermarket;

-- Count the number of non-null gross income values in the supermarket table
SELECT COUNT(*) FROM supermarket WHERE `gross income` IS NOT NULL;

-- Count the number of occurrences of each city in the supermarket table
SELECT city, COUNT(city) 
FROM supermarket 
GROUP BY city;

-- Count the number of transactions for each payment method and order the results in descending order of frequency
SELECT payment, COUNT(*) 
FROM supermarket 
GROUP BY payment 
ORDER BY COUNT(*) DESC;

-- Select the COGS (Cost of Goods Sold) and Rating columns from the supermarket table
SELECT cogs, Rating 
FROM supermarket;

-- Sum gross income by city and branch, round to two decimal places, and order by total gross income in descending order
SELECT city, Branch, 
       ROUND(SUM(`gross income`), 2) AS SumGrossIncome 
FROM supermarket 
GROUP BY city, Branch 
ORDER BY SumGrossIncome DESC;

-- Count the number of transactions per payment method (Cash, Ewallet, Credit card) for each city
SELECT City,
       SUM(CASE WHEN Payment = 'Cash' THEN 1 ELSE 0 END) AS 'Cash',
       SUM(CASE WHEN Payment = 'Ewallet' THEN 1 ELSE 0 END) AS 'Ewallet',
       SUM(CASE WHEN Payment = 'Credit card' THEN 1 ELSE 0 END) AS 'Credit card'
FROM supermarket 
GROUP BY City;

-- Sum the total quantity sold per product line and order by the total quantity in descending order
SELECT `Product line`, SUM(Quantity) AS TotalQuantity 
FROM supermarket 
GROUP BY `Product line`
ORDER BY TotalQuantity;

-- Update the date format in the supermarket table (assumes 'date' column is incorrectly formatted)
UPDATE supermarket 
SET date = STR_TO_DATE('date', '%m/%d/%y');

-- Disable safe updates to allow the execution of potentially risky update or delete operations
SET sql_safe_updates = 0;

-- Calculate the total sales per month, grouped by month name and number, and order by total sales in descending order
SELECT MONTHNAME(date) AS Name,
       MONTH(date) AS Month,
       SUM(total) AS Total 
FROM supermarket 
GROUP BY Name, Month 
ORDER BY Total DESC;

-- Calculate the total sales per hour of the day, grouped by hour, and order by total sales in descending order
SELECT HOUR(Time) AS hour, 
       SUM(Total) AS total 
FROM supermarket
GROUP BY hour 
ORDER BY total DESC;

-- Calculate the average gross income per gender
SELECT Gender, AVG(`gross income`) 
FROM supermarket 
GROUP BY Gender;

   
  
  
  
  


 