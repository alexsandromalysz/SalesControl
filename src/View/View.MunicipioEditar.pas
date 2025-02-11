unit View.MunicipioEditar;

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
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Mask,
  View.Default.PadraoEditar,
  Controller.Municipio.Interfaces,
  Controller.Municipio;

type
  TFrmMunicipioEditar = class(TFrmPadraoEditar)
    grpCodigoIBGE: TGroupBox;
    grpNome: TGroupBox;
    edtNome: TEdit;
    grpUF: TGroupBox;
    edtUF: TEdit;
    edtCodigoIBGE: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerMunicipio;
    procedure Carregar;
  public
    { Public declarations }
    procedure OnProps; override;
  end;

var
  FrmMunicipioEditar: TFrmMunicipioEditar;

implementation

uses
  Model.Municipio;

{$R *.dfm}

procedure TFrmMunicipioEditar.actCancelarExecute(Sender: TObject);
begin
  inherited;
  ToView('MunicipioListar');
end;

procedure TFrmMunicipioEditar.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  FController.Municipio
    .Id(ID)
    .Nome(Trim(edtNome.Text))
    .UF(Trim(edtUF.Text))
    .CodigoIBGE(StrToIntDef(edtCodigoIBGE.Text,0))
    .Salvar;

  ToView('MunicipioListar');
end;

procedure TFrmMunicipioEditar.Button1Click(Sender: TObject);
begin
  inherited;
  Carregar;
end;

procedure TFrmMunicipioEditar.Carregar;
begin
  if not(ID > 0) then
  begin
    edtCodigoIBGE.Text := EmptyStr;
    edtNome.Text := EmptyStr;
    edtUF.Text := EmptyStr;
    Exit;
  end;
  FController.Municipio.Build.Selecionar(ID);
  edtCodigoIBGE.Text := FController.Municipio.CodigoIBGE.ToString;
  edtNome.Text := FController.Municipio.Nome;
  edtUF.Text := FController.Municipio.UF;
end;

procedure TFrmMunicipioEditar.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TControllerMunicipio.New;
end;

procedure TFrmMunicipioEditar.OnProps;
begin
  inherited;
  if Reload then
    Carregar;
end;

end.
