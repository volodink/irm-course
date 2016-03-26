Документация:

http://dev.mysql.com/doc/refman/5.6/en/

http://dev.mysql.com/doc/refman/5.6/en/data-types.html


```
CREATE TABLE Categories (
			CategoryID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
			CategoryName NVARCHAR(255),
			Description NVARCHAR(255)
);

CREATE TABLE Suppliers (
			SupplierID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
			SupplierName NVARCHAR(255),
			ContactName NVARCHAR(255),
			Address NVARCHAR(255),
			City NVARCHAR(255),
			PostalCode NVARCHAR(255),
			Country NVARCHAR(255),
			Phone NVARCHAR(255)
);

CREATE TABLE Products (
			ProductID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
			ProductName NVARCHAR(255),
			SupplierID int,
			CategoryID int,
			Unit NVARCHAR(255),
			Price MONEY
);

CREATE TABLE OrderDetails (
			OrderDetailID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
			OrderID int,
			ProductID int,
			Quantity int
);

CREATE TABLE Orders (
			OrderID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
			CustomerID int,
			EmployeeID int,
			OrderDate DATE,
			ShipperID int
);

CREATE TABLE Customers (
			CustomerID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
			CustomerName NVARCHAR(255),
			ContactName NVARCHAR(255),
			Address NVARCHAR(255),
			City NVARCHAR(255),
			PostalCode NVARCHAR(255),
			Country NVARCHAR(255)
);

CREATE TABLE Employees (
			EmployeeID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
			LastName NVARCHAR(255),
			FirstName NVARCHAR(255),
			BirthDate DATE,
			Photo NVARCHAR(255),
			Notes Text
);

CREATE TABLE Shippers (
			ShipperID int NOT NULL AUTO_INCREMENT,
			ShipperName NVARCHAR(255),
			Phone NVARCHAR(255),
			PRIMARY KEY (ShipperID)
);
```
