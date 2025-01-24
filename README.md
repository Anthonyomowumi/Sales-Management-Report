## Sales-Management-Report
Data Analyst Portfolio Project – Sales Management Report


<img width="591" alt="SALES OVERVIEW DASHBOARD 1" src="https://github.com/user-attachments/assets/5fb31a9d-6216-438c-85ac-18edd121c07c" />

<img width="784" alt="DATA MODEL FOR GITHUB PORTFOLIO PROJECT 1" src="https://github.com/user-attachments/assets/46e52cad-8d8f-4afd-86c6-0488e6413af6" />

<img width="952" alt="CUSTOMER QUERY FOR GITHUB PORTFOLIO" src="https://github.com/user-attachments/assets/c0cfde83-2ea2-4851-8dc5-c44ca2e30164" />

<img width="475" alt="EXCEL SCREENSHOT FOR PORTFOLIO PROJECT 1" src="https://github.com/user-attachments/assets/d781f86c-c691-48eb-9116-96e94f398cb3" />

## Business Request and User Stories
An executive sales report for sales managers was the business request for this data analyst project. The following user stories were created in response to the business's requirement in order to complete delivery and guarantee that acceptance criteria were upheld throughout the project.
<img width="518" alt="userstory table format" src="https://github.com/user-attachments/assets/0a1f38d7-7e70-4be5-8b9b-a1eafe9e0b70" />

## Data Cleansing & Transformation (SQL)
The next step was preparing my dataset for PowerBI use. I am using the Update Adventures Works 2019 till 2025 dataset from Microsoft Online. It is secondary data. The Adventure Works data warehouse is already prepared and ready for Analysis.

Data Warehouse is mostly used for Analytics, it is an OLAP system. The dataset contains Facts and Dim tables. Facts tables the quantitative tables where all the numbers added together for example salary, amount, payment, etc are stored and Dim tables give more information about that,  Sales by product type, the Sales is the Fact in there and the Product is dim in which the Sales will be slices and dices….fact tables mostly contain the foreign keys of dim tables as related to it, this is always a STAR SCHEMA DATA MODEL   After these, I look at the dataset that I will be needing and get them prepared and ready for use in PowerBI. 

•	I identified the tables needed from the Email request: Sales/Internet Sales—Fact Table, Products—Dim Tables, Clients/Customers—Dim Tables, Date/Time—Dim Table, and Budget (Separate table in Excel for comparisons). 
•	After that, I looked at the tables to determine which columns were needed for my analysis, creating, for example, a customer table with the needed columns. Then, I wrote my SQL queries for data cleansing and transformation and saved the Results in CSV.

Below are the SQL statements for cleansing and transforming necessary data.

# Cleansed FACT InternetSales Table 
SELECT ProductKey, OrderDateKey, DueDateKey, ShipDateKey, CustomerKey, SalesOrderNumber,
TotalProductCost, SalesAmount
FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only bring two years of date from extraction.
ORDER BY
  OrderDateKey ASC;


  # Cleansed Dim_Product Table
SELECT p.ProductKey, p.ProductAlternateKey AS ProductItemCode, p.EnglishProductName AS [Product Name], 
ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table
pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table
p.Color AS [Product Color], p.Size AS [Product Size], p.ProductLine AS [Product Line], 
[ModelName], [EnglishDescription],ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM [AdventureWorksDW2019].[dbo].[DimProduct] p
LEFT JOIN [dbo].[DimProductSubcategory] ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN [dbo].[DimProductCategory] pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey asc;


# Cleansed Dim_Date Table 
SELECT [DateKey], [FullDateAlternateKey] AS Date, [DayNumberOfWeek] ,[EnglishDayNameOfWeek] AS Day,[WeekNumberOfYear]
,[EnglishMonthName] AS Month, LEFT([EnglishMonthName], 3) AS MonthShort, [MonthNumberOfYear] AS MonthNo, [CalendarQuarter] AS Quarter
,[CalendarYear] AS Year FROM [AdventureWorksDW2019].[dbo].[DimDate] WHERE [CalendarYear] >= 2019;

# Cleansed Dim_Customer Table
SELECT c.CustomerKey AS [CustomerKey], c.FirstName AS [First Name], c.LastName AS [Last Name], 
c.FirstName + ' ' + c.LastName AS [Full Name], CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
c.DateFirstPurchase AS DateFirstPurchase, g.City AS [Customer City]          -- Joined in Customer City from Geography Table
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey;



















