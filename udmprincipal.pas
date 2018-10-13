unit udmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, sqldb, db, FileUtil;

type

  { TdmPrincipal }

  TdmPrincipal = class(TDataModule)
    dsEstoqueItem: TDataSource;
    dsProdutos: TDataSource;
    dsGrupos: TDataSource;
    dsVendas: TDataSource;
    dsFormaPGTO: TDataSource;
    dsVendaFromaPGTO: TDataSource;
    dsVendaItens: TDataSource;
    dsEstoque: TDataSource;
    dsFornecedores: TDataSource;
    dsClientes: TDataSource;
    ibConnection: TIBConnection;
    qryClientes: TSQLQuery;
    qryClientesBAIRRO: TStringField;
    qryClientesCEP: TStringField;
    qryClientesCIDADE: TStringField;
    qryClientesCODIGO: TLongintField;
    qryClientesENDERECO: TStringField;
    qryClientesNOME: TStringField;
    qryClientesTELEFONE: TStringField;
    qryClientesUF: TStringField;
    qryEstoqueCODFOR: TLongintField;
    qryEstoqueDOCTO: TStringField;
    qryEstoqueENTRADA: TDateField;
    qryEstoqueItemCODPRO: TLongintField;
    qryEstoqueItemLCTOI: TLongintField;
    qryEstoqueItemQTDE: TBCDField;
    qryEstoqueItemTOTAL: TBCDField;
    qryEstoqueItemUNITARIO: TBCDField;
    qryEstoqueNOLCTO: TLongintField;
    qryEstoqueTOTAL: TBCDField;
    qryFormaPGTO: TSQLQuery;
    qryFormaPGTOCODIGO: TLongintField;
    qryFormaPGTODESCRICAO: TStringField;
    qryFornecedoresBAIRRO: TStringField;
    qryFornecedoresCEP: TStringField;
    qryFornecedoresCIDADE: TStringField;
    qryFornecedoresCODIGO: TLongintField;
    qryFornecedoresENDERECO: TStringField;
    qryFornecedoresNOME: TStringField;
    qryFornecedoresTELEFONE: TStringField;
    qryFornecedoresUF: TStringField;
    qryGrupos: TSQLQuery;
    qryFornecedores: TSQLQuery;
    qryProdutos: TSQLQuery;
    qryGruposCODIGO: TLongintField;
    qryGruposDESCRICAO: TStringField;
    qryProdutosCODGRUPO: TLongintField;
    qryProdutosCODIGO: TLongintField;
    qryProdutosCUSTO: TBCDField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosESTOQUE: TBCDField;
    qryProdutosLUCRO: TBCDField;
    qryProdutosVENDA: TBCDField;
    qryVendaFormaPGTOCODPGTO: TLongintField;
    qryVendaFormaPGTOVALOR: TBCDField;
    qryVendaFormaPGTOVENDAP: TLongintField;
    qryVendaItensCODPRO: TLongintField;
    qryVendaItensQTDE: TBCDField;
    qryVendaItensTOTAL: TBCDField;
    qryVendaItensUNITARIO: TBCDField;
    qryVendaItensVENDAI: TLongintField;
    qryVendas: TSQLQuery;
    qryVendaItens: TSQLQuery;
    qryEstoque: TSQLQuery;
    qryVendaFormaPGTO: TSQLQuery;
    qryEstoqueItem: TSQLQuery;
    qryVendasCODCLI: TLongintField;
    qryVendasDATAVENDA: TDateField;
    qryVendasDESC_ACRES: TBCDField;
    qryVendasESTACAO: TStringField;
    qryVendasHORAVENDA: TStringField;
    qryVendasNOVENDA: TLongintField;
    qryVendasOBS: TStringField;
    qryVendasSUBTOTAL: TBCDField;
    qryVendasTOTAL: TBCDField;
    sqlTransaction: TSQLTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryClientesAfterPost(DataSet: TDataSet);
    procedure qryEstoqueAfterPost(DataSet: TDataSet);
    procedure qryEstoqueItemAfterOpen(DataSet: TDataSet);
    procedure qryFormaPGTOAfterPost(DataSet: TDataSet);
    procedure qryFornecedoresAfterPost(DataSet: TDataSet);
    procedure qryProdutosAfterPost(DataSet: TDataSet);
    procedure qryVendaFormaPGTOAfterPost(DataSet: TDataSet);
    procedure qryVendaItensAfterPost(DataSet: TDataSet);
    procedure qryVendasAfterPost(DataSet: TDataSet);
  private
    procedure qryPost(Sql: TSQLQuery);
  public

  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{$R *.lfm}

{ TdmPrincipal }

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin

end;

procedure TdmPrincipal.qryClientesAfterPost(DataSet: TDataSet);
begin
  qryPost(qryClientes);
end;

procedure TdmPrincipal.qryEstoqueAfterPost(DataSet: TDataSet);
begin
  qryPost(qryEstoque);
end;

procedure TdmPrincipal.qryEstoqueItemAfterOpen(DataSet: TDataSet);
begin
  qryPost(qryEstoqueItem);
end;

procedure TdmPrincipal.qryFormaPGTOAfterPost(DataSet: TDataSet);
begin
  qryPost(qryFormaPGTO);
end;

procedure TdmPrincipal.qryFornecedoresAfterPost(DataSet: TDataSet);
begin
  qryPost(qryFornecedores);
end;

procedure TdmPrincipal.qryProdutosAfterPost(DataSet: TDataSet);
begin
  qryPost(qryProdutos);
end;

procedure TdmPrincipal.qryVendaFormaPGTOAfterPost(DataSet: TDataSet);
begin
  qryPost(qryVendaFormaPGTO);
end;

procedure TdmPrincipal.qryVendaItensAfterPost(DataSet: TDataSet);
begin
  qryPost(qryVendaItens);
end;

procedure TdmPrincipal.qryVendasAfterPost(DataSet: TDataSet);
begin
  qryPost(qryVendas);
end;

procedure TdmPrincipal.qryPost(Sql: TSQLQuery);
begin
  Sql.ApplyUpdates;
  sqlTransaction.CommitRetaining;
  Sql.Refresh;
end;

end.

