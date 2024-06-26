SELECT 
	[ProductKey],
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
	[CustomerKey],
	[SalesOrderNumber],
	[SalesAmount]
FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
	LEFT (OrderDateKey,4) >= YEAR(GETDATE()) -2 --Ensures we always bring two years of date from extraction
ORDER BY
	OrderDateKey ASC
