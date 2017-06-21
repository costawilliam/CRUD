Create database[CRUD]
GO

CREATE TABLE [dbo].[usuario]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Endereco] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL,
    [Senha] NVARCHAR(50) NOT NULL
)


CREATE TABLE [dbo].[animal]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Porte] NVARCHAR(50) NOT NULL, 
    [Especie] NVARCHAR(50) NOT NULL,       
    [Raca] NVARCHAR(50) NOT NULL, 
    [Idade] INT NULL,
    [Usuario_codigo] INT NOT NULL,
    [Adotado] [bit] NOT NULL CONSTRAINT [DF_animal_adotado]  DEFAULT ((0))
)

ALTER TABLE animal ADD CONSTRAINT
	FK_usuario_criacao FOREIGN KEY (usuario_codigo)
    REFERENCES usuario (codigo)
GO


CREATE TABLE [dbo].[interesse]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Usuario_codigo] INT NOT NULL,
    [Animal_codigo] INT NOT NULL
)

ALTER TABLE interesse ADD CONSTRAINT
	FK_usuario_interesse FOREIGN KEY (usuario_codigo)
    REFERENCES usuario (codigo)
GO

ALTER TABLE interesse ADD CONSTRAINT
	FK_anilam_interesse FOREIGN KEY (animal_codigo)
    REFERENCES animal (codigo)
GO