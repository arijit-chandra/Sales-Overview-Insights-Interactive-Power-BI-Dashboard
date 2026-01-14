SELECT 
       C.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      --,[FirstName]
      --,[MiddleName]
      --,[LastName]
      ,C.[FirstName] + ' ' + C.[LastName] AS FullName
      --,[NameStyle]
      ,C.[BirthDate]
      --,[MaritalStatus]
      ,CASE C.[MaritalStatus] WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS MaritalStatus
      --,[Suffix]
      --,[Gender]
      ,CASE C.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      ,C.[EnglishOccupation] AS Occupation
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      --,[DateFirstPurchase]
      --,[CommuteDistance]
      ,G.[City]
      ,G.[StateProvinceName] AS State
      ,G.[EnglishCountryRegionName] AS Country
  FROM [AdventureWorksDW2025].[dbo].[DimCustomer] AS C
  LEFT JOIN [AdventureWorksDW2025].[dbo].[DimGeography] AS G ON G.[GeographyKey] = C.[GeographyKey]
  ORDER BY [CustomerKey] ASC

