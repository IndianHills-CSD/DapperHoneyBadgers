CREATE TABLE [dbo].[Products] (
    [ProductID]    NUMERIC (18)    NOT NULL,
    [CategoryID]   VARCHAR (2)     NOT NULL,
    [ProductPrice] DECIMAL (10, 2) NOT NULL,
    [ProductQty]   INT             NOT NULL,
    [ProductName]  VARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
);

