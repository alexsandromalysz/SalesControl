unit Model.Entity.VENDA_ITEM;

interface

uses
  SimpleAttributes;

Type
  [Tabela('VENDA_ITEM')]
  TVENDA_ITEM = class
  private
    FPRECO_VENDA: currency;
    FPRODUTO_ID: Int64;
    FVALOR_TOTAL: currency;
    FVENDA_ID: Int64;
    FID: Int64;
    FQUANTIDADE: Double;
    FPRODUTO_DESCRICAO: String;
    procedure SetID(const Value: Int64);
    procedure SetPRECO_VENDA(const Value: currency);
    procedure SetPRODUTO_DESCRICAO(const Value: String);
    procedure SetPRODUTO_ID(const Value: Int64);
    procedure SetQUANTIDADE(const Value: Double);
    procedure SetVALOR_TOTAL(const Value: currency);
    procedure SetVENDA_ID(const Value: Int64);
  public
    constructor Create;
    destructor Destroy; override;
  published
    [Campo('ID'), Pk, AutoInc, Display('Id.')]
    property ID: Int64 read FID write SetID;

    [Campo('VENDA_ID'), Fk, HasOne('VENDA'), Display('Cód. Venda')]
    property VENDA_ID: Int64 read FVENDA_ID write SetVENDA_ID;

    [Campo('PRODUTO_ID'), Fk, HasOne('PRODUTO'), Display('Cód. Produto')]
    property PRODUTO_ID: Int64 read FPRODUTO_ID write SetPRODUTO_ID;

    [Campo('PRODUTO_DESCRICAO'), Display('Produto')]
    property PRODUTO_DESCRICAO: String read FPRODUTO_DESCRICAO write SetPRODUTO_DESCRICAO;

    [Campo('PRECO_VENDA'), Display('Preço')]
    property PRECO_VENDA: currency read FPRECO_VENDA write SetPRECO_VENDA;

    [Campo('QUANTIDADE'), Display('Quantidade')]
    property QUANTIDADE: Double read FQUANTIDADE write SetQUANTIDADE;

    [Campo('VALOR_TOTAL'), Display('Valor Total')]
    property VALOR_TOTAL: currency read FVALOR_TOTAL write SetVALOR_TOTAL;
  end;

implementation

{ TVENDA_ITEM }

constructor TVENDA_ITEM.Create;
begin

end;

destructor TVENDA_ITEM.Destroy;
begin

  inherited;
end;

procedure TVENDA_ITEM.SetID(const Value: Int64);
begin
  FID := Value;
end;

procedure TVENDA_ITEM.SetPRECO_VENDA(const Value: currency);
begin
  FPRECO_VENDA := Value;
end;

procedure TVENDA_ITEM.SetPRODUTO_DESCRICAO(const Value: String);
begin
  FPRODUTO_DESCRICAO := Value;
end;

procedure TVENDA_ITEM.SetPRODUTO_ID(const Value: Int64);
begin
  FPRODUTO_ID := Value;
end;

procedure TVENDA_ITEM.SetQUANTIDADE(const Value: Double);
begin
  FQUANTIDADE := Value;
end;

procedure TVENDA_ITEM.SetVALOR_TOTAL(const Value: currency);
begin
  FVALOR_TOTAL := Value;
end;

procedure TVENDA_ITEM.SetVENDA_ID(const Value: Int64);
begin
  FVENDA_ID := Value;
end;

end.
