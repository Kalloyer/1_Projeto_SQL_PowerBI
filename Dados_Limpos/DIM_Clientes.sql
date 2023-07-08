-- Limpeza Tabela DIM_Costumer --
SELECT c.CustomerKey AS Cliente_ID
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS Nome
      --,[MiddleName]
      ,c.LastName AS Sobrenome
	  ,c.FirstName + ' ' + LastName AS 'Nome_Completo'
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.Gender WHEN 'M'THEN 'Masculino' WHEN 'F' THEN 'Feminino' END AS Genero
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS 'Primeira_Compra'
      --,[CommuteDistance]
	  ,g.city AS 'Cidade_Cliente' -- Joined Costumer City from Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY Cliente_ID ASC -- Id Ascendente
