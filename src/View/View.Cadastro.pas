unit View.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.Buttons;

type
  TFrmCadastro = class(TForm)
    pnFormulario: TPanel;
    pnOpcoes: TPanel;
    actlstCadastro: TActionList;
    actConfirmar: TAction;
    actCancelar: TAction;
    pnlCancelar: TPanel;
    pnlConfirmar: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure actCancelarExecute(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCancelado: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property Cancelado: Boolean read FCancelado write FCancelado;
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

procedure TFrmCadastro.actCancelarExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmCadastro.actConfirmarExecute(Sender: TObject);
begin
  FCancelado := False;
  Self.Close;
end;

procedure TFrmCadastro.FormCreate(Sender: TObject);
begin
  FCancelado := True;
end;

end.
