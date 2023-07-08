-- Limpeza tabela Produtos --
SELECT [ProductKey] AS Chave_Produto
      ,[ProductAlternateKey] AS Codigo_Produto
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS Nome_Produto
	  ,ps.EnglishProductSubcategoryName AS Sub_Categoria --JOIN Tabela Sub Category
	  ,pc.EnglishProductCategoryName AS Categoria_Produto -- JOIN Tabela Category 
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
     -- ,[FinishedGoodsFlag]
      ,p.[Color] AS Cor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS Tamanho
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS Linha_Produto
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS Modelo_Produto
      --,[LargePhoto]
      ,p.[EnglishDescription] AS Descricao_Produto
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
      ,CASE p.[Status] WHEN 'Current' THEN 'Atualizado' ELSE  ISNULL (p.[Status], 'Desatualizado') END AS Status_Produto
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC

