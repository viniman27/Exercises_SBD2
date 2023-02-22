-- --------------------     <<aula3exer1evolucao4_Oracle>> ---------------------
--
--                    SCRIPT DE APAGA (DDL)
--
-- Data Criacao ...........: 16/11/2022
-- Autor(es) ..............: Luiza Esteves dos Santos, Victor Hugo Oliveira Leao, Vinicius Assumpção de Araújo
-- Banco de Dados .........: Oracle APEX
-- Banco de Dados .........: VRVR
--
--
-- Ultimas Alteracoes
--  25/11/2022 => Remoção das instrucoes da base de dados
--             => Retirada das instrucoes DROP USER e DROP ROLE
--  29/11/2022 => Ajustes para apresentacao e documentacao correta do script.
--             => Correcao da sintese do projeto que estava completamente incorreta.
--             => Apaga Sequence para Plantonista
--  04/12/2022 => Ajuste no nome das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 03 Sequences
--
-- ---------------------------------------------------------

-- SEQUENCES
DROP SEQUENCE VAA_SEQ_PLANTONISTA;
DROP SEQUENCE VAA_SEQ_SETOR;
DROP SEQUENCE VAA_SEQ_ESPECIALIDADE;


-- TABELAS
DROP TABLE VAA_alocado;
DROP TABLE VAA_SETOR;
DROP TABLE VAA_possui;
DROP TABLE VAA_ESPECIALIDADE;
DROP TABLE VAA_PLANTONISTA;
