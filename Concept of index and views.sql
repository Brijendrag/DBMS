CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

ROP INDEX idx_pname ON idx_pname;



CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
