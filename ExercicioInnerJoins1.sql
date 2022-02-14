CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT(5) AUTO_INCREMENT,
    Nome VARCHAR(20) NOT NULL, 
    Nacionalidade VARCHAR(20) NOT NULL,
	Arma VARCHAR(20),	
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem INT(8) AUTO_INCREMENT,
    Ataque INT(3) NOT NULL, 
    Defesa INT(3) NOT NULL,
	Inteligencia INT(3) NOT NULL,
	Destreza INT(3) NOT NULL,
    Agilidade INT(3) NOT NULL,		
	fk_classe INT NOT NULL,	
    PRIMARY KEY (id_personagem), 
    FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);

SELECT * FROM tb_classe;

INSERT INTO tb_classe(Nome, Nacionalidade, Arma)
	VALUES("Alerquina", "Americana", "Revólver"); 
    
INSERT INTO tb_classe(Nome, Nacionalidade, Arma)
	VALUES("Jorge", "Italiano", "Espingarda"); 
    
INSERT INTO tb_classe(Nome, Nacionalidade, Arma)
	VALUES("Lucius", "Brasileiro", "Pistola"); 
    
INSERT INTO tb_classe(Nome, Nacionalidade, Arma)
	VALUES("Akira", "Japonês", "Espada"); 
    
INSERT INTO tb_classe(Nome, Nacionalidade, Arma)
	VALUES("Azy", "Americana", "Arco e Flecha");   
    -------------------------------------------------
INSERT INTO tb_personagem(Ataque, Defesa, Inteligencia, Destreza, Agilidade, fk_classe)
		VALUES(1500, 1100, 1350, 1800, 1150, 1);
        
INSERT INTO tb_personagem(Ataque, Defesa, Inteligencia, Destreza, Agilidade, fk_classe)
		VALUES(1400, 1345, 1800, 2000, 3000, 3);
        
INSERT INTO tb_personagem(Ataque, Defesa, Inteligencia, Destreza, Agilidade, fk_classe)
		VALUES(1600, 3500, 1500, 1400, 2200, 5);
        
INSERT INTO tb_personagem(Ataque, Defesa, Inteligencia, Destreza, Agilidade, fk_classe)
		VALUES(2020, 1700, 2500, 1400, 1900, 4);  
        
SELECT * FROM tb_personagem;  

UPDATE tb_personagem 
SET Agilidade = 1900
WHERE id_personagem = 	4;

SELECT * FROM tb_personagem WHERE Ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;        

SELECT * FROM tb_classe WHERE nome LIKE "%C%";

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe WHERE tb_classe.nome = "Assassino";
