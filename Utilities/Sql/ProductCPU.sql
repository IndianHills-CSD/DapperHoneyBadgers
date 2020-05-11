CREATE TABLE [dbo].[ProductCPU]
(
	[ProductID] NUMERIC NOT NULL, 
    [ModelName] VARCHAR(50) NOT NULL, 
    [Cores] INT NOT NULL, 
    [Architecture] VARCHAR(25) NOT NULL, 
    [Integratedgpu] CHAR(1) NOT NULL, 
    [Speed] DECIMAL(3,2) NOT NULL, 
    [SocketType] VARCHAR(25) NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES dbo.Products (ProductID)
)