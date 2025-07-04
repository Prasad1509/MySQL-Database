-- 
-- Creating Customer Master Table
CREATE TABLE Customer_Master (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100),
  CustomerPhone VARCHAR(15)
);

-- Creating Product Master Table
CREATE TABLE Product_Master (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(100),
  Price INT
);

-- Creating Orders Table (Linking with Customer)
CREATE TABLE Orders_Main (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customer_Master(CustomerID)
);

-- Creating Order Details Table (Linking with Product and Order)
CREATE TABLE Order_Details (
  DetailID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Orders_Main(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Product_Master(ProductID)
);

-- Inserting Customers
INSERT INTO Customer_Master VALUES (1, 'Atharv', '9876543210');
INSERT INTO Customer_Master VALUES (2, 'Prasad', '9999999999');

-- Inserting Products
INSERT INTO Product_Master VALUES (1, 'Pen', 10);
INSERT INTO Product_Master VALUES (2, 'Pencil', 5);
INSERT INTO Product_Master VALUES (3, 'Eraser', 7);

-- Inserting Orders
INSERT INTO Orders_Main VALUES (101, 1, '2024-06-01');
INSERT INTO Orders_Main VALUES (102, 2, '2024-06-02');

-- Inserting Order Details
INSERT INTO Order_Details VALUES (1, 101, 1, 2); -- 2 Pens
INSERT INTO Order_Details VALUES (2, 101, 2, 1); -- 1 Pencil
INSERT INTO Order_Details VALUES (3, 102, 3, 3); -- 3 Erasers

-- View all Customers
SELECT * FROM Customer_Master;

-- View all Products
SELECT * FROM Product_Master;

-- View all Orders with Customer Names
SELECT o.OrderID, c.CustomerName, o.OrderDate
FROM Orders_Main o
JOIN Customer_Master c ON o.CustomerID = c.CustomerID;

-- View Order Details with Product Names and Prices
SELECT od.OrderID, p.ProductName, p.Price, od.Quantity
FROM Order_Details od
JOIN Product_Master p ON od.ProductID = p.ProductID;

-- Full Report: Customer, Order, Product, Quantity, Price
SELECT 
    c.CustomerName,
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    p.Price,
    od.Quantity,
    (p.Price * od.Quantity) AS TotalPrice
FROM Orders_Main o
JOIN Customer_Master c ON o.CustomerID = c.CustomerID
JOIN Order_Details od ON o.OrderID = od.OrderID
JOIN Product_Master p ON od.ProductID = p.ProductID;
