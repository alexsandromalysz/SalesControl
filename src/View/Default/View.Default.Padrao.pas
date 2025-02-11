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
  Router4D,
  Router4D.Interfaces,
  Router4D.Props;

type
  TFrmPadrao = class(TForm, iRouter4DComponent)
    pnlMain: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TForm;
    procedure UnRender;
    procedure OnRender; virtual;

    [Subscribe]
    procedure Props (aValue : TProps); virtual;
    procedure OnProps; virtual;

    procedure ToView(ARouter: string); overload;
    procedure ToView(ARouter: string; AID: Int64); overload;
    procedure ToView(ARouter: string; AID: Int64; AReload: Boolean); overload;
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmPadrao.ToView(ARouter: string);
begin
  TRouter4D.Link.&To(ARouter);
end;

procedure TFrmPadrao.ToView(ARouter: string; AID: Int64);
begin
  TRouter4D.Link.&To(ARouter,
    TProps.Create.PropString(AID.ToString).Key('ID'));
end;

procedure TFrmPadrao.ToView(ARouter: string; AID: Int64; AReload: Boolean);
begin
  TRouter4D.Link.&To(ARouter,
    TProps.Create
      .PropString(AID.ToString).Key('ID')
      .PropInteger(AReload.ToInteger).Key('Reload')
    );
end;

procedure TFrmPadrao.OnProps;
begin
  {* Utilizar para processamento pós recebimento dos parâmetros no método Props *}
end;

procedure TFrmPadrao.OnRender;
begin
  {* Utilizar para processamento pós rederização do Form no método Render *}
end;

procedure TFrmPadrao.Props(aValue: TProps);
begin
  OnProps;
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
