CREATE TABLE [dbo].[ProductMotherboard]
(
	[ProductID] NUMERIC NOT NULL, 
    [ModelName] VARCHAR(50) NOT NULL, 
    [SocketType] VARCHAR(25) NOT NULL, 
    [RamSlots] INT NOT NULL, 
    [M2Compatible] CHAR(1) NOT NULL, 
    [SataVersion] VARCHAR(25) NOT NULL, 
    [USBVersion] VARCHAR(25) NOT NULL, 
    [Chipset] VARCHAR(25) NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES dbo.Products (ProductID)
)