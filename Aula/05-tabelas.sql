USE dotnet
GO

/* Criando tabelas
 # Cláusula CREATE
 - IDENTITY(1, 1) - garante a identidade e autoincrementa pelo gerenciador do banco.
 - PRIMARY KEY - Informa a chave primária, que identifica o registro único na tabela.
 - [NOT] NULL - indica se o campo pode ser nulo ou precisa ser preenchido na inserção de regsitros.
*/
/*
BEGIN TRAN
CREATE TABLE Produtos2 (
    Id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    Nome VARCHAR(255)  NOT NULL,
    Cor VARCHAR (50) NULL,
    Preco DECIMAL(13, 2) NOT NULL,
    Tamanho VARCHAR(5) NULL,
    Genero CHAR(1) NULL
)

SELECT * FROM Produtos2

ROLLBACK
COMMIT
*/

-- Removendo tabela com Cláusula DROP.
/*
BEGIN TRAN
DROP TABLE Produtos2
ROLLBACK
COMMIT
*/