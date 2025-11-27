-- Povoamento da Tabela TUTOR
INSERT INTO TUTOR (Nome, Telefone, Endereco) VALUES
('Ana Clara Silva', '5511987654321', 'Rua das Flores, 100'),
('Bruno Fernandes', '5511998765432', 'Av. Central, 550'),
('Carlos Eduardo Souza', '5521912345678', 'Travessa da Paz, 30');

-- Povoamento da Tabela VETERINARIO
INSERT INTO VETERINARIO (Nome, CRMV, Especialidade) VALUES
('Dr. João Alberto', 'CRMV/SP-12345', 'Clínica Geral'),
('Dra. Márcia Lima', 'CRMV/RJ-67890', 'Oftalmologia'),
('Dr. Pedro Rocha', 'CRMV/MG-11223', 'Cirurgia');

-- Povoamento da Tabela ANIMAL
-- Bruno (ID 2) tem 2 animais.
INSERT INTO ANIMAL (Nome, Raca, Data_Nascimento, ID_Tutor) VALUES
('Rex', 'Labrador', '2020-05-15', 1),
('Mia', 'Siamês', '2021-01-20', 2),
('Thor', 'Bulldog', '2019-11-01', 2),
('Luna', 'Persa', '2022-03-10', 3);

-- Povoamento da Tabela AGENDAMENTO
-- Rex (ID 1) com Dr. João (ID 1)
INSERT INTO AGENDAMENTO (Data, Hora, Status, ID_Animal, ID_Vet) VALUES
('2025-11-20', '10:00:00', 'Concluído', 1, 1),
('2025-11-25', '14:30:00', 'Pendente', 3, 2),
('2025-11-28', '09:00:00', 'Cancelado', 4, 1);

-- Povoamento da Tabela ATENDIMENTO
-- Vinculado ao primeiro agendamento (ID 1)
INSERT INTO ATENDIMENTO (Data, Diagnostico, Procedimento, ID_Animal, ID_Vet, ID_Agendamento) VALUES
('2025-11-20', 'Otite leve.','Limpeza auricular e medicação.', 1, 1, 1);

-- Povoamento da Tabela USUARIO_SISTEMA
INSERT INTO USUARIO_SISTEMA (Nome, Username, Funcao) VALUES
('Gerente Adm', 'admin.geral', 'Gerente'),
('Atendente Júlia', 'julia.atend', 'Recepção');