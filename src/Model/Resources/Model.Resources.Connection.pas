unit Model.Resources.Connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  Model.Resources.Interfaces, SimpleQueryFiredac, SimpleInterface;

type
  TdmConnection = class(TDataModule, iModelConnection)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FConn: iSimpleQuery;
    function Conn: iSimpleQuery;
  public
    { Public declarations }
    class function New: iModelConnection;
  end;

var
  dmConnection: TdmConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmConnection.Conn: iSimpleQuery;
begin
  Result := FConn;
end;

procedure TdmConnection.DataModuleCreate(Sender: TObject);
begin
  FConn := TSimpleQueryFiredac.New(FDConnection1);
end;

class function TdmConnection.New: iModelConnection;
begin
  Result := Self.Create(nil);
end;

end.
