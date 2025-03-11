unit View.Default.PadraoEditar;

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
  View.Default.Padrao,
  Vcl.Buttons,
  Vcl.StdCtrls,
  System.Actions,
  Vcl.ActnList,
  Vcl.ExtCtrls,
  View.Utils;

type
  TFrmPadraoEditar = class(TFrmPadrao)
    actlstCadastro: TActionList;
    actConfirmar: TAction;
    actCancelar: TAction;
    pnlOptions: TPanel;
    pnlbtnConfirmar: TPanel;
    btnConfirmar: TSpeedButton;
    pnlbtnCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlHeader: TPanel;
    pnlFormulario: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCancelado: Boolean;
    FID: Int64;
    { Private declarations }
  public
    { Public declarations }
    property ID: Int64 read FID write FID;
    property Cancelado: Boolean read FCancelado write FCancelado;
  end;

var
  FrmPadraoEditar: TFrmPadraoEditar;

implementation

{$R *.dfm}

procedure TFrmPadraoEditar.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  Cancelado := False;
end;

procedure TFrmPadraoEditar.FormCreate(Sender: TObject);
begin
  inherited;
  ID := 0;
  Cancelado := True;
end;

procedure TFrmPadraoEditar.FormShow(Sender: TObject);
begin
  inherited;
  ID := StrToInt64Def(ViewParams.Values['id'],0);
end;

end.
