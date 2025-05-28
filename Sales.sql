create database Saless;
use Saless;
DROP TABLE IF EXISTS Product,Customer,Store,Sale;



CREATE TABLE Product (
    ProductID CHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL
);

CREATE TABLE Customer (
    CustomerID VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Store (
    StoreID VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Sale (
    SaleID CHAR(10) PRIMARY KEY,
    Qty  DECIMAL(10,2),
    Unit_Price DECIMAL(10,2) NOT NULL,
    SaleDate DATE NOT NULL,
    CurrencyType CHAR(3) NOT NULL,
    ProductID CHAR(10) NOT NULL,
    CustomerID VARCHAR(100) NOT NULL,
    StoreID VARCHAR(20) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (StoreID) REFERENCES Store(StoreID)
);

select * from Product;
select * from Customer;
select * from Store;
select * from Sale;

SELECT COUNT(*) AS total_rows FROM Sale;
