CREATE TABLE [dbo].[Wishlist]
(
	[WishlistID] NUMERIC NOT NULL PRIMARY KEY, 
    [Username] VARCHAR(25) NOT NULL	FOREIGN KEY REFERENCES dbo.Accounts(Username), 
    [ProductID] NUMERIC NOT NULL FOREIGN KEY REFERENCES dbo.Products(ProductID), 
    [Qty] INT NOT NULL, 
    [DateWishlisted] DATE NOT NULL,

);