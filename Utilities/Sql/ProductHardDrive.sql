CREATE TABLE [dbo].[ProductHardDrive]
(
	[ProductID] NUMERIC NOT NULL, 
    [ModelName] VARCHAR(50) NOT NULL, 
    [External] CHAR(1) NOT NULL, 
    [SSD] CHAR(1) NOT NULL, 
    [Capacity] VARCHAR(25) NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES dbo.Products (ProductID)
)
