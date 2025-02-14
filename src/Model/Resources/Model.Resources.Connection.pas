unit Model.Resources.Connection;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  FireDAC.Comp.UI,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef,
  FireDAC.VCLUI.ConnEdit,
  SimpleQueryFiredac,
  SimpleInterface,
  Model.Resources.Interfaces;

type
  TModelConnection = class(TInterfacedObject, iModelConnection)
    private
      FConnection: TFDConnection;
      FSimpleConn: iSimpleQuery;

      procedure ShowConfig;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelConnection;
      function Conn: iSimpleQuery;
  end;

implementation

{ TModelConnection }

function TModelConnection.Conn: iSimpleQuery;
begin
  Result := FSimpleConn;
end;

constructor TModelConnection.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FConnection.LoginPrompt := False;
  FConnection.Params.Clear;
  FConnection.Params.Add('DriverID=MSSQL');
  FConnection.Params.Add('Server=.\sqlexpress');
  FConnection.Params.Add('Database=sistema');
  FConnection.Params.Add('User_Name=sa');
  FConnection.Params.Add('Password=meupassword');
  FConnection.Params.Add('OSAuthent=No');
  FConnection.LoginPrompt := False;
  try
    FConnection.Connected := True;

  except
    ShowConfig;

  end;
  FSimpleConn := TSimpleQueryFiredac.New(FConnection);
end;

destructor TModelConnection.Destroy;
begin
  FConnection.Free;
  inherited;
end;

class function TModelConnection.New: iModelConnection;
begin
  Result := Self.Create;
end;

procedure TModelConnection.ShowConfig;
var
  FDConnEditor : TfrmFDGUIxFormsConnEdit;
begin
  FDConnEditor := TfrmFDGUIxFormsConnEdit.Create(nil);
  try
    FDConnEditor.Execute(FConnection,'Configurar conexão');
  finally
    FDConnEditor.Free;
  end;
end;

end.
