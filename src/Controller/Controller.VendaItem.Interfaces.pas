unit Controller.VendaItem.Interfaces;

interface

uses
  System.Generics.Collections,
  Model.Interfaces,
  Model.Entity.VENDA_ITEM,
  Model.Resources.Interfaces;

type
  IVendaItemDTO = interface
    ['{E5CB5401-68D2-496C-8CE9-3CD3AC811770}']
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

  IControllerVendaItem = interface
    ['{8E63C131-0D48-4020-AD04-A9485EE7BA0D}']
    function Item: IVendaItemDTO;
  end;

implementation

end.
