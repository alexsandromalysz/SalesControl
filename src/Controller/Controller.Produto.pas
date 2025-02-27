unit Controller.Produto;

interface

uses
  System.Generics.Collections,
  Controller.Produto.Interfaces,
  Model.Interfaces,
  Model.Entity.PRODUTO,
  Model.Resources.Interfaces,
  Model.Resources.Service;

type
  TProdutoDTO = class(TInterfacedObject, IProdutoDTO)
  private
    FEntity: TProduto;
    FService: iModelService<TProduto>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IProdutoDTO;
    function Id(Value: Integer): IProdutoDTO; overload;
    function Id: Integer; overload;
    function Descricao(Value: string): IProdutoDTO; overload;
    function Descricao: string; overload;
    function CodigoBarras(Value: string): IProdutoDTO; overload;
    function CodigoBarras: string; overload;
    function PrecoVenda(Value: currency): IProdutoDTO; overload;
    function PrecoVenda: currency; overload;

    function Build: iModelService<TProduto>;
    function Salvar: IProdutoDTO;
  end;

  TControllerProduto = class(TInterfacedObject, IControllerProduto)
  private
    FProdutoDTO: IProdutoDTO;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerProduto;
    function Produto: IProdutoDTO;
  end;

implementation

{ TProdutoDTO }

function TProdutoDTO.Build: iModelService<TProduto>;
begin
  Result := FService;
end;

function TProdutoDTO.CodigoBarras: string;
begin
  Result := FEntity.CodigoBarras;
end;

function TProdutoDTO.CodigoBarras(Value: string): IProdutoDTO;
begin
  Result := Self;
  FEntity.CodigoBarras := Value;
end;

constructor TProdutoDTO.Create;
begin
  FEntity := TPRODUTO.Create;
  FService := TModelService<TPRODUTO>.New(FEntity);
end;

function TProdutoDTO.Descricao(Value: string): IProdutoDTO;
begin
  Result := Self;
  FEntity.Descricao := Value;
end;

function TProdutoDTO.Descricao: string;
begin
  Result := FEntity.Descricao;
end;

destructor TProdutoDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TProdutoDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TProdutoDTO.Id(Value: Integer): IProdutoDTO;
begin
  Result := Self;
  FEntity.Id := Value;
end;

class function TProdutoDTO.New: IProdutoDTO;
begin
  Result := Self.Create;
end;

function TProdutoDTO.PrecoVenda: currency;
begin
  Result := FEntity.PrecoVenda;
end;

function TProdutoDTO.PrecoVenda(Value: currency): IProdutoDTO;
begin
  Result := Self;
  FEntity.PrecoVenda := Value;
end;

function TProdutoDTO.Salvar: IProdutoDTO;
begin
  Result := Self;
  if FEntity.ID > 0 then
    Build.Atualizar
  else
    Build.Inserir;
end;

{ TControllerProduto }

constructor TControllerProduto.Create;
begin
  FProdutoDTO := TProdutoDTO.New;
end;

destructor TControllerProduto.Destroy;
begin

  inherited;
end;

function TControllerProduto.Produto: IProdutoDTO;
begin
  Result := FProdutoDTO;
end;

class function TControllerProduto.New: IControllerProduto;
begin
  Result := Self.Create;
end;

end.
