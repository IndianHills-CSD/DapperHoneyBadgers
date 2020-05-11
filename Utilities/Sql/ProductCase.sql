CREATE TABLE [dbo].[ProductCase]
(
	[ProductID] NUMERIC NOT NULL, 
    [ModelName] VARCHAR(50) NOT NULL, 
    [Size] VARCHAR(25) NOT NULL, 
    [RGB] CHAR(1) NOT NULL, 
    [Material] VARCHAR(25) NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES dbo.Products (ProductID)
)
