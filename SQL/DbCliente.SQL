/* Script para Criar tabela: */

    CREATE TABLE CLIENTES
    (
    CODIGO integer NOT NULL,
    NOME varchar(50),
    ENDERECO varchar(50),
    BAIRRO varchar(30),
    CIDADE varchar(50),
    UF varchar(2),
    CEP varchar(10),
    TELEFONE varchar(15),
    CONSTRAINT PK_CODCLI PRIMARY KEY (CODIGO),
    CONSTRAINT UK_CLINOME UNIQUE (NOME)
    USING INDEX IX_CLINOME
    );

/* Script para Criar Generator: */


    CREATE GENERATOR CODCLI_GEN;

/* Script para Criar Trigger (Gatilho): */

    SET TERM ^ ;
    CREATE TRIGGER CODCLI FOR CLIENTES ACTIVE
    BEFORE INSERT POSITION 0
    AS
    BEGIN
    	new.CODIGO = gen_id( CODCLI_GEN, 1 );
    END^
    SET TERM ; ^

