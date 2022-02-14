CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    Animal VARCHAR(20) NOT NULL,
    Atendente VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produto(
	id INT AUTO_INCREMENT,
    Tipo VARCHAR(20) NOT NULL, /*CARNE VERMELHA OU BRANCA*/
    CarneVermelha BOOLEAN NOT NULL, /*TRUE OR FALSE*/
    CarneBranca BOOLEAN NOT NULL, /*TRUE OR FALSE*/
    Quantidade INT NOT NULL,
    Preco DECIMAL NOT NULL,
    fk_categoria INT NOT NULL,    
    PRIMARY KEY(id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(Animal, Atendente)
VALUES
("Porco", "Mauricio"),
("Boi", "Paulo"),
("Galinha", "Marcos"),
("Costela", "Mauricio"),
("Pato", "Marcos");


INSERT INTO tb_produto(Tipo, CarneVermelha,CarneBranca, Quantidade, Preco, fk_categoria)
VALUES 
("Carne Branca", false, true, 1, 45.0, 2),
("Carne Branca", false, true, 1, 55.0, 2),
("Carne Vermelha", true, false, 2, 80.0, 1),
("Carne Vermelha", true, false, 1, 65.0, 1),
("Carne Branca", false, true, 1, 30.0, 2),
("Carne Branca", false, true, 3, 95.0, 2),
("Carne Vermelha", true, false, 2, 70.0, 1),
("Carne Vermelha", true, false, 4, 125.0, 1);

SELECT * FROM tb_produto WHERE Preco > 50;
SELECT * FROM tb_produto WHERE Preco BETWEEN 3 AND 60;
SELECT * FROM tb_categorias WHERE Animal LIKE 'c%';

SELECT * FROM tb_produto INNER JOIN tb_categorias ON tb_categorias.id = tb_produto.id; 
SELECT * FROM tb_produto INNER JOIN tb_categorias ON tb_categorias.id = tb_produto.id WHERE tb_produto.Tipo = "Carne Branca";

