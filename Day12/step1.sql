CREATE TABLE Products (
    productId NUMBER(10) PRIMARY KEY,
    ProductName VARCHAR2(255),
    Category VARCHAR2(255),
    Price NUMBER(10, 2)
);

CREATE OR REPLACE FUNCTION calculate_discount (
    price NUMBER,
    discount_rate NUMBER
) RETURN NUMBER
IS
    discounted_price NUMBER;
BEGIN
    discounted_price := price - (price * discount_rate / 100);
    RETURN discounted_price;
END;