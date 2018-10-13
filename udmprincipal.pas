unit udmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, sqldb, FileUtil;

type

  { TdmPrincipal }

  TdmPrincipal = class(TDataModule)
    ibConnection: TIBConnection;
    sqlTransaction: TSQLTransaction;
  private

  public

  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{$R *.lfm}

end.

