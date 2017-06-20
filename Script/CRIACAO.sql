Create database[CRUD]
GO

CREATE TABLE [dbo].[Pessoa]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Endereco] NVARCHAR(50) NOT NULL, 
    [Email] NCHAR(10) NOT NULL
)
