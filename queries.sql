-- 1. Consultar todos os animais e seus respectivos tutores (uso de JOIN)
SELECT
    A.Nome AS Animal,
    A.Raca,
    T.Nome AS Tutor,
    T.Telefone
FROM
    ANIMAL A
INNER JOIN
    TUTOR T ON A.ID_Tutor = T.ID_Tutor
ORDER BY
    T.Nome;

-- 2. Listar os agendamentos pendentes para uma data específica (uso de WHERE e ORDER BY)
SELECT
    AG.Data,
    AG.Hora,
    AN.Nome AS NomeAnimal,
    V.Nome AS Veterinario
FROM
    AGENDAMENTO AG
JOIN
    ANIMAL AN ON AG.ID_Animal = AN.ID_Animal
JOIN
    VETERINARIO V ON AG.ID_Vet = V.ID_Vet
WHERE
    AG.Status = 'Pendente'
ORDER BY
    AG.Hora;

-- 3. Obter os atendimentos realizados por um veterinário específico (uso de WHERE)
SELECT
    AT.Data,
    AT.Diagnostico,
    AN.Nome AS Paciente
FROM
    ATENDIMENTO AT
JOIN
    VETERINARIO V ON AT.ID_Vet = V.ID_Vet
JOIN
    ANIMAL AN ON AT.ID_Animal = AN.ID_Animal
WHERE
    V.Nome = 'Dr. João Alberto';

-- 4. Contar o número de animais por tutor (uso de GROUP BY e COUNT)
SELECT
    T.Nome AS Tutor,
    COUNT(A.ID_Animal) AS TotalAnimais
FROM
    TUTOR T
LEFT JOIN
    ANIMAL A ON T.ID_Tutor = A.ID_Tutor
GROUP BY
    T.Nome
ORDER BY
    TotalAnimais DESC;

-- 5. Listar o veterinário mais antigo (ou os dois mais antigos) (uso de LIMIT)
SELECT
    Nome,
    CRMV,
    Especialidade
FROM
    VETERINARIO
ORDER BY
    ID_Vet ASC -- Assumindo que o menor ID_Vet foi inserido primeiro
LIMIT 1;