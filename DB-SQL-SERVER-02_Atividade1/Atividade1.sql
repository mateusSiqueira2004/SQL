CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	Salario DECIMAL NOT NULL
);

INSERT INTO tb_colaboradores(Nome,Cargo,Idade,Salario) VALUES ('Jovem1', 'Analista de Sistema',35,5200.00);
INSERT INTO tb_colaboradores(Nome,Cargo,Idade,Salario) VALUES ('Jovem2', 'Chefia',52,19820.00);
INSERT INTO tb_colaboradores(Nome,Cargo,Idade,Salario) VALUES ('Jovem3', 'Desenvolvedor',25,6200.00);
INSERT INTO tb_colaboradores(Nome,Cargo,Idade,Salario) VALUES ('Jovem4', 'Estagiario',18,1250.00);
INSERT INTO tb_colaboradores(Nome,Cargo,Idade,Salario) VALUES ('Jovem5', 'Surpevisor',65,15900.00);

SELECT * FROM tb_colaboradores where Salario > 2000;
SELECT * FROM tb_colaboradores where Salario < 2000;

UPDATE tb_colaboradores SET Idade = 19 WHERE Nome = 'Jovem4' AND Cargo = 'Estagiario';