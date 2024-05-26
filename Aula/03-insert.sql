use dotnet
GO

-- # Inserindo dados em Tabela.

-- Com colunas. Pode escolher a ordem das colunas para os valores.
/*
INSERT INTO Clientes (Nome, Sobrenome, Email, AceitaComunicados, DataCadastro)
VALUES ('Narto', 'Junior', 'email@dom.com', 1, GETDATE() )
GO 3
*/

-- Omitindo colunas. Precisa seguir a ordem das colunas.
/*
INSERT INTO Clientes VALUES ('Narto', 'Junior', 'email@dom.com', 1, GETDATE() )
GO 3
*/

SELECT * FROM Clientes
WHERE Nome = 'Narto'