unit View.Default.PadraoListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  View.Default.Padrao, Vcl.Buttons,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPadraoListar = class(TFrmPadrao)
    actlstListar: TActionList;
    actIncluir: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actFechar: TAction;
    dsListar: TDataSource;
    pnlOptions: TPanel;
    pnlbtnIncluir: TPanel;
    btnIncluir: TSpeedButton;
    pnlbtnEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlbtnExcluir: TPanel;
    btnExcluir: TSpeedButton;
    pnlbtnFechar: TPanel;
    btnFechar: TSpeedButton;
    dbgrdListar: TDBGrid;
    pnlHeader: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetID: Int64;
  end;

var
  FrmPadraoListar: TFrmPadraoListar;

implementation

{$R *.dfm}

{ TFrmPadraoListar }

{ TFrmPadraoListar }

function TFrmPadraoListar.GetID: Int64;
begin
  Result := dsListar.DataSet.FieldByName('ID').AsLargeInt;
end;

end.
