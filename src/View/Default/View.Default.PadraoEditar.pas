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
  Router4D.Props;

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
  private
    FCancelado: Boolean;
    FID: Int64;
    FReload: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property ID: Int64 read FID write FID;
    property Reload: Boolean read FReload write FReload;
    property Cancelado: Boolean read FCancelado write FCancelado;

    procedure Props (aValue : TProps); override;
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
  Reload := True;
  Cancelado := True;
end;

procedure TFrmPadraoEditar.Props(AValue: TProps);
begin
  if AValue.Key = 'ID' then
    ID := AValue.PropString.ToInt64
  else if AValue.Key = 'Reload' then
    Reload := AValue.PropInteger.ToBoolean;
  //AValue.Free;
  inherited;
end;

end.
