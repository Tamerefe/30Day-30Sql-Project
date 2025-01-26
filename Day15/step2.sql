SELECT SUM(total_amount) AS total_sales
FROM sales;

SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') AS month,
    SUM(total_amount) AS monthly_sales
FROM sales
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;

SELECT AVG(total_amount) AS average_transaction
FROM sales;

SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') AS month,
    SUM(total_amount) AS monthly_sales,
    LAG(SUM(total_amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')) AS prev_month_sales,
    ROUND((SUM(total_amount) - LAG(SUM(total_amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM'))) /
          LAG(SUM(total_amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')) * 100, 2) AS growth_percentage
FROM sales
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;

SELECT 
    product_id,
    SUM(total_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
FETCH FIRST 5 ROWS ONLY;