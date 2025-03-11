unit Controller.Venda;

interface

uses
  System.Generics.Collections,
  Controller.Venda.Interfaces,
  Model.Interfaces,
  Model.Entity.VENDA,
  Model.Resources.Interfaces,
  Model.Resources.Service,
  SysUtils;

type
  TVendaDTO = class(TInterfacedObject, IVendaDTO)
  private
    FEntity: TVENDA;
    FService: iModelService<TVENDA>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IVendaDTO;
    function Id(Value: Int64): IVendaDTO; overload;
    function Id: Int64; overload;
    function ClienteId(Value: Int64): IVendaDTO; overload;
    function ClienteId: Int64; overload;
    function ClienteNome(Value: string): IVendaDTO; overload;
    function ClienteNome: string; overload;
    function Observacao(Value: string): IVendaDTO; overload;
    function Observacao: string; overload;
    function ValorTotal(Value: currency): IVendaDTO; overload;
    function ValorTotal: currency; overload;
    function ValorDesconto(Value: currency): IVendaDTO; overload;
    function ValorDesconto: currency; overload;
    function ValorLiquido(Value: currency): IVendaDTO; overload;
    function ValorLiquido: currency; overload;
    function DataHora(Value: TDateTime): IVendaDTO; overload;
    function DataHora: TDateTime; overload;

    function Build: iModelService<TVENDA>;
    function Salvar: IVendaDTO;
  end;

  TControllerVenda = class(TInterfacedObject, IControllerVenda)
  private
    FVendaDTO: IVendaDTO;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerVenda;
    function Venda: IVendaDTO;
  end;

implementation

{ TVendaDTO }

function TVendaDTO.Build: iModelService<TVENDA>;
begin
  Result := FService;
end;

function TVendaDTO.ClienteId: Int64;
begin
  Result := FEntity.CLIENTE_ID;
end;

function TVendaDTO.ClienteId(Value: Int64): IVendaDTO;
begin
  Result := Self;
  FEntity.CLIENTE_ID := Value;
end;

function TVendaDTO.ClienteNome: string;
begin
  Result := FEntity.CLIENTE_NOME;
end;

function TVendaDTO.ClienteNome(Value: string): IVendaDTO;
begin
  Result := Self;
  FEntity.CLIENTE_NOME := Value;
end;

constructor TVendaDTO.Create;
begin
  FEntity := TVENDA.Create;
  FEntity.DATA_HORA := Date;
  FService := TModelService<TVENDA>.New(FEntity);
end;

function TVendaDTO.DataHora(Value: TDateTime): IVendaDTO;
begin
  Result := Self;
  FEntity.DATA_HORA := Value;
end;

function TVendaDTO.DataHora: TDateTime;
begin
  Result := FEntity.DATA_HORA;
end;

destructor TVendaDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TVendaDTO.Id(Value: Int64): IVendaDTO;
begin
  Result := Self;
  FEntity.ID := Value;
end;

function TVendaDTO.Id: Int64;
begin
  Result := FEntity.ID;
end;

class function TVendaDTO.New: IVendaDTO;
begin
  Result := Self.Create;
end;

function TVendaDTO.Observacao: string;
begin
  Result := FEntity.OBSERVACAO;
end;

function TVendaDTO.Observacao(Value: string): IVendaDTO;
begin
  Result := Self;
  FEntity.OBSERVACAO := Value;
end;

function TVendaDTO.Salvar: IVendaDTO;
begin
  if FEntity.ID > 0 then
    Build.Atualizar
  else
  begin
    Build.Inserir;
    FEntity.ID := Build.GetLastID; // ORM não atualiza ID autoinc no insert
  end;
end;

function TVendaDTO.ValorDesconto: currency;
begin
  Result := FEntity.VALOR_DESCONTO;
end;

function TVendaDTO.ValorDesconto(Value: currency): IVendaDTO;
begin
  Result := Self;
  FEntity.VALOR_DESCONTO := Value;
end;

function TVendaDTO.ValorLiquido: currency;
begin
  Result := FEntity.VALOR_LIQUIDO;
end;

function TVendaDTO.ValorLiquido(Value: currency): IVendaDTO;
begin
  Result := Self;
  FEntity.VALOR_LIQUIDO := Value;
end;

function TVendaDTO.ValorTotal: currency;
begin
  Result := FEntity.VALOR_TOTAL;
end;

function TVendaDTO.ValorTotal(Value: currency): IVendaDTO;
begin
  Result := Self;
  FEntity.VALOR_TOTAL := Value;
end;

{ TControllerVenda }

constructor TControllerVenda.Create;
begin
  FVendaDTO := TVendaDTO.New;
end;

destructor TControllerVenda.Destroy;
begin

  inherited;
end;

class function TControllerVenda.New: IControllerVenda;
begin
  Result := Self.Create;
end;

function TControllerVenda.Venda: IVendaDTO;
begin
  Result := FVendaDTO;
end;

end.
