CREATE TABLE usuario(
id_usuario INTEGER PRIMARY KEY NOT NULL,
nome VARCHAR(100),
frase TEXT
)

INSERT INTO usuario(id_usuario,nome,frase) VALUES(1,'Maria','Gosto de Estudar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(2,'Daniel','Gosto de Estudar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(3,'Luan','Gosto de Estudar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(4,'Vanessa','Gosto de Estudar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(5, 'Carlos', 'Gosto de Escrever');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(6, 'Fernanda', 'Gosto de Viajar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(7, 'Eduardo', 'Gosto de Jogar Futebol');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(8, 'Beatriz', 'Gosto de Cozinhar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(9, 'João', 'Gosto de Desenhar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(10, 'Patrícia', 'Gosto de Escutar Música');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(11, 'Felipe', 'Gosto de Andar de Bicicleta');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(12, 'Juliana', 'Gosto de Fotografia');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(13, 'Ricardo', 'Gosto de Assistir Filmes');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(14, 'Laura', 'Gosto de Jardinagem');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(15, 'Lucas', 'Gosto de Programar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(16, 'Sofia', 'Gosto de Meditar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(17, 'Rafael', 'Gosto de Nadar');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(18, 'Gabriela', 'Gosto de Fazer Trilhas');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(19, 'Marcos', 'Gosto de Tocar Violão');
INSERT INTO usuario(id_usuario,nome,frase) VALUES(20, 'Larissa', 'Gosto de Praticar Yoga');
 
SELECT * FROM usuario

--seleciona todos os usuários

SELECT * FROM usuario WHERE nome = 'Maria'

--busca as frases de todos os usuários

SELECT FRASE FROM usuario

SELECT NOME,FRASE FROM usuario WHERE id_usuario = 4

--update

UPDATE usuario   SET frase  = 'Gosta de Comer' WHERE id_usuario = '4'

UPDATE usuario set frase = 'joga futebol',nome = 'Rafael' WHERE id_usuario = 2

SELECT frase,nome FROM usuario

--delete 

SELECT * FROM usuario WHERE id_usuario = 4

DELETE FROM usuario WHERE id_usuario = 4

SELECT * FROM usuario WHERE id_usuario = 4

DELETE FROM usuario

SELECT * from usuario

-- deleta todo o banco sem reversão
DROP TABLE usuario

SELECT * FROM usuario

--alter table // adicionando coluna 

ALTER TABLE usuario add COLUMN hobby VARCHAR (50)

alter TABLE usuario ADD COLUMN qta_famila INTEGER DEFAULT 2

SELECT * FROM usuario

-- Deleta a coluna especifica

ALTER TABLE usuario DROP COLUMN hobby

SELECT * FROM usuario WHERE id_usuario >=2

 SELECT * from usuario WHERE id_usuario <> 2
 
 --operadores lógicos 
 
 SELECT * FROM usuario WHERE   id_usuario >= 1 AND id_usuario <= 3
 
 SELECT * FROM usuario WHERE id_usuario >= 1 or id_usuario <= 3    
 
 SELECT * FROM usuario WHERE id_usuario BETWEEN 1 AND 3
 
 SELECT * FROM usuario WHERE id_usuario NOT IN(1,3)
 
 -- seleciona na tabela todos os usuários que possuem a letra "a", em qualqueer posição
 
 SELECT * FROM usuario WHERE nome LIKE '%a%'
 
 -- seleciona na tabela todos os usuários que possuem a letra "v", porem com a condição da letra estar na primeira posição 
 SELECT * FROM usuario WHERE nome LIKE 'V%'
 
 