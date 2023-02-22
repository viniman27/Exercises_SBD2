-- --------  aula1exer2evolucao5  ----------
--
--                    SCRIPT DE CONSULTA
--
-- Data Criacao ...........: 09/11/2022
-- Autor(es) ..............: Mateus Moreira Lima,  Vinicius Assumpção de Araujo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: VRVR
--
-- Ultimas Alteracoes
--   09/11/2022 => Melhorando a apresentacao do script
--   14/11/2022 => Ajustes e correcoes em todas as 5 consultas solicitadas.
--              => Arrumando apresentacao de cada consulta no padrao exigido pela disciplina.
--              => Correcoes e ajustes em todas as consultas.
--   11/12/2022 => Adequação para oracle.
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 		   => 05 Consultas
--
-- ---------------------------------------------------------


-- CONSULTAS
-- A) Consultar todas as vendas feitas por um empregado específico que será
--    definido pelo usuário através da chave primária do empregado nessa pesquisa 
--    (usuário definirá um empregado específico);
SELECT *
  FROM VAA_VENDA
 WHERE matricula = 2
 ORDER BY dtVenda DESC;


-- B) Relacionar todos os dados de uma venda específica com todas as informações
--    dos produtos comercializados por esta venda (usuário definirá uma venda específica);
SELECT ven.*, prod.*, contem.qtdProduto
  FROM VAA_contem
       JOIN VAA_PRODUTO AS prod ON prod.codProduto = contem.codProduto
       JOIN VAA_VENDA   AS ven  ON ven.idVenda = contem.idVenda
 WHERE ven.idVenda = 2
 ORDER BY prod.nomeProduto;
 
 
-- C) Mostrar todos os empregados da empresa que NAO sejam gerentes em ordem 
--    alfabética crescente;
SELECT pes.*, empr.*
  FROM VAA_EMPREGADO empr
       JOIN VAA_PESSOA AS pes ON empr.cpf = pes.cpf
 WHERE pes.cpf NOT IN (
                        SELECT ger.cpf 
                          FROM VAA_GERENTE ger)
 ORDER BY pes.nomePessoa;

-- D) Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu
--    código, nome e quantidade de vendas em ordem alfabética do nome do produto
--    em ordem decrescente.
SELECT prod.codProduto, prod.nomeProduto, SUM(c.qtdProduto) AS TotalProdutoVendido
  FROM VAA_contem AS c
       RIGHT JOIN VAA_PRODUTO AS prod ON prod.codProduto = c.codProduto
 WHERE prod.nomeProduto LIKE '%ca%'
 GROUP BY prod.codProduto
 ORDER BY prod.nomeProduto DESC;
 
 -- VIEWS
 
 -- E) VIEW que consultará e mostrará a quantidade de CADA produto que foi vendido 
 -- por esta empresa (lembrar que só o código do produto não identifica qual produto 
 -- é para funcionários da empresa).
 
 CREATE VIEW VAA_VIEW_e AS
	SELECT prod.codProduto, prod.precoUniProduto. prod.nomeProduto, sum(c.qtdProduto) AS qtdTotalProduto
		FROM VAA_contem c
        JOIN VAA_PRODUTO prod
        ON prod.codProduto = c.codProduto
        GROUP BY c.codProduto, prod.codProduto, prod.precoUniProduto, prod.nomeProduto
        ORDER BY prod.nomeProduto ;
 
 
 -- F) VIEW que apresentaria todos os dados das vendas em um intervalo de dias (padrão DE... ATÉ...)
 -- com o cálculo do valor total (R$) de cada venda sendo apresentado.
 
 
