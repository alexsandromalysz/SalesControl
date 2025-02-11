unit View.MunicipioListar;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ActnList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Data.DB,
  View.Default.PadraoListar,
  Controller.Municipio.Interfaces,
  Controller.Municipio;

type
  TFrmMunicipioListar = class(TFrmPadraoListar)
    procedure actIncluirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerMunicipio;
  public
    { Public declarations }
  end;

var
  FrmMunicipioListar: TFrmMunicipioListar;

implementation

{$R *.dfm}

{ TFrmMunicipioListar }

procedure TFrmMunicipioListar.actEditarExecute(Sender: TObject);
begin
  inherited;
  ToView('MunicipioEditar', GetID);
end;

procedure TFrmMunicipioListar.actExcluirExecute(Sender: TObject);
begin
  inherited;
  FController.Municipio.Build.Excluir('ID', GetID.ToString);
end;

procedure TFrmMunicipioListar.actFecharExecute(Sender: TObject);
begin
  inherited;
  ToView('Home')
end;

procedure TFrmMunicipioListar.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ToView('MunicipioEditar');
end;

procedure TFrmMunicipioListar.FormShow(Sender: TObject);
begin
  inherited;
  FController := TControllerMunicipio.New;
  dsListar.DataSet := FController.Municipio.Build.Listar;
end;

end.
