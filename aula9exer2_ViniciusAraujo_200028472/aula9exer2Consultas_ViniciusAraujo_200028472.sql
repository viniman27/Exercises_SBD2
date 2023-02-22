-- ------------   aula9exer2 - PlayGame   ------------
--
--                    SCRIPT DE CONSULTA
--
-- Data Criacao ...........: 02/01/2022
-- Autor(es) ..............: Vinicius Assumpção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: supermario
--
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--         => 01 View
--
-- ---------------------------------------------------------

USE supermario;

-- Consulta AA) Consulta que mostra a quantidade de mapas curtidos por jogo que o mapa foi baseado.

-- Objetivo Estratégico: O objetivo dessa consulta é mostrar quais dos jogos possíveis de serem baseados possuem maior retensão entre os jogadores.
-- Desse modo, é possível saber quais jogos são populares pelos jogadores quando vão buscar e jogar um mapa. Assim, os proprietários podem focar em
-- melhorar ainda mais a plataforma de criação de mapas em relação a alguns jogos baseáveis. A consulta está disposta de forma decrescente para que a visualização de quais jogos baseados possuem mais curtidas fique mais simples.

SELECT    c.gameStyle, COUNT(l.id) countLikesBased 
	 FROM COURSE c
LEFT JOIN likes l
	   ON c.id = l.id
 GROUP BY c.gameStyle
 ORDER BY countLikesBased DESC;
 
-- Consulta BB) Consulta que mostra a quantidade de jogos jogados por região.

-- Objetivo Estratégico: O objetivo dessa consulta é mostrar para os proprietários quais regiões possuem mais jogadores ativos. 
-- Desse modo, é possível saber em quais regiões focarem em mais conteúdos ou suportes de infraestrutura , a fim de melhorar ainda
-- mais a experiência desses usuários em regiões mais ativas em relação ao jogo. A consulta está disposta de forma decrescente para que a visualização de quais regiões possuem mais jogos jogados fique mais simples.

SELECT    p.flag, count(pl.id) countFlags
     FROM PLAYER p
LEFT JOIN plays pl
       ON p.id = pl.player
 GROUP BY p.flag
   HAVING countFlags > 1000
 ORDER BY countFlags DESC;
 
-- Consulta CC) Visão que recupera todos os recordes de um jogador, o tempo que ele finalizou e o título do mapa.
-- Objetivo Estratégico: O objetivo dessa visão é facilitar a consulta dos recordes de um jogador e qual o mapa do recorde.
-- Essa visão ajuda a empresa, por exemplo, na busca pelos jogadores mais engajados e quais são os mapas por eles mais buscados. Assim, a empresa pode focar na melhora da disponibilização de recursos para a criação de jogos ainda mais interessantes para os jogadores.

SELECT * FROM V_PLAYERRECORDS;