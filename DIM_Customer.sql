SELECT 
  c.CustomerKey AS [CustomerKey], 
  c.FirstName AS [First Name], 
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + [LastName] As [Full Name], 
  CASE WHEN c.Gender = 'M' THEN 'Male' WHEN c.Gender = 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase, 
  g.City AS [Customer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON c.GeographyKey = g.GeographyKey 
Order by 
  c.CustomerKey ASC
