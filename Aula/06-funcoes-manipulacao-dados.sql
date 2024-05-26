USE dotnet
GO

-- # Funções para consulta. Pode usar WHERE para filtrar os registros.
-- FUNÇÃO: COUNT(*) - Contagem
SELECT COUNT(*) QuantidadeProdutos FROM Produtos

-- com WHERE
SELECT COUNT(*) QuantidadeProdutosTamanhoM FROM Produtos
WHERE Tamanho = 'M'

-- FUNÇÃO: SUM - Soma, passano o campo a ser soma entre os registros.
SELECT SUM(Preco) PrecoTotal FROM Produtos

-- FUNÇÃO: MAX - Maior valor.
SELECT MAX(Preco) FROM Produtos
WHERE Tamanho = 'M'

-- FUNÇÃO: MIN - Menor valor.
SELECT MIN(Preco) FROM Produtos
WHERE Tamanho = 'M'

-- FUNÇÃO: AVG - Média (aritmética) de um campo dos registros.
SELECT AVG(Preco) FROM Produtos
--WHERE Tamanho = 'M'

-- # Concatenando colunas
-- Ao concatenar no select, transforma tudo em um campo (coluna), que pode ou não ser nomeada
SELECT 
    Nome + ', Cor: ' + Cor + ', Gênero:' + Genero as NomeProduto, -- Nomeada
    Nome + ', Cor: ' + Cor + ', Gênero:' + Genero -- Anônima,
FROM Produtos

-- FUNÇÕES: UPPER 
SELECT 
    Nome + ', Cor: ' + Cor + ', Gênero:' + Genero as NomeProduto, -- Nomeada
    Nome + ', Cor: ' + Cor + ', Gênero:' + Genero, -- Anônima,
    UPPER(Nome),
    LOWER(Cor)
FROM Produtos