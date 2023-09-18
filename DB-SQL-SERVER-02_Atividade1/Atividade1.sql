CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	Salario DECIMAL (9,2) NOT NULL
);

INSERT INTO tb_colaboradores(Nome,Cargo,Idade,Salario) 
VALUES 
('Jovem1', 'Analista de Sistema',35,5200.00), 
('Jovem2', 'Chefia',52,19820.00), 
('Jovem3', 'Desenvolvedor',25,6200.00), 
('Jovem4', 'Estagiario',18,1250.00), 
('Jovem5', 'Surpevisor',65,15900.00);

SELECT * FROM tb_colaboradores where Salario > 2000.00;
SELECT * FROM tb_colaboradores where Salario < 2000.00;

UPDATE tb_colaboradores SET Idade = 19 WHERE Nome = 'Jovem4' AND Cargo = 'Estagiario';

