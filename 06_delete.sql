-- 06 - Deletes

-- 1. Excluir inscrições canceladas (se houver)
DELETE FROM Inscricao WHERE status = 'Cancelada';

-- 2. Excluir inscrições ligadas a projetos encerrados
DELETE FROM Inscricao WHERE id_projeto IN (
    SELECT id_projeto FROM Projeto WHERE status = 'Encerrado'
);

-- 3. Excluir inscrições ligadas a voluntários sem interesse
DELETE FROM Inscricao WHERE id_voluntario NOT IN (
    SELECT id_voluntario FROM Voluntario
);

-- 4. Agora sim, excluir voluntários sem inscrições
DELETE FROM Voluntario 
WHERE id_voluntario NOT IN (SELECT DISTINCT id_voluntario FROM Inscricao);

-- 5. Excluir projetos encerrados
DELETE FROM Projeto WHERE status = 'Encerrado';
