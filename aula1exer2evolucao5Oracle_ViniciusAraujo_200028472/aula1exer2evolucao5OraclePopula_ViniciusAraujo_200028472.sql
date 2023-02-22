-- --------  aula1exer2evolucao4  ----------
--
--                    SCRIPT POPULA
--
-- Data Criacao ...........: 29/10/2022
-- Autor(es) ..............: Mateus Moreira Lima,  Vinicius Assumpção de Araujo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: VRVR
--
-- Ultimas Alteracoes
--   01/11/2022 => Adequação do nome da base de dados
--   04/11/2022 => Alteração do nome da base de dados.
-- 				=> Correção de tuplas que estavam incorretas.
-- 				=> Adição de novas tuplas.
--   09/11/2022 => Alteração do nome da base de dados aula1exer2evolucao3 para aula1exer2evolucao4.
--              => Remoção da tabela supervisiona.
--   14/11/2022 => Arrumando script para o padrao exigido na disciplina.
--   11/12/2022 => Adequação para oracle.
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 		   => 05 Consultas
--
-- ---------------------------------------------------------


-- INSERCOES
INSERT ALL 
	INTO VAA_PESSOA VALUES (11122233344, 'Victor Leão', 'victorl')
	INTO VAA_PESSOA VALUES(22233344455, 'João Pedro', 'joaop')
	INTO VAA_PESSOA VALUES(33344455566, 'Yure Breno', 'yureb')
	INTO VAA_PESSOA VALUES(02558944798, 'Gabriel Lima', 'gabriell')
	INTO VAA_PESSOA VALUES(03786765774, 'João Camargo', 'joaoc')
	INTO VAA_PESSOA VALUES(03896867776, 'Vinícius Augusto Araújo', 'viniciusaa')
	INTO VAA_PESSOA VALUES(03517646167, 'Rafael Pereira Costa', 'rafaelpc')
	INTO VAA_PESSOA VALUES(44455566677, 'Sofia Ramos', 'sofiar')
	INTO VAA_PESSOA VALUES(55566677788, 'Raquel Silva', 'raquels')
	INTO VAA_PESSOA VALUES(66677788899, 'Daniel Santos', 'daniels')
	INTO VAA_PESSOA VALUES(03817687456, 'Gabriel Barbosa', 'gabrielb')
	INTO VAA_PESSOA VALUES(02431763274, 'Talita Silva Medeiros', 'talitasm')
	INTO VAA_PESSOA VALUES(02869714614, 'Maria Eduarda Vaz', 'dudaev')
	INTO VAA_PESSOA VALUES(09686197618, 'Giovanna Oliveira Saldanha', 'giovannaos')
   INTO VAA_PESSOA VALUES (06087267118, 'Bruna Aurora Fogaça', 'brunaf')
   INTO VAA_PESSOA VALUES (61676464140, 'Ricardo Silveira', 'ricardos')
    INTO VAA_PESSOA VALUES(79458890287, 'João Luís Vieira', 'joaolv')
    INTO VAA_PESSOA VALUES(25569317187, 'Eduardo Vinícius Dias', 'eduardovd')
    INTO VAA_PESSOA VALUES(05671716749, 'Elias Lorenzo Nascimento', 'eliasln')
    SELECT * FROM DUAL;


INSERT all 
INTO VAA_GERENTE VALUES (11122233344, 'Médio', 'victor@gmail.com')
INTO VAA_GERENTE VALUES	(22233344455, 'Superior', 'joao@gmail.com')
INTO VAA_GERENTE VALUES	(33344455566, 'Superior', 'yure@gmail.com')
INTO VAA_GERENTE VALUES	(02558944798, 'Primário', 'gabriellima@gmail.com')
INTO VAA_GERENTE VALUES	(03896867776, 'Superior', 'viniciusaaraujo@gmail.com')
INTO VAA_GERENTE VALUES	(03517646167, 'Superior', 'rafaelpereira@hotmail.com')
 INTO VAA_GERENTE VALUES   (06087267118, 'Médio', 'brunaaurora@gmail.com')
 INTO VAA_GERENTE VALUES   (61676464140, 'Superior', 'ricardosilveira@gmail.com')
 INTO VAA_GERENTE VALUES   (79458890287, 'Superior', 'joaovieira@outlook.com')
        SELECT * FROM DUAL;


