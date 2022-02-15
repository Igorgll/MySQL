CREATE DATABASE db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT, 
    Categoria VARCHAR(255) NOT NULL,
    Quantidade INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id INT AUTO_INCREMENT,
	Preco DECIMAL NOT NULL,
    Produto VARCHAR(255) NOT NULL,
    Marca VARCHAR(255) NOT NULL,
    fk_categoria INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(Categoria, Quantidade)
VALUES
("Decoração", 1),
("Hidráulica", 1),
("Construção", 1),
("Utensílios", 1),
("Acessórios Banheiro", 1);

INSERT INTO tb_produtos(Preco, Produto, Marca, fk_categoria)
VALUES
("50.0", "Cimento", "X", 3),
("65.0", "Privada", "L", 5),
("80.0", "Porta de Madeira", "C", 3),
("10.0", "Lâmpada", "O", 4),
("100.0", "Espelho", "Z", 1),
("85.0", "Entrada de Água", "V", 2),
("250.0", "Tijolos", "N", 3),
("500.0", "Pisos Porcelanato", "P", 3);

SELECT * FROM tb_produtos WHERE Preco > 50; 
SELECT * FROM tb_produtos WHERE Preco BETWEEN 3 AND 60;
SELECT * FROM tb_produtos WHERE Produto LIKE 'c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id; 
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id WHERE tb_categorias.Categoria = "Hidráulica";
