UPDATE Tarefa
SET
    status = 'concluida',
    data_conclusao = NOW ()
WHERE
    id_tarefa = 1;

UPDATE Usuario
SET
    nome = 'Victor Alexandre'
WHERE
    id_usuario = 1;

UPDATE Categoria
SET
    descricao = 'Atividades do trabalho na empresa'
WHERE
    id_categoria = 2;