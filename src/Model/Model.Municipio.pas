unit Model.Municipio;

interface

uses
  System.Generics.Collections,
  Model.Resources.Interfaces,
  Model.Resources.Connection,
  Model.Interfaces,
  Model.Entity.Municipio,
  SimpleInterface,
  SimpleDAO,
  SimpleAttributes,
  SimpleQueryFiredac;

type
  TModelMunicipio = class(TInterfacedObject, iModelMunicipio)
  private
    FDAO: iSimpleDAO<TMUNICIPIO>;
    FConn: iModelConnection;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelMunicipio;
    function DAO: iSimpleDAO<TMUNICIPIO>;
  end;

  TModelMunicipioList = TObjectList<TModelMunicipio>;

implementation

uses
  System.SysUtils;

{ TModelMunicipio }

constructor TModelMunicipio.Create;
begin
  FConn := TdmConnection.New;
  FDAO := TSimpleDAO<TMUNICIPIO>.New(FConn.Conn);
end;

function TModelMunicipio.DAO: iSimpleDAO<TMUNICIPIO>;
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
