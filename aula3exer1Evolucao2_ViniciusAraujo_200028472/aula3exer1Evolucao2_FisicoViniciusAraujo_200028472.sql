-- ---------------- << aula3exer1 >> --------------
--
--                    SCRIPT DE CRIACAO (DDL)
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
-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS aula3exer1aula3exer1evolucao2
	DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE aula3exer1aula3exer1evolucao2;



-- TABELAS

CREATE TABLE PLANTONISTA (
   nomeCompleto VARCHAR(50)   NOT NULL,
   matricula    INT      	   NOT NULL,
   sexo         ENUM('F', 'M') NOT NULL,
	CONSTRAINT PLANTONISTA_PK PRIMARY KEY (matricula)
) ENGINE = InnoDB;


CREATE TABLE ESPECIALIDADE (
	idEspecialidade   INT      	NOT NULL AUTO_INCREMENT,
	nomeEspecialidade VARCHAR(20) NOT NULL,
 CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY(idEspecialidade)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE possui (
	matricula       INT NOT NULL,
  	idEspecialidade INT NOT NULL,
 	CONSTRAINT possui_PLANTONISTA_FK FOREIGN KEY(matricula)
		REFERENCES PLANTONISTA(matricula)
			ON UPDATE RESTRICT
        	ON DELETE RESTRICT,
 	CONSTRAINT possui_ESPECIALIDADE_FK FOREIGN KEY(idEspecialidade)
		REFERENCES ESPECIALIDADE(idEspecialidade)
			ON UPDATE RESTRICT
        	ON DELETE RESTRICT
) ENGINE = InnoDB;


CREATE TABLE SETOR (
	idSetor INT NOT NULL AUTO_INCREMENT,
  nomeSetor VARCHAR(20) NOT NULL,
 CONSTRAINT SETOR_PK PRIMARY KEY(idSetor)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE alocado (
	matricula 	INT  NOT NULL,
  	idSetor   	INT  NOT NULL,
  	dtEntrada 	DATE NOT NULL,
 	horaEntrada   TIME NOT NULL,
	duracaoPlantao INT NOT NULL,
	CONSTRAINT alocado_UK UNIQUE(matricula, dtEntrada, horaEntrada),
 	CONSTRAINT alocado_PLANTONISTA_FK FOREIGN KEY(matricula)
    	REFERENCES PLANTONISTA(matricula)
			ON UPDATE RESTRICT
        	ON DELETE RESTRICT,
 	CONSTRAINT alocado_SETOR_FK FOREIGN KEY(idSetor)
  		REFERENCES SETOR(idSetor)
	 		ON UPDATE RESTRICT
        	ON DELETE RESTRICT
) ENGINE = InnoDB;
