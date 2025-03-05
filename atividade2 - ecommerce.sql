CREATE DATABASE eletro_lima;

USE eletro_lima;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, categoria) VALUES
('Notebook Dell Inspiron', 'Notebook com Intel i7 e 16GB RAM', 4500.00, 10, 'Eletrônicos'),
('Smartphone Iphone 16', 'Celular Iphone 15 Pro Max 256gb', 7500.00, 20, 'Eletrônicos'),
('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído', 300.00, 50, 'Acessórios'),
('Cadeira Gamer', 'Cadeira ergonômica para jogos', 1200.00, 15, 'Móveis'),
('Monitor 27 Polegadas', 'Monitor LED Full HD', 900.00, 25, 'Eletrônicos'),
('Teclado Mecânico RGB', 'Teclado gamer mecânico com iluminação RGB', 350.00, 30, 'Acessórios'),
('Mochila para Notebook', 'Mochila resistente para transporte de notebook', 150.00, 40, 'Acessórios'),
('Mouse sem fio', 'Mouse ergonômico sem fio com alta precisão', 120.00, 35, 'Acessórios');

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

SELECT * FROM produtos WHERE nome = 'Monitor 27 Polegadas';



