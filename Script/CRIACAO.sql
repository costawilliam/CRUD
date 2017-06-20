Create database[CRUD]
GO

Create database[CRUD]
GO

CREATE TABLE [dbo].[Pessoa]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Endereco] NVARCHAR(50) NOT NULL, 
    [Email] NCHAR(10) NOT NULL
)


select * from pessoa

drop table pessoa

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
    [Racao] NVARCHAR(50) NOT NULL, 
    [Idade] int NULL,
    [Usuario_codigo] int NOT NULL,
    [adotado] [bit] NOT NULL CONSTRAINT [DF_animal_adotado]  DEFAULT ((0))
)

ALTER TABLE animal ADD CONSTRAINT
	FK_usuario_criacao FOREIGN KEY (usuario_codigo)
    REFERENCES usuario (codigo)
GO


CREATE TABLE [dbo].[interesse]
(
	 [Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Usuario_codigo] int NOT NULL,
    [Animal_codigo] int NOT NULL
)

ALTER TABLE interesse ADD CONSTRAINT
	FK_usuario_interesse FOREIGN KEY (usuario_codigo)
    REFERENCES usuario (codigo)
GO

ALTER TABLE interesse ADD CONSTRAINT
	FK_anilam_interesse FOREIGN KEY (animal_codigo)
    REFERENCES animal (codigo)
GO





A ONG S.O.S bicho precisa de um portal para permitir o cadastramento de animais para adoção. 

Para isso, deve ser criado um sistema que permita aos usuários cadastrar animais (nome, porte, espécie, raça – se tiver – , idade e fotos. Além disso, deve ser possível a consulta por animais (espécie, porte e/ou idade) e, em caso de interesse do usuário, registrar interesse na adoção.  