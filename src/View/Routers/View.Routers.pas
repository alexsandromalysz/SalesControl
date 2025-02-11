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
  View.MunicipioEditar;


{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('Home', TFrmHomePage)
      .Router('MunicipioListar', TFrmMunicipioListar)
      .Router('MunicipioEditar', TFrmMunicipioEditar);
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
