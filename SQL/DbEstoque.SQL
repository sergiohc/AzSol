create table ESTOQUE(
NoLCTO integer not null,
CODFOR integer,
DOCTO  varchar(50),
ENTRADA date,
TOTAL numeric(10,2),
constraint pk_ESTOQUE primary key (NoLCTO));

CREATE GENERATOR CODEST_GEN;

SET TERM ^ ;
  CREATE TRIGGER CODEST FOR ESTOQUE ACTIVE
  BEFORE INSERT POSITION 0
  AS
   BEGIN
  	new.NOLCTO = gen_id( CODEST_GEN, 1 );
   END^
  SET TERM ; ^