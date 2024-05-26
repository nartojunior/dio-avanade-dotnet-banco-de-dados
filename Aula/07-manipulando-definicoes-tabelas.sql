USE dotnet
GO

-- # ALTER TABLE | Modificando tabelas
-- Adicionando coluna.
--                       nome_coluna  tipo_dado
ALTER TABLE Produtos ADD DataCadastro DATETIME2
GO

-- FUNÇÃO: GETDATE() - pela a data do momento da execução do comando.
UPDATE Produtos
SET 
    DataCadastro = GETDATE()

SELECT * FROM Produtos

-- Formatando datas
SELECT 
    Nome + ', Cor: ' + Cor + ', Gênero:' + Genero as NomeProduto, -- Nomeada
    Nome + ', Cor: ' + Cor + ', Gênero:' + Genero, -- Anônima,
    UPPER(Nome) as NOME,
    LOWER(Cor) as cor,
    FORMAT(DataCadastro, 'dd/MM/yyyy HH:mm') as [Data]
FROM Produtos

-- # GROUP BY | Agrupando Dados
/*
- WHERE ANTES DO GROUP BY
*/
SELECT 
    COUNT(*) Quantidade, Tamanho
FROM Produtos
WHERE Tamanho <> ''
GROUP BY Tamanho
ORDER BY Quantidade DESC

SELECT 
    COUNT(*) Quantidade, Tamanho
FROM Produtos
GROUP BY Tamanho
ORDER BY Quantidade DESC