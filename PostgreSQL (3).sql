CREATE TABLE investimentos(
id_investimento INTEGER PRIMARY KEY not null,
nome VARCHAR(100),
valor_inicial NUMERIC(7,2),
rendimento_mensal NUMERIC(6,2),
recebimento_mensal NUMERIC(6,2)  
 
)
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (1, 'tesouro direto', 5000.00, 50.00, 52.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (2, 'petrogas', 10000.00, 100.00, 105.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (3, 'mini dolar', 1500.00, 15.00, 16.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (4, 'xpmm', 2000.00, 20.00, 21.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (5, 'tesouro direto', 7000.00, 70.00, 72.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (6, 'petrogas', 12000.00, 120.00, 126.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (7, 'mini dolar', 1800.00, 18.00, 19.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (8, 'xpmm', 2500.00, 25.00, 26.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (9, 'tesouro direto', 6000.00, 60.00, 63.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (10, 'petrogas', 11000.00, 110.00, 115.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (11, 'mini dolar', 1700.00, 17.00, 18.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (12, 'xpmm', 2200.00, 22.00, 23.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (13, 'tesouro direto', 8000.00, 80.00, 84.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (14, 'petrogas', 13000.00, 130.00, 136.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (15, 'mini dolar', 1900.00, 19.00, 20.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (16, 'xpmm', 2700.00, 27.00, 28.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (17, 'tesouro direto', 9000.00, 90.00, 94.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (18, 'petrogas', 14000.00, 140.00, 147.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (19, 'mini dolar', 2000.00, 20.00, 21.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (20, 'xpmm', 3000.00, 30.00, 32.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (21, 'tesouro direto', 10000.00, 100.00, 105.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (22, 'petrogas', 15000.00, 150.00, 158.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (23, 'mini dolar', 2100.00, 21.00, 22.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (24, 'xpmm', 3500.00, 35.00, 37.00);

SELECT * from investimentos

-- Retornar o número total de investimentos cadastrados 
SELECT count(*) FROM investimentos

--Retornar o número total dee investimentos cadastrados no tesouro direto 
SELECT COUNT (*) FROM investimentos WHERE nome = 'tesouro direto'

-- descobrir o maior valor investido
SELECT MAX(valor_inicial) FROM investimentos

-- descobrir o menor valor investido
SELECT MIN(valor_inicial) FROM investimentos

--- descobrir a média do rendimento mensal
SELECT AVG(rendimento_mensal) FROM investimentos

--seleciona o valor total de investimentos
SELECT SUM (valor_inicial) FROM investimentos 

--colocar um apelido na coluna do select(aliás)
--sem apelido(aliás)
SELECT SUM(valor_inicial),SUM(rendimento_mensal),SUM(recebimento_mensal) FROM investimentos

--com aliás 
-- formas dar nomes as colunas para sua identificação
SELECT
SUM(valor_inicial) as valor_inicial,
SUM(rendimento_mensal) "rendimento_mensal",
sum(recebimento_mensal) recebimento_mensal FROM investimentos 

--concatenação"||" junta uma string com uma coluna 
SELECT
'Investimento: '|| sum(valor_inicial)
||' Rendimentos: '|| SUM(rendimento_mensal) AS Valorres FROM investimentos

--descobrir a média do rendimento mensal com round- Arredonda v com s 
SELECT AVG(recebimento_mensal),round(avg(recebimento_mensal)) FROM investimentos

SELECT round(avg(recebimento_mensal),2) FROM investimentos

--GROUP BY --é usado para agrupar linhas que têm os mesmos valores eem colunas específicas
--permitindo-nos realizar operações de agregação em cadaa grupo.
--Retornar o número total de investimentos cadastrados, agrupados por grupo de investimento.
SELECT nome, COUNT(*), SUM(recebimento_mensal) FROM investimentos GROUP by nome 

--Having -- permite filtrar o conjunto de resultados usando dados agregados.demo
--Retorna o número total de investimentos cadastrados, agrupados por grupos de investimentos. 

SELECT nome, COUNT(*), sum(recebimento_mensal) FROM investimentos GROUP By nome
HAVING SUM(recebimento_mensal)>=500


SELECT nome, COUNT(*), sum(recebimento_mensal) FROM investimentos GROUP By nome
HAVING SUM(recebimento_mensal)>=500
AND COUNT(*)<7

CREATE TABLE estoque(
id_estoque INTEGER PRIMARY KEY NOT NULL,
nome VARCHAR(250),  
cnpj VARCHAR(20) UNIQUE not NULL  
);

CREATE TABLE nota_fiscal(
id_nota_fiscal INTEGER PRIMARY KEY not NULL,
qta_itens INTEGER CHECK(qta_itens > 0),
num_comprador INTEGER,
data_compra TIMESTAMP,
valor_total NUMERIC(10,2)
);

CREATE TABLE produtos(
id_produto INTEGER PRIMARY KEY,
id_nota_fiscal INTEGER,
id_estoque INTEGER,
nome VARCHAR(100),
descricao VARCHAR(300),
avariado CHAR(1),
valor NUMERIC(7,2) CHECK(valor > 0),
validade DATE,
CONSTRAINT fk_id_nota_fiscal FOREIGN key(id_nota_fiscal) REFERENCES nota_fiscal(id_nota_fiscal),
CONSTRAINT fk_id_estoque FOREIGN KEY(id_estoque) REFERENCES estoque(id_estoque) 
)