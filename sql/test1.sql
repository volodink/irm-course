select Products.ProductID, 
       Products.ProductName,
       Products.Price,
	   Categories.CategoryName as 'Category'
from Products, Categories
where   
       (Products.CategoryID = 
       Categories.CategoryID)
       and 
       (Products.Price > 
         (select AVG(Products.price) 
          from Products)
       )
       ;

