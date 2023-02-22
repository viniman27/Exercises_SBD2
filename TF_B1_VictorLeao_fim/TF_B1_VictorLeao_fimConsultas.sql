-- ------------   TF (B1) - NBAGames   ------------
--
--                    SCRIPT DE CONSULTAS
--
-- Data Criacao ...........: 29/01/2023
-- Autor(es) ..............: Vinicius Assumpção de Araújo, Victor Hugo Oliveira Leão, Amanda Jennifer Pereira Nobre
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: NBAGames
--
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 01 View
--
-- ---------------------------------------------------------

USE NBAGames;

-- Criação de View para exemplo de uso da base de dados
-- Essa View armazena informações dos rankings dos times na temporada 2021
CREATE OR REPLACE VIEW RANKING_SEASON2021 AS
SELECT t.NICKNAME, r.STANDINGSDATE, r.G, r.W, r.L 
  FROM RANKING r
  JOIN TEAMS t
    ON r.team_id = t.team_id
 WHERE r.season_id = 22021;

-- Exemplo de uso da View para ver quando o time Raptors estava com 40 vitórias na temporada de 2021-2022
SELECT * FROM RANKING_SEASON2021
WHERE NICKNAME = " Raptors " AND W = 40;