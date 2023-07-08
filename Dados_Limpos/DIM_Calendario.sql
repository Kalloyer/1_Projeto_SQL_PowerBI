-- Limpando DIM_DateTable --
SELECT [DateKey] AS 'Data_Chave',
      [FullDateAlternateKey] AS Data,
      --,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] AS Dia,
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] AS SemNr,
      [EnglishMonthName] AS Mes,
	  LEFT([EnglishMonthName], 3) AS MesRed,
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] AS MesNr,
      [CalendarQuarter] AS Trimestre,
      [CalendarYear] AS Ano
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2019