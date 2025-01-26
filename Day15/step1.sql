CREATE TABLE Sales (
    product_id NUMBER PRIMARY KEY,
    total_amount NUMBER(10, 2),
    discount_amount NUMBER(10, 2),
    sale_date DATE,
    region VARCHAR2(50),
    sale_price NUMBER(10, 2),
    cost_price NUMBER(10, 2)
);

INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (1, 1000, 100, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'North', 1000, 800);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (2, 500, 50, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'South', 500, 400);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (3, 300, 30, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'East', 300, 200);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (4, 50, 5, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'West', 50, 40);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (5, 20, 2, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'North', 20, 15);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (6, 10, 1, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'South', 10, 8);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (7, 200, 20, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'East', 200, 150);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (8, 150, 15, TO_DATE('2025-01-08', 'YYYY-MM-DD'), 'West', 150, 100);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (9, 100, 10, TO_DATE('2025-01-09', 'YYYY-MM-DD'), 'North', 100, 80);
INSERT INTO Sales (product_id, total_amount, discount_amount, sale_date, region, sale_price, cost_price) VALUES (10, 30, 3, TO_DATE('2025-01-10', 'YYYY-MM-DD'), 'South', 30, 25);