create table VENDAPGTO(
CODPGTO integer not null,
VENDAP integer not null,
VALOR numeric(10,2),
constraint pk_VENDAPGTO primary key (CODPGTO,VENDAP),
constraint fk_ITEM_PGTO foreign key(VENDAP)
references VENDA(NOVENDA) on delete cascade);