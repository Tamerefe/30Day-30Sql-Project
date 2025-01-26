SELECT 
    region,
    SUM(total_amount) AS region_sales
FROM sales
GROUP BY region
ORDER BY region_sales DESC;

SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    SUM(total_amount) AS yearly_sales
FROM sales
GROUP BY EXTRACT(YEAR FROM sale_date)
ORDER BY year;

SELECT 
    sale_date,
    total_amount,
    SUM(total_amount) OVER (ORDER BY sale_date) AS running_total
FROM sales
ORDER BY sale_date;

SELECT 
    product_id,
    SUM(sale_price - cost_price) AS total_profit,
    ROUND((SUM(sale_price - cost_price) / SUM(sale_price)) * 100, 2) AS profit_margin_percentage
FROM sales
GROUP BY product_id;