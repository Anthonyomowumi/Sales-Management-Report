-- CLEANSING PRODUCT TABLE
SELECT p.ProductKey, p.ProductAlternateKey AS ProductItemCode, p.EnglishProductName AS [Product Name], 
ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table
pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table
p.Color AS [Product Color], p.Size AS [Product Size], p.ProductLine AS [Product Line], 
[ModelName], [EnglishDescription],ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM [AdventureWorksDW2019].[dbo].[DimProduct] p
LEFT JOIN [dbo].[DimProductSubcategory] ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN [dbo].[DimProductCategory] pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey asc;