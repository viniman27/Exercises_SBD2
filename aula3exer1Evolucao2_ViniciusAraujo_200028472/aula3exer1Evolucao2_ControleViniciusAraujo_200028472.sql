-- ------------   << aula3exer1 >>   ------------
--
--                    SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 16/11/2022
-- Autor(es) ..............: Davi Marinho da Silva Campos, Vinicius Assumpção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula3exer1evolucao2
--
--
-- Data Ultima Alteracao ..: 17/11/2022
-- 17/11/2022 => Adição dos users e adequação da base de dados
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 03 Perfis
--         => 09 Usuários
--
-- ---------------------------------------------------------

CREATE ROLE IF NOT EXISTS 'administrador', 'usuario', 'gestor';

-- PRIVILEGIOS

-- administrador: possui todos os privilégios sobre essa base de dados somente, pois será o DBA para administrar essa base de dados;

GRANT ALL PRIVILEGES ON aula3exer1aula3exer1evolucao2.* TO 'administrador';

-- usuario: possui todos os privilégios de consulta de dados sobre a base de dados desse projeto somente;

GRANT SELECT ON aula3exer1aula3exer1evolucao2.* TO 'usuario';

-- gestor: possui os privilégios de consultar os dados de todas as tabelas dessa base de dados, mas também pode cadastrar e alterar dados do plantonista e do setor do hospital.

GRANT SELECT ON aula3exer1aula3exer1evolucao2.* TO 'gestor';
GRANT INSERT ON aula3exer1aula3exer1evolucao2.PLANTONISTA TO 'gestor';
GRANT INSERT ON aula3exer1aula3exer1evolucao2.SETOR TO 'gestor';
GRANT UPDATE ON aula3exer1aula3exer1evolucao2.PLANTONISTA TO 'gestor';
GRANT UPDATE ON aula3exer1aula3exer1evolucao2.SETOR TO 'gestor';

-- Users

-- PERFIL Adiministrador

CREATE USER bianca
IDENTIFIED BY 'adminSupperar';
GRANT 'administrador' TO 'bianca';

CREATE USER caio
IDENTIFIED BY 'adminSupperar2';
GRANT 'administrador' TO 'caio';

CREATE USER antonio
IDENTIFIED BY 'adminSupperar3';
GRANT 'administrador' TO 'antonio';

-- PERFIL Gestor

CREATE USER rozana
IDENTIFIED BY 'gogoSuperar';
GRANT 'gestor' TO 'rozana';

CREATE USER flavio
IDENTIFIED BY 'gogoSuperar2';
GRANT 'gestor' TO 'flavio';

CREATE USER luana
IDENTIFIED BY 'gogoSuperar3';
GRANT 'gestor' TO 'luana';


-- PERFIL Usuario

CREATE USER maria
IDENTIFIED BY 'responsavelSuperar';
GRANT 'usuario' TO 'maria';

CREATE USER joao
IDENTIFIED BY 'responsavelSuperar2';
GRANT 'usuario' TO 'joao';

CREATE USER claudio
IDENTIFIED BY 'responsavelSuperar3';
GRANT 'usuario' TO 'claudiobdg';

