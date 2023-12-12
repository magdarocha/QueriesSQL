CREATE TABLE Products (ProductID int, ProductName text, CategoryID int, Price int);
CREATE TABLE Categories (CategoryID INT, CategoryName text, Description text);

INSERT INTO Categories ('CategoryID', 'CategoryName', 'Description') VALUES (1 , 'Beverages' , 'Soft Drinks, coffees, teas, beers, and ales');
INSERT INTO 'Categories'('CategoryID', 'CategoryName', 'Description') VALUES (2 , 'Condiments' , 'Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO 'Categories'('CategoryID', 'CategoryName', 'Description') VALUES (3 , 'Confections' , 'Desserts, candies, and sweet breads');
INSERT INTO 'Products'('ProductID', 'ProductName', 'CategoryID', 'Price') VALUES (1 , 'Chais' , '1', '18');
INSERT INTO 'Products'('ProductID', 'ProductName', 'CategoryID', 'Price') VALUES (2 , 'Chang' , '1', '19');
INSERT INTO 'Products'('ProductID', 'ProductName', 'CategoryID', 'Price') VALUES (3 , 'Syrup' , '2', '10');

SELECT * FROM Products;
SELECT * FROM Categories;

SELECT * FROM Products WHERE CategoryID = 2;
SELECT * FROM Products WHERE CategoryID = 1 AND ProductName = 'Chais';

SELECT * FROM Products Inner JOIN Categories ON Products.CategoryID  = Categories.CategoryID WHERE Products.CategoryID = 2;
SELECT ProductName , CategoryName FROM Products Inner JOIN Categories ON Products.CategoryID = Categories.CategoryID;

SELECT COUNT (CategoryName), CategoryName AS 'Categoria' FROM Products Inner JOIN Categories ON Products.CategoryID  = Categories.CategoryID GROUP BY CategoryName;
