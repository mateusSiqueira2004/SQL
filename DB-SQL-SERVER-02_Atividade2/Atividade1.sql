CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	especie VARCHAR(100) NOT NULL,
	tipo VARCHAR(100) NOT NULL,
);
CREATE TABLE tb_personagens(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	personagem_level INT NOT NULL,
	saude DECIMAL(10,1),
	localizacao VARCHAR(255),
	forca INT,
	classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(Id),
);

INSERT INTO tb_classes (especie, tipo)
VALUES 
('Elfo', 'Arqueiro'),('Humano', 'Paladino' ),('Ogro','Cavaleiro'),
('Draconatos','Espadachim'),('Anão','Lanceiro'),('Tieflings', 'Feiticeiro(a)'), 
('Vampiro', 'Mago'), ('Fada', 'Maga') ;

INSERT INTO tb_personagens(nome,personagem_level,saude,localizacao, forca,classe_id)
VALUES
('Histok', 75, 1200.5, 'x = 1.250 && y = 2.560 && z = 67', 1500, 1),
('Estoick', 85, 3200.9, 'x = 1.200 && y = 2.570 && z = 67', 3500,2),
('Shackre', 150, 8000, 'x = 5.250 && y = 4.500 && z = 89', 9500,4),
('Dracula', 150, 6000, 'x = 443.556 && y = 443.556 && z = 66', 12000,7),
('CLORCK', 100, 5500.1, 'x = 3.623 && y = 9.520 && z = 52', 5000,3),
('Trakila', 100, 1000, 'x = 1.200 && y = 1.200 && z = 50', 550,8),
('Grandfall', 60, 2000, 'x = 3.250 && y = 1.200 && z = 20', 1250,5),
('Krafka', 70, 3000, 'x = 6.200 && y = 200.542 && z = -250', 2500,6);

 SELECT tb_personagens.Id, nome, personagem_level, forca, classe_id, especie, tipo 
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.Id = tb_personagens.classe_id
 WHERE forca > 2000;

 SELECT tb_personagens.Id, nome, personagem_level, saude, classe_id, especie, tipo 
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.Id = tb_personagens.classe_id
 WHERE saude BETWEEN 1000 AND 2000;

 SELECT tb_personagens.Id, nome, personagem_level, saude, localizacao, forca, classe_id, especie, tipo
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.Id = tb_personagens.classe_id
 WHERE nome LIKE '%c%';

 SELECT tb_personagens.Id, nome, personagem_level, saude, localizacao, forca, classe_id, especie, tipo 
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.Id = tb_personagens.classe_id;

 SELECT tb_personagens.Id, nome, personagem_level, saude, localizacao, forca, classe_id, especie, tipo 
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.Id = tb_personagens.classe_id
 WHERE tipo = 'Arqueiro';