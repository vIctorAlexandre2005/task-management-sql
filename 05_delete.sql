DELETE FROM TarefaCategoria
WHERE
    id_tarefa = 3
    AND id_categoria = 2;

DELETE FROM Categoria
WHERE
    id_categoria = 1;

DELETE FROM Tarefa
WHERE
    status = 'concluida';