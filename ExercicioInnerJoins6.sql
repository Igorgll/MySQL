CREATE DATABASE db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT, 
    Categoria VARCHAR(255) NOT NULL,
    Professor VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

use db_cursoDaMinhaVida;
CREATE TABLE tb_curso(
	id INT AUTO_INCREMENT,
	Preco DECIMAL NOT NULL,
    Aula VARCHAR(255) NOT NULL,
    Duracao VARCHAR(255) NOT NULL,
    fk_categoria INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(Categoria, Professor)
VALUES
("JAVA", "Anderson"),
("HTML", "Guanabara"),
("MYSQL", "Boaz"),
("JavaScript", "Roberto"),
("Ruby", "Marcos");

INSERT INTO tb_curso(Preco, Aula, Duracao, fk_categoria)
VALUES
(50.0, "Introdução JAVA", "1 hora e meia", 1),
(65.0, "HTML Avançado", "2 horas", 2),
(80.0, "Introdução MYSQL", "3 horas", 3),
(100.0, "Introdução JavaScript", "Meia hora", 4),
(100.0, "Orientação ao objeto Ruby", "2 horas e 20 minutos", 5),
(85.0, "JAVA Avançado", "1 hora", 1),
(250.0, "MYSQL Avançado", "3 horas e meia", 3),
(3.0, "Hello World JavaScript", "2 minutos", 4);

SELECT * FROM tb_curso WHERE Preco > 50; 
SELECT * FROM tb_curso WHERE Preco BETWEEN 3 AND 60;
SELECT * FROM tb_curso WHERE Aula LIKE 'j%';

SELECT * FROM tb_curso INNER JOIN tb_categorias ON tb_categorias.id = tb_curso.id; 

SELECT * FROM tb_curso INNER JOIN tb_categorias ON tb_categorias.id = tb_curso.id WHERE tb_curso.fk_categoria = 1;

