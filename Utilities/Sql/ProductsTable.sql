CREATE TABLE [dbo].[Products]
(
	[ProductID] NUMERIC NOT NULL PRIMARY KEY, 
    [CategoryID] VARCHAR(2) NOT NULL FOREIGN KEY REFERENCES dbo.Category(CategoryID), 
    [ProductPrice] DECIMAL(10, 2) NOT NULL, 
    [ProductQty] INT NOT NULL
)