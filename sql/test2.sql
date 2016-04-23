use Northwind;

DELIMITER //
CREATE PROCEDURE country_nw
(IN con varchar(255))
BEGIN
  SELECT * FROM Customers
  WHERE Customers.Country = con;
END //
DELIMITER ;
