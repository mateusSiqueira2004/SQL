CREATE DATABASE db_lojinha;

USE db_lojinha;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Quantidade INT NOT NULL,
	Validade DATE,
	Preco DECIMAL(6,2) NOT NULL
);

INSERT INTO tb_produtos(Nome, Quantidade, Validade, Preco) VALUES
('Macarrao', 150, '2053-09-25', 15.62),
('Bolacha', 200, '2024-01-21', 2.58),
('Arroz', 80, '2025-10-30', 20.20),
('Feijao', 110, '2024-05-12', 13.50),
('Doritos', 50, '2024-04-13', 8.99),
('Pao', 60, '2023-10-12', 0.60),
('Queijo', 100, '2023-12-10', 4.62),
('Mortandela', 100, '2023-12-15', 2.62);

SELECT * FROM tb_produtos WHERE Preco > 500;
SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos SET Nome = 'QueijoChique', Preco = 550.00 WHERE id = 7
