-- -------- << aula1exer2evolucao4 >> ----------
--
--                    SCRIPT FISICO
--
-- Data Criacao ...........: 29/10/2022
-- Autor(es) ..............: Gabriel Roger Amorim da Cruz, Vinicius Assupção de Araújo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
-- Ultimas Alteracoes
-- 01/11/2022 : Adequação do nome da base de dados e adição e ON DELETE e ON UPDATE
-- 04/11/2022 : Alteração do nome da base de dados.
-- 				O atributo de EMPREGADO endereco se tornou atibuto composto.
-- 				Na entidade PRODUTO foi adicionado o atributo nomeProduto e houve alteração na chave primária.
-- 				matricula se tornou chave primária de EMPREGADO.
-- 				Alteração dos tipos dos atributos cpf e numTelefone.
-- 08/11/2022 : Remoção da tabela supervisiona e adequação do nome da base dados
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Usuários
-- 		   => 06 Perfis
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE
  IF NOT EXISTS aula1exer2evolucao4;

USE aula1exer2evolucao4;

-- TABELAS
CREATE TABLE PESSOA(
	cpf 		DECIMAL(11)	NOT NULL,
    nomePessoa  VARCHAR(50) NOT NULL,
    senha 		VARCHAR(16) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE = InnoDB;

CREATE TABLE GERENTE(
	cpf 			 DECIMAL(11)	NOT NULL,
    formacaoEscolar  VARCHAR(50)	NOT NULL,
    emailGerente     VARCHAR(100)	NOT NULL,
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf)
		REFERENCES PESSOA (cpf) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT GERENTE_cpf_UK UNIQUE KEY(cpf)
) ENGINE = InnoDB;

CREATE TABLE EMPREGADO(
	matricula   INT 		NOT NULL AUTO_INCREMENT,
    cpf 		DECIMAL(11) NOT NULL,
    estado 		VARCHAR(2) 	NOT NULL,
    cidade 		VARCHAR(30) NOT NULL,
    bairro 		VARCHAR(30) NOT NULL,
    rua 		VARCHAR(30) NOT NULL,
    numero 		INT 		NOT NULL,
    complemento VARCHAR(50),
    cep 		DECIMAL(8) 	NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
		REFERENCES PESSOA (cpf) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
	CONSTRAINT EMPREGADO_cpf_UK UNIQUE KEY(cpf)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE telefone(
	matricula 	INT 		NOT NULL,
    numTelefone	DECIMAL(11) NOT NULL,
    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO (matricula) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
) ENGINE = InnoDB;


CREATE TABLE VENDA(
	idVenda   	INT    	NOT NULL AUTO_INCREMENT,
    dtVenda		DATE   	NOT NULL,
	matricula 	INT		NOT NULL,
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO (matricula)
	  ON DELETE RESTRICT
      ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AREA_VENDA(
	idArea  	INT         NOT NULL AUTO_INCREMENT,
    nomeArea 	VARCHAR(50)	NOT NULL,
    cpfGerente 	DECIMAL(11) NOT NULL,
	CONSTRAINT AREA_VENDA_PK PRIMARY KEY (idArea),
    CONSTRAINT AREA_VENDA_GERENTE_FK FOREIGN KEY(cpfGerente)
		REFERENCES GERENTE(cpf)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
	CONSTRAINT AREA_VENDA_nomeArea_UK UNIQUE KEY(nomeArea)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO(
	codProduto      INT          	NOT NULL AUTO_INCREMENT,
    precoUniProduto	DECIMAL(7,2) 	NOT NULL,
	idArea         	INT 			NOT NULL,
    nomeProduto 	VARCHAR(50) 	NOT NULL,
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codProduto),
    CONSTRAINT PRODUTO_AREA_VENDA_FK FOREIGN KEY (idArea)
		REFERENCES AREA_VENDA (idArea)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE contem(
	codProduto	INT NOT NULL,
	idVenda     INT	NOT NULL,
    qtdProduto  INT NOT NULL,
    CONSTRAINT contem_PRODUTO_FK FOREIGN KEY (codProduto)
		REFERENCES PRODUTO (codProduto)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
    CONSTRAINT contem_VENDA_FK FOREIGN KEY (idVenda)
		REFERENCES VENDA (idVenda)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
) ENGINE = InnoDB;