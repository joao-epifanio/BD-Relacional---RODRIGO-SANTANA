-- criar banco de dados bd_aula03
CREATE DATABASE bd_aula3;


-- criar tabelas do MER 
CREATE TABLE tbl_cliente (codigo_cliente INTEGER PRIMARY KEY, nome TEXT NOT NULL, cidade TEXT, endereco TEXT);

CREATE TABLE tbl_emprestimo (numero_emprestimo INTEGER PRIMARY KEY, codigo_cliente INTEGER, codigo_livro INTEGER);

CREATE TABLE tbl_titulo (codigo_titulo INTEGER PRIMARY KEY, titulo INTEGER NOT NULL, descricao TEXT, categoria TEXT);

CREATE TABLE tbl_livros (codigo_livro INTEGER PRIMARY KEY, codigo_titulo INTEGER, status TEXT);


-- criar domains
CREATE domain CHK_GENERO TEXT CHECK (VALUE IN ('DRAMA','COMEDIA'));

create domain chk_status text check (value in ('DISPONIVEL', 'ALUGADO'));


-- adicionar domain a tabela
ALTER TABLE tbl_titulo alter column categoria type CHK_GENERO;
alter table tbl_livros alter column status type chk_status;

-- adicionar chaves estrangeiras
alter table tbl_emprestimo add constraint fk_cod_cliente foreign key (codigo_cliente)  REFERENCES tbl_cliente (codigo_cliente);
alter table tbl_emprestimo add constraint fk_cod_livro foreign key (codigo_livro)  REFERENCES tbl_livros (codigo_livro);
alter table tbl_livros add constraint fk_codigo_titulo foreign key (codigo_titulo) REFERENCES tbl_titulo (codigo_titulo);
alter table tbl_livros alter column status set DEFAULT 'DISPONIVEL';
