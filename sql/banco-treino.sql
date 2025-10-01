USE Rinha;

-- ========================
-- Tabela de Departamentos
-- ========================
CREATE TABLE departamentos (
    id_dep INT AUTO_INCREMENT PRIMARY KEY,
    nome_dep VARCHAR(100) NOT NULL
);

-- ========================
-- Tabela de Funcionários
-- ========================
CREATE TABLE funcionarios (
    id_func INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id_dep)
);

-- ========================
-- Tabela de Produtos
-- ========================
CREATE TABLE produtos (
    id_prod INT AUTO_INCREMENT PRIMARY KEY,
    nome_prod VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);

-- ========================
-- Tabela de Vendas
-- ========================
CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT NOT NULL,
    funcionario_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id_prod),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id_func)
);

-- ========================
-- Inserção de Dados
-- ========================

-- Departamentos
INSERT INTO departamentos (nome_dep) VALUES
('TI'),
('RH'),
('Vendas');

-- Funcionários
INSERT INTO funcionarios (nome, departamento_id, salario, data_admissao) VALUES
('Ana', 1, 5000.00, '2021-01-10'),
('Bruno', 2, 4200.00, '2022-03-15'),
('Carla', 1, 5500.00, '2020-07-01'),
('Daniel', 3, 4000.00, '2023-01-05'),
('Elisa', 1, 6000.00, '2019-11-20');

-- Produtos
INSERT INTO produtos (nome_prod, preco, estoque) VALUES
('Camiseta', 50.00, 100),
('Calça', 120.00, 50),
('Tênis', 200.00, 30),
('Boné', 35.00, 80);

-- Vendas
INSERT INTO vendas (produto_id, funcionario_id, quantidade, data_venda) VALUES
(1, 4, 2, '2025-01-10'),  -- Daniel vendeu 2 Camisetas
(2, 4, 1, '2025-01-12'),  -- Daniel vendeu 1 Calça
(1, 1, 3, '2025-01-15'),  -- Ana vendeu 3 Camisetas
(3, 4, 1, '2025-01-20'),  -- Daniel vendeu 1 Tênis
(2, 3, 2, '2025-01-22');  -- Carla vendeu 2 Calças
