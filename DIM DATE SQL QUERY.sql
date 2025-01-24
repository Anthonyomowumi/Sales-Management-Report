-- CLEASING DIM DATE TABLE TO GET THE DATE TABLE NEEDED FOR THE ANALYSIS...
SELECT [DateKey], [FullDateAlternateKey] AS Date, [DayNumberOfWeek] ,[EnglishDayNameOfWeek] AS Day,[WeekNumberOfYear]
,[EnglishMonthName] AS Month, LEFT([EnglishMonthName], 3) AS MonthShort, [MonthNumberOfYear] AS MonthNo, [CalendarQuarter] AS Quarter
,[CalendarYear] AS Year FROM [AdventureWorksDW2019].[dbo].[DimDate] WHERE [CalendarYear] >= 2019;