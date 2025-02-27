unit Controller.Cliente;

interface

uses
  System.Generics.Collections,
  Controller.Cliente.Interfaces,
  Model.Interfaces,
  Model.Entity.Cliente,
  Model.Resources.Interfaces,
  Model.Resources.Service;

type
  TClienteDTO = class(TInterfacedObject, IClienteDTO)
  private
    FEntity: TCliente;
    FService: iModelService<TCliente>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IClienteDTO;

    function Id(Value: Integer): IClienteDTO; overload;
    function Id: Integer; overload;

    function NomeRazao(Value: string): IClienteDTO; overload;
    function NomeRazao: string; overload;

    function NomeFantasia(Value: string): IClienteDTO; overload;
    function NomeFantasia: string; overload;

    function Nascimento(Value: TDate): IClienteDTO; overload;
    function Nascimento: TDate; overload;

    function CPF(Value: string): IClienteDTO; overload;
    function CPF: string; overload;

    function CNPJ(Value: string): IClienteDTO; overload;
    function CNPJ: string; overload;

    function EnderecoMunicipioID(Value: Integer): IClienteDTO; overload;
    function EnderecoMunicipioID: Integer; overload;

    function EnderecoMunicipio(Value: string): IClienteDTO; overload;
    function EnderecoMunicipio: string; overload;

    function EnderecoLogradouro(Value: string): IClienteDTO; overload;
    function EnderecoLogradouro: string; overload;

    function EnderecoNumero(Value: string): IClienteDTO; overload;
    function EnderecoNumero: string; overload;

    function EnderecoBairro(Value: string): IClienteDTO; overload;
    function EnderecoBairro: string; overload;

    function EnderecoUF(Value: string): IClienteDTO; overload;
    function EnderecoUF: string; overload;

    function EnderecoComplemento(Value: string): IClienteDTO; overload;
    function EnderecoComplemento: string; overload;

    function Build: iModelService<TCliente>;
    function Salvar: IClienteDTO;
  end;

  TControllerCliente = class(TInterfacedObject, IControllerCliente)
  private
    FClienteDTO: IClienteDTO;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerCliente;
    function Cliente: IClienteDTO;
  end;

implementation

{ TClienteDTO }

function TClienteDTO.Build: iModelService<TCliente>;
begin
  Result := FService;
end;

function TClienteDTO.CNPJ(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.CNPJ := Value;
end;

function TClienteDTO.CNPJ: string;
begin
  Result := FEntity.CNPJ;
end;

function TClienteDTO.CPF: string;
begin
  Result := FEntity.CPF;
end;

function TClienteDTO.CPF(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.CPF := Value;
end;

constructor TClienteDTO.Create;
begin
  FEntity := TCliente.Create;
  FService := TModelService<TCliente>.New(FEntity);
end;

destructor TClienteDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TClienteDTO.EnderecoBairro: string;
begin
  Result := FEntity.ENDERECO_BAIRRO;
end;

function TClienteDTO.EnderecoBairro(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_BAIRRO := Value;
end;

function TClienteDTO.EnderecoComplemento(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_COMPLEMENTO := Value;
end;

function TClienteDTO.EnderecoComplemento: string;
begin
  Result := FEntity.ENDERECO_COMPLEMENTO;
end;

function TClienteDTO.EnderecoLogradouro: string;
begin
  Result := FEntity.ENDERECO_LOGRADOURO;
end;

function TClienteDTO.EnderecoLogradouro(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_LOGRADOURO := Value;
end;

function TClienteDTO.EnderecoMunicipio: string;
begin
  Result := FEntity.ENDERECO_MUNICIPIO;
end;

function TClienteDTO.EnderecoMunicipio(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_MUNICIPIO := Value;
end;

function TClienteDTO.EnderecoMunicipioID: Integer;
begin
  Result := FEntity.ENDERECO_MUNICIPIO_ID;
end;

function TClienteDTO.EnderecoMunicipioID(Value: Integer): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_MUNICIPIO_ID := Value;
end;

function TClienteDTO.EnderecoNumero: string;
begin
  Result := FEntity.ENDERECO_NUMERO;
end;

function TClienteDTO.EnderecoNumero(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_NUMERO := Value;
end;

function TClienteDTO.EnderecoUF(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.ENDERECO_UF := Value;
end;

function TClienteDTO.EnderecoUF: string;
begin
  Result := FEntity.ENDERECO_UF;
end;

function TClienteDTO.Id: Integer;
begin
  Result := FEntity.ID;
end;

function TClienteDTO.Id(Value: Integer): IClienteDTO;
begin
  Result := Self;
  FEntity.ID := Value;
end;

function TClienteDTO.Nascimento: TDate;
begin
  Result := FEntity.NASCIMENTO;
end;

function TClienteDTO.Nascimento(Value: TDate): IClienteDTO;
begin
  Result := Self;
  FEntity.NASCIMENTO := Value;
end;

class function TClienteDTO.New: IClienteDTO;
begin
  Result := Self.Create;
end;

function TClienteDTO.NomeFantasia: string;
begin
  Result := FEntity.NOME_FANTASIA;
end;

function TClienteDTO.NomeFantasia(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.NOME_FANTASIA := Value;
end;

function TClienteDTO.NomeRazao(Value: string): IClienteDTO;
begin
  Result := Self;
  FEntity.NOME_RAZAO := Value;
end;

function TClienteDTO.NomeRazao: string;
begin
  Result := FEntity.NOME_RAZAO;
end;

function TClienteDTO.Salvar: IClienteDTO;
begin
  Result := Self;
  if FEntity.ID > 0 then
    Build.Atualizar
  else
    Build.Inserir;
end;

{ TControllerCliente }

function TControllerCliente.Cliente: IClienteDTO;
begin
  Result := FClienteDTO;
end;

constructor TControllerCliente.Create;
begin
  FClienteDTO := TClienteDTO.New;
end;

destructor TControllerCliente.Destroy;
begin

  inherited;
end;

class function TControllerCliente.New: IControllerCliente;
begin
  Result := Self.Create;
end;

end.
