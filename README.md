Supermarket Data Analysis
Overview
This repository contains SQL scripts used to analyze supermarket sales data. The analysis includes data extraction, aggregation, and statistical summarization to uncover insights and trends within the dataset. The SQL queries cover various aspects such as sales performance, payment methods, city-wise analysis, and more.

Files
supermarket_analysis.sql: Contains all the SQL queries used for the analysis.
SQL Queries Overview
Data Selection:

Select all records from the supermarket table.
Retrieve the first 5 and last 5 records based on invoice id.
Randomly select 5 records for exploratory analysis.
Summary Statistics:

Compute total, minimum, maximum, average, and standard deviation for gross income.
Count the number of non-null values in the gross income column.
Aggregated Counts:

Count the number of transactions by city.
Determine the frequency of different payment methods, ordered by usage.
Sales and Rating Analysis:

Select and analyze COGS (Cost of Goods Sold) and Rating.
Calculate the total gross income by city and branch, ordered by income.
Payment Method Analysis:

Compare the frequency of payment methods (Cash, Ewallet, Credit Card) across cities.
Product Line Analysis:

Sum the total quantity sold by each product line.
Date and Time Analysis:

Reformat the date column and group sales data by month.
Analyze total sales by hour of the day.
Gender Income Analysis:

Calculate the average gross income by gender.
Setup Instructions
Database Setup:

Ensure you have a MySQL server installed and running.
Import your supermarket dataset into a database (e.g., eda).
Running the Queries:

Load the supermarket_analysis.sql file in your SQL editor.
Execute the queries in the provided sequence for optimal analysis flow.
Future Enhancements
Data Visualization: Integrate with Python or R for advanced data visualization.
Predictive Modeling: Apply machine learning models to predict sales trends.
Contributing
Feel free to fork this repository, open issues, or submit pull requests for any improvements or suggestions.

License
This project is licensed under the MIT License - see the LICENSE file for details.

