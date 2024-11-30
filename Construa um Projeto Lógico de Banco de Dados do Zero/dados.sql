-- Inserção de dados de teste

INSERT INTO Clientes (nome, endereco, telefone, tipo_cliente) VALUES
('João da Silva', 'Rua A, 123', '123456789', 'PF'),
('Oficina ABC', 'Avenida B, 456', '987654321', 'PJ');

INSERT INTO Veiculos (placa, modelo, ano, id_cliente) VALUES
('AAA1111', 'Fusca', 1980, 1),
('BBB2222', 'Civic', 2020, 2);

INSERT INTO Mecanicos (nome, endereco, especialidade) VALUES
('Carlos', 'Rua C, 789', 'Suspensão'),
('Ana', 'Avenida D, 101', 'Freios');

INSERT INTO Servicos (descricao, valor_mao_obra) VALUES
('Troca de óleo', 50.00),
('Alinhamento', 80.00);

INSERT INTO Pecas (descricao, preco) VALUES
('Óleo', 30.00),
('Filtro de óleo', 20.00);

INSERT INTO OrdensServico (data_emissao, valor_total, status, data_conclusao, id_veiculo, id_cliente) VALUES
('2024-11-01', 100.00, 'Em andamento', '2024-11-10', 1, 1),
('2024-11-02', 150.00, 'Concluído', '2024-11-05', 2, 2);

INSERT INTO ServicosPorOS (id_os, id_servico) VALUES
(1, 1),
(2, 2);

INSERT INTO PecasPorOS (id_os, id_peca) VALUES
(1, 1),
(2, 2);