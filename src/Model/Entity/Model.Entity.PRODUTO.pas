unit Model.Entity.PRODUTO;

interface

uses
  SimpleAttributes;

Type
  [Tabela('PRODUTO')]
  TPRODUTO = class
  private
    FDescricao: String;
    FCodigoBarras: String;
    FPrecoVenda: currency;
    FID: Integer;
    procedure SetCodigoBarras(const Value: String);
    procedure SetDescricao(const Value: String);
    procedure SetID(const Value: Integer);
    procedure SetPrecoVenda(const Value: currency);

  public
    constructor Create;
    destructor Destroy; override;
  published
    [Campo('ID'), Pk, AutoInc, Display('Cód.')]
    property ID: Integer read FID write SetID;
    [Campo('DESCRICAO'), Display('Descrição')]
    property Descricao: String read FDescricao write SetDescricao;
    [Campo('CODIGO_BARRAS'), Display('Cód. de barras')]
    property CodigoBarras: String read FCodigoBarras write SetCodigoBarras;
    [Campo('PRECO_VENDA'), Display('Preço Venda')]
    property PrecoVenda: currency read FPrecoVenda write SetPrecoVenda;
  end;

implementation

{ TPRODUTO }

constructor TPRODUTO.Create;
begin

end;

destructor TPRODUTO.Destroy;
begin

  inherited;
end;

procedure TPRODUTO.SetCodigoBarras(const Value: String);
begin
  FCodigoBarras := Value;
end;

procedure TPRODUTO.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TPRODUTO.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TPRODUTO.SetPrecoVenda(const Value: currency);
begin
  FPrecoVenda := Value;
end;

end.