INSERT ALL 
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES (44455566677, 'RR', 'Boa Vista', 'Trinta e Um de Março', 'Rua Manoel Dias de Almeida', 263, NULL, 69305280)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES 	(55566677788, 'BA', 'Salvador', 'Alto do Coqueirinho', 'Rua Sérgio Henrique', 829, NULL, 41615430)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES 	(66677788899, 'RJ', 'Rio de Janeiro', 'Leblon', 'Rua Carlos Gois', 166, 'Próximo a mercearia central', 22440040)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES 	(03817687456, 'MG', 'Uberaba', 'Conjunto Sete Colinas', 'Rua Sérgio Filatoff', 282, NULL, 38061030)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES 	(02431763274, 'RJ', 'São João de Meriti', 'Vila dos Guedes', 'Rua Dona Elisa Guedes', 206, NULL, 25571020)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES 	(02869714614, 'MA', 'São Luís', 'Jardim São Raimundo', 'Rua das Flores', 840, 'Lote 4', 65057800)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES 	(09686197618, 'DF', 'Brasília', 'Setor Sudoeste', 'Quadra SQSW 302', 123, 'Bloco J', 70673210)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES    (79458890287, 'DF', 'Brasília', 'Riacho Fundo II', 'Quadra QN11', 755, 'Conjunto 2', 7181612)
INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES   (25569317187, 'DF', 'Brasília', 'Taguatinga Norte', 'QNL 24 Conjunto A', 574, NULL, 72161401)
 INTO VAA_EMPREGADO (cpf, estado, cidade, bairro, rua, numero, complemento, cep) VALUES    (05671716749, 'DF', 'Brasília', 'São Sebastião', 'Rua 50', 400, NULL, 71691012)
        SELECT * FROM DUAL;


INSERT ALL 
INTO VAA_telefone VALUES (1, 61987146546)
INTO VAA_telefone VALUES 	(2, 62995641403)
INTO VAA_telefone VALUES 	(2, 11992564100)
INTO VAA_telefone VALUES 	(3, 61985130452)
INTO VAA_telefone VALUES 	(4, 61992560427)
INTO VAA_telefone VALUES 	(5, 62997056504)
INTO VAA_telefone VALUES 	(6, 61983560422)
INTO VAA_telefone VALUES    (7, 61993030693)
INTO VAA_telefone VALUES   (8, 61997735034)
 INTO VAA_telefone VALUES   (9, 61994252690)
        SELECT * FROM DUAL;


INSERT ALL
INTO VAA_VENDA (dtVenda, matricula) VALUES ('2020-12-12', 1)
INTO VAA_VENDA (dtVenda, matricula) VALUES 	('2022-10-29', 2)
INTO VAA_VENDA (dtVenda, matricula) VALUES 	('2021-05-20', 2)
INTO VAA_VENDA (dtVenda, matricula) VALUES 	('2021-05-20', 3)
INTO VAA_VENDA (dtVenda, matricula) VALUES 	('2022-03-03', 4)
INTO VAA_VENDA (dtVenda, matricula) VALUES 	('2022-04-04', 5)
INTO VAA_VENDA (dtVenda, matricula) VALUES 	('2022-08-08', 7)
 INTO VAA_VENDA (dtVenda, matricula) VALUES    ('2022-09-09', 8)
 INTO VAA_VENDA (dtVenda, matricula) VALUES    ('2022-10-10', 9)
 INTO VAA_VENDA (dtVenda, matricula) VALUES    ('2022-05-02', 10)
        SELECT * FROM DUAL;


INSERT ALL 
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES ('Cosmético', 11122233344)
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES	('Alimentício', 11122233344)
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES	('Eletrônico', 22233344455)
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES	('Vestuário', 33344455566)
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES	('Limpeza', 03786765774)
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES	('Higiene e beleza', 02558944798)
INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES	('Mercearia', 03896867776)
  INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES  ('Livros', 79458890287)
  INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES  ('Esportes', 61676464140)
 INTO VAA_AREA_VENDA (nomeArea, cpfGerente) VALUES   ('Informática', 06087267118)
        SELECT * FROM DUAL;


INSERT all 
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES (10.50, 1, 'Batom vermelho AVON')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES	(22.99, 2, 'Biscoito Oreo 4 unidades')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES	(154.35, 3, 'Controle PS4')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES	(399.99, 4, 'Camiseta Nike Treino PSG')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES	(350.00, 4, 'Camisa I Cruzeiro 2022')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES	(120.00, 3, 'Fone de ouvido sem fio')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES	(9.99, 5, 'Pano multiuso 10 unidades')
 INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES   (99.99, 10, 'Teclado Mecânico')
 INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES   (25.00, 8, 'Diário de um Banana 3')
INTO VAA_PRODUTO (precoUniProduto, idArea, nomeProduto) VALUES   (79.99, 9, 'Bola Champions League')
        SELECT * FROM DUAL;


-- Corresponde ao ITEM de cada VENDA
INSERT all 
INTO VAA_contem VALUES(1, 1, 3)
INTO VAA_contem VALUES	(2, 2, 4)
INTO VAA_contem VALUES	(3, 2, 5)
INTO VAA_contem VALUES	(3, 3, 1)
INTO VAA_contem VALUES	(4, 4, 1)
INTO VAA_contem VALUES	(5, 5, 2)
INTO VAA_contem VALUES	(6, 6, 3)
 INTO VAA_contem VALUES   (8, 9, 1)
 INTO VAA_contem VALUES   (9, 9, 1)
 INTO VAA_contem VALUES   (10, 9, 1)
 INTO VAA_contem VALUES   (8, 10, 2)
 INTO VAA_contem VALUES   (8, 7, 10)
 INTO VAA_contem VALUES   (9, 8, 100)
        SELECT * FROM DUAL;
    