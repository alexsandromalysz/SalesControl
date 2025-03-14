unit View.Routers;

interface

type
  TRouters = class
    private

    public
      constructor Create;
      destructor Destroy; override;
  end;

var
  Router : TRouters;

implementation

uses
  Router4D,
  View.HomePage,
  View.MunicipioListar,
  View.MunicipioEditar,
  View.ClienteListar,
  View.ClienteEditar,
  View.ProdutoListar,
  View.ProdutoEditar,
  View.VendaListar,
  View.VendaEditar;


{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('Home', TFrmHomePage)
      .Router('MunicipioListar', TFrmMunicipioListar)
      .Router('MunicipioEditar', TFrmMunicipioEditar)
      .Router('ClienteListar', TFrmClienteListar)
      .Router('ClienteEditar', TFrmClienteEditar)
      .Router('ProdutoListar', TFrmProdutoListar)
      .Router('ProdutoEditar', TFrmProdutoEditar)
      .Router('VendaListar', TFrmVendaListar)
      .Router('VendaEditar', TFrmVendaEditar);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization
  Router := TRouters.Create;

finalization
  Router.Free;

end.
