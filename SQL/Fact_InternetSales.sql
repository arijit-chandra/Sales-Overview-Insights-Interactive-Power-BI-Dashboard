SELECT 
       [ProductKey]
      --,[OrderDateKey]
      --,[DueDateKey]
      --,[ShipDateKey]
      ,[CustomerKey]
      --[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      ,CAST([OrderDate] AS DATE) AS OrderDate
      --,[DueDate]
      ,CAST([ShipDate] AS DATE) AS ShipDate
  FROM [AdventureWorksDW2025].[dbo].[FactInternetSales]
  WHERE CAST([OrderDate] AS DATE) >= '2023-01-01'
  AND CAST([OrderDate] AS DATE) <  '2026-01-01'
ORDER BY CAST([OrderDate] AS DATE);
