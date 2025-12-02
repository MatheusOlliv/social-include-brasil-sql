-- 04 - Consultas
-- 1. Ver todos os voluntários
SELECT * FROM Voluntario;

-- 2. Projetos ativos
SELECT nome, descricao FROM Projeto WHERE status = 'Ativo';

-- 3. Inscrições aprovadas ordenadas por data
SELECT id_inscricao, id_voluntario, id_projeto, data_inscricao
FROM Inscricao
WHERE status = 'Aprovada'
ORDER BY data_inscricao;

-- 4. Voluntários e projetos (JOIN)
SELECT v.nome AS voluntario, p.nome AS projeto, i.status
FROM Inscricao i
JOIN Voluntario v ON i.id_voluntario = v.id_voluntario
JOIN Projeto p ON i.id_projeto = p.id_projeto;

-- 5. Quantos projetos cada ONG possui
SELECT o.nome AS ong, COUNT(p.id_projeto) AS total_projetos
FROM ONG o
LEFT JOIN Projeto p ON p.id_ong = o.id_ong
GROUP BY o.id_ong, o.nome
ORDER BY total_projetos DESC;
