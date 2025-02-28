unit Controller.VendaItem;

interface

uses
  System.Generics.Collections,
  Controller.VendaItem.Interfaces,
  Model.Interfaces,
  Model.Entity.VENDA_ITEM,
  Model.Resources.Interfaces,
  Model.Resources.Service;

type
  TVendaItemDTO = class(TInterfacedObject, IVendaItemDTO)
  private
    FEntity: TVENDA_ITEM;
    FService: iModelService<TVENDA_ITEM>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IVendaItemDTO;
    function Id(Value: Int64): IVendaItemDTO; overload;
    function Id: Int64; overload;
    function VendaId(Value: Int64): IVendaItemDTO; overload;
    function VendaId: Int64; overload;
    function ProdutoId(Value: Int64): IVendaItemDTO; overload;
    function ProdutoId: Int64; overload;
    function ProdutoDescricao(Value: string): IVendaItemDTO; overload;
    function ProdutoDescricao: string; overload;
    function PrecoVenda(Value: currency): IVendaItemDTO; overload;
    function PrecoVenda: currency; overload;
    function Quantidade(Value: Double): IVendaItemDTO; overload;
    function Quantidade: Double; overload;
    function ValorTotal(Value: currency): IVendaItemDTO; overload;
    function ValorTotal: currency; overload;

    function Build: iModelService<TVENDA_ITEM>;
    function Salvar: IVendaItemDTO;
  end;

  TControllerVendaItem = class(TInterfacedObject, IControllerVendaItem)
  private
    FVendaItemDTO: IVendaItemDTO;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerVendaItem;
    function Item: IVendaItemDTO;
  end;

implementation

{ TVendaItemDTO }

function TVendaItemDTO.Build: iModelService<TVENDA_ITEM>;
begin
  Result := FService;
end;

constructor TVendaItemDTO.Create;
begin
  FEntity := TVENDA_ITEM.Create;
  FService := TModelService<TVENDA_ITEM>.New(FEntity);
end;

destructor TVendaItemDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TVendaItemDTO.Id: Int64;
begin
  Result := FEntity.ID
end;

function TVendaItemDTO.Id(Value: Int64): IVendaItemDTO;
begin
  Result := Self;
  FEntity.ID := Value;
end;

class function TVendaItemDTO.New: IVendaItemDTO;
begin
  Result := Self.Create;
end;

function TVendaItemDTO.PrecoVenda: currency;
begin
  Result := FEntity.PRECO_VENDA;
end;

function TVendaItemDTO.PrecoVenda(Value: currency): IVendaItemDTO;
begin
  Result := Self;
  FEntity.PRECO_VENDA := Value;
end;

function TVendaItemDTO.ProdutoDescricao(Value: string): IVendaItemDTO;
begin
  Result := Self;
  FEntity.PRODUTO_DESCRICAO := Value;
end;

function TVendaItemDTO.ProdutoDescricao: string;
begin
  Result := FEntity.PRODUTO_DESCRICAO;
end;

function TVendaItemDTO.ProdutoId: Int64;
begin
  Result := FEntity.PRODUTO_ID;
end;

function TVendaItemDTO.ProdutoId(Value: Int64): IVendaItemDTO;
begin
  Result := Self;
  FEntity.PRODUTO_ID := Value;
end;

function TVendaItemDTO.Quantidade: Double;
begin
  Result := FEntity.QUANTIDADE;
end;

function TVendaItemDTO.Quantidade(Value: Double): IVendaItemDTO;
begin
  Result := Self;
  FEntity.QUANTIDADE := Value;
end;

function TVendaItemDTO.Salvar: IVendaItemDTO;
begin
  Result := Self;
  if FEntity.ID > 0 then
    Build.Atualizar
  else
    Build.Inserir;
end;

function TVendaItemDTO.ValorTotal: currency;
begin
  Result := FEntity.VALOR_TOTAL;
end;

function TVendaItemDTO.ValorTotal(Value: currency): IVendaItemDTO;
begin
  Result := Self;
  FEntity.VALOR_TOTAL := Value;
end;

function TVendaItemDTO.VendaId: Int64;
begin
  Result := FEntity.VENDA_ID;
end;

function TVendaItemDTO.VendaId(Value: Int64): IVendaItemDTO;
begin
  Result := Self;
  FEntity.VENDA_ID := Value;
end;

{ TControllerVendaItem }

constructor TControllerVendaItem.Create;
begin
  FVendaItemDTO := TVendaItemDTO.New;
end;

destructor TControllerVendaItem.Destroy;
begin

  inherited;
end;

function TControllerVendaItem.Item: IVendaItemDTO;
begin
  Result := FVendaItemDTO;
end;

class function TControllerVendaItem.New: IControllerVendaItem;
begin
  Result := Self.Create;
end;

end.
