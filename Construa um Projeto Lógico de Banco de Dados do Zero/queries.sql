SELECT * FROM Clientes;
SELECT * FROM Veiculos;
SELECT * FROM OrdensServico WHERE status = 'Em andamento';
SELECT descricao, preco, preco * 1.1 AS preco_com_imposto FROM Pecas;
SELECT * FROM Mecanicos ORDER BY nome ASC;
SELECT id_cliente, COUNT(*) AS total_ordens FROM OrdensServico GROUP BY id_cliente HAVING COUNT(*) > 1;
SELECT os.id_os, c.nome, v.modelo, s.descricao
FROM OrdensServico os
JOIN Clientes c ON os.id_cliente = c.id_cliente
JOIN Veiculos v ON os.id_veiculo = v.id_veiculo
JOIN ServicosPorOS sp ON os.id_os = sp.id_os
JOIN Servicos s ON sp.id_servico = s.id_servico;