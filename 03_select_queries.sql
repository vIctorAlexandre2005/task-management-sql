SELECT
    *
FROM
    Tarefa
ORDER BY
    prioridade DESC;

SELECT
    t.*
FROM
    Tarefa t
    JOIN Usuario u ON u.id_usuario = t.id_usuario
WHERE
    u.nome = 'Victor';

SELECT
    t.titulo,
    c.nome AS categoria
FROM
    TarefaCategoria tc
    JOIN Tarefa t ON t.id_tarefa = tc.id_tarefa
    JOIN Categoria c ON c.id_categoria = tc.id_categoria;

SELECT
    *
FROM
    Usuario
LIMIT
    2;