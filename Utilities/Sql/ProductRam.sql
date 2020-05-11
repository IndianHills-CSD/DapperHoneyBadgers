CREATE TABLE [dbo].[ProductRam]
(
	[ProductID] NUMERIC NOT NULL, 
    [ModelName] VARCHAR(50) NOT NULL, 
    [NumOfSticks] VARCHAR(2) NOT NULL, 
    [Voltage] VARCHAR(10) NOT NULL, 
    [Speed] VARCHAR(50) NOT NULL, 
    [Timing] VARCHAR(25) NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES dbo.Products (ProductID)
)