CREATE DATABASE `teste`;

USE `teste`;

CREATE TABLE `tb_emprestimo`(
    `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `LIVRO_EMPRESTADO` varchar(100) DEFAULT NULL,
    `NOME_PESSOA` varchar(100) DEFAULT NULL,
    `ENDEREÇO` varchar(100) DEFAULT NULL,
    `TELEFONE` varchar(100) DEFAULT NULL,
    `EMAIL` varchar(100) DEFAULT NULL,
    `DATA` timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `tb_emprestimo`
    (`LIVRO_EMPRESTADO`, `NOME_PESSOA`, `ENDEREÇO`, `TELEFONE`)
VALUES
    ('Manual MySQL', 'Natanael Alves', 'https://pt.stackoverflow.com/users/134685/natanael-alves', '911'),
    ('Ensinando MySQL e PHP', 'LipESprY', 'https://pt.stackoverflow.com/users/45810/lipespry', 'sqn');


-- Query na pergunta:
--
-- mysql> SELECT ID,LIVRO_EMPRESTADO,NOME_PESSOA,ENDEREÇO,TELEFONE,EMAIL,DATA FROM tb_emprestimo;
-- +----+-----------------------+----------------+----------------------------------------------------------+----------+-------+---------------------+
-- | ID | LIVRO_EMPRESTADO      | NOME_PESSOA    | ENDEREÇO                                                 | TELEFONE | EMAIL | DATA                |
-- +----+-----------------------+----------------+----------------------------------------------------------+----------+-------+---------------------+
-- |  1 | Manual MySQL          | Natanael Alves | https://pt.stackoverflow.com/users/134685/natanael-alves | 911      | NULL  | 2018-12-24 21:16:25 |
-- |  2 | Ensinando MySQL e PHP | LipESprY       | https://pt.stackoverflow.com/users/45810/lipespry        | sqn      | NULL  | 2018-12-24 21:16:25 |
-- +----+-----------------------+----------------+----------------------------------------------------------+----------+-------+---------------------+
-- 2 rows in set (0.02 sec)
--
-- mysql> SELECT VERSION();
-- +-----------+
-- | VERSION() |
-- +-----------+
-- | 5.6.35    |
-- +-----------+
-- 1 row in set (0.04 sec)
