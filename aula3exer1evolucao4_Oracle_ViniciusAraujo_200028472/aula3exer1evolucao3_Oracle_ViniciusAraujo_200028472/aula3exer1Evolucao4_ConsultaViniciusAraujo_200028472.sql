-- --------            << aula3exer1Evolucao4_Oracle >>                 ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 04/12/2022                               --
-- Autor(es) .............:  Vinicius Assumpção de Araújo
-- 							
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: VRVR                              --
--                                                                   --                                                     --
-- PROJETO => 01 Base de Dados                                        --						                                 --
--         => 05 Tabelas                                              --                                                     --
-- ----------------------------------------------------------------- --


-- A) Indicar todos os plantonistas por um setor específico fornecido pelo usuário da consulta, que será apresentada em ordem decrescente de horário;

SELECT     *
      FROM VAA_PLANTONISTA p
INNER JOIN VAA_alocado a
		ON p.matricula = a.matricula
	 WHERE a.idSetor = 2
  ORDER BY a.horaEntrada DESC;
  
-- B) Mostrar todos os plantonistas em uma data(s) fornecida(s) pelo usuário em ordem crescente de data (consulta no padrão DE__  ATÉ__  para datas), 
-- em que o DE e o ATÉ serão fornecidos pelo usuário;

SELECT     *
      FROM VAA_PLANTONISTA p
INNER JOIN VAA_alocado a
		ON p.matricula = a.matricula
	 WHERE a.dtEntrada BETWEEN '2020-11-01' AND '2020-11-07';
     
-- C) Consulta os plantonistas por parte do nome e mostrar todos os seus dados pessoais cadastrados e em qual setor (ou setores) ele realiza atividades, 
-- mostrando somente o nome do setor e os dados pessoais;

SELECT     p.nomeCompleto, p.sexo, s.nomeSetor
      FROM VAA_PLANTONISTA p
INNER JOIN VAA_alocado a
		ON p.matricula = a.matricula
INNER JOIN VAA_SETOR s
		ON a.idSetor = s.idSetor
	 WHERE p.nomeCompleto LIKE 'Ca%';
     
-- D) Apresentar todas as especialidades e quantos plantonistas têm para cada uma destas especialidades cadastradas,
-- inclusive as que não tiverem plantonista no momento (zero plantonista na especialidade, mas apresentar).

SELECT e.nomeEspecialidade, COUNT(p.idEspecialidade)
FROM VAA_ESPECIALIDADE e
LEFT JOIN VAA_possui p
ON e.idEspecialidade = p.idEspecialidade
GROUP BY e.idEspecialidade;