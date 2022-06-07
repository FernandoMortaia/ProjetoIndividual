-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE HarryPotter;
USE HarryPotter;

CREATE TABLE Usuário(
idUsuário INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (45),
Email VARCHAR (100),
Senha VARCHAR (45),
fkBruxo INT,
foreign key (fkBruxo) references Bruxo (idBruxo)
);

CREATE TABLE Bruxo(
idBruxo INT PRIMARY KEY AUTO_INCREMENT,
NomeBruxo VARCHAR (45),
Casa VARCHAR (45)
);

INSERT INTO Bruxo (NomeBruxo, Casa) VALUES 
('Harry Potter', 'Grifinória'),
('Albus Dumbledore', 'Grifinória'),
('Rubeus Hagrid', 'Grifinória'),
('Voldemort', 'Sonserina'),
('Sirius Black', 'Grifinória'),
('Severus Snape', 'Sonserina');

SELECT * FROM Bruxo;
