unit Controller.Municipio;

interface

uses
  System.Generics.Collections,
  Controller.Municipio.Interfaces,
  Model.Interfaces,
  Model.Municipio,
  Model.Entity.MUNICIPIO,
  Model.Resources.Interfaces,
  Model.Resources.Service;

type
  TMunicipioDTO = class(TInterfacedObject, IMunicipioDTO)
  private
    FEntity: TMUNICIPIO;
    FService: iModelService<TMUNICIPIO>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IMunicipioDTO;
    function Id(Value: Integer): IMunicipioDTO; overload;
    function Id: Integer; overload;
    function Nome(Value: string): IMunicipioDTO; overload;
    function Nome: string; overload;
    function CodigoIBGE(Value: Integer): IMunicipioDTO; overload;
    function CodigoIBGE: Integer; overload;
    function UF(Value: string): IMunicipioDTO; overload;
    function UF: string; overload;

    function Build: iModelService<TMUNICIPIO>;
    function Salvar: IMunicipioDTO;
  end;

  TControllerMunicipio = class(TInterfacedObject, IControllerMunicipio)
  private
    FMunicipioDTO: IMunicipioDTO;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerMunicipio;
    function Municipio: IMunicipioDTO;
  end;

implementation

uses
  System.SysUtils;

{ TControllerMunicipio }

constructor TControllerMunicipio.Create;
begin
  FMunicipioDTO := TMunicipioDTO.New;
end;

destructor TControllerMunicipio.Destroy;
begin

  inherited;
end;

function TControllerMunicipio.Municipio: IMunicipioDTO;
begin
  Result := FMunicipioDTO;
end;

class function TControllerMunicipio.New: IControllerMunicipio;
begin
  Result := Self.Create;
end;

{ TMunicipioDTO }

function TMunicipioDTO.CodigoIBGE(Value: Integer): IMunicipioDTO;
begin
  Result := Self;
  FEntity.CODIGO_IBGE := Value;
end;

function TMunicipioDTO.Build: iModelService<TMUNICIPIO>;
begin
  Result := FService;
end;

function TMunicipioDTO.CodigoIBGE: Integer;
begin
  Result := FEntity.CODIGO_IBGE;
end;

constructor TMunicipioDTO.Create;
begin
  FEntity := TMUNICIPIO.Create;
  FService := TModelService<TMUNICIPIO>.New(FEntity);
end;

destructor TMunicipioDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TMunicipioDTO.Id(Value: Integer): IMunicipioDTO;
begin
  Result := Self;
  FEntity.ID := Value;
end;

function TMunicipioDTO.Id: Integer;
begin
  Result := FEntity.ID;
end;

function TMunicipioDTO.Nome(Value: string): IMunicipioDTO;
begin
  Result := Self;
  FEntity.Nome := Value;
end;

class function TMunicipioDTO.New: IMunicipioDTO;
begin
  Result := Self.Create;
end;

function TMunicipioDTO.Nome: string;
begin
  Result := FEntity.Nome;
end;

function TMunicipioDTO.Salvar: IMunicipioDTO;
begin
  Result := Self;
  if FEntity.ID > 0 then
    Build.Atualizar
  else
    Build.Inserir;
end;

function TMunicipioDTO.UF(Value: string): IMunicipioDTO;
begin
  Result := Self;
  FEntity.UF := Value;
end;

function TMunicipioDTO.UF: string;
begin
  Result := FEntity.UF;
end;

end.
