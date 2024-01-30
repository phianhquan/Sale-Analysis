SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [ProductItemCode], 
  p.[EnglishProductName] AS [Product Name], 
  sc.[EnglishProductSubcategoryName] AS [Sub Category], 
  c.[EnglishProductCategoryName] AS [Product Category], 
  p.[Color] AS [Product Color], 
  p.[Size] AS [Product Size], 
  p.[ProductLine] AS [Product Line], 
  p.[ModelName] AS [Product Model Name], 
  p.[EnglishDescription] AS [Product Description], 
  ISNULL([Status], 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS sc on p.[ProductSubcategoryKey] = sc.[ProductSubcategoryAlternateKey] 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS c on c.[ProductCategoryKey] = sc.[ProductCategoryKey] 
Order by 
  p.[ProductKey] ASC

  
