CREATE DATABASE TesteBI;
GO

USE TesteBI;
GO

CREATE TABLE Produtos (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2)
);

INSERT INTO Produtos (Nome, Preco)
VALUES ('Mouse', 120.50), ('Teclado', 200.00), ('Monitor', 950.00);

INSERT INTO Produtos (Nome, Preco)
VALUES 
    ('Notebook', 3500.00),
    ('Cadeira Gamer', 890.00),
    ('Headset', 320.00);


	SELECT TOP 5 *
USE TesteBI;
GO

INSERT INTO Produtos (Nome, Preco)
VALUES
('Mouse Gamer', 150.00),
('Teclado Mecânico', 350.00),
('Monitor 24"', 950.00),
('Notebook i5', 3500.00),
('Cadeira Gamer', 890.00),
('Headset RGB', 320.00),
('SSD 1TB', 550.00),
('Webcam Full HD', 210.00),
('Impressora Laser', 650.00),
('Placa de Vídeo RTX 3060', 2800.00);

ALTER TABLE Produtos
ADD Categoria VARCHAR(50);

UPDATE Produtos
SET Categoria = 'Periféricos'
WHERE Nome IN ('Mouse Gamer', 'Teclado Mecânico', 'Headset RGB', 'Webcam Full HD');

UPDATE Produtos
SET Categoria = 'Monitores'
WHERE Nome = 'Monitor 24"';

UPDATE Produtos
SET Categoria = 'Computadores'
WHERE Nome = 'Notebook i5';

UPDATE Produtos
SET Categoria = 'Móveis'
WHERE Nome = 'Cadeira Gamer';

UPDATE Produtos
SET Categoria = 'Armazenamento'
WHERE Nome = 'SSD 1TB';

UPDATE Produtos
SET Categoria = 'Componentes'
WHERE Nome = 'Placa de Vídeo RTX 3060';

UPDATE Produtos
SET Categoria = 'Periféricos'
WHERE Nome = 'Impressora Laser';


SELECT * 
FROM Produtos;

SELECT Nome, Categoria
FROM Produtos;

UPDATE Produtos
SET Categoria = 'Periféricos'
WHERE Nome IN ('Mouse', 'Teclado', 'Headset');

UPDATE Produtos
SET Categoria = 'Monitores'
WHERE Nome = 'Monitor';

UPDATE Produtos
SET Categoria = 'Computadores'
WHERE Nome = 'Notebook';

INSERT INTO Produtos (Nome, Preco, Categoria)
VALUES
('Mouse Gamer', 150.00, 'Periféricos'),
('Teclado Mecânico', 350.00, 'Periféricos'),
('Monitor 24"', 950.00, 'Monitores'),
('Notebook i5', 3500.00, 'Computadores'),
('Cadeira Gamer', 890.00, 'Móveis'),
('Headset RGB', 320.00, 'Periféricos'),
('SSD 1TB', 550.00, 'Armazenamento'),
('Webcam Full HD', 210.00, 'Periféricos'),
('Impressora Laser', 650.00, 'Periféricos'),
('Placa de Vídeo RTX 3060', 2800.00, 'Componentes'),
('Teclado Gamer', 400.00, 'Periféricos'),
('Monitor 27"', 1350.00, 'Monitores'),
('Notebook i7', 4500.00, 'Computadores'),
('Cadeira Executiva', 1200.00, 'Móveis'),
('Headset Profissional', 550.00, 'Periféricos'),
('HD Externo 2TB', 480.00, 'Armazenamento'),
('Webcam 4K', 380.00, 'Periféricos'),
('Impressora Multifuncional', 750.00, 'Periféricos'),
('Placa de Vídeo RTX 3070', 4200.00, 'Componentes'),
('Monitor Ultrawide', 2200.00, 'Monitores'),
('Mouse Sem Fio', 180.00, 'Periféricos'),
('Teclado Sem Fio', 300.00, 'Periféricos'),
('Notebook Gamer', 7000.00, 'Computadores'),
('Cadeira Gamer RGB', 950.00, 'Móveis'),
('SSD 2TB', 950.00, 'Armazenamento'),
('Webcam HD', 180.00, 'Periféricos'),
('Impressora 3D', 2500.00, 'Periféricos'),
('Placa de Vídeo RTX 3080', 6000.00, 'Componentes'),
('Monitor 32" 4K', 3500.00, 'Monitores'),
('Mousepad Gamer', 90.00, 'Periféricos'),
('Teclado Mecânico RGB', 450.00, 'Periféricos');

ALTER TABLE Produtos
ADD Estado VARCHAR(50),
    Loja VARCHAR(50);

	UPDATE Produtos
