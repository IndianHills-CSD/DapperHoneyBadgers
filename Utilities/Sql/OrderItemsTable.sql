CREATE TABLE [dbo].[OrderItems]
(
	[OrderID] INT NOT NULL,
    [ProductID] NUMERIC NOT NULL,
    [Qty] INT NOT NULL, 
    CONSTRAINT [FK_OrderItems_ToOrders] FOREIGN KEY ([OrderID]) REFERENCES [Orders]([OrderID]), 
    CONSTRAINT [FK_OrderItems_ToProducts] FOREIGN KEY ([ProductID]) REFERENCES [Products]([ProductID]), 
    CONSTRAINT [PK_OrderItems] PRIMARY KEY ([OrderID], [ProductID])
)
