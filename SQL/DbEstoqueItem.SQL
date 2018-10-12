create table ESTOQUEITEM(
CODPRO integer not null,
LCTOI integer not null,
QTDE numeric(10,3),
UNITARIO numeric(10,2),
TOTAL numeric(10,2),
constraint pk_ESTOQUEITEM primary key (CODPRO,LCTOI),
constraint fk_ITEM_CAB foreign key(LCTOI)
references ESTOQUE(NOLCTO) on delete cascade);