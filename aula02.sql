-- Criar banco de dados bd_sistema_bancario

CREATE DATABASE bd_sistema_bancario;


-- Criar 5 tabelas quaiquer
CREATE TABLE cadastro (id INTEGER, nome TEXT, cpf TEXT);
CREATE TABLE endereco (id INTEGER, cidade TEXT, cep TEXT, estado TEXT);
CREATE TABLE curso (id INTEGER, curso TEXT, campus TEXT, cidade TEXT);
CREATE TABLE funcionarios (id INTEGER, cpf TEXT, funcao TEXT, setor TEXT, salario REAL);
CREATE TABLE produtos (id INTEGER, descricao TEXT, fornecedor TEXT, custo REAL);


-- Criar tabelas conforme MER (Sistema Bancario):
CREATE TABLE cliente (nome_cliente TEXT, cidade_cliente TEXT, endereco_cliente TEXT);
CREATE TABLE conta (numero_conta TEXT, nome_agencia TEXT, saldo REAL);
CREATE TABLE emprestimo (numero_emprestimo TEXT, nome_agencia TEXT, valor REAL);
CREATE TABLE agencia (nome_agencia TEXT, cidade_agencia TEXT, depositos REAL);

-- Deletar as 5 tabelas criadas aleatoriamente

DROP TABLE cadastro;
DROP TABLE endereco;
DROP TABLE curso;
DROP TABLE funcionarios;
DROP TABLE produtos;

-- alterar as tabelas conforme o MER atualizado
ALTER TABLE cliente RENAME to tbl_cliente;
ALTER TABLE tbl_cliente ADD COLUMN idade INTEGER;
ALTER TABLE tbl_cliente ADD COLUMN cpf INTEGER;

ALTER TABLE emprestimo RENAME TO tbl_emprestimo;
ALTER TABLE conta RENAME TO tbl_conta;
ALTER TABLE agencia RENAME TO tbl_agencia;
-- Criar um esquema com o seu nome

CREATE SCHEMA joao;

