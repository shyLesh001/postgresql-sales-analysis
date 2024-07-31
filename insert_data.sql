-- Insert Data into Customers Table
INSERT INTO Customers (CustomerName, ContactName, Country)
VALUES
('Alfreds Futterkiste', 'Maria Anders', 'Germany'),
('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
('Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico'),
('Around the Horn', 'Thomas Hardy', 'UK'),
('Berglunds snabbköp', 'Christina Berglund', 'Sweden'),
('Blauer See Delikatessen', 'Hanna Moos', 'Germany'),
('Blondel père et fils', 'Frédérique Citeaux', 'France'),
('Bólido Comidas preparadas', 'Martín Sommer', 'Spain'),
('Bon app\'', 'Laurence Lebihan', 'France'),
('Bottom-Dollar Marketse', 'Elizabeth Lincoln', 'Canada');

-- Insert Data into Products Table
INSERT INTO Products (ProductName, SupplierID, Category, Unit, Price)
VALUES
('Chais', 1, 'Beverages', '10 boxes x 20 bags', 18.00),
('Chang', 1, 'Beverages', '24 - 12 oz bottles', 19.00),
('Aniseed Syrup', 2, 'Condiments', '12 - 550 ml bottles', 10.00),
('Chef Anton''s Cajun Seasoning', 2, 'Condiments', '48 - 6 oz jars', 22.00),
('Chef Anton''s Gumbo Mix', 3, 'Condiments', '36 boxes', 21.35),
('Grandma''s Boysenberry Spread', 3, 'Condiments', '12 - 8 oz jars', 25.00),
('Uncle Bob''s Organic Dried Pears', 4, 'Produce', '12 - 1 lb pkgs.', 30.00),
('Northwoods Cranberry Sauce', 4, 'Condiments', '12 - 12 oz jars', 40.00),
('Mishi Kobe Niku', 5, 'Meat/Poultry', '18 - 500 g pkgs.', 97.00),
('Ikura', 5, 'Seafood', '12 - 200 ml jars', 31.00);

-- Insert Data into Orders Table
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES
(11, 5, '2023-07-01', 2),
(12, 6, '2023-07-02', 3),
(13, 7, '2023-07-03', 1),
(14, 8, '2023-07-04', 2),
(15, 9, '2023-07-05', 1),
(16, 10, '2023-07-06', 3),
(17, 5, '2023-07-07', 2),
(18, 6, '2023-07-08', 1),
(19, 7, '2023-07-09', 3),
(20, 8, '2023-07-10', 2);

-- Insert Data into OrderDetails Table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES
(41, 11, 10),
(42, 12, 20),
(43, 13, 15),
(44, 14, 30),
(45, 15, 25),
(46, 16, 10),
(47, 17, 5),
(48, 18, 8),
(49, 19, 12),
(50, 20, 18);

-- Insert Data into Employees Table
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES
('Davolio', 'Nancy', '1968-12-08', NULL, 'Sales Representative'),
('Fuller', 'Andrew', '1952-02-19', NULL, 'Vice President, Sales'),
('Leverling', 'Janet', '1963-08-30', NULL, 'Sales Representative'),
('Peacock', 'Margaret', '1937-09-19', NULL, 'Sales Representative'),
('Buchanan', 'Steven', '1955-03-04', NULL, 'Sales Manager'),
('Suyama', 'Michael', '1963-07-02', NULL, 'Sales Representative'),
('King', 'Robert', '1960-05-29', NULL, 'Sales Representative'),
('Callahan', 'Laura', '1958-01-09', NULL, 'Inside Sales Coordinator'),
('Dodsworth', 'Anne', '1966-01-27', NULL, 'Sales Representative'),
('West', 'Adam', '1970-11-30', NULL, 'Marketing Manager');

-- Insert Data into Suppliers Table
INSERT INTO Suppliers (SupplierName, ContactName, Country)
VALUES
('Exotic Liquids', 'Charlotte Cooper', 'UK'),
('New Orleans Cajun Delights', 'Shelley Burke', 'USA'),
('Grandma Kelly''s Homestead', 'Regina Murphy', 'USA'),
('Tokyo Traders', 'Yoshi Nagase', 'Japan'),
('Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Spain'),
('Mayumi''s', 'Mayumi Ohno', 'Japan'),
('Pavlova, Ltd.', 'Ian Devling', 'Australia'),
('Specialty Biscuits, Ltd.', 'Peter Wilson', 'UK'),
('PB Knäckebröd AB', 'Lars Peterson', 'Sweden'),
('Refrescos Americanas LTDA', 'Carlos Diaz', 'Brazil');
