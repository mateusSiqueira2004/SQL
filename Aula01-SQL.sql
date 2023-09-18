CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos 
(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY(Id)
);
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(Nome, Quantidade, DataValidade, Preco)
VALUES ('Jao', 900, '2028-09-18', 8.50);