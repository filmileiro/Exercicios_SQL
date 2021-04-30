/*
 
 O nosso cliente solicitou uma tabela para armazenar livros são comercializados pela empresa.
 A solicitação é somente para livros e não há a necessidade de realizar busca em outras tabelas.
 Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses registros,
 mas as buscas estão ficando complexas. Decidiu-se então criar um banco de dados separado
 para esse funcionário.
 
 Após a criação da tabela, devemos integrar algumas queries prontas que sejam enviadas para o programador.
 As queries. são as seguintes:
 
 1- Trazer os todos os dados.
 2- Trazer O nome do livro e o nome da editora.
 3- Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
 4- Trazer o nome do livro e o numero de páginas do livro publicados por autores do sexo feminino.
 5- Trazer os valores dos livros das editoras de São Paulo.
 6- Trazer os dados dos autores do sexo masculIno que tiveram livros publicados por Paulo ou Rio de Janeiro (questão desafio).
 
 
 */
/*CRIANDO O BANCO DE DADOS LIVRARIA*/
CREATE DATABASE LIVRARIA;

/*USANDO O BANCO DE DADOS*/
USE LIVRARIA;

/*CRIANDO TABELAS E ISERINDO ATRIBUTOS*/
CREATE TABLE ESTOQUE(
    LIVRO VARCHAR(100),
    EDITORA VARCHAR (60),
    UF CHAR(2),
    AUTOR VARCHAR (100),
    SEXO CHAR(1),
    PAGINA SMALLINT,
    VALOR FLOAT(10,2)
);

/*INSERINDO VALORES*/
INSERT INTO
    ESTOQUE (LIVRO, EDITORA, UF, AUTOR, SEXO, PAGINAS, VALOR)
VALUES
(
        'O ALQUIMISTA',
        'PARALELA',
        'SP',
        'PAULO COELHO',
        'M',
        208,
        16.90
    );


INSERT INTO
    ESTOQUE (LIVRO, EDITORA, UF, AUTOR, SEXO, PAGINAS, VALOR)
VALUES
(
        'AMERICANAH',
        'COMPANHIA DAS LETRAS',
        'SP',
        'CHIMAMANDA NGOZI ADICHIE',
        'F',
        520,
        39.90
    );

INSERT INTO
    ESTOQUE (LIVRO, EDITORA, UF, AUTOR, SEXO, PAGINAS, VALOR)
VALUES
(
        'OCEANO NO FIM DO CAMINHO',
        'INTRÍSECA',
        'RJ',
        'NEIL GAIMAN',
        'M',
        208,
        22.90
    );

INSERT INTO
    ESTOQUE (LIVRO, EDITORA, UF, AUTOR, SEXO, PAGINAS, VALOR)
VALUES
(
        'MULHERES, RAÇA E CLASSE',
        'GOITEMPO',
        'RJ',
        'ANGELA DAVIS ',
        'F',
        248,
        42.29
    );




/*1- Trazer os todos os dados.*/

USE LIVRARIA;

SELECT * FROM ESTOQUE;

/*2- Trazer O nome do livro e o nome da editora.*/

SELECT LIVRO, EDITORA FROM ESTOQUE;

/*3- Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/

SELECT LIVRO, UF FROM ESTOQUE WHERE SEXO = 'M';

/*4- Trazer o nome do livro e o numero de páginas de livro publicados por autores do sexo feminino.*/

SELECT LIVRO, PAGINAS FROM ESTOQUE WHERE SEXO = 'F';

/*5- Trazer os valores dos livros das editoras de São Paulo.*/

SELECT VALOR FROM ESTOQUE WHERE UF = 'SP';

/*6- Trazer os dados dos autores do sexo masculIno que tiveram livros publicados em São Paulo ou Rio de Janeiro (questão desafio).*/

SELECT AUTOR, SEXO 
FROM ESTOQUE 
WHERE SEXO = 'M' 
AND UF = 'SP' 
OR UF = 'RJ';
