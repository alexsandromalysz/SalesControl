unit Model.Resources.Interfaces;

interface

uses
  Data.DB,
  SimpleInterface;

type
  iModelConnection = interface
    ['{33FA20E8-35FF-42EF-9E39-EE7D33622633}']
    function Conn: iSimpleQuery;
  end;

  iModelService<T: class> = interface
    ['{CCF35987-DE0A-4BAD-ABB4-70468ACF2FDD}']
    function Listar: TDataSet;
    function ListarPorID(AID: Int64): TDataSet;
    function ListarPorFiltro(AKey: string; AValue: Variant): TDataSet;
    function Selecionar(AID: Int64): iModelService<T>;
    function Inserir: iModelService<T>;
    function Atualizar: iModelService<T>;
    function Excluir: iModelService<T>; overload;
    function Excluir(AField: string; AValue: string): iModelService<T>; overload;
    function DataSource(var ADataSource: TDataSource): iModelService<T>;
  end;

implementation

end.
