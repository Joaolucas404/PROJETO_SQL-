-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_marketplace;
 
 USE db_marketplace; 

 CREATE TABLE tb_usuario (
 Id INT NOT NULL PRIMARY KEY,
 Nome VARCHAR (100) NOT NULL,
 Usuario VARCHAR (100) NOT NULL,
 Senha VARCHAR(255) NOT NULL,
 Foto VARCHAR(100) NOT NULL,
 );
CREATE TABLE tb_categorias (
Id INT NOT NULL PRIMARY KEY,
Categoria VARCHAR (255),
Produto VARCHAR (255),
);
CREATE TABLE tb_produtos (
 Id INT NOT NULL PRIMARY KEY,
 Descricacao VARCHAR(255),
 Foto VARCHAR (255),
 Valor VARCHAR (100),
 Imagem VARCHAR (255),
 FK_categoria INT NOT NULL,
 FK_criador INT NOT NULL,
 FOREIGN KEY (FK_categoria) REFERENCES tb_categorias (Id),
 FOREIGN KEY (FK_criador) REFERENCES tb_categorias (Id)
 );
   CREATE TABLE tb_compras (
 Id INT NOT NULL PRIMARY KEY,
 FK_usuario INT NOT NULL,
 FK_produto INT NOT NULL,
 FOREIGN KEY (FK_usuario) REFERENCES tb_usuario (Id),
 FOREIGN KEY (FK_produto) REFERENCES tb_produtos (Id)
 );