CREATE TABLE ALUNO (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    nome_responsavel VARCHAR(150) NOT NULL
);

CREATE TABLE PROFESSOR (
    professor_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    titulacao VARCHAR(100)
);

CREATE TABLE ESCOLA (
    escola_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    endereco VARCHAR(200)
);

CREATE TABLE TURMA (
    turma_id INT PRIMARY KEY,
    ano_letivo INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    escola_id INT,
    FOREIGN KEY (escola_id) REFERENCES ESCOLA(escola_id)
);

CREATE TABLE DISCIPLINA (
    disciplina_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    abreviacao VARCHAR(10) NOT NULL
);

CREATE TABLE MATRICULA (
    matricula_id INT PRIMARY KEY,
    aluno_id INT,
    turma_id INT,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(aluno_id),
    FOREIGN KEY (turma_id) REFERENCES TURMA(turma_id)
);

CREATE TABLE LANCAMENTO_NOTA (
    nota_id INT PRIMARY KEY,
    matricula_id INT,
    disciplina_id INT,
    bimestre TINYINT NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    frequencia DECIMAL(5,2),
    FOREIGN KEY (matricula_id) REFERENCES MATRICULA(matricula_id),
    FOREIGN KEY (disciplina_id) REFERENCES DISCIPLINA(disciplina_id)
);

CREATE TABLE PROFESSOR_TURMA_DISCIPLINA (
    id INT PRIMARY KEY,
    professor_id INT,
    turma_id INT,
    disciplina_id INT,
    FOREIGN KEY (professor_id) REFERENCES PROFESSOR(professor_id),
    FOREIGN KEY (turma_id) REFERENCES TURMA(turma_id),
    FOREIGN KEY (disciplina_id) REFERENCES DISCIPLINA(disciplina_id)
);