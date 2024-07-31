

# PostgreSQL Sales Analysis

Welcome to the **PostgreSQL Sales Analysis** project! This repository contains the SQL scripts and data used to perform sales data analysis for a fictional retail company. The analysis includes calculating total sales, identifying top-selling products, and evaluating employee performance.

## Project Overview

This project involves setting up a PostgreSQL database to analyze sales data. The database includes tables for customers, products, orders, order details, employees, and suppliers. Once the database is populated with data, various SQL queries are executed to gain insights into the sales performance.

## Repository Contents

- **`create_tables.sql`**: SQL script to create the necessary database tables.
- **`insert_data.sql`**: SQL script to insert sample data into the tables.
- **`queries.sql`**: SQL queries used for data analysis.


## How to Use

### 1. Set Up the Database

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/shyLesh001/postgresql-sales-analysis.git
   ```

2. Navigate to the project directory:
   ```bash
   cd postgresql-sales-analysis
   ```

3. Open pgAdmin or your preferred PostgreSQL client.

4. Create a new database (e.g., `sales_data_analysis`).

5. Run the `create_tables.sql` script to create the tables in your database:
   ```sql
   \i path/to/create_tables.sql
   ```

6. Run the `insert_data.sql` script to populate the tables with sample data:
   ```sql
   \i path/to/insert_data.sql
   ```

### 2. Run the Analysis

- Open the `queries.sql` file in your PostgreSQL client.
- Execute the queries to perform various analyses, such as calculating total sales per month, identifying top-selling products, and evaluating employee performance.


## Project Structure

- **`create_tables.sql`**: Contains the SQL commands to create the necessary database schema.
- **`insert_data.sql`**: Populates the tables with sample data for analysis.
- **`queries.sql`**: Provides SQL queries to perform the analysis.


## Example Queries

Here are some example queries included in the `queries.sql` file:

- **Total Sales Per Month**:
  ```sql
  SELECT 
      DATE_TRUNC('month', o.OrderDate) AS Month, 
      SUM(od.Quantity * p.Price) AS TotalSales
  FROM Orders o
  JOIN OrderDetails od ON o.OrderID = od.OrderID
  JOIN Products p ON od.ProductID = p.ProductID
  GROUP BY Month
  ORDER BY Month;
  ```

- **Top-Selling Products**:
  ```sql
  SELECT 
      p.ProductName, 
      SUM(od.Quantity) AS TotalQuantity
  FROM OrderDetails od
  JOIN Products p ON od.ProductID = p.ProductID
  GROUP BY p.ProductName
  ORDER BY TotalQuantity DESC
  LIMIT 5;
  ```

- **Sales by Customer**:
  ```sql
  SELECT 
      c.CustomerName, 
      SUM(od.Quantity * p.Price) AS TotalSales
  FROM Orders o
  JOIN Customers c ON o.CustomerID = c.CustomerID
  JOIN OrderDetails od ON o.OrderID = od.OrderID
  JOIN Products p ON od.ProductID = p.ProductID
  GROUP BY c.CustomerName
  ORDER BY TotalSales DESC;
  ```

