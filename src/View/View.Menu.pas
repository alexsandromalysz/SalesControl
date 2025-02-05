unit View.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFrmMenu = class(TForm)
    mmMenu: TMainMenu;
    mniCadastro: TMenuItem;
    mniProduto: TMenuItem;
    mniCliente: TMenuItem;
    mniUsuario: TMenuItem;
    mniVenda: TMenuItem;
    pnTopo: TPanel;
    actlstMenu: TActionList;
    pnlView: TPanel;
    actCadastroCliente: TAction;
    pnOptions: TPanel;
    btnClientes: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnUsuarios: TSpeedButton;
    btnHome: TSpeedButton;
    procedure actCadastroClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
  View.Cadastro;

{$R *.dfm}

procedure TFrmMenu.actCadastroClienteExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  FrmCadastro.Parent := pnlView;
  FrmCadastro.BorderStyle := bsNone;
  FrmCadastro.Align := alClient;
  FrmCadastro.Show;
  //FrmCadastro.Destroy;
end;

end.
