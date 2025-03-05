CREATE DATABASE registro_escolar;

USE registro_escolar;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    situacao ENUM('Aprovado', 'Reprovado', 'Em andamento') NOT NULL
);

INSERT INTO estudantes (nome, idade, serie, nota, situacao) VALUES
('Ana Souza', 14, '9º Ano', 8.5, 'Aprovado'),
('Carlos Mendes', 15, '1º Ano', 6.8, 'Em andamento'),
('Fernanda Lima', 13, '8º Ano', 7.2, 'Aprovado'),
('Bruno Silva', 16, '2º Ano', 5.4, 'Reprovado'),
('Juliana Costa', 12, '7º Ano', 9.1, 'Aprovado'),
('Paulo Henrique', 17, '3º Ano', 6.0, 'Reprovado'),
('Roberta Farias', 14, '9º Ano', 7.5, 'Aprovado'),
('Lucas Pereira', 15, '1º Ano', 4.3, 'Reprovado');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

SELECT * FROM estudantes WHERE nome = 'Carlos Mendes';

SELECT * FROM estudantes WHERE nota = 7.2 AND situacao = 'Aprovado';




