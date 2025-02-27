unit Controller.Produto.Interfaces;

interface

uses
  System.Generics.Collections,
  Model.Interfaces,
  Model.Entity.Produto,
  Model.Resources.Interfaces;

type
  IProdutoDTO = interface
    ['{C62EC3F1-244B-4BBB-940D-493BDF371CAE}']
    function Id(Value: Integer): IProdutoDTO; overload;
    function Id: Integer; overload;
    function Descricao(Value: string): IProdutoDTO; overload;
    function Descricao: string; overload;
    function CodigoBarras(Value: string): IProdutoDTO; overload;
    function CodigoBarras: string; overload;
    function PrecoVenda(Value: currency): IProdutoDTO; overload;
    function PrecoVenda: currency; overload;

    function Build: iModelService<TPRODUTO>;
    function Salvar: IProdutoDTO;
  end;

  IControllerProduto = interface
    ['{A1E03AF3-6E24-44FA-818C-017D25A74E8C}']
    function Produto: IProdutoDTO;
  end;

implementation

end.
