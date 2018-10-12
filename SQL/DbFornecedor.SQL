/* Script para Criar tabela: */
    CREATE TABLE FORNECEDORES
    (
    CODIGO integer NOT NULL,
    NOME varchar(50),
    ENDERECO varchar(50),
    BAIRRO varchar(30),
    CIDADE varchar(50),
    UF varchar(2),
    CEP varchar(10),
    TELEFONE varchar(15),
    CONSTRAINT PK_CODFOR PRIMARY KEY (CODIGO),
    CONSTRAINT UK_FORNOME UNIQUE (NOME)
    USING INDEX IX_FORNOME
    );

/* Script para Criar Generator: */
    CREATE GENERATOR CODFOR_GEN;

/* Script para Criar Trigger (Gatilho): */
    SET TERM ^ ;
    CREATE TRIGGER CODFOR FOR FORNECEDORES ACTIVE
    BEFORE INSERT POSITION 0
    AS
    BEGIN
    	new.CODIGO = gen_id( CODFOR_GEN, 1 );
    END^
    SET TERM ; ^
