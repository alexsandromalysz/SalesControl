unit View.Default.Padrao;

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
  Vcl.StdCtrls,
  Router4D,
  Router4D.Interfaces,
  View.Utils;

type
  TFrmPadrao = class(TForm, iRouter4DComponent)
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FUtils: IUtils;
  public
    { Public declarations }
    property Utils: IUtils read FUtils write FUtils;

    function Render: TForm;
    procedure UnRender;
    procedure OnRender; virtual;

    procedure ToView(ARouter: string); overload;
    procedure ToView(ARouter: string; AID: Int64); overload;

  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmPadrao.ToView(ARouter: string);
begin
  ViewParams.Clear;
  ViewParams.Values['id'] := '0';
  TRouter4D.Link.&To(ARouter);
end;

procedure TFrmPadrao.ToView(ARouter: string; AID: Int64);
begin
  ViewParams.Values['id'] := AID.ToString;
  TRouter4D.Link.&To(ARouter);
end;

procedure TFrmPadrao.FormCreate(Sender: TObject);
begin
  Utils := TUtils.New;
end;

procedure TFrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  {* Enter as tab *}
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmPadrao.OnRender;
begin
  {* Utilizar para processamento pós rederização do Form no método Render *}
end;

function TFrmPadrao.Render: TForm;
begin
  Result := Self;
  OnRender;
end;

procedure TFrmPadrao.UnRender;
begin

end;

end.
