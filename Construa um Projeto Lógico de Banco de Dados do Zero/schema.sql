-- Criação das tabelas

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    tipo_cliente ENUM('PF', 'PJ')
);

CREATE TABLE Veiculos (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10),
    modelo VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Mecanicos (
    id_mecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    especialidade VARCHAR(50)
);

CREATE TABLE OrdensServico (
    id_os INT PRIMARY KEY AUTO_INCREMENT,
    data_emissao DATE,
    valor_total DECIMAL(10, 2),
    status VARCHAR(20),
    data_conclusao DATE,
    id_veiculo INT,
    id_cliente INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Servicos (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    valor_mao_obra DECIMAL(10, 2)
);

CREATE TABLE Pecas (
    id_peca INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2)
);

CREATE TABLE ServicosPorOS (
    id_os INT,
    id_servico INT,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES OrdensServico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);

CREATE TABLE PecasPorOS (
    id_os INT,
    id_peca INT,
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES OrdensServico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Pecas(id_peca)
);
