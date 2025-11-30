CREATE TABLE
    Usuario (
        id_usuario INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(150) NOT NULL UNIQUE,
        senha VARCHAR(255) NOT NULL,
        data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    Categoria (
        id_categoria INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL,
        descricao VARCHAR(255),
        id_usuario INT,
        FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario)
    );

CREATE TABLE
    Tarefa (
        id_tarefa INT AUTO_INCREMENT PRIMARY KEY,
        titulo VARCHAR(100) NOT NULL,
        descricao TEXT,
        prioridade ENUM ('baixa', 'media', 'alta') NOT NULL,
        status ENUM ('pendente', 'em_andamento', 'concluida') DEFAULT 'pendente',
        data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        data_conclusao DATETIME NULL,
        id_usuario INT NOT NULL,
        FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario)
    );

CREATE TABLE
    TarefaCategoria (
        id_tarefa INT,
        id_categoria INT,
        PRIMARY KEY (id_tarefa, id_categoria),
        FOREIGN KEY (id_tarefa) REFERENCES Tarefa (id_tarefa),
        FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria)
    );