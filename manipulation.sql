-- 1. Atualizar o telefone de um tutor específico (ID 3)
UPDATE TUTOR
SET Telefone = '5521999887766'
WHERE ID_Tutor = 3;

-- 2. Mudar a especialidade de um veterinário específico (ID 2)
UPDATE VETERINARIO
SET Especialidade = 'Dermatologia'
WHERE ID_Vet = 2;

-- 3. Mudar o status de um agendamento de 'Pendente' para 'Em andamento' (ID 2)
UPDATE AGENDAMENTO
SET Status = 'Em andamento'
WHERE ID_Agendamento = 2;

-- ===================================
-- COMANDOS DE DELETE
-- ===================================

-- 1. Excluir um agendamento cancelado (ID 3)
-- Esta operação é segura, pois o agendamento cancelado não gerou um atendimento.
DELETE FROM AGENDAMENTO
WHERE ID_Agendamento = 3 AND Status = 'Cancelado';

-- 2. Excluir um usuário do sistema (que não possui FKs em outras tabelas principais)
DELETE FROM USUARIO_SISTEMA
WHERE Username = 'julia.atend';

-- 3. Excluir um tutor e todos os seus animais (exige a regra ON DELETE CASCADE nas tabelas ANIMAL/TUTOR, 
-- ou a exclusão manual dos dependentes primeiro, para manter a integridade referencial)

-- **Atenção:** Se a FK em ANIMAL não tiver ON DELETE CASCADE, as linhas abaixo falharão.
-- Se falhar, use o método de exclusão manual:
/*
-- 3a. Excluir todos os animais do Tutor a ser removido (ID 3)
DELETE FROM ANIMAL
WHERE ID_Tutor = 3;
*/
-- 3b. Excluir o Tutor (ID 3 - Carlos Eduardo Souza)
DELETE FROM TUTOR
WHERE ID_Tutor = 3;