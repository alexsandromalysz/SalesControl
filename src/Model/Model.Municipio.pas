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
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelMunicipio;
  end;

implementation

uses
  System.SysUtils;

{ TModelMunicipio }

constructor TModelMunicipio.Create;
begin

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
