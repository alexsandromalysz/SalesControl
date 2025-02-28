unit Model.Entity.VENDA;

interface

uses
  SimpleAttributes;

Type
  [Tabela('VENDA')]
  TVENDA = class
  private
    FOBSERVACAO: String;
    FVALOR_TOTAL: currency;
    FVALOR_LIQUIDO: currency;
    FCLIENTE_ID: Int64;
    FID: Int64;
    FDATA_HORA: TDateTime;
    FCLIENTE_NOME: String;
    FVALOR_DESCONTO: currency;
    procedure SetCLIENTE_ID(const Value: Int64);
    procedure SetCLIENTE_NOME(const Value: String);
    procedure SetDATA_HORA(const Value: TDateTime);
    procedure SetID(const Value: Int64);
    procedure SetOBSERVACAO(const Value: String);
    procedure SetVALOR_DESCONTO(const Value: currency);
    procedure SetVALOR_LIQUIDO(const Value: currency);
    procedure SetVALOR_TOTAL(const Value: currency);
  public
    constructor Create;
    destructor Destroy; override;
  published
    [Campo('ID'), Pk, AutoInc, Display('Id.')]
    property ID: Int64 read FID write SetID;

    [Campo('CLIENTE_ID'), Fk, HasOne('CLIENTE'), Display('Cód. Cliente')]
    property CLIENTE_ID: Int64 read FCLIENTE_ID write SetCLIENTE_ID;

    [Campo('CLIENTE_NOME'), Display('Nome')]
    property CLIENTE_NOME: String read FCLIENTE_NOME write SetCLIENTE_NOME;

    [Campo('OBSERVACAO'), Display('Observação')]
    property OBSERVACAO: String read FOBSERVACAO write SetOBSERVACAO;

    [Campo('VALOR_TOTAL'), Display('Valor total')]
    property VALOR_TOTAL: currency read FVALOR_TOTAL write SetVALOR_TOTAL;

    [Campo('VALOR_DESCONTO'), Display('Valor desconto')]
    property VALOR_DESCONTO: currency read FVALOR_DESCONTO write SetVALOR_DESCONTO;

    [Campo('VALOR_LIQUIDO'), Display('Valor líquido')]
    property VALOR_LIQUIDO: currency read FVALOR_LIQUIDO write SetVALOR_LIQUIDO;

    [Campo('DATA_HORA'), Display('Data/Hora')]
    property DATA_HORA: TDateTime read FDATA_HORA write SetDATA_HORA;
  end;

implementation


{ TVENDA }

constructor TVENDA.Create;
begin

end;

destructor TVENDA.Destroy;
begin

  inherited;
end;

procedure TVENDA.SetCLIENTE_ID(const Value: Int64);
begin
  FCLIENTE_ID := Value;
end;

procedure TVENDA.SetCLIENTE_NOME(const Value: String);
begin
  FCLIENTE_NOME := Value;
end;

procedure TVENDA.SetDATA_HORA(const Value: TDateTime);
begin
  FDATA_HORA := Value;
end;

procedure TVENDA.SetID(const Value: Int64);
begin
  FID := Value;
end;

procedure TVENDA.SetOBSERVACAO(const Value: String);
begin
  FOBSERVACAO := Value;
end;

procedure TVENDA.SetVALOR_DESCONTO(const Value: currency);
begin
  FVALOR_DESCONTO := Value;
end;

procedure TVENDA.SetVALOR_LIQUIDO(const Value: currency);
begin
  FVALOR_LIQUIDO := Value;
end;

procedure TVENDA.SetVALOR_TOTAL(const Value: currency);
begin
  FVALOR_TOTAL := Value;
end;

end.
