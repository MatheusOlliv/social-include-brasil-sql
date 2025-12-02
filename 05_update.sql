-- 05 - Updates
-- Atualizar status de inscrição
UPDATE Inscricao SET status = 'Concluída' WHERE id_inscricao = 1;

-- Atualizar telefone de voluntário
UPDATE Voluntario SET telefone = '11955555555' WHERE id_voluntario = 2;

-- Atualizar status de projeto
UPDATE Projeto SET status = 'Encerrado' WHERE id_projeto = 2;
