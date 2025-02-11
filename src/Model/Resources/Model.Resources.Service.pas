unit Model.Resources.Service;

interface

uses
  Data.DB,
  SimpleInterface,
  SimpleQueryFiredac,
  Model.Resources.Interfaces;

type
  TModelService<T: class, constructor> = class(TInterfacedObject, iModelService<T>)
  private
    FParent: T;
    FConnection: iModelConnection;
    FConn: iSimpleQuery;
    FDAO: iSimpleDAO<T>;
    FDataSource: TDataSource;
  public
    constructor Create(Parent: T);
    destructor Destroy; override;
    class function New(Parent: T): iModelService<T>;

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

uses
  FireDAC.Comp.Client,
  SimpleDAO,
  Model.Resources.Connection;

{ TModelService<T> }

function TModelService<T>.Atualizar: iModelService<T>;
begin
  Result := Self;
  FDAO.Update(FParent);
end;

constructor TModelService<T>.Create(Parent: T);
begin
  FParent := Parent;
  FDataSource := TDataSource.Create(nil);
  FConnection := TdmConnection.New;
  FConn := FConnection.Conn;
  FDAO := TSimpleDAO<T>.New(FConn).DataSource(FDataSource);
end;

function TModelService<T>.DataSource(
  var ADataSource: TDataSource): iModelService<T>;
begin
  Result := Self;
  ADataSource := FDataSource;
end;

destructor TModelService<T>.Destroy;
begin
  FDataSource.DisposeOf;
  inherited;
end;

function TModelService<T>.Excluir(AField, AValue: string): iModelService<T>;
begin
  Result := Self;
  FDAO.Delete(AField, AValue);
end;

function TModelService<T>.Excluir: iModelService<T>;
begin
  Result := Self;
  FDAO.Delete(FParent);
end;

function TModelService<T>.Inserir: iModelService<T>;
begin
  Result := Self;
  FDAO.Insert(FParent);
end;

function TModelService<T>.Listar: TDataSet;
begin
  FDAO.Find;
  Result := FDataSource.DataSet;
end;

function TModelService<T>.ListarPorFiltro(AKey: string;
  AValue: Variant): TDataSet;
begin
  FDAO.Find(AKey, AValue);
  Result := FDataSource.DataSet;
end;

function TModelService<T>.ListarPorID(AID: Int64): TDataSet;
begin
  FDAO.Find(AID);
  Result := FDataSource.DataSet;
end;

class function TModelService<T>.New(Parent: T): iModelService<T>;
begin
  Result := Self.Create(Parent);
end;

function TModelService<T>.Selecionar(AID: Int64): iModelService<T>;
begin
  Result := Self;
  if Assigned(FParent) then
    FParent.DisposeOf;
  FParent := FDAO.Find(AID);
end;

end.
