CREATE DATABASE db_classificados;

USE db_classificados; 

CREATE TABLE tb_usuario (
Id INT NOT NULL PRIMARY KEY IDENTITY,
Nome VARCHAR(255),
Usuario VARCHAR (100),
Sennha VARCHAR (255),
Pessoa VARCHAR (255),
Imagem VARCHAR (255),
); 
CREATE TABLE tb_anuncios (
Id INT NOT NULL PRIMARY KEY IDENTITY,
Titulo VARCHAR (100),
Descricao VARCHAR (255),
Contato VARCHAR (255),
Imagem VARCHAR (255),
FK_id_usuario INT NOT NULL,
FOREIGN KEY (FK_id_usuario) REFERENCES tb_usuario (Id),
); 
