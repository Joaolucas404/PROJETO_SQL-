CREATE DATABASE db_redesocial

USE db_redesocial

CREATE TABLE tb_usuarios (
Id INT NOT NULL PRIMARY KEY,
Nome VARCHAR (100)NOT NULL,
Usuario VARCHAR (255)NOT NULL,
Senha VARCHAR (255)NOT NULL,
Foto VARCHAR (255)NOT NULL,
); 
CREATE TABLE tb_grupos (
Id INT NOT NULL PRIMARY KEY,
Grupo VARCHAR (100) NOT NULL,
Descrição VARCHAR (100) NOT NULL,
Imagem VARCHAR (255) NOT NULL,
FK_criador INT NOT NULL,
FOREIGN KEY (FK_criador) REFERENCES tb_usuarios (Id),
);
CREATE TABLE tb_inscritos (
Id INT NOT NULL PRIMARY KEY,
FK_usuario INT NOT NULL,
FK_grupo INT NOT NULL,
Data_inscritos VARCHAR (100),
FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
FOREIGN KEY (FK_grupo) REFERENCES tb_grupos (Id)
);
CREATE TABLE tb_postagens (
Id INT NOT NULL PRIMARY KEY,
Titulo VARCHAR (100),
Descricao VARCHAR (255),
Imagem VARCHAR (255),
Data_postagem VARCHAR (255),
FK_criador INT NOT NULL,
FK_grupo INT NOT NULL,
FOREIGN KEY (FK_criador) REFERENCES tb_usuarios (Id),
FOREIGN KEY (FK_grupo) REFERENCES tb_grupos (Id)
);

