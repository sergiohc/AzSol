/* Script para Criar tabela: */
    CREATE TABLE FORMAPGTO
    (
    CODIGO integer NOT NULL,
    DESCRICAO varchar(50),
    CONSTRAINT PK_CODGRU PRIMARY KEY (CODIGO),
    CONSTRAINT UK_GRUDESC UNIQUE (DESCRICAO)
    USING INDEX IX_GRUDESC
    );

/* Script para Criar Generator: */
    CREATE GENERATOR CODPGTO_GEN;

/* Script para Criar Trigger (Gatilho): */
    SET TERM ^ ;
    CREATE TRIGGER CODPGTO FOR FORMAPGTO ACTIVE
    BEFORE INSERT POSITION 0
    AS
    BEGIN
    	new.CODIGO = gen_id( CODPGTO_GEN, 1 );
    END^
    SET TERM ; ^
