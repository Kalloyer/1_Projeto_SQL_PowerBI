-- Limepeza Tabela FACT_InternetSales --
SELECT [ProductKey] AS Chave_Produto
      ,[OrderDateKey] AS Chave_Pedido
      ,[DueDateKey] AS Chave_Vencimento
      ,[ShipDateKey] AS Dia_Enviado
      ,[CustomerKey] AS Cliente_ID
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber] AS Numero_Pedido
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount] AS Quantidade_Vendida
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  WHERE LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 4 --  Garantia de que irá trazer 4 anos da extração
  ORDER BY Chave_Pedido ASC
