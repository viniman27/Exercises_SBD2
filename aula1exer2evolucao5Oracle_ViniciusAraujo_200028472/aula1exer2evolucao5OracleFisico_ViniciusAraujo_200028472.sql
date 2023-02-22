-- -------- aula1exer2evolucao4 ----------
--
--                    SCRIPT FISICO
--
-- Data Criacao ...........: 29/10/2022
-- Autor(es) ..............: Mateus Moreira Lima, Vinicius Assumpção de Araujo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: VRVR
--
-- Ultimas Alteracoes
--   01/11/2022 => Adequação do nome da base de dados e adição de ON DELETE e ON UPDATE
--   04/11/2022 => Alteração do nome da base de dados.
-- 			  => O atributo de EMPREGADO endereco se tornou atibuto composto.
-- 			  => Na entidade PRODUTO foi adicionado o atributo nomeProduto e houve
--               alteração na chave primária.
-- 			  => Atributo matricula se tornou chave primária de EMPREGADO.
-- 			  => Alteração dos tipos dos atributos cpf e numTelefone.
--   09/11/2022 => Remoção da tabela supervisiona.
--              => Alteração do nome da base de dados aula1exer2evolucao3 para aula1exer2evolucao4.
--   14/11/2022 => Varias correcoes e ajustes na documentacao do scripts e na sintese do projeto.
--   11/12/2022 => Adequação para oracle.
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 		   => 05 Consultas
-- 		   => 03 sequences
-- 		   => 02 views
--
-- ---------------------------------------------------------

-- SEQUENCIAS
CREATE SEQUENCE VAA_SEQ_EMPREGADO
    START WITH 1
    INCREMENT BY 1;


CREATE SEQUENCE VAA_SEQ_VENDA
    START WITH 1
    INCREMENT BY 1;


CREATE SEQUENCE VAA_SEQ_PRODUTO
    START WITH 1
    INCREMENT BY 1;



-- TABELAS
CREATE TABLE VAA_PESSOA(
	cpf 		DECIMAL(11)	NOT NULL,
    nomePessoa  VARCHAR(50) NOT NULL,
    senha 		VARCHAR(16) NOT NULL,
    CONSTRAINT VAA_PESSOA_PK PRIMARY KEY (cpf)
) ENGINE = InnoDB;


CREATE TABLE VAA_GERENTE(
	cpf 			 DECIMAL(11)	NOT NULL,
    formacaoEscolar  VARCHAR(50)	NOT NULL,
    emailGerente     VARCHAR(100)	NOT NULL,
    CONSTRAINT VAA_GERENTE_VAA_PESSOA_FK FOREIGN KEY (cpf)
		REFERENCES PESSOA (cpf) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
	CONSTRAINT VAA_GERENTE_UK UNIQUE KEY(cpf)
) ENGINE = InnoDB;


CREATE TABLE VAA_EMPREGADO(
	matricula   INT 		NOT NULL ,
    cpf 		DECIMAL(11) NOT NULL,
    estado 		VARCHAR(2) 	NOT NULL,
    cidade 		VARCHAR(30) NOT NULL,
    bairro 		VARCHAR(30) NOT NULL,
    rua 		VARCHAR(30) NOT NULL,
    numero 		INT 		NOT NULL,
    complemento VARCHAR(50),
    cep 		DECIMAL(8) 	NOT NULL,
    CONSTRAINT VAA_EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT VAA_EMPREGADO_VAA_PESSOA_FK FOREIGN KEY (cpf)
		REFERENCES VAA_PESSOA (cpf) 
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
	CONSTRAINT VAA_EMPREGADO_UK UNIQUE KEY(cpf)
) ENGINE = InnoDB ;


CREATE TABLE VAA_telefone(
	matricula 	INT 		NOT NULL,
    numTelefone	DECIMAL(11) NOT NULL,
    CONSTRAINT VAA_telefone_VAA_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES VAA_EMPREGADO (matricula) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
        CONSTRAINT VAA_telefone_UK UNIQUE KEY(matricula, numTelefone)
) ENGINE = InnoDB;


CREATE TABLE VAA_VENDA(
	idVenda   	INT    	NOT NULL ,
    dtVenda		DATE   	NOT NULL,
	matricula 	INT		NOT NULL,
    CONSTRAINT VAA_VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VAA_VENDA_VAA_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES VAA_EMPREGADO (matricula)
	  ON DELETE RESTRICT
      ON UPDATE RESTRICT
) ENGINE = InnoDB ;


CREATE TABLE VAA_AREA_VENDA(
	idArea  	INT         NOT NULL ,
    nomeArea 	VARCHAR(50)	NOT NULL,
    cpfGerente 	DECIMAL(11) NOT NULL,
	CONSTRAINT VAA_AREA_VENDA_PK PRIMARY KEY (idArea),
    CONSTRAINT VAA_AREA_VENDA_VAA_GERENTE_FK FOREIGN KEY(cpfGerente)
		REFERENCES VAA_GERENTE(cpf)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE = InnoDB ;


CREATE TABLE VAA_PRODUTO(
	codProduto      INT          	NOT NULL ,
    precoUniProduto	DECIMAL(7,2) 	NOT NULL,
	idArea         	INT 			NOT NULL,
    nomeProduto 	VARCHAR(50) 	NOT NULL,
    CONSTRAINT VAA_PRODUTO_PK PRIMARY KEY (codProduto),
    CONSTRAINT VAA_PRODUTO_VAA_AREA_VENDA_FK FOREIGN KEY (idArea)
		REFERENCES VAA_AREA_VENDA (idArea)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE = InnoDB ;


-- Corresponde ao ITEM de cada VENDA
CREATE TABLE VAA_contem(
	codProduto	INT NOT NULL,
	idVenda     INT	NOT NULL,
    qtdProduto  INT NOT NULL,
    CONSTRAINT VAA_contem_PRODUTO_FK FOREIGN KEY (codProduto)
		REFERENCES PVAA_RODUTO (codProduto)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
    CONSTRAINT cVAA_ontem_VENDA_FK FOREIGN KEY (idVenda)
		REFERENCES VAA_VENDA (idVenda)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
) ENGINE = InnoDB;
