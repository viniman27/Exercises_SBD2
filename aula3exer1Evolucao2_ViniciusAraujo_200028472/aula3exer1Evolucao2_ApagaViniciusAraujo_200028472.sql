-- ---------------- << aula3exer1 >> --------------
--
--                    SCRIPT DE APAGA (DDL)
--
-- Data Criacao ...........: 16/11/2022
-- Autor(es) ..............: Davi Marinho da Silva Campos, Vinicius Assumpção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula3exer1evolucao2
--
--
-- Data Ultima Alteracao ..: 17/11/2022
-- 17/11/2022 =>  adequação da base de dados E adição dos perfis e usuários
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 03 Perfis
--         => 09 Usuários
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula3exer1evolucao2;

-- TABELAS
DROP TABLE alocado;
DROP TABLE SETOR;
DROP TABLE possui;
DROP TABLE ESPECIALIDADE;
DROP TABLE PLANTONISTA;
DROP ROLE 'administrador';
DROP ROLE 'usuario';
DROP ROLE 'gestor';
DROP USER 'bianca';
DROP USER 'caio';
DROP USER 'antonio';
DROP USER 'rozana';
DROP USER 'flavio';
DROP USER 'luana';
DROP USER 'maria';
DROP USER 'joao';
DROP USER 'claudio';

