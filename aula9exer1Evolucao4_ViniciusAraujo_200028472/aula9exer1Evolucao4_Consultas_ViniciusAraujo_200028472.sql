-- ------------   aula9exer1   ------------
--
--                    SCRIPT DE CONSULTA
--
-- Data Criacao ...........: 14/12/2022
-- Autor(es) ..............: Victor Hugo Oliveira Leão, Vinicius Assumpção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: metacritic
--
-- Últimas Alterações: 
--          17/12/2022 => Mudança nome base de dados
--          02/01/2022 => Correção na documentação da View (contabilidade POR gênero)
--                        Criação da View
--                        Adição dos comentários justificando cada uma das consultas para o nível estratégico da organização
--
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
--         => 01 View
--
-- ---------------------------------------------------------

USE metacritic;

-- Consulta A) Consulta que mostra a quantidade de jogos por gêneros, em que eles estão ordenados de forma decrescente.

-- Objetivo Estratégico: O objetivo dessa consulta é mostrar para os proprietários quais são os gêneros que mais possuem jogos publicados.
-- Desse modo, é possível saber quais mercados já possuem mais jogos publicados.
--  A consulta está disposta de forma decrescente para que a visualização fique mais simples.

-- Justificativa: Como já explicitado no objetivo estratégico, a justificativa da consulta para o nível estratégico da organização se deve ao interesse na importância dos gêneros publicados.
-- Dessarte, ajuda no entendimento dos gêneros que recebem mais atenção e, portanto, a empresa pode focar em desenvolver jogos dessa área e atingir um público maior.
-- Ou até mesmo, buscar ser referência em mercados que tem menos jogos desenvolvidos e tentar ganhar seu público neles.

SELECT    genre.description, COUNT(game.id_genre) countGenres
     FROM genre
LEFT JOIN game
	   ON genre.id_genre = game.id_genre
 GROUP BY genre.id_genre
 ORDER BY countGenres DESC;

-- Consulta B) Consulta que mostra, em milhões, os publicadores com mais vendas na América do Norte de forma decrescente.

-- Objetivo Estratégico: O objetivo dessa consulta é que os proprietários da empresa possam saber quais empresas faturam mais 
-- com a venda de jogos em um dos mercados mais aquecidos. Dessa forms, pode-se tentar aplicar algumas estratégias semelhantes e estudar
-- algumas dessas empresas para saber como crescer mais no mercado de jogos.
-- A consulta está disposta de forma decrescente para que a visualização de quais publicadores possuem mais jogos fique mais simples.

-- Justificativa:  Como já explicitado no objetivo estratégico, saber o que empresas referências fazem para serem renome em suas áreas é importante para criar estratégias para competir contra elas.
-- Além disso, também pode-se usar essa consulta para entender o que as empresas que vendem menos fazem de errado e tentar desviar esses erros.

SELECT    publisher.publisher_name, sum(game.na_sales) as salesPublisher
     FROM publisher
LEFT JOIN game
	   ON publisher.id_publisher = game.id_publisher
 GROUP BY publisher.id_publisher
 HAVING salesPublisher > 0
 ORDER BY salesPublisher DESC;
 
-- Consulta C) VIEW que mostrará a contabilidade (quantidade de jogos) para um gênero definido.

-- Justificativa: Essa consulta também ajuda a empresa entender sobre os genêros mais explorados pelo mercado e os que não são.
-- Sendo agora criada uma View, esse objeto poderia ser melhor usado por certas áreas de diferentes formas, por exemplo, odepartamento de marketing poderia
-- buscar como cada gênero trabalha para promover seus diferentes jogos, e o de finanças poderia buscar saber se os gêneros com mais jogos são mais rentáveis
-- ou não. Assim, essa VIEW tem grande suporte para o nível estratégico da empresa em diferentes formações.

CREATE OR REPLACE VIEW V_GENERO AS
	SELECT    genre.description, COUNT(game.id_genre) countGenres
		 FROM genre
	LEFT JOIN game
		   ON genre.id_genre = game.id_genre
	 GROUP BY genre.id_genre
	 ORDER BY genre.description;
     
	-- CREATE INDEX Genres_Desc_IDX 
	-- ON GENRE(description);

-- Exemplo de uso da View com uso da cláusula WHERE

SELECT * FROM V_GENERO
WHERE description = 'Simulation';