unit Model.Entity.CLIENTE;

interface

uses
  SimpleAttributes;

Type
  [Tabela('CLIENTE')]
  TCLIENTE = class
  private
    FENDERECO_NUMERO: String;
    FCNPJ: String;
    FENDERECO_MUNICIPIO_ID: Integer;
    FENDERECO_COMPLEMENTO: string;
    FNASCIMENTO: TDate;
    FCPF: String;
    FNOME_RAZAO: String;
    FID: Integer;
    FENDERECO_LOGRADOURO: String;
    FNOME_FANTASIA: String;
    FENDERECO_BAIRRO: String;
    FENDERECO_UF: string;
    FENDERECO_MUNICIPIO: String;
    procedure SetCNPJ(const Value: String);
    procedure SetCPF(const Value: String);
    procedure SetENDERECO_BAIRRO(const Value: String);
    procedure SetENDERECO_COMPLEMENTO(const Value: string);
    procedure SetENDERECO_LOGRADOURO(const Value: String);
    procedure SetENDERECO_MUNICIPIO_ID(const Value: Integer);
    procedure SetENDERECO_NUMERO(const Value: String);
    procedure SetENDERECO_UF(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetNASCIMENTO(const Value: TDate);
    procedure SetNOME_FANTASIA(const Value: String);
    procedure SetNOME_RAZAO(const Value: String);
    procedure SetENDERECO_MUNICIPIO(const Value: String);

  public
    constructor Create;
    destructor Destroy; override;
  published
    [Campo('ID'), Pk, AutoInc, Display('Id.')]
    property ID: Integer read FID write SetID;
    [Campo('NOME_RAZAO'), Display('Nome')]
    property NOME_RAZAO: String read FNOME_RAZAO write SetNOME_RAZAO;
    [Campo('NOME_FANTASIA'), Display('Fantasia')]
    property NOME_FANTASIA: String read FNOME_FANTASIA write SetNOME_FANTASIA;
    [Campo('NASCIMENTO'), Display('Nascimento')]
    property NASCIMENTO: TDate read FNASCIMENTO write SetNASCIMENTO;
    [Campo('CPF'), Display('CPF')]
    property CPF: String read FCPF write SetCPF;
    [Campo('CNPJ'), Display('CNPJ')]
    property CNPJ: String read FCNPJ write SetCNPJ;
    [Campo('ENDERECO_MUNICIPIO_ID'), Fk, HasOne('MUNICIPIO'), Display('Id. Município')]
    property ENDERECO_MUNICIPIO_ID: Integer read FENDERECO_MUNICIPIO_ID write SetENDERECO_MUNICIPIO_ID;
    [Campo('ENDERECO_MUNICIPIO'), Display('Município')]
    property ENDERECO_MUNICIPIO: String read FENDERECO_MUNICIPIO write SetENDERECO_MUNICIPIO;
    [Campo('ENDERECO_LOGRADOURO'), Display('Endereço')]
    property ENDERECO_LOGRADOURO: String read FENDERECO_LOGRADOURO write SetENDERECO_LOGRADOURO;
    [Campo('ENDERECO_NUMERO'), Display('Número')]
    property ENDERECO_NUMERO: String read FENDERECO_NUMERO write SetENDERECO_NUMERO;
    [Campo('ENDERECO_BAIRRO'), Display('Bairro')]
    property ENDERECO_BAIRRO: String read FENDERECO_BAIRRO write SetENDERECO_BAIRRO;
    [Campo('ENDERECO_UF'), Display('UF')]
    property ENDERECO_UF: string read FENDERECO_UF write SetENDERECO_UF;
    [Campo('ENDERECO_COMPLEMENTO'), Display('Complemento')]
    property ENDERECO_COMPLEMENTO: string read FENDERECO_COMPLEMENTO write SetENDERECO_COMPLEMENTO;
  end;

implementation

{ TCLIENTE }

constructor TCLIENTE.Create;
begin

end;

destructor TCLIENTE.Destroy;
begin

  inherited;
end;

procedure TCLIENTE.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TCLIENTE.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCLIENTE.SetENDERECO_BAIRRO(const Value: String);
begin
  FENDERECO_BAIRRO := Value;
end;

procedure TCLIENTE.SetENDERECO_COMPLEMENTO(const Value: string);
begin
  FENDERECO_COMPLEMENTO := Value;
end;

procedure TCLIENTE.SetENDERECO_LOGRADOURO(const Value: String);
begin
  FENDERECO_LOGRADOURO := Value;
end;

procedure TCLIENTE.SetENDERECO_MUNICIPIO(const Value: String);
begin
  FENDERECO_MUNICIPIO := Value;
end;

procedure TCLIENTE.SetENDERECO_MUNICIPIO_ID(const Value: Integer);
begin
  FENDERECO_MUNICIPIO_ID := Value;
end;

procedure TCLIENTE.SetENDERECO_NUMERO(const Value: String);
begin
  FENDERECO_NUMERO := Value;
end;

procedure TCLIENTE.SetENDERECO_UF(const Value: string);
begin
  FENDERECO_UF := Value;
end;

procedure TCLIENTE.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TCLIENTE.SetNASCIMENTO(const Value: TDate);
begin
  FNASCIMENTO := Value;
end;

procedure TCLIENTE.SetNOME_FANTASIA(const Value: String);
begin
  FNOME_FANTASIA := Value;
end;

procedure TCLIENTE.SetNOME_RAZAO(const Value: String);
begin
  FNOME_RAZAO := Value;
end;

end.
