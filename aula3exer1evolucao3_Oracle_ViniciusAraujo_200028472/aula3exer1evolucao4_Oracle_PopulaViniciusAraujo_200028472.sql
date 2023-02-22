-- -------------------- <<aula3exer1Evolucao4_Oracle>> ---------------------
--
--                    SCRIPT DE POPULA
--
-- Data Criacao ...........: 04/12/2022
-- Autor(es) ..............: Vinicius Assumpção de araújo
-- Banco de Dados .........: VRVR
--
-- Ultimas Alteracoes
--  03/12/2022 => Adição do insert all.
--
-- PROJETO => 05 Tabelas
--         => 03 Sequences
--
-- ---------------------------------------------------------

INSERT INTO GRADC_PLANTONISTA(matricula, nomeCompleto, sexo)
  VALUES(GRADC_SEQ_PLANTONISTA.nextval, 'Camila Rodrigues Silva', 'F');
INSERT INTO GRADC_PLANTONISTA(matricula, nomeCompleto, sexo)
  VALUES(GRADC_SEQ_PLANTONISTA.nextval, 'Calebe Ferreira Araujo', 'M');
INSERT INTO GRADC_PLANTONISTA(matricula, nomeCompleto, sexo)
  VALUES(GRADC_SEQ_PLANTONISTA.nextval, 'Danilo Gustavo Cordeiro', 'M');
INSERT INTO GRADC_PLANTONISTA(matricula, nomeCompleto, sexo)
  VALUES(GRADC_SEQ_PLANTONISTA.nextval, 'Mateus Araujo Oliveira', 'M');


INSERT INTO GRADC_ESPECIALIDADE(idEspecialidade, dsEspecialidade)
	VALUES(GRADC_SEQ_ESPECIALIDADE.nextval, 'Cirurgião');
INSERT INTO GRADC_ESPECIALIDADE(idEspecialidade, dsEspecialidade)
	VALUES(GRADC_SEQ_ESPECIALIDADE.nextval, 'Pneumologista');
INSERT INTO GRADC_ESPECIALIDADE(idEspecialidade, dsEspecialidade)
	VALUES(GRADC_SEQ_ESPECIALIDADE.nextval, 'Cardiologista');
INSERT INTO GRADC_ESPECIALIDADE(idEspecialidade, dsEspecialidade)
	VALUES(GRADC_SEQ_ESPECIALIDADE.nextval, 'Enfermeiro Geral');


INSERT ALL
  INTO GRADC_possui (matricula, idEspecialidade) VALUES (1, 1)
  INTO GRADC_possui (matricula, idEspecialidade) VALUES (4, 2)
  INTO GRADC_possui (matricula, idEspecialidade) VALUES (3, 3)
  INTO GRADC_possui (matricula, idEspecialidade) VALUES (2, 4)
SELECT * FROM DUAL;


INSERT INTO GRADC_SETOR(idSetor, dsSetor)
	VALUES(GRADC_SEQ_SETOR.nextval, 'Emergência');
INSERT INTO GRADC_SETOR(idSetor, dsSetor)
	VALUES(GRADC_SEQ_SETOR.nextval, 'Fraturas');
INSERT INTO GRADC_SETOR(idSetor, dsSetor)
	VALUES(GRADC_SEQ_SETOR.nextval, 'Exames');
INSERT INTO GRADC_SETOR(idSetor, dsSetor)
	VALUES(GRADC_SEQ_SETOR.nextval, 'Cirurgias');


INSERT ALL
  INTO GRADC_alocado (matricula, idSetor, dtEntrada, horaEntrada) VALUES (1, 1, TO_DATE('2020/11/01', 'yyyy/mm/dd'), TO_DATE('23:00:00', 'hh24:mi:ss'))
  INTO GRADC_alocado (matricula, idSetor, dtEntrada, horaEntrada) VALUES (2, 2, TO_DATE('2020/11/07', 'yyyy/mm/dd'), TO_DATE('00:00:00', 'hh24:mi:ss'))
  INTO GRADC_alocado (matricula, idSetor, dtEntrada, horaEntrada) VALUES (3, 3, TO_DATE('2020/12/03', 'yyyy/mm/dd'), TO_DATE('01:00:00', 'hh24:mi:ss'))
  INTO GRADC_alocado (matricula, idSetor, dtEntrada, horaEntrada) VALUES (4, 3, TO_DATE('2020/12/15', 'yyyy/mm/dd'), TO_DATE('21:00:00', 'hh24:mi:ss'))
SELECT * FROM DUAL;