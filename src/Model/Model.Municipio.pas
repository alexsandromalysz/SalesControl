unit Model.Municipio;

interface

uses
  ormbr.container.objectset.interfaces,
  ormbr.container.objectset,
  Model.Connection.Interfaces,
  Model.Connection,
  Model.Interfaces,
  Entity.Model.municipio;

type
  TModelMunicipio = class(TInterfacedObject, iModelMunicipio)
  private
    FDAO: IContainerObjectSet<TMUNICIPIO>;
    FConn: iModelConnection;

    FUF: string;
    FCodigoIBGE: Integer;
    FID: string;
    FNome: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelMunicipio;

    property ID: string read FID;
    property CodigoIBGE: Integer read FCodigoIBGE;
    property Nome: String read FNome write FNome;
    property UF: string read FUF write FUF;

    function DAO: IContainerObjectSet<TMUNICIPIO>;
  end;

implementation

{ TModelMunicipio }

constructor TModelMunicipio.Create;
begin
  FConn := TdmConnection.New;
  FDAO := TContainerObjectSet<TMUNICIPIO>.Create(FConn.Conn, 10);
end;

function TModelMunicipio.DAO: IContainerObjectSet<TMUNICIPIO>;
begin
  Result := FDAO;
end;

destructor TModelMunicipio.Destroy;
begin
  inherited;
end;

class function TModelMunicipio.New: iModelMunicipio;
begin
  Result := Self.Create;
end;

end.
