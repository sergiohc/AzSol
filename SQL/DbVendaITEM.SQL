create table VENDAITEM(
CODPRO integer not null,
VENDAI integer not null,
QTDE numeric(10,3),
UNITARIO numeric(10,2),
TOTAL numeric(10,2),
constraint pk_VENDAITEM primary key (CODPRO,VENDAI),
constraint fk_ITEM_VEN foreign key(VENDAI)
references VENDA(NOVENDA) on delete cascade);