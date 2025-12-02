-- 02 - Criar tabelas
CREATE TABLE ONG (
    id_ong INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(20) UNIQUE NOT NULL,
    area_atuacao VARCHAR(100),
    endereco VARCHAR(150),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Projeto (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE,
    status VARCHAR(20),
    id_ong INT,
    FOREIGN KEY (id_ong) REFERENCES ONG(id_ong)
);

CREATE TABLE Voluntario (
    id_voluntario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(20) UNIQUE NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Inscricao (
    id_inscricao INT AUTO_INCREMENT PRIMARY KEY,
    data_inscricao DATE NOT NULL,
    status VARCHAR(20),
    id_voluntario INT,
    id_projeto INT,
    FOREIGN KEY (id_voluntario) REFERENCES Voluntario(id_voluntario),
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);
