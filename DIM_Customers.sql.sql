-- Cleansed DIM_Customers Table --
SELECT
  c.customerkey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name], 
  c.firstname + ' ' + lastname AS [Full Name], -- Combined First and Last Name
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, -- Use When-Then clause to convert Gender (M/F) into full (Male/Female)
  c.datefirstpurchase AS DateFirstPurchase, 

  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey  -- Find Customer City
ORDER BY
  CustomerKey ASC -- Ordered List by CustomerKey