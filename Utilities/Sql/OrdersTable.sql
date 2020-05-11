CREATE TABLE [dbo].[Orders]
(
	[OrderID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Username] VARCHAR(25) NOT NULL, 
    [OrderAddress] VARCHAR(50) NOT NULL, 
    [OrderDate] DATE NOT NULL, 
    CONSTRAINT [FK_Orders_To_Accounts] FOREIGN KEY ([Username]) REFERENCES [Accounts]([Username])
)
