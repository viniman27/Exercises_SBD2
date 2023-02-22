-- --------------------     <<aula3exer1Evolucao4_Oracle>> ---------------------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 16/11/2022
-- Autor(es) ..............: Luiza Esteves dos Santos, Victor Hugo Oliveira Leao, Vinicius Assumpção de Araújo
-- Banco de Dados .........: Oracle APEX
-- Banco de Dados .........: VRVR
--
--
-- Ultimas Alteracoes
--  19/11/2022 => Alterando atributo matricula de PLANTONISTA para auto_increment
--             => Retirada do atributo duracaoPlantao
--  25/11/2022 => Remoção da base de dados
--                Remoção de duracaoPlantao em alocado
--                Adição de uniques em possui, ESPECIALIDADE e SETOR
--                matricula não sendo auto_increment
--  29/11/2022 => Ajustes para apresentacao e documentacao correta do script.
--             => Correcao da sintese do projeto que estava completamente incorreta.
--             => Adição Sequence para Plantonista
--             => Remoção UNIQUE em SETOR e ESPECIALIDADE
--  29/11/2022 => Adequação do nome das tabelas
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 03 Sequences
--
-- ---------------------------------------------------------

-- SEQUENCIAS
CREATE SEQUENCE VAA_SEQ_PLANTONISTA
    START WITH 1
    INCREMENT BY 1;


CREATE SEQUENCE VAA_SEQ_SETOR
    START WITH 1
    INCREMENT BY 1;


CREATE SEQUENCE VAA_SEQ_ESPECIALIDADE
    START WITH 1
    INCREMENT BY 1;



-- TABELAS
CREATE TABLE VAA_PLANTONISTA
(
   matricula    INT            NOT NULL,
   nomeCompleto VARCHAR2 (50)  NOT NULL,
   sexo         VARCHAR(2)     NOT NULL,
   CONSTRAINT VAA_PLANTONISTA_PK PRIMARY KEY (matricula),
   CONSTRAINT VAA_PLANTONISTA_CK CHECK (sexo IN ('F', 'M'))
);


CREATE TABLE VAA_ESPECIALIDADE 
(
   idEspecialidade   INT         	 NOT NULL,
   nomeEspecialidade VARCHAR(20)    NOT NULL,
   CONSTRAINT VAA_ESPECIALIDADE_PK PRIMARY KEY (idEspecialidade)
);


CREATE TABLE VAA_possui (
   matricula       INT NOT NULL,
   idEspecialidade INT NOT NULL,
   CONSTRAINT VAA_possui_PLANTONISTA_FK FOREIGN KEY(matricula)
		REFERENCES VAA_PLANTONISTA(matricula),
   CONSTRAINT VAA_possui_ESPECIALIDADE_FK FOREIGN KEY(idEspecialidade)
		REFERENCES VAA_ESPECIALIDADE(idEspecialidade),
	CONSTRAINT VAA_possui_UK UNIQUE (matricula, idEspecialidade)
);


CREATE TABLE VHOL_SETOR 
(
   idSetor   INT        NOT NULL,
   nomeSetor VARCHAR2(20)   NOT NULL,
   CONSTRAINT VHOL_SETOR_PK PRIMARY KEY (idSetor)
);


CREATE TABLE VAA_alocado (
   matricula 	  INT         NOT NULL,
   idSetor   	  INT         NOT NULL,
   dtEntrada 	  DATE        NOT NULL,
   horaEntrada    VARCHAR2(8) NOT NULL,
   duracaoPlantao INT         NOT NULL,
   CONSTRAINT VAA_alocado_UK UNIQUE (matricula, dtEntrada, horaEntrada),
   CONSTRAINT VAA_alocado_PLANTONISTA_FK FOREIGN KEY(matricula)
    	REFERENCES VAA_PLANTONISTA(matricula),
   CONSTRAINT VAA_alocado_SETOR_FK FOREIGN KEY(idSetor)
  		REFERENCES VAA_SETOR(idSetor)
);

