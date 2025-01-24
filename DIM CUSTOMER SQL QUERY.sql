-- CLEANSING DIM CUSTOMER TABLE
SELECT c.CustomerKey AS [CustomerKey], c.FirstName AS [First Name], c.LastName AS [Last Name], 
c.FirstName + ' ' + c.LastName AS [Full Name], CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
c.DateFirstPurchase AS DateFirstPurchase, g.City AS [Customer City]          -- Joined in Customer City from Geography Table
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey