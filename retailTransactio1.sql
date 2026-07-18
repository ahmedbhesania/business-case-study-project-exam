select * from retailtransaction;

-- Total sales amount per region for the last quarter.
SELECT Region, quarter(Date) as quarter, round(sum(TotalAmount),2) AS Total_Sales
FROM retailtransaction
WHERE quarter(Date) = ( select max(quarter(Date)) from retailtransaction ) group by  region, quarter(Date);


-- Top 5 best-selling products (by revenue).
select productname,round(sum(totalamount)) as total_amount from retailtransaction group by productname  order by sum(totalamount) desc limit 5 ;

-- Monthly sales trend across all regions.
select region,monthname(date) as month,year(date) as year,round(sum(totalamount)) as total_sale 
from retailtransaction 
group by month,year,region 
order by month,year,region;

-- Region-wise contribution to total sales (as a %).
SELECT Region, round(sum(TotalAmount)) as total_sales, round((sum(TotalAmount)/ (select sum(TotalAmount) from retailtransaction))*100,2) AS sales_percentage
FROM retailtransaction
group by  region;

-- Compare Online vs Offline sales across all months.
SELECT YEAR(Date) AS Year, MONTH(Date) AS Month, SalesChannel, ROUND(SUM(TotalAmount), 2) AS Total_Sales FROM retailtransaction
GROUP BY YEAR(Date), MONTH(Date), SalesChannel
ORDER BY YEAR(Date), MONTH(Date), SalesChannel;

-- Sales trend by Category – Which categories are rising/falling?
SELECT
    Category,
    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    round(SUM(TotalAmount),2) AS Total_Sales
FROM RetailTransaction
GROUP BY
    Category,
    YEAR(Date),
    MONTH(Date)
ORDER BY
    Category,
    Sales_Year,
    Sales_Month;

-- List customers who purchased more than 5 times.
SELECT
    CustomerID,
    COUNT(*) AS Total_Purchases
FROM RetailTransaction
GROUP BY CustomerID
HAVING COUNT(*) > 5
ORDER BY Total_Purchases DESC;
