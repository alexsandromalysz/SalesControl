unit View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  View.Default.Padrao,
  Router4D, System.Actions, Vcl.ActnList, Vcl.Buttons, System.ImageList,
  Vcl.ImgList, Vcl.Menus;

type
  TFrmMain = class(TFrmPadrao)
    pnlOptions: TPanel;
    imglstOptions: TImageList;
    btnCliente: TSpeedButton;
    actlstOptions: TActionList;
    actCliente: TAction;
    btnProduto: TSpeedButton;
    btnVenda: TSpeedButton;
    actProduto: TAction;
    actVenda: TAction;
    actConfiguracao: TAction;
    btnConfig: TSpeedButton;
    mmMenu: TMainMenu;
    btnCadastro: TMenuItem;
    btnMunicipio: TMenuItem;
    actMunicipio: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actProdutoExecute(Sender: TObject);
    procedure actVendaExecute(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure actMunicipioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  View.HomePage;

{$R *.dfm}

procedure TFrmMain.actClienteExecute(Sender: TObject);
begin
  inherited;
  TRouter4D.Link.&To('ClienteListar');
end;

procedure TFrmMain.actConfiguracaoExecute(Sender: TObject);
begin
  inherited;
  raise Exception.Create('Não implementado');
end;

procedure TFrmMain.actMunicipioExecute(Sender: TObject);
begin
  inherited;
  TRouter4D.Link.&To('MunicipioListar');
end;

procedure TFrmMain.actProdutoExecute(Sender: TObject);
begin
  inherited;
  raise Exception.Create('Não implementado');
end;

procedure TFrmMain.actVendaExecute(Sender: TObject);
begin
  inherited;
  raise Exception.Create('Não implementado');
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  TRouter4D.Render<TFrmHomePage>.SetElement(pnlMain, pnlMain);
end;

end.
