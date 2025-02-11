unit View.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  View.Default.Padrao, Vcl.StdCtrls, Router4D, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmMenu = class(TFrmPadrao)
    pnlMain: TPanel;
    pnlView: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
  private
    { Private declarations }
    procedure RegistrarRotas;
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
  View.MunicipioListar,
  View.MunicipioEditar;

{$R *.dfm}

procedure TFrmMenu.btnAbrirClick(Sender: TObject);
begin
  inherited;
  raise Exception.Create('not implemented');
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
  inherited;
  RegistrarRotas;
  TRouter4D.Render<TFrmMunicipioListar>.SetElement(pnlView, pnlView);
end;

procedure TFrmMenu.RegistrarRotas;
begin
  TRouter4D.Switch.Router('MunicipioListar', TFrmMunicipioListar);
  TRouter4D.Switch.Router('MunicipioEditar', TFrmMunicipioEditar);
end;

end.
