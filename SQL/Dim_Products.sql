SELECT 
       P.[ProductKey]
      ,P.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,P.[EnglishProductName] AS ProductName
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,P.[Color] AS ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,ISNULL( P.[Size], 'Unknown') AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      --,ISNULL( P.[ProductLine], 'Unknown') AS ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,ISNULL( P.[ModelName], 'Unknown') AS ProductModel
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL( PS.[EnglishProductSubcategoryName], 'Unknown') AS ProductSubcategory
      ,ISNULL( PC.[EnglishProductCategoryName], 'Unknown') AS ProductCategory
      ,ISNULL(P.[Status], 'OutDated') AS ProductStatus
  FROM [AdventureWorksDW2025].[dbo].[DimProduct] AS P
  LEFT JOIN [AdventureWorksDW2025].[dbo].[DimProductSubcategory] AS PS ON PS.[ProductSubcategoryKey] = P.[ProductSubcategoryKey]
  LEFT JOIN [AdventureWorksDW2025].[dbo].[DimProductCategory] AS PC ON PC.[ProductCategoryKey] = PS.[ProductCategoryKey]
  ORDER BY P.[ProductKey] ASC
