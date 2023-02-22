-- ---------------- << aula3exer1 >> --------------
--
--                    SCRIPT DE POPULAR (DDL)
--
-- Data Criacao ...........: 16/11/2022
-- Autor(es) ..............: Davi Marinho da Silva Campos, Vinicius Assumpção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula3exer1evolucao2
--
--
-- Data Ultima Alteracao ..: 17/11/2022
-- 17/11/2022 =>  adequação da base de dados
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 03 Perfis
--         => 09 Usuários
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula3exer1evolucao2;


-- POPULA TABELAS
INSERT INTO PLANTONISTA(matricula, nomeCompleto, sexo)
	VALUES
		('12345', 'Camila Rodrigues Silva', 'F'),
	  	('54321', 'Calebe Ferreira Araujo', 'M'),
	 	('11112', 'Danilo Gustavo Cordeiro', 'M'),
      	('22221', 'Mateus Araujo Oliveira', 'M');


INSERT INTO ESPECIALIDADE(nomeEspecialidade)
	VALUES
		('Cirurgião'),
	  	('Clínico Geral'),
      	('Cardiologista'),
	  	('Enfermeiro Geral');


INSERT INTO possui(matricula, idEspecialidade)
	VALUES
		('12345', '1'),
	  	('54321', '2'),
      	('11112', '3'),
	  	('22221', '4');


INSERT INTO SETOR(nomeSetor)
	VALUES
		('Emergência'),
	  	('Fraturas'),
      	('Exames'),
	  	('Cirurgias');


INSERT INTO alocado(matricula, idSetor, dtEntrada, horaEntrada, duracaoPlantao)
	VALUES
		('12345', '1', '2020-11-01', '23:00:00', 8),
	  	('54321', '2', '2020-11-07', '00:00:00', 6),
      	('11112', '3', '2020-12-03', '01:00:00', 8),
	  	('11112', '3', '2020-12-15', '21:00:00', 6);
