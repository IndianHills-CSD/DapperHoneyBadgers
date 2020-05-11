CREATE TABLE [dbo].[ProductGPU]
(
	[ProductID] NUMERIC NOT NULL , 
    [ModelName] VARCHAR(50) NOT NULL, 
    [VRAM] VARCHAR(50) NOT NULL, 
    [SLICompatible] CHAR(1) NOT NULL, 
    [Size] VARCHAR(25) NOT NULL, 
    [CoreClock] INT NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES dbo.Products (ProductID)
)
