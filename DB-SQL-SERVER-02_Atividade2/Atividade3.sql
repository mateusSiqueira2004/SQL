CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	tipo VARCHAR(50) NOT NULL,
	descriTipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	preco DECIMAL(6,1) NOT NULL,
	quantProd INT,
	descricao VARCHAR(255),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id),
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tipo, descriTipo)
VALUES
('Medicamentos com Tarja', 'Medicamentos que é necessário receita médica'),
('Medicamentos sem Tarja', 'Medicamentos que não é necessário receita médica'),
('Medicamentos Tarja Amarela', 'Medicamento genérico'),
('Vitaminas e Suplementos', 'Consumiveis para o dia dia'),
('Cosméticos', 'Produtos para cuidades pessoais');

INSERT INTO tb_produtos(nome, preco, quantProd,descricao, categoria_id)
VALUES
('Dipirona', 3.35, 500, 'analgésico e antitérmico utilizado em enfermidades que tenham dor e febre como sintomas', 1),
('Paracetamol', 4.99, 200, 'um medicamento indicado para o tratamento de febre e também colabora com auxílio temporário a dores leves e moderadas. ', 3),
('Ibuprofeno ', 6.95, 100, ' agente anti-inflamatório não esteroidal (não derivado de hormônios)', 2),
('Loratadina ', 2.49, 150, 'analgésico e antitérmico utilizado em enfermidades que tenham dor e febre como sintomas', 2),
('Ômega-3 ', 41.90, 50, ' um ácido graxo, ou seja, um tipo de gordura saudável necessária para que o organismo realize diversas funções. ', 4),
('Protetor Solar', 25.90, 60, 'Creme protetor contra luzes UV', 5),
('Shampoo', 25.25, 35, 'produto utilizado principalmente para remover óleo, sujeira e pele morta do couro cabeludo que se agregam ao cabelo ao longo do tempo.', 5),
('Creme Hidratante', 35.50, 25, 'Tratamento de pele', 5);


SELECT nome, preco, quantProd, descricao, categoria_id, tipo, descriTipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE preco > 50;

SELECT nome, preco, quantProd, descricao, categoria_id, tipo, descriTipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE preco BETWEEN 5 AND 60;

SELECT nome, preco, quantProd, descricao, categoria_id, tipo, descriTipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE nome LIKE '%c%'

SELECT nome, preco, quantProd, descricao, categoria_id, tipo, descriTipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

SELECT nome, preco, quantProd, descricao, categoria_id, tipo, descriTipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE tipo = 'Cosméticos';
