# Retail Sales Analysis Dashboard

**Author:** Ahmed Bhesania

## Project Overview

This project analyzes retail transaction data using SQL and Power BI to identify sales patterns, customer behavior, product performance, and regional trends. The objective is to transform raw transaction data into meaningful business insights through data analysis and interactive visualizations.

## Objectives

* Analyze overall sales performance.
* Identify top-performing products and categories.
* Understand customer purchasing behavior.
* Track monthly sales trends.
* Compare sales performance across regions.
* Evaluate sales channel effectiveness.
* Build an interactive Power BI dashboard for decision-making.

## Dataset Information

The dataset contains retail transaction records including:

* Transaction ID
* Customer ID
* Product Name
* Category
* Region
* Sales Channel
* Transaction Date
* Quantity
* Unit Price
* Total Amount

## Tools & Technologies Used

### SQL

Used for:

* Data exploration
* KPI calculations
* Aggregations and filtering
* Trend analysis

### Power BI

Used for:

* Data visualization
* Dashboard creation
* KPI monitoring
* Interactive filtering and slicing

## SQL Analysis Performed

### Total Sales

```sql
SELECT SUM(TotalAmount) AS TotalSales
FROM RetailTransaction;
```

### Total Transactions

```sql
SELECT COUNT(*) AS TotalTransactions
FROM RetailTransaction;
```

### Unique Customers

```sql
SELECT COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM RetailTransaction;
```

### Average Order Value (AOV)

```sql
SELECT SUM(TotalAmount) / COUNT(*) AS AOV
FROM RetailTransaction;
```

### Top 5 Products

```sql
SELECT ProductName,
       SUM(TotalAmount) AS Sales
FROM RetailTransaction
GROUP BY ProductName
ORDER BY Sales DESC
LIMIT 5;
```

### Customers with More Than 10 Purchases

```sql
SELECT CustomerID,
       COUNT(*) AS TotalPurchases
FROM RetailTransaction
GROUP BY CustomerID
HAVING COUNT(*) > 10;
```

## Power BI Dashboard Components

### KPI Cards

* Total Sales
* Total Transactions
* Unique Customers
* Average Order Value (AOV)

### Visualizations

1. Region-wise Sales Breakdown (Pie/Bar Chart)
2. Monthly Sales Trend (Line Chart)
3. Top 5 Products (Bar Chart)
4. Category Performance Trend
5. Sales Channel Distribution

### Slicers

* Region
* Month
* Sales Channel

## Key Insights

### 1. Strong Revenue Generation

The business generated significant revenue across multiple regions and categories, indicating a diversified sales base.

### 2. Top Products Drive Sales

A small group of products contributes a large percentage of total revenue, highlighting key revenue drivers.

### 3. Customer Retention Opportunity

Repeat purchases from existing customers indicate opportunities for loyalty and retention programs.

### 4. Category Performance Differences

Certain categories consistently outperform others and should receive greater marketing and inventory focus.

### 5. Sales Channel Impact

Different sales channels contribute differently to revenue, helping identify the most effective sales strategy.

## Data Cleaning & Preparation

* Removed duplicate records.
* Checked for missing values.
* Standardized column formats.
* Validated transaction amounts.
* Converted date fields for time-series analysis.

## Challenges Faced

* Handling inconsistent date formats.
* Identifying duplicate transactions.
* Creating efficient SQL queries for large aggregations.
* Designing a dashboard that balances detail and simplicity.

## Business Recommendations

* Focus marketing efforts on top-performing products.
* Improve inventory planning for high-demand categories.
* Expand successful sales channels.
* Implement customer loyalty initiatives.
* Monitor monthly sales trends to identify seasonality.
## sample screnshot 
<img width="1158" height="646" alt="image" src="https://github.com/user-attachments/assets/1f1b1781-f323-4c12-849a-c4136d7d18bf" />
<img width="666" height="543" alt="image" src="https://github.com/user-attachments/assets/6f6cb975-8cb0-4c47-9c9a-9b7db7c70504" />


## Conclusion

This project demonstrates how SQL and Power BI can be combined to transform raw retail data into actionable business insights. The dashboard enables stakeholders to monitor performance, identify growth opportunities, and make data-driven decisions.

---

**Author:** Ahmed Bhesania
**Project:** Retail Sales Analysis Dashboard
**Tools:** SQL, Power BI
