INSERT INTO
    Usuario (nome, email, senha)
VALUES
    ('Victor', 'victor@email.com', '123'),
    ('Ana', 'ana@gmail.com', 'abc'),
    ('João', 'joao@gmail.com', 'senha');

INSERT INTO
    Categoria (nome, descricao, id_usuario)
VALUES
    ('Pessoal', 'Coisas do dia a dia', 1),
    ('Trabalho', 'Atividades profissionais', 1),
    ('Estudos', 'Faculdade e cursos', 2);

INSERT INTO
    Tarefa (titulo, descricao, prioridade, status, id_usuario)
VALUES
    (
        'Estudar Banco de Dados',
        'Preparar DER e 3FN',
        'alta',
        'pendente',
        2
    ),
    (
        'Comprar pão',
        'Padaria da esquina',
        'baixa',
        'pendente',
        1
    ),
    (
        'Implementar login',
        'Criar login no sistema',
        'alta',
        'em_andamento',
        1
    );

INSERT INTO
    TarefaCategoria
VALUES
    (1, 3), -- Tarefa “Estudar BD” é da categoria “Estudos”
    (3, 2);

-- Tarefa “Implementar login” é da categoria “Trabalho”