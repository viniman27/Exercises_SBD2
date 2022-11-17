-- -------- << aula1exer2evolucao4 >> ----------
--
--                    SCRIPT Consulta
--
-- Data Criacao ...........: 08/11/2022
-- Autor(es) ..............: Vinicius Assupção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Usuários
-- 		   => 06 Perfis
--
-- ---------------------------------------------------------

USE aula1exer2Evolucao4;

-- CONSULTAS

-- A)Consultar todas as vendas feitas por um empregado específico
--   definido pela sua chave primária na pesquisa;

SELECT *
  FROM VENDA
 WHERE matricula = 9090123  -- matricula do empregado especifico
 ORDER BY dtVenda;

-- B)Relacionar todos os dados de uma venda com todas as informações
--   dos produtos comercializados por esta venda específica;

SELECT c.idVenda, v.dtVenda, pr.codProduto, pr.nomeProduto, c.qtdProduto
  FROM contem as c
       INNER JOIN PRODUTO AS pr
          ON c.codProduto = pr.codProduto
       INNER JOIN VENDA AS v
          ON v.idVenda = c.idVenda
 WHERE c.idVenda = 6    -- codigo da venda especifica
 ORDER BY pr.nomeProduto;

-- C) Mostrar todos os empregados da empresa que não sejam gerentes
--   em ordem alfabética crescente;

SELECT p.nomePessoa, p.cpf, e.matricula
  FROM EMPREGADO e
       INNER JOIN PESSOA AS p
          ON e.cpf = p.cpf
       LEFT JOIN GERENTE AS g
          ON p.cpf = g.cpf
 WHERE g.cpf IS NULL
 ORDER BY p.nomePessoa;

-- D) Consultar e mostrar a quantidade de CADA produto que foi
--   vendida por esta empresa.

SELECT P.codProduto AS `Código`, P.nomeProduto AS `Nome`, SUM(c.qtdProduto) AS `Quantidade`
	FROM PRODUTO P
		INNER JOIN contem c
			ON P.codProduto = c.codProduto
	GROUP BY P.codProduto
	ORDER BY P.nomeProduto;