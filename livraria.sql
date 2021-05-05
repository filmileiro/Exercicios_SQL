/*
 
O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa. A solicitação é 
somente para livros e não há a necessidade de realizar busca em outras tabelas. Hoje há um funcionário de vendas que 
tem uma tabela do Excel para guardar esses registros, mas as buscas estão ficando complexas. Decidiu-se então criar 
um banco de dados separado para esse funcionário.
Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. 

As queries são as seguintes:
1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
 
 */
/*CRIANDO O BANCO DE DADOS LIVRARIA*/
CREATE DATABASE LIVRARIA;

/*USANDO O BANCO DE DADOS*/
USE LIVRARIA;

/*CRIANDO TABELAS E ISERINDO ATRIBUTOS*/
CREATE TABLE LIVROS(
    NOME_LIVRO VARCHAR(100),
    NOME_AUTOR VARCHAR (100),
    SEXO_AUTOR CHAR(1),
    NUMERO_PAGINAS SMALLINT,
    NOME_EDITORA VARCHAR (60),
    VALOR_LIVRO FLOAT(10,2),
    UF_EDITORA CHAR(2),
    ANO_PUBLICACAO INT
    
);

/*INSERINDO VALORES*/
INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Cavaleiro Real',
        'Ana Claudia',
        'F',
        465,
        'Atlas',
        49.90,
        'RJ',
        2009

    );


INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'SQL Para Leigos',
        'João Nunes',
        'M',
        450,
        'Addison',
        98.00,
        'SP',
        2018

    );


INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Receitas Caseiras',
        'Celia Tavares',
        'F',
        210,
        'Atlas',
        45.00,
        'RJ',
        2018

    );

INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Pessoas Afetivas',
        'Eduardop Santos',
        'M',
        390,
        'Beta',
        78.99,
        'RJ',
        2018

    );

INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Habitos Saudáveis',
        'Eduardo Santos',
        'M',
        630,
        'Beta',
        150.98,
        'RJ',
        2019

    );


INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'A Casa Marrom',
        'Hermes Macedo',
        'M',
        250,
        'Bubba',
        60.00,
        'MG',
        2016

    );

INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Estacio Querido',
        'Geraldo Francisco',
        'M',
        310,
        'Insignia',
        100.00,
        'ES',
        2015

    );

INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Pra Sempre Amigas',
        'Leda Silva',
        'F',
         510,
        'Insignia',
        78.98,
        'ES',
        2011

    );

INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'Copas Inersqueciveis',
        'Marco Alcantara',
        'M',
         200,
        'Larson',
        130.98,
        'RS',
        2018

    );

INSERT INTO
    LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO)
VALUES
(
        'O Poder da Mente',
        'Clara Mafra',
        'F',
         120,
        'Continental',
        56.58,
        'RS',
        2017

    );



/*1- Trazer os todos os dados.*/

USE LIVRARIA;
SELECT * FROM LIVROS;

/*2- Trazer O nome do livro e o nome da editora.*/

 SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS; 

/*3- Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/

SELECT NOME_LIVRO, UF_EDITORA FROM LIVROS WHERE SEXO_AUTOR = 'M';

/*4- Trazer o nome do livro e o numero de páginas de livro publicados por autores do sexo feminino.*/

SELECT NOME_LIVRO, NUMERO_PAGINAS FROM LIVROS WHERE SEXO_AUTOR = 'F';

/*5- Trazer os valores dos livros das editoras de São Paulo.*/

SELECT VALOR_LIVRO FROM LIVROS WHERE UF_EDITORA = 'SP';

/*6- Trazer os dados dos autores do sexo masculIno que tiveram livros publicados em São Paulo ou Rio de Janeiro (questão desafio).*/

SELECT NOME_AUTOR, SEXO_AUTOR, UF_EDITORA
FROM LIVROS
WHERE SEXO_AUTOR = 'M' AND (UF = 'SP' OR UF = 'RJ');

