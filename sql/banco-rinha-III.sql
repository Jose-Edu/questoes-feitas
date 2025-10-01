create database Rinha3;
use Rinha3;

create table vendedores (
	idVendedor varchar(45) primary key,
    nome varchar(45),
    email varchar(45),
    telefone varchar(45),
    endereco varchar(45)
);

create table clientes (
	idCliente varchar(45) primary key,
    nome varchar(45),
    email varchar(45),
    telefone varchar(45),
    endereco varchar(45),
    cpf varchar(45)
);

create table meiosPagamento (
	idMeioPagamento varchar(45) primary key
);

create table categorias (
	idCategoria varchar(45) primary key,
    nome varchar(45)
);

create table carrinhoCompras (

	idCarrinhoCompra varchar(45) primary key,
    data datetime,
    
    idCliente varchar(45),
    idVendedor varchar(45),
    
	foreign key (idCliente) references clientes(idCliente),
    foreign key (idVendedor) references vendedores(idVendedor)

);

create table pedidos (
	idPedido varchar(45) primary key,
    numero varchar(45),
    notaFiscal varchar(45),
    status varchar(45),
    valorTotal varchar(45),
    enderecoEntrega varchar(45),
    data datetime,
    
    idVendedor varchar(45),
    idCliente varchar(45),
    idCarrinhoCompra varchar(45),
    
    foreign key (idVendedor) references vendedores(idVendedor),
    foreign key (idCliente) references clientes(idCliente),
    foreign key (idCarrinhoCompra) references carrinhoCompras(idCarrinhoCompra)
);

create table pagamentos (

	idPagamento varchar(45) primary key,
    valor decimal(10,2),
    
    idMeioPagamento varchar(45),
    idPedido varchar(45),

	foreign key (idMeioPagamento) references meiosPagamento(idMeioPagamento),
	foreign key (idPedido) references pedidos(idPedido)
);

create table produtos (

	idProduto varchar(45) primary key,
    nome varchar(45),
    descricao varchar(45),
    valor decimal(10,2),
    quantidadeEstoque INT,
    
    idCategoria varchar(45),
    
    foreign key (idCategoria) references categorias(idCategoria)

);

create table carrinhoItens (

	idCarrinhoCompra varchar(45),
    idProduto varchar(45),
    
    quantidade int,
    valor decimal(10,2),
    
    foreign key (idCarrinhoCompra) references carrinhoCompras(idCarrinhoCompra),
    foreign key (idProduto) references produtos(idProduto)

);

create table pedidoItens (

	idPedido varchar(45),
    idVendedor varchar(45),
    idCliente varchar(45),
    idProduto varchar(45),
    
    quantidade int,
    valor decimal(10,2),
    
    foreign key (idPedido) references pedidos(idPedido),
    foreign key (idVendedor) references vendedores(idVendedor),
    foreign key (idCliente) references clientes(idCliente),
    foreign key (idProduto) references produtos(idProduto)

);

-- Inserções (Apenas para teste, não reflete o banco real)

INSERT INTO vendedores VALUES
('V001','Carlos Silva','carlos@loja.com','11987654321','Rua A, 100'),
('V002','Fernanda Souza','fernanda@loja.com','11923456789','Rua B, 200'),
('V003','João Pereira','joao@loja.com','11987651234','Rua C, 300'),
('V004','Maria Oliveira','maria@loja.com','11976543210','Rua D, 400'),
('V005','Ana Costa','ana@loja.com','11999998888','Rua E, 500');

INSERT INTO clientes VALUES
('C001','Ricardo Lima','ricardo@email.com','11911112222','Av X, 101','12345678901'),
('C002','Juliana Ramos','juliana@email.com','11922223333','Av Y, 102','23456789012'),
('C003','Paulo Mendes','paulo@email.com','11933334444','Av Z, 103','34567890123'),
('C004','Camila Rocha','camila@email.com','11944445555','Av W, 104','45678901234'),
('C005','Lucas Martins','lucas@email.com','11955556666','Av V, 105','56789012345');

INSERT INTO meiosPagamento VALUES
('MP01'),('MP02'),('MP03'),('MP04'),('MP05');

INSERT INTO categorias VALUES
('CAT01','Eletrônicos'),
('CAT02','Roupas'),
('CAT03','Calçados'),
('CAT04','Livros'),
('CAT05','Móveis');

INSERT INTO produtos VALUES
('P001','Notebook','Notebook Dell',3500.00,10,'CAT01'),
('P002','Smartphone','Samsung Galaxy',2200.00,15,'CAT01'),
('P003','Camisa Polo','Camisa Azul M',120.00,50,'CAT02'),
('P004','Calça Jeans','Jeans Slim Fit',150.00,30,'CAT02'),
('P005','Tênis Nike','Nike Air',400.00,25,'CAT03'),
('P006','Sandália','Sandália Feminina',80.00,40,'CAT03'),
('P007','Livro SQL','Banco de Dados',90.00,60,'CAT04'),
('P008','Livro React','Programação Web',110.00,70,'CAT04'),
('P009','Sofá 3 lugares','Sofá cinza',1800.00,5,'CAT05'),
('P010','Mesa Jantar','Mesa madeira 6 lugares',2500.00,3,'CAT05');

INSERT INTO carrinhoCompras VALUES
('CAR001','2025-09-01 10:00:00','C001','V001'),
('CAR002','2025-09-01 11:00:00','C002','V002'),
('CAR003','2025-09-02 09:30:00','C003','V003'),
('CAR004','2025-09-02 15:00:00','C004','V004'),
('CAR005','2025-09-03 16:20:00','C005','V005');

INSERT INTO pedidos VALUES
('PED001','N001','NF001','Pago','3500.00','Av X, 101','2025-09-01 11:00:00','V001','C001','CAR001'),
('PED002','N002','NF002','Pago','2200.00','Av Y, 102','2025-09-01 12:00:00','V002','C002','CAR002'),
('PED003','N003','NF003','Em transporte','510.00','Av Z, 103','2025-09-02 10:00:00','V003','C003','CAR003'),
('PED004','N004','NF004','Pago','200.00','Av W, 104','2025-09-02 16:00:00','V004','C004','CAR004'),
('PED005','N005','NF005','Aguardando','1800.00','Av V, 105','2025-09-03 17:00:00','V005','C005','CAR005');

INSERT INTO carrinhoItens VALUES
('CAR001','P001',1,3500.00),
('CAR002','P002',1,2200.00),
('CAR003','P003',2,240.00),
('CAR003','P007',3,270.00),
('CAR004','P004',1,150.00),
('CAR004','P006',1,80.00),
('CAR005','P009',1,1800.00);

INSERT INTO pedidoItens VALUES
('PED001','V001','C001','P001',1,3500.00),
('PED002','V002','C002','P002',1,2200.00),
('PED003','V003','C003','P003',2,240.00),
('PED003','V003','C003','P007',3,270.00),
('PED004','V004','C004','P004',1,150.00),
('PED004','V004','C004','P006',1,80.00),
('PED005','V005','C005','P009',1,1800.00);

INSERT INTO pagamentos VALUES
('PG001',3500.00,'MP01','PED001'),
('PG002',2200.00,'MP02','PED002'),
('PG003',510.00,'MP03','PED003'),
('PG004',200.00,'MP04','PED004'),
('PG005',1800.00,'MP05','PED005');
