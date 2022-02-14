CREATE DATABASE db_farmacia_do_bem;

use db_farmacia_do_bem;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    Categoria VARCHAR(20) NOT NULL, 
    Generico BOOLEAN NULL,
    PRIMARY KEY (id)    
);

CREATE TABLE tb_produto(
	id INT AUTO_INCREMENT,
    Produto VARCHAR(20),
    Preco DECIMAL(3,1),
    Marca VARCHAR(20), 
    Receita BOOLEAN,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (Categoria, Generico)
VALUES 
("Cosméticos", false), 
("Higiene", false),
("Medicamentos", true),
("Suplementos", false),
("Alimentos", false);

INSERT INTO tb_produto (Produto, Preco, Marca, Receita, id_categoria)
VALUES 
("Paracetamol", 7.0, "TYLENOL", false, 3),
("Desodorante", 18.0, "Rexona", false, 2),
("Whey Protein", 65.0, "Max Titanium", false, 4),
("Dipirona", 5.0, "Medley", false, 3),
("Calman", 8.0, "aspen", true, 3),
("Barra de Cereal", 5.20, "Nutry", false, 5), 
("Papel Higiênico", 15.0, "Personal", false, 2),
("Esmalte", 3.0, "DNA", false, 1);

SELECT * FROM tb_produto WHERE Produto LIKE 'b%';
SELECT * FROM tb_produto WHERE Preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE Preco > 60;

SELECT * FROM tb_produto INNER JOIN tb_categorias ON tb_categorias.id = tb_produto.id_categoria;

SELECT * FROM tb_produto INNER JOIN tb_categorias ON tb_categorias.id = tb_produto.id_categoria WHERE tb_categorias.Categoria = "Cosméticos";




	