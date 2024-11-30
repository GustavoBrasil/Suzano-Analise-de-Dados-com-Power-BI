SELECT * FROM Cliente;

SELECT * FROM Pedido WHERE status = 'Pendente';

SELECT nome, tipo_cliente, 
       CASE 
           WHEN tipo_cliente = 'PF' THEN 'Pessoa Física'
           WHEN tipo_cliente = 'PJ' THEN 'Pessoa Jurídica'
       END AS tipo_cliente_desc
FROM Cliente;

SELECT * FROM Produto ORDER BY preco DESC;

SELECT id_cliente, COUNT(*) as total_pedidos
FROM Pedido
GROUP BY id_cliente
HAVING COUNT(*) > 1;

SELECT Cliente.nome AS cliente_nome, Produto.nome AS produto_nome, Pedido.data
FROM Pedido
JOIN Cliente ON Pedido.id_cliente = Cliente.id_cliente
JOIN Pedido_Produto ON Pedido.id_pedido = Pedido_Produto.id_pedido
JOIN Produto ON Pedido_Produto.id_produto = Produto.id_produto;