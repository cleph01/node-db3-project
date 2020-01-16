-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT * 
FROM Category
JOIN Product
on Category.id = Product.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, c.CompanyName
FROM 'Order' as o
JOIN Customer as c 
on o.CustomerId = c.id
WHERE o.OrderDate < '2012-08-09';	

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT od.OrderId, ProductName, Quantity 
FROM OrderDetail as od
JOIN Product as p
on od.ProductId = p.id
WHERE od.OrderId = 10251;	

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id as 'Order Id', c.CompanyName as 'Customer Name' , e.LastName as 'Employee Last Name'
FROM 'Order' as o
JOIN Customer as c on o.CustomerId = c.id
JOIN Employee as e on o.EmployeeId = e.id;
	