SET Estado = 'SP', Loja = 'Loja Central'
WHERE Nome IN ('Mouse Gamer', 'Teclado Mecânico', 'Monitor 24"', 'Notebook i5', 'Cadeira Gamer');

UPDATE Produtos
SET Estado = 'RJ', Loja = 'Loja Barra'
WHERE Nome IN ('Headset RGB', 'SSD 1TB', 'Webcam Full HD');

UPDATE Produtos
SET Estado = 'MG', Loja = 'Loja Belo Horizonte'
WHERE Nome IN ('Impressora Laser', 'Placa de Vídeo RTX 3060');

UPDATE Produtos
SET Estado = 'SP', Loja = 'Loja Central'
WHERE Nome IN ('Teclado Gamer', 'Monitor 27"', 'Notebook i7', 'Cadeira Executiva');

UPDATE Produtos
SET Estado = 'RJ', Loja = 'Loja Barra'
WHERE Nome IN ('Headset Profissional', 'HD Externo 2TB', 'Webcam 4K');

UPDATE Produtos
SET Estado = 'MG', Loja = 'Loja Belo Horizonte'
WHERE Nome IN ('Impressora Multifuncional', 'Placa de Vídeo RTX 3070', 'Monitor Ultrawide');

INSERT INTO Produtos (Nome, Preco, Categoria, Estado, Loja)
VALUES 
('Mouse Sem Fio', 180.00, 'Periféricos', 'SP', 'Loja Central'),
('Teclado Sem Fio', 300.00, 'Periféricos', 'RJ', 'Loja Barra'),
('Notebook Gamer', 7000.00, 'Computadores', 'MG', 'Loja Belo Horizonte'),
('Cadeira Gamer RGB', 950.00, 'Móveis', 'SP', 'Loja Central'),
('SSD 2TB', 950.00, 'Armazenamento', 'RJ', 'Loja Barra');


UPDATE Produtos
SET Estado = 'SP', Loja = 'Loja Central'
WHERE Estado IS NULL AND Nome IN ('Mouse', 'Teclado', 'Mouse Sem Fio', 'Teclado Sem Fio', 'Mousepad Gamer', 'Teclado Mecânico RGB');

UPDATE Produtos
SET Estado = 'RJ', Loja = 'Loja Barra'
WHERE Estado IS NULL AND Nome IN ('Headset', 'Webcam HD');

UPDATE Produtos
SET Estado = 'MG', Loja = 'Loja Belo Horizonte'
WHERE Estado IS NULL AND Nome IN ('Notebook Gamer', 'Cadeira Gamer RGB', 'SSD 2TB', 'Impressora 3D', 'Placa de Vídeo RTX 3080', 'Monitor 32\" 4K');


CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(50)
);

CREATE TABLE Lojas (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100),
    Estado VARCHAR(50)
);

CREATE TABLE Produtos (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2),
    Custo DECIMAL(10,2),
    IdCategoria INT,
    IdLoja INT,
    FOREIGN KEY (IdCategoria) REFERENCES Categorias(Id),
    FOREIGN KEY (IdLoja) REFERENCES Lojas(Id)
);


INSERT INTO Categorias (Nome)
VALUES ('Periféricos'), ('Monitores'), ('Computadores'),
       ('Móveis'), ('Armazenamento'), ('Componentes');

INSERT INTO Lojas (Nome, Estado)
VALUES ('Loja Central', 'SP'),
       ('Loja Barra', 'RJ'),
       ('Loja Belo Horizonte', 'MG')
	   ('Loja Recife','BA');

INSERT INTO Lojas (Nome, Estado)
VALUES
    ('Loja da bahia', 'BA');

	SELECT DB_NAME() AS Banco_Atual;

CREATE TABLE Vendas (
    Id INT PRIMARY KEY IDENTITY,
    IdProduto INT,
    Quantidade INT,
    DataVenda DATE,
    Desconto DECIMAL(5,2),
    FOREIGN KEY (IdProduto) REFERENCES Produtos(Id)
);

INSERT INTO Vendas (IdProduto, Quantidade, DataVenda, Desconto)
VALUES
(1, 5, '2025-10-01', 0.00),
(2, 2, '2025-10-02', 5.00),
(3, 3, '2025-10-03', 10.00),
(4, 1, '2025-10-04', 0.00),
(5, 4, '2025-10-05', 0.00),
(6, 6, '2025-10-06', 15.00),
(7, 2, '2025-10-07', 0.00);


SELECT * 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'Lojas';


