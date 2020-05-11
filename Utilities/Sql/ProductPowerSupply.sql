CREATE TABLE [dbo].[ProductPowerSupply] (
    [ProductID] NUMERIC (18) NOT NULL,
    [ModelName] VARCHAR (50)   NOT NULL,
    [MaxPower]  INT          NOT NULL,
    FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
);