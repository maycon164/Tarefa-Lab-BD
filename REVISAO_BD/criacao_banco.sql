CREATE DATABASE faculdade;
USE faculdade;


CREATE TABLE aluno (
	ra int primary key,
	nome varchar(100),
	idade int
)

CREATE TABLE disciplina(
	codigo int primary key,
	nome varchar(100),
	carga_horaria int
)

CREATE TABLE curso(
	codigo int primary key,
	nome varchar(50),
	area varchar(100)
)

CREATE TABLE aluno_disciplina(
	aluno_ra int,
	disciplina_codigo int
 	FOREIGN KEY (aluno_ra) REFERENCES aluno(ra),
 	FOREIGN KEY (disciplina_codigo) REFERENCES disciplina(codigo)
)

CREATE TABLE curso_disciplina(
	curso_codigo int,
	disciplina_codigo int
	FOREIGN KEY (curso_codigo) REFERENCES curso(codigo),
	FOREIGN KEY (disciplina_codigo) REFERENCES disciplina(codigo)
)


CREATE TABLE titulacao(
	codigo int primary key,
	titulo varchar(100)
)

CREATE TABLE professor(
	registro int primary key,
	nome varchar(100),
	titulacao int
	FOREIGN KEY (titulacao) REFERENCES titulacao(codigo)
)

CREATE TABLE disciplina_professor(
	disciplina_codigo int,
	professor_registro int
	FOREIGN KEY (disciplina_codigo) REFERENCES disciplina(codigo),
	FOREIGN KEY (professor_registro) REFERENCES professor(registro)
)

ALTER TABLE aluno
	ADD CONSTRAINT chk_idade
	CHECK (idade > 0);

ALTER TABLE disciplina
	ADD CONSTRAINT chk_carga_horaria
	CHECK (carga_horaria >= 32)