UPDATE Produtos
SET Estado = 'BA'
WHERE Loja = 'Loja da bahia';


UPDATE Produtos
SET Loja = 'Loja Bahia'
WHERE Estado = 'BA';

SELECT * 
FROM Produtos;

UPDATE Produtos
SET Estado = 'BA',
    Loja = 'Loja da Bahia'
WHERE Estado IS NULL
  AND Loja IS NULL;



  UPDATE Produtos
SET Categoria = 'Periféricos'
WHERE Nome IN ('Mouse Gamer', 'Teclado Mecânico', 'Headset RGB', 'Webcam Full HD', 'Impressora Laser')
  AND Categoria IS NULL;

-- Monitores
UPDATE Produtos
SET Categoria = 'Monitores'
WHERE Nome IN ('Monitor 24"')
  AND Categoria IS NULL;

-- Computadores
UPDATE Produtos
SET Categoria = 'Computadores'
WHERE Nome IN ('Notebook i5')
  AND Categoria IS NULL;

-- Móveis
UPDATE Produtos
SET Categoria = 'Móveis'
WHERE Nome IN ('Cadeira Gamer')
  AND Categoria IS NULL;

-- Armazenamento
UPDATE Produtos
SET Categoria = 'Armazenamento'
WHERE Nome IN ('SSD 1TB')
  AND Categoria IS NULL;

-- Componentes
UPDATE Produtos
SET Categoria = 'Componentes'
WHERE Nome IN ('Placa de Vídeo RTX 3060')
  AND Categoria IS NULL;


  CREATE TABLE DimTempo (
    Data DATE PRIMARY KEY,
    Ano INT,
    Mes INT,
    NomeMes VARCHAR(20)
);

INSERT INTO DimTempo (Data, Ano, Mes, NomeMes)
VALUES
('2025-10-01', 2025, 10, 'Outubro'),
('2025-10-02', 2025, 10, 'Outubro'),
('2025-10-03', 2025, 10, 'Outubro'),
('2025-10-04', 2025, 10, 'Outubro'),
('2025-10-05', 2025, 10, 'Outubro');


INSERT INTO DimTempo (Data, Ano, Mes, NomeMes)
VALUES

('2025-10-06', 2025, 10, 'Outubro'),
('2025-10-07', 2025, 10, 'Outubro');

SELECT 
    SUM((p.Preco - v.Desconto) * v.Quantidade) AS ReceitaTotal,
    SUM((p.Preco - p.Custo) * v.Quantidade) AS LucroTotal,
    AVG((p.Preco - v.Desconto) * v.Quantidade) AS TicketMedio
FROM Vendas v
JOIN Produtos p ON v.IdProduto = p.Id;






CREATE DATABASE LIVRARIA;
GO

USE LIVRARIA;
GO

CREATE TABLE LIVROS (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TITULO VARCHAR(100) NOT NULL,
    AUTOR VARCHAR(100),
    EMAIL VARCHAR(100),
    PAGINAS INT,
    EDITORA VARCHAR(100),
    VALOR DECIMAL(10,2),
    ESTADO CHAR(2),
    ANO CHAR(4)
);

SELECT * FROM LIVROS;


INSERT INTO LIVROS (TITULO, AUTOR, EMAIL, PAGINAS, EDITORA, VALOR, ESTADO, ANO)
VALUES
('Cavaleiro Real','Ana Claudia','ana@email.com',465,'Atlas',49.90,'RJ','2009'),

('SQL para leigos','João Nunes','joao@email.com',450,'Addison',98.00,'SP','2018'),

('Receitas Caseiras','Celia Tavares','celia@email.com',210,'Atlas',45.00,'RJ','2008'),

('Pessoas Efetivas','Eduardo Santos','eduardo@email.com',390,'Beta',79.00,'RJ','2018'),

('Hábitos Saudáveis','Eduardo Santos',NULL,630,'Beta',151.00,'RJ','2019'),

('A Casa Marrom','Hermes Macedo','hermes@email.com',250,'Bubba',60.00,'MG','2016'),

('Estácio Querido','Geraldo Francisco','geraldo@email.com',310,'Insignia',100.00,'ES','2015'),

('Pra sempre amigas','Leda Silva','leda@email.com',510,'Insignia',100.00,'ES','2011'),

('Copas Inesquecíveis','Marco Alcantara','marco@email.com',200,'Larson',131.00,'RS','2018'),

('O poder da mente','Clara Mafra','clara@email.com',120,'Continental',57.00,'SP','2017');


UPDATE LIVROS
SET EMAIL = 'eduardo.santos@email.com'
WHERE TITULO = 'Hábitos Saudáveis';
