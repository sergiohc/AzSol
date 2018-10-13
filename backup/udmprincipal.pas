unit udmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, FileUtil;

type

  { TdmPrincipal }

  TdmPrincipal = class(TDataModule)
    ibConnection: TIBConnection;
  private

  public

  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{$R *.lfm}

end.

