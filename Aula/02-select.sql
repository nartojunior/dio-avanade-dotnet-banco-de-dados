use dotnet
GO

-- # Seleção (consulta | query)
--SELECT * from dbo.Clientes

-- # Ordenação ascendente.
/*
SELECT * from dbo.Clientes
ORDER BY Nome ASC
*/

-- # Ordenação decrescente.
/*
SELECT * from dbo.Clientes
ORDER BY Nome DESC
*/

-- # Ordenação por mais de uma coluna.
/*
SELECT * from dbo.Clientes
ORDER BY Nome ASC, Sobrenome ASC
*/

-- # Selecionando colunas específicas.
/*
SELECT Email, AceitaComunicados FROM dbo.Clientes
*/

-- # Consulta com filtro (WHERE)
/**
SELECT * from Clientes
where Nome='Adam'

-- com mais de um campo (AND)
SELECT * from Clientes
where Nome='Adam'
AND Sobrenome='Barr' 

-- com mais de um campo (OR)
SELECT * FROM Clientes
WHERE Nome='Adam'
OR Sobrenome='Barr'
/**/

-- com LIKE (string)
SELECT * FROM Clientes
WHERE Nome LIKE 'G%'

-- % : espera qualquer valor de qualquer tamanho
-- _ : espera qualquer caractere, ocupando um caractere na busca


