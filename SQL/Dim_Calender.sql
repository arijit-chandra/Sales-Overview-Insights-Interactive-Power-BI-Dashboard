SELECT 
       [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek] 
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS Week_Num
      ,[EnglishMonthName] AS Month
      ,Left([EnglishMonthName],3) AS Month_Short
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month_Num
      ,[CalendarQuarter] AS Cal_Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      ,[FiscalQuarter] AS Fiscal_Quarter
      ,[FiscalYear] AS Fiscal_year
      --,[FiscalSemester]
  FROM [AdventureWorksDW2025].[dbo].[DimDate]
  WHERE [CalendarYear] BETWEEN 2023 AND 2025
ORDER BY [Date] ASC;
