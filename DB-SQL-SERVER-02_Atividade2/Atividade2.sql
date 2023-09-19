CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
Id BIGINT IDENTITY(1,1) PRIMARY KEY,
tipo VARCHAR(20) NOT NULL,
descricao VARCHAR(100)
);

CREATE TABLE tb_pizza(
Id BIGINT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,1) NOT NULL,
feedback DECIMAL(2,1),
categoria_id BIGINT,
URLimage VARCHAR(255), --É só de exemplo
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id),

);

select * from tb_pizza;


INSERT INTO tb_categorias(tipo, descricao)
VALUES
('Vegetariana', 'Pizza usando igredientes que não possuem carnes'),
('Doce', 'Pizza usando igredientes doces'),
('Especialidades', 'Pizzas especiais e exclusivas '),
('Personalizada', 'Pizza onde o cliente escolhe os igredientes'),
('Classica', 'Pizzas clássicas');

INSERT INTO tb_pizza(nome, preco, feedback, categoria_id, URLimage) VALUES
('LaVide',				59.99, 4.5, 3,'5155afdf6fafg1658915bv6156191121'),
('Portuguesa',			39.99, 5.0, 5,'fd4sfa5f561as5941fda5s1f56af4df56'),
('Cinco queijos',		50.00, 4.5, 1,'d456as1as56f5dsf1a56sdf1sa65f'),
('Chocolate',			39.00, 3.5, 2, '47156dfs5df5ag165as1'),
('Sla que nome dar',	60.00, 5.0, 3, 'DA78491949'),
('Vegetariana',			38.00, 3.5, 1, 'sdfa5f43ads1f65das65'),
('Frango com Catupiry', 35.00, 5.0, 5, '5fd1f6a51fd651a6f56d1a61f6156fd1');

INSERT INTO tb_pizza(nome, preco, categoria_id)
VALUES
('Personalizada', 40, 4);

SELECT nome, preco, feedback, categoria_id, tipo, descricao, URLimage 
FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizza.categoria_id
WHERE preco > 45;

SELECT nome, preco, feedback, categoria_id, tipo, descricao, URLimage 
FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizza.categoria_id
WHERE preco BETWEEN 50 AND 100;

SELECT nome, preco, feedback, categoria_id, tipo, descricao, URLimage 
FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizza.categoria_id
WHERE nome LIKE '%m%';

SELECT nome, preco, feedback, categoria_id, tipo, descricao, URLimage 
FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizza.categoria_id;

SELECT nome, preco, feedback, categoria_id, tipo, descricao, URLimage 
FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizza.categoria_id
WHERE tipo = 'Vegetariana';
