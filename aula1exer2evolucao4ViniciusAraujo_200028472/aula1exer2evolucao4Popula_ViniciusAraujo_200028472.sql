-- -------- << aula1exer2evolucao4 >> ----------
--
--                    SCRIPT POPULA
--
-- Data Criacao ...........: 29/10/2022
-- Autor(es) ..............: Gabriel Roger Amorim da Cruz, Vinicius Assupção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
-- Ultimas Alteracoes
-- 01/11/2022 : Adequação do nome da base de dados
-- 04/11/2022 : Alteração do nome da base de dados.
-- 				Correção de tuplas que estavam incorretas.
-- 				Adição de novas tuplas.
-- 08/11/2022 : Remoção da tabela supervisiona
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Usuários
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula1exer2evolucao4;

-- INSERCOES
INSERT INTO PESSOA
	(cpf, nomePessoa, senha) 
VALUES
	(11122233344, 'Victor Leão', 'victorl'),
	(22233344455, 'João Pedro', 'joaop'),
	(33344455566, 'Yure Breno', 'yureb'),
	(02558944798, 'Gabriel Lima', 'gabriell'),
	(03786765774, 'João Camargo', 'joaoc'),
	(03896867776, 'Vinícius Augusto Araújo', 'viniciusaa'),
	(03517646167, 'Rafael Pereira Costa', 'rafaelpc'),
	(44455566677, 'Sofia Ramos', 'sofiar'),
	(55566677788, 'Raquel Silva', 'raquels'),
	(66677788899, 'Daniel Santos', 'daniels'),
	(03817687456, 'Gabriel Barbosa', 'gabrielb'),
	(02431763274, 'Talita Silva Medeiros', 'talitasm'),
	(02869714614, 'Maria Eduarda Vaz', 'dudaev'),
	(09686197618, 'Giovanna Oliveira Saldanha', 'giovannaos'),
    (06087267118, 'Bruna Aurora Fogaça', 'brunaf'),
    (61676464140, 'Ricardo Silveira', 'ricardos'),
    (79458890287, 'João Luís Vieira', 'joaolv'),
    (25569317187, 'Eduardo Vinícius Dias', 'eduardovd'),
    (05671716749, 'Elias Lorenzo Nascimento', 'eliasln');

INSERT INTO GERENTE
	(cpf, formacaoEscolar, emailGerente) 
VALUES
	(11122233344, 'Médio', 'victor@gmail.com'),
	(22233344455, 'Superior', 'joao@gmail.com'),
	(33344455566, 'Superior', 'yure@gmail.com'),
	(02558944798, 'Primário', 'gabriellima@gmail.com'),
	(03786765774, 'Médio', 'joaocamargo@hotmail.com'),
	(03896867776, 'Superior', 'viniciusaaraujo@gmail.com'),
	(03517646167, 'Superior', 'rafaelpereira@hotmail.com'),
    (06087267118, 'Médio', 'brunaaurora@gmail.com'),
    (61676464140, 'Superior', 'ricardosilveira@gmail.com'),
    (79458890287, 'Superior', 'joaovieira@outlook.com');

INSERT INTO EMPREGADO
	(cpf, estado, cidade, bairro, rua, numero, complemento, cep) 
VALUES
	(44455566677, 'RR', 'Boa Vista', 'Trinta e Um de Março', 'Rua Manoel Dias de Almeida', 263, NULL, 69305280),
	(55566677788, 'BA', 'Salvador', 'Alto do Coqueirinho', 'Rua Sérgio Henrique', 829, NULL, 41615430),
	(66677788899, 'RJ', 'Rio de Janeiro', 'Leblon', 'Rua Carlos Gois', 166, 'Próximo a mercearia central', 22440040),
	(03817687456, 'MG', 'Uberaba', 'Conjunto Sete Colinas', 'Rua Sérgio Filatoff', 282, NULL, 38061030),
	(02431763274, 'RJ', 'São João de Meriti', 'Vila dos Guedes', 'Rua Dona Elisa Guedes', 206, NULL, 25571020),
	(02869714614, 'MA', 'São Luís', 'Jardim São Raimundo', 'Rua das Flores', 840, 'Lote 4', 65057800),
	(09686197618, 'DF', 'Brasília', 'Setor Sudoeste', 'Quadra SQSW 302', 123, 'Bloco J', 70673210),
    (79458890287, 'DF', 'Brasília', 'Riacho Fundo II', 'Quadra QN11', 755, 'Conjunto 2', 7181612),
    (25569317187, 'DF', 'Brasília', 'Taguatinga Norte', 'QNL 24 Conjunto A', 574, NULL, 72161401),
    (05671716749, 'DF', 'Brasília', 'São Sebastião', 'Rua 50', 400, NULL, 71691012);

INSERT INTO telefone
	(matricula, numTelefone) 
VALUES
	(1, 61987146546),
	(2, 62995641403),
	(2, 11992564100),
	(3, 61985130452),
	(4, 61992560427),
	(5, 62997056504),
	(6, 61983560422),
    (7, 61993030693),
    (8, 61997735034),
    (9, 61994252690);

INSERT INTO VENDA
	(dtVenda, matricula) 
VALUES
	('2020-12-12', 1),
	('2022-10-29', 2),
	('2021-05-20', 2),
	('2022-02-02', 3),
	('2022-03-03', 4),
	('2022-04-04', 5),
	('2022-08-08', 7),
    ('2022-09-09', 8),
    ('2022-10-10', 9),
    ('2022-05-02', 10);

INSERT INTO AREA_VENDA
	(nomeArea, cpfGerente) 
VALUES
	('Cosmético', 11122233344),
	('Alimentício', 11122233344),
	('Eletrônico', 22233344455),
	('Vestuário', 33344455566),
	('Limpeza', 03786765774),
	('Higiene e beleza', 02558944798),
	('Mercearia', 03896867776),
    ('Livros', 79458890287),
    ('Esportes', 61676464140),
    ('Informática', 06087267118);

INSERT INTO PRODUTO
	(precoUniProduto, idArea, nomeProduto) 
VALUES
	(10.50, 1, 'Batom vermelho AVON'),
	(22.99, 2, 'Biscoito Oreo 4 unidades'),
	(154.35, 3, 'Controle PS4'),
	(399.99, 4, 'Camiseta Nike Treino PSG'),
	(350.00, 4, 'Camisa I Cruzeiro 2022'),
	(120.00, 3, 'Fone de ouvido sem fio'),
	(9.99, 5, 'Pano multiuso 10 unidades'),
    (99.99, 10, 'Teclado Mecânico'),
    (25.00, 8, 'Diário de um Banana 3'),
    (79.99, 9, 'Bola Champions League');

INSERT INTO contem
	(codProduto, idVenda, qtdProduto) 
VALUES
	(1, 1, 3),
	(2, 2, 4),
	(3, 2, 5),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 2),
	(6, 6, 3),
    (8, 9, 1),
    (9, 9, 1),
    (10, 9, 1);