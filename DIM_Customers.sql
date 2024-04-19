--Cleaned DIM Customers Table
SELECT 
	[CustomerKey],
	c.FirstName AS [Fisrt Name],
	c.LastName AS [Last Name],
    c.FirstName + ' ' + LastName AS [Full Name],
    CASE 
		c.Gender
		WHEN 'M' THEN 'Male'
		WHEN 'F' Then 'Female'
	END AS Gender,
	[DateFirstPurchase],
	g.City AS [Customer City] 
FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] AS c
	LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g
	ON g.GeographyKey = c.GeographyKey
ORDER BY
	CustomerKey ASC
