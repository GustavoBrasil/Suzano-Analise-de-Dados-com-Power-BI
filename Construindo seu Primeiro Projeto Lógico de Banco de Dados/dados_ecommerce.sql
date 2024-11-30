-- Inserção de Clientes
INSERT INTO Cliente (nome, tipo_cliente, cpf_cnpj, endereco, telefone) VALUES 
('Cliente 1', 'PF', '123.456.789-00', 'Rua A, 123', '9999-9999'),
('Cliente 2', 'PJ', '12.345.678/0001-00', 'Av. B, 456', '8888-8888');

-- Inserção de Fornecedores
INSERT INTO Fornecedor (nome, contato) VALUES 
('Fornecedor 1', 'fornecedor1@empresa.com'),
('Fornecedor 2', 'fornecedor2@empresa.com');

-- Inserção de Produtos
INSERT INTO Produto (nome, descricao, preco, id_fornecedor) VALUES 
('Produto 1', 'Descricao do Produto 1', 10.00, 1),
('Produto 2', 'Descricao do Produto 2', 20.00, 2);

-- Inserção de Estoques
INSERT INTO Estoque (quantidade, id_produto) VALUES 
(100, 1),
(200, 2);

-- Inserção de Pedidos
INSERT INTO Pedido (data, status, id_cliente) VALUES 
('2023-11-20', 'Pendente', 1),
('2023-11-21', 'Entregue', 2);

-- Inserção de Pagamentos
INSERT INTO Pagamento (tipo_pagamento, id_pedido) VALUES 
('Cartao de Credito', 1),
('Boleto', 2);

-- Inserção de Entregas
INSERT INTO Entrega (status, codigo_rastreio, id_pedido) VALUES 
('Em Transito', 'AB123456789BR', 1),
('Entregue', 'CD987654321BR', 2);

-- Inserção de Produtos em Pedidos
INSERT INTO Pedido_Produto (id_pedido, id_produto, quantidade) VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 1, 1);