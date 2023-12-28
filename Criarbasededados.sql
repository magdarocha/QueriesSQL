--Banco de dados tem tabelas que guardam dados (registos) de coisas com características(campos) diferentes

--Criar banco de dados
  CREATE DATABASE Registo;

--Criar tabelas com campos
  CREATE TABLE Pessoas (
    nome varchar(30),
    idade tinyint(3),
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
  );
