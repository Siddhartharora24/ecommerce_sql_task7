use EcommerceDB;
CREATE VIEW RecentCustomerOrders AS
SELECT
    o.OrderID,
    c.Customer_Name,
    c.Email,
    IFNULL(c.Phone, 'Not Provided') AS Phone,
    o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID = 1;
SELECT * FROM RecentCustomerOrders;

CREATE VIEW CustomerContactLimited AS
SELECT
    CustomerID,
    Customer_Name,
    Email
FROM Customers;
CREATE USER 'readonly_user'@'localhost' IDENTIFIED BY 'some_secure_password';

GRANT SELECT ON CustomerContactLimited TO 'readonly_user'@'localhost';

SELECT * FROM RecentCustomerOrders;

