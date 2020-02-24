CREATE DATABASE projeto1;
USE projeto1;
drop table funcionario;

CREATE TABLE departamento(
id_dept		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_depto 		VARCHAR(30),
cidade_depto	VARCHAR(50)
)
;
CREATE TABLE funcionario(
id_funcionario	INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome 			VARCHAR(50),
sexo 			VARCHAR(1),
cargo 			VARCHAR(30),
dt_nascimento	DATE,
id_gestor		INT,
salario			DECIMAL(15,2),
comissao		DECIMAL(15,2),
dt_admissao		DATE,
status			VARCHAR(50),
id_dept			INT,
FOREIGN KEY id_dept(id_dept)
REFERENCES departamento(id_dept)
)
;

CREATE TABLE folga(
id_funcionario		INT,
data_inicio 		DATE NOT NULL,
data_fim			DATE,
status				VARCHAR(30),
FOREIGN KEY id_funcionario(id_funcionario)
REFERENCES funcionario(id_funcionario)
)
;

INSERT INTO departamento(
nome_depto ,
cidade_depto
)
VALUES(
"RH",
"SAO PAULO"
),(
"FINANCEIRO",
"RIO DE JANEIRO"
),(
"TECNOLOGIA",
"CAMPINAS"
),(
"COMPLIANCE",
"MANAUS"
)
;
SELECT * FROM FUNCIONARIO;
INSERT INTO funcionario(
nome,
sexo,
cargo,
dt_nascimento,
id_gestor,
salario,
comissao,
dt_admissao,
status,
id_dept
)
VALUES(
"JOAO SOUZA",
"M",
"ANALISTA DE TI",
"1993-03-30",
1,
2500.23,
750,
"2018-09-12",
"ATIVO",
3
),(
"MARIA MELO",
"F",
"ANALISTA FINANCEIRO",
"1993-01-20",
1,
2500.23,
750,
"2018-08-22",
"AFASTADA",
2
),(
"JOSE MARIA",
"M",
"COORDEADOR DE RH",
"1993-03-30",
0,
12500.23,
150,
"2008-09-12",
"ATIVO",
1
),(
"ANA SANTOS",
"F",
"DESENVOLVEDOR SR",
"1993-11-15",
1,
5500.23,
950,
"2011-09-22",
"ATIVO",
3
),(
"SILVANA ALMEIDA",
"F",
"DESENVOLVEDOR JR",
"1983-11-25",
1,
2500.23,
320,
"2011-09-22",
"ATIVO",
3
),(
"ROGERIO CUCA",
"M",
"ANALISTA DE PLANEJAMENTO",
"1973-04-15",
3,
5500.23,
950,
"2011-09-22",
"ATIVO",
2
),(
"AMADO BATISTA",
"M",
"ANALISTA DE RISCOS",
"1973-04-15",
1,
7500.23,
950,
"2011-09-22",
"ATIVO",
4
),(
"MARCELO REZENDE",
"M",
"ADVOGADO SR",
"1973-04-15",
7,
15500.23,
950,
"2011-09-22",
"ATIVO",
4
),(
"FABIANA AMARAL",
"F",
"ANALISTA DE NEGOCIOS SR",
"1985-08-15",
3,
1500.23,
950,
"2011-09-22",
"ATIVO",
3
),(
"ADRIANA MOURA",
"F",
"ADVOGADA JR",
"1993-04-14",
8,
3500.23,
0,
"2015-07-14",
"ATIVO",
4
),(
"FRANCISCA ALMEIDA",
"F",
"ANALISTA DE SUPORTE JR",
"1993-03-10",
1,
2500.23,
350,
"2017-09-22",
"DESLIGADA",
3
),(
"MARIA MELO",
"F",
"ANALISTA DE INVESTIMENTOS",
"1995-01-20",
3,
2500.23,
750,
"2018-08-22",
"AFASTADA",
2
),(
"JORGE LHANO",
"M",
"COORDEADOR DE TI",
"1993-03-30",
4,
12500.23,
150,
"2008-09-12",
"ATIVO",
3
),(
"GUSTAVO ZANTUT",
"M",
"CIENTISTA DE DADOS",
"1994-04-14",
4,
20500.13,
950,
"2019-08-12",
"ATIVO",
3
),(
"AMANDA OLIVEIRA",
"F",
"ANALISTA DE RECRUTAMENTO",
"1963-11-25",
3,
4500.12,
320,
"2013-09-22",
"ATIVO",
1
),(
"VALERIA SILVA",
"F",
"ANALISTA RECRUTAMENTO",
"1973-04-15",
3,
5500.23,
950,
"2011-09-22",
"DESLIGADO",
3
),(
"MATEUS DUARTE",
"M",
"ANALISTA DE RISCOS SR",
"1973-04-15",
1,
11300.00,
950,
"2011-09-22",
"ATIVO",
4
),(
"MARCELA FERREIRA",
"F",
"COMPLIANCE OFFICER",
"1982-04-25",
7,
12500.00,
750,
"2012-03-22",
"ATIVO",
4
),(
"SUZANE NOGUEIRA",
"F",
"ANALISTA ARQUITETURA PL",
"1975-08-15",
3,
13700.33,
1050,
"2011-09-22",
"ATIVO",
3
),(
"ROBERTO GARCIA",
"M",
"ADVOGADO PL",
"1983-08-25",
8,
10500.23,
3000,
"2015-07-14",
"ATIVO",
4
)
;
INSERT INTO folga(
id_funcionario,
data_inicio,
data_fim,
status	
)
VALUES(
2,
"2019-05-06",
"2019-05-10",
"ATESTADO MEDICO"
),(
5,
"2019-03-015",
"2019-09-10",
"LICENCA MATERNINDADE"
),(
8,
"2019-01-15",
"2019-02-15",
"FERIAS"
),(
8,
"2019-02-15",
"2019-02-28",
"BANCO DE HORAS"
),(
13,
"2019-02-15",
"2019-03-15",
"FERIAS"
),(
20,
"2019-02-15",
"2019-03-15",
"FERIAS"
),(
20,
"2019-08-15",
"2019-08-16",
"DAY OFF"
),(
1,
"2019-05-17",
"2019-05-18",
"DAY OFF"
),(
1,
"2019-05-17",
"2019-06-18",
"FERIAS"
)
;
INSERT INTO folga(
id_funcionario,
data_inicio,
data_fim,
status	
)
VALUES(
2,
"2018-05-06",
"2018-06-10",
"FERIAS"
),(
12,
"2018-05-06",
"2018-06-10",
"FERIAS"
),(
15,
"2018-08-06",
"2018-09-07",
"FERIAS"
)
;

