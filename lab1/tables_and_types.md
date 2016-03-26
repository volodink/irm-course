Документация:

http://dev.mysql.com/doc/refman/5.6/en/

http://dev.mysql.com/doc/refman/5.6/en/data-types.html


```
CREATE TABLE Categories (
			CategoryID int NOT NULL AUTO_INCREMENT,
			CategoryName VARCHAR(255),
			Description VARCHAR(255),
			PRIMARY KEY (CategoryID)
);

CREATE TABLE Suppliers (
			SupplierID int NOT NULL AUTO_INCREMENT,
			SupplierName VARCHAR(255),
			ContactName VARCHAR(255),
			Address VARCHAR(255),
			City VARCHAR(255),
			PostalCode VARCHAR(255),
			Country VARCHAR(255),
			Phone VARCHAR(255),
			PRIMARY KEY (SupplierID)
);

CREATE TABLE Products (
			ProductID int NOT NULL AUTO_INCREMENT,
			ProductName VARCHAR(255),
			SupplierID int,
			CategoryID int,
			Unit VARCHAR(255),
			Price numeric(15,2),
			PRIMARY KEY (ProductID)
);

CREATE TABLE OrderDetails (
			OrderDetailID int NOT NULL AUTO_INCREMENT,
			OrderID int,
			ProductID int,
			Quantity int,
			PRIMARY KEY (OrderDetailID)
);

CREATE TABLE Orders (
			OrderID int NOT NULL AUTO_INCREMENT,
			CustomerID int,
			EmployeeID int,
			OrderDate DATE,
			ShipperID int,
			PRIMARY KEY (OrderID)
);

CREATE TABLE Customers (
			CustomerID int NOT NULL AUTO_INCREMENT,
			CustomerName VARCHAR(255),
			ContactName VARCHAR(255),
			Address VARCHAR(255),
			City VARCHAR(255),
			PostalCode VARCHAR(255),
			Country VARCHAR(255),
			PRIMARY KEY (CustomerID)
);

CREATE TABLE Employees (
			EmployeeID int NOT NULL AUTO_INCREMENT,
			LastName VARCHAR(255),
			FirstName VARCHAR(255),
			BirthDate DATE,
			Photo VARCHAR(255),
			Notes TEXT,
			PRIMARY KEY (EmployeeID)
);

CREATE TABLE Shippers (
			ShipperID int NOT NULL AUTO_INCREMENT,
			ShipperName VARCHAR(255),
			Phone VARCHAR(255),
			PRIMARY KEY (ShipperID)
);
```
