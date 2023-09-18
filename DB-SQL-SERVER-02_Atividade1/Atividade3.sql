CREATE DATABASE db_escolinha;

USE db_escolinha;

CREATE TABLE tb_alunos(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Idade INT NOT NULL,
	Serie INT NOT NULL,
	NotaFinal DECIMAL (6,1)
);

INSERT INTO tb_alunos(Nome, Idade, Serie, NotaFinal) VALUES 
('Jorginho', 15, 9, 8.5),
('Robertinho', 14, 8, 5.5),
('Ana', 15, 9, 10),
('Manuberto', 13, 7, 10),
('Priscila', 10, 4, 5.5),
('Ronisbertinho', 9,3, 4.5),
('Marquintos', 15, 9, 9.5),
('Vloria', 13, 7, 8.5);

SELECT * FROM tb_alunos WHERE NotaFinal > 7.0;
SELECT * FROM tb_alunos WHERE NotaFinal < 7.0;

UPDATE tb_alunos SET Idade = 8 WHERE Nome = 'Ana' and Id = 3;

