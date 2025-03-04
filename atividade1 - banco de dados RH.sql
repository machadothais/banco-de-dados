CREATE DATABASE db_rh_codeWin;

USE db_rh_codewin;

CREATE TABLE cargos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE colaboradoes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
cpf VARCHAR(11) UNIQUE NOT NULL,
data_nascimento DATE,
telefone VARCHAR(15),
email VARCHAR(100),
cargo_id INT,
departamento_id INT,
data_admissao DATE,
salario DECIMAL(10, 2),
FOREIGN KEY (cargo_id) REFERENCES cargos(id),
FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

INSERT INTO cargos (nome) VALUES
('Gerente Geral'),
('Coordenador de Markenting'),
('Coordenador de Suporte Técnico'),
('Tecnico N1'),
('Tecnico N2'),
('Analista'),
('Coordenador'),
('Diretor'),
('Auxiliar');

INSERT INTO departamentos (nome) VALUES
('Recursos Humanos'),
('TI'),
('Financeiro'),
('Marketing');


INSERT INTO colaboradores (nome, cpf, data_nascimento, telefone, email, cargo_id, departamento_id, data_admissao, salario) 
VALUES 
('João Silva', '47895604111', '1985-06-15', '(12)3456-7890', 'joao.silva@empresa.com', 3, 2, '2020-01-15', 7500.00),
('Maria Souza', '36985214709', '1990-08-22', '(11)9876-5432', 'maria.souza@empresa.com', 1, 1, '2021-03-10', 1500.00),
('William Douglas', '11987654321', '1994-10-05', '(13)9876-5432', 'william.douglas@empresa.com', 3, 2, '2019-05-10', 4800.00),
('Alana Smith', '52374521490', '1996-01-03', '(14)98215-0020', 'alana.smith@empresa.com', 2, 4, '2019-04-10', 3500.00),
('Luan Oliveira', '12345678920', '1975-04-25', '(20)9879-4158', 'luan.oliveira@empresa.com', 6, 2, '2018-06-04', 2800.00),
('Mayara Alba', '52149631820', '2003-08-10', '(45)99123-3545', 'mayara.alba@empresa.com', 4, 2, '2021-11-27', 2800.00),
('Roberto Luiz', '02348569310', '1969-07-22', '(87)98177-0001', 'roberto.luiz@empresa.com', 2, 4, '2015-02-09', 3500.00),
('Letícia Silva', '85696314758', '1997-06-04', '(13)98823-6962', 'leticia.silva@empresa.com', 5, 2, '2020-03-11', 2800.00),
('Walace Teixeira', '30283540245', '2002-12-10', '(11)98176-4321', 'walace.teixeira@empresa.com', 9, 1, '2022-05-29', 1850.00),
('Eloá Guilherme', '48730196429', '2004-05-09', '(11)99876-0000', 'eloa.guilherme@empresa.com', 9, 2, '2021-03-10', 1850.00);

RENAME TABLE colaboradoes TO colaboradores;

SELECT * FROM colaboradores; 

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;


