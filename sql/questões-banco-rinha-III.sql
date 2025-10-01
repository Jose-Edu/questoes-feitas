-- [1] Top 3 clientes (Treino):

select c.nome, sum(pi.quantidade * pr.valor) as compras  from clientes c
join pedidos pe on pe.idCliente = c.idCliente
join pedidoItens pi on pi.idPedido = pe.idPedido
join produtos pr on pr.idProduto = pi.idProduto
group by c.nome
order by compras desc
limit 3;

-- [2] Vendedores ativos (Treino):

select v.nome, sum(pi.quantidade) as vendas from vendedores v
left join pedidos p on p.idVendedor = v.idVendedor
left join pedidoItens pi on pi.idPedido = p.idPedido
group by v.nome
having vendas > 1;

-- [3] Carrinhos do dia (Treino):

select * from carrinhoCompras c where c.data > '2025-08-31' and c.data < '2025-09-2';

-- [4] Pessoas do pedido (Treino):

select p.idPedido, c.nome as cliente, v.nome as vendedor from pedidos p
join clientes c on c.idCliente = p.idCliente
join vendedores v on v.idVendedor = p.idVendedor;

-- [5] Média pedidos (Treino):

select avg(valores) from (
select sum(pi.quantidade * pr.valor) as valores from pedidos p
join pedidoItens pi on pi.idPedido = p.idPedido
join produtos pr on pr.idProduto = pi.idProduto
group by p.idPedido) as sub;

-- [6] Total por vendedor (Treino):

select v.nome, sum(pi.quantidade * pr.valor) from vendedores v
left join pedidos p on p.idVendedor = v.idVendedor
left join pedidoItens pi on pi.idPedido = p.idPedido
left join produtos pr on pr.idProduto = pi.idProduto
group by v.nome;
