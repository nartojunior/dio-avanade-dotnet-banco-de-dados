/* Criano table Enereços com chaves-primárias e chaves-secunárias*/
USE dotnet
GO

SELECT * FROM  Clientes

-- Adicionando Chave primária na tabela Clientes.
Alter TABLE Clientes
ADD CONSTRAINT PK_Clientes_Id PRIMARY KEY CLUSTERED(Id)
GO

/*
CREATE TABLE Enderecos(
    Id int IDENTITY(1, 1) PRIMARY KEY,
    IdCliente INT NOT NULL,
    Rua varchar(255) NULL,
    Bairro varchar(255) NULL,
    Cidade varchar(255) NULL,
    Estado char(2) NULL,

    -- Restrição
    CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)
    REFERENCES Clientes(Id) 
)
*/

SELECT * FROM Enderecos

INSERT INTO Enderecos VALUES(4, 'Rua Teste', 'Bairro Teste', 'Natal', 'RN')

-- # Consulta entre tabelas
-- INNER JOIN | Com todos os campos das duas tabelas.
SELECT * FROM Clientes 
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 4

-- INNER JOIN | Com campos específicos das tabelas.
SELECT 
    Clientes.Nome,
    Clientes.Sobrenome,
    Clientes.Email,
    Enderecos.Rua,
    Enderecos.Bairro,
    Enderecos.Cidade,
    Enderecos.Estado 
FROM Clientes 
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 4

-- INNER JOIN | Com campos específicos das tabelas e apelidos para as tabelas (alias)
SELECT 
    C.Nome,
    C.Sobrenome,
    C.Email,
    E.Rua,
    E.Bairro,
    E.Cidade,
    E.Estado 
FROM Clientes as C 
INNER JOIN Enderecos as E ON C.Id = E.IdCliente
WHERE C.Id = 4