SELECT d.nome_depto,COUNT(*) 
FROM funcionario f
JOIN departamento d
ON d.id_dept = f.id_dept
GROUP BY f.id_dept;

SELECT SUM(salario)+SUM(comissao)
FROM funcionario;

SELECT SUM(salario)+SUM(comissao)
FROM funcionario
GROUP BY id_dept;

SELECT AVG(salario), CARGO
FROM funcionario
GROUP BY cargo;

SELECT AVG(salario), d.cidade_depto
FROM funcionario f
JOIN departamento d
ON f.id_dept = d.id_dept 
GROUP BY d.cidade_depto;

SELECT d.cidade_depto,COUNT(*) 
FROM funcionario f
JOIN departamento d
ON d.id_dept = f.id_dept
GROUP BY d.cidade_depto;

SELECT * FROM funcionario
WHERE dt_admissao IN (SELECT MAX(dt_admissao)
						FROM funcionario)
;

SELECT * FROM funcionario
WHERE dt_admissao IN (SELECT MIN(dt_admissao)
						FROM funcionario)
;

SELECT * FROM funcionario
WHERE RIGHT(LEFT(dt_nascimento,7),2) = "11";

SELECT * FROM funcionario
WHERE (id_dept, dt_admissao) IN (SELECT id_dept,MAX(dt_admissao)
								FROM funcionario
								GROUP BY id_dept)
ORDER BY id_dept
;

SELECT * FROM funcionario
WHERE (id_dept, dt_admissao) IN (SELECT id_dept,MIN(dt_admissao)
						FROM funcionario
                        GROUP BY id_dept)
ORDER BY id_dept
;

SELECT * FROM funcionario f	
JOIN folga fl
ON f.id_funcionario = fl.id_funcionario
WHERE fl.data_inicio IN (SELECT max(data_inicio) FROM folga WHERE status = "FERIAS")
AND fl.status = "FERIAS"
; 

SELECT * FROM funcionario f	
JOIN folga fl
ON f.id_funcionario = fl.id_funcionario
WHERE fl.data_inicio IN (SELECT max(data_inicio) FROM folga WHERE status = "FERIAS")
AND fl.status <> "FERIAS"
; 
SELECT * FROM folga
WHERE status = "FERIAS";

SELECT AVG(DATEDIFF(data_fim,data_inicio)) FROM folga
WHERE status = "FERIAS";

SELECT MONTH(data_inicio),COUNT(*) FROM folga
WHERE status = "FERIAS"
GROUP BY MONTH(data_inicio)
ORDER BY COUNT(*) DESC
LIMIT 1
;

SELECT * FROM FOLGA;