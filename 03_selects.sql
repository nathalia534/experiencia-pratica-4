-- 1. Listar todos os alunos com suas turmas
SELECT A.nome, T.serie, T.turno
FROM ALUNO A
JOIN MATRICULA M ON M.aluno_id = A.aluno_id
JOIN TURMA T ON T.turma_id = M.turma_id;

-- 2. Notas de um aluno específico
SELECT A.nome, D.nome AS disciplina, L.nota, L.bimestre
FROM LANCAMENTO_NOTA L
JOIN MATRICULA M ON M.matricula_id = L.matricula_id
JOIN ALUNO A ON A.aluno_id = M.aluno_id
JOIN DISCIPLINA D ON D.disciplina_id = L.disciplina_id
WHERE A.aluno_id = 1;

-- 3. Professores por turma
SELECT P.nome AS professor, T.serie, D.nome AS disciplina
FROM PROFESSOR_TURMA_DISCIPLINA PTD
JOIN PROFESSOR P ON P.professor_id = PTD.professor_id
JOIN TURMA T ON T.turma_id = PTD.turma_id
JOIN DISCIPLINA D ON D.disciplina_id = PTD.disciplina_id;

-- 4. Total de alunos por turma
SELECT T.serie, COUNT(*) AS total_alunos
FROM MATRICULA M
JOIN TURMA T ON T.turma_id = M.turma_id
GROUP BY T.serie;

-- 5. Buscar os 3 melhores alunos em Matemática (por nota)
SELECT A.nome, L.nota
FROM LANCAMENTO_NOTA L
JOIN MATRICULA M ON M.matricula_id = L.matricula_id
JOIN ALUNO A ON A.aluno_id = M.aluno_id
WHERE L.disciplina_id = 1
ORDER BY L.nota DESC
LIMIT 3;