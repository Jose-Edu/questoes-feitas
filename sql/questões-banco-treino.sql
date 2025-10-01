SELECT SUM(vendas.quantidade * produtos.preco) as faturamento_total FROM vendas JOIN produtos ON vendas.produto_id = produtos.id_prod; -- Faturamento Total

SELECT produtos.nome_prod, SUM(vendas.quantidade) as vendas FROM vendas JOIN produtos ON vendas.produto_id = produtos.id_prod group by produtos.nome_prod; -- Produtos mais vendidos

SELECT f.nome, count(v.funcionario_id) as vendas from funcionarios f JOIN vendas v ON v.funcionario_id = f.id_func group by f.nome order by vendas desc; -- vendas por funcionario

SELECT d.nome_dep, count(v.id_venda) AS vendas FROM departamentos d LEFT JOIN funcionarios f ON f.departamento_id = d.id_dep LEFT JOIN vendas v ON v.funcionario_id = f.id_func GROUP BY d.nome_dep order by vendas DESC; -- vendas por departamento

SELECT d.nome_dep, AVG(f.salario) as media_salarial from departamentos d JOIN funcionarios f ON f.departamento_id = d.id_dep GROUP BY d.nome_dep ORDER BY media_salarial DESC; -- media salarial por departamento

SELECT nome, data_admissao FROM funcionarios WHERE data_admissao < '2021-01-01'; -- Funcionarios anteriores a 2021