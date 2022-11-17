-- --------  << aula1exer2evolucao3 >>  ----------
--
--                    SCRIPT CONTROLE
--
-- Data Criacao ...........: 03/11/2022
-- Autor(es) ..............: Gabriel Roger Amorim da Cruz
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
-- 08/11/2022 :  adequação do nome da base dados , adição de perfis e mais 4 users
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Perfis
-- 		   => 06 Usuários
--
-- ---------------------------------------------------------

-- BASE DE DADOS 
USE aula1exer2evolucao4;

-- Criando perfis

CREATE ROLE IF NOT EXISTS 'gerente ', 'empregado ', 'superior';

-- Privilégios do empregado 
GRANT SELECT ON aula1exer2evolucao3.* TO empregado;
GRANT INSERT ON aula1exer2evolucao3.VENDA TO empregado; 
GRANT INSERT ON aula1exer2evolucao3.contem TO empregado;
GRANT INSERT ON aula1exer2evolucao3.PRODUTO TO empregado;

-- Privilégios do gerente
GRANT SELECT ON aula1exer2evolucao3.* TO gerente;
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao3.telefone TO gerente;
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao3.supervisiona TO gerente;
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao3.VENDA TO gerente;
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao3.AREA_VENDA TO gerente;
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao3.PRODUTO TO gerente;
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao3.contem TO gerente;

-- Privilégios do superior
GRANT ALL PRIVILEGES ON aula1exer2evolucao3.* TO superior WITH GRANT OPTION;

-- Criando users

-- PERFIL Empregado

CREATE USER bianca
IDENTIFIED BY 'adminSupperar';
GRANT 'empregado' TO 'bianca';

CREATE USER caio
IDENTIFIED BY 'adminSupperar2';
GRANT 'empregado' TO 'caio';

CREATE USER antonio
IDENTIFIED BY 'adminSupperar3';
GRANT 'empregado' TO 'antonio';

-- PERFIL Gerente

CREATE USER rozana
IDENTIFIED BY 'psicopedagogoSuperar';
GRANT 'gerente' TO 'rozana';

CREATE USER flavio
IDENTIFIED BY 'psicopedagogoSuperar2';
GRANT 'gerente' TO 'flavio';

CREATE USER luana
IDENTIFIED BY 'psicopedagogoSuperar3';
GRANT 'gerente' TO 'luana';


-- PERFIL Superior

CREATE USER maria
IDENTIFIED BY 'responsavelSuperar';
GRANT 'superior' TO 'maria';

CREATE USER joao
IDENTIFIED BY 'responsavelSuperar2';
GRANT 'superior' TO 'joao';

CREATE USER claudio
IDENTIFIED BY 'responsavelSuperar3';
GRANT 'superior' TO 'claudiobdg';

