USE dotnet
GO

/*
SELECT * FROM Clientes
WHERE Nome = 'Narto'
*/

-- É importante lembrar de usar a cláusula WHERE, pois sem ela todos os registros da 
-- tabela serão atualizados tanto no UPDATE quanto no DELETE.

/*
UPDATE Clientes
SET Email = 'email@todos.com'
*/
/*
UPDATE Clientes
SET Email = 'narto@email.com'
WHERE Id = 1002
*/
-- Atualizando mais de um campo ao mesmo tempo. Não precisa de indentação.
/*
UPDATE 
    Clientes 
SET 
    Email = 'narto@email.com',
    Sobrenome = 'JUNIOR'
WHERE 
    Id = 1003
*/

-- Atualizando com transação
/*
BEGIN TRAN -- Inicia transação
UPDATE 
    Clientes 
SET 
    Nome = 'NARTO'
WHERE 
    Id = 1004

ROLLBACK -- Cancela a transação
COMMIT   -- Confirma a transação
*/

-- Sem o WHERE, remove todos os registros de uma tabela.
/*
BEGIN TRAN
DELETE 
    Clientes
WHERE 
    Id = 1002 

ROLLBACK
COMMIT
