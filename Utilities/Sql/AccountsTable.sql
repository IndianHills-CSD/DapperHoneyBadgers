CREATE TABLE [dbo].[Accounts]
(
	[Username] VARCHAR(25) NOT NULL PRIMARY KEY, 
    [Password] VARCHAR(25) NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Address] VARCHAR(50) NOT NULL
)
