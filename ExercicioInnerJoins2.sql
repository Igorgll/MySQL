CREATE DATABASE db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT, 
    Preco DECIMAL NOT NULL,
    Quantidade INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
	id INT AUTO_INCREMENT,
	Sabor VARCHAR(20) NOT NULL, /*doce ou salgada*/
    Massa VARCHAR(20) NOT NULL, /*Fina, média ou grossa*/
    Molho BOOLEAN NOT NULL,
    Calabresa BOOLEAN NOT NULL,
    Queijo BOOLEAN NOT NULL,
    Brigadeiro BOOLEAN NOT NULL,
    Confete BOOLEAN NOT NULL,    
    fk_categoria INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(Preco, Quantidade)
VALUES
(40.0, 1),
(35.0, 1),
(80.0, 2),
(35.0, 1),
(120.0, 3);

INSERT INTO tb_pizza(Sabor, Massa, Molho, Calabresa, Queijo, Brigadeiro, Confete, fk_categoria, Adicional)
VALUES
("Salgada", "Média", true, true, true, false, false, 1),
("Salgada", "Fina", true, false, true, false, false, 1),
("Salgada", "Grossa", true, true, false, false, false, 1),
("Doce", "Média", false, false, false, true, false, 2),
("Doce", "Média", false, false, false, true, true, 2),
("Doce", "Fina", false, false, false, true, true, 2),
("Doce", "Grossa", false, false, false, true, false, 2),
("Salgada", "Média", true, false, true, false, false, 1);


SELECT * FROM tb_categorias WHERE Preco > 45; 
SELECT * FROM tb_categorias WHERE Preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE Adicional LIKE 'c%';

SELECT * FROM tb_pizza INNER JOIN tb_categorias ON tb_categorias.id = tb_pizza.id; 
SELECT * FROM tb_pizza INNER JOIN tb_categorias ON tb_categorias.id = tb_pizza.id WHERE tb_pizza.Sabor = "Doce";

