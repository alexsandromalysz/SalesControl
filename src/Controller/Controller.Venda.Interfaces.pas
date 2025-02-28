unit Controller.Venda.Interfaces;

interface

uses
  System.Generics.Collections,
  Model.Interfaces,
  Model.Entity.VENDA,
  Model.Resources.Interfaces;

type
  IVendaDTO = interface
    ['{F9755231-1153-4379-A9E0-E737EB687FE2}']
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

  IControllerVenda = interface
    ['{A16FA83D-7037-4D73-94D9-50B78C525D46}']
    function Venda: IVendaDTO;
  end;

implementation

end.
