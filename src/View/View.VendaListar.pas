unit View.VendaListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.PadraoListar, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ExtCtrls,
  Controller.Venda.Interfaces,
  Controller.Venda;

type
  TFrmVendaListar = class(TFrmPadraoListar)
    procedure actIncluirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerVenda;
  public
    { Public declarations }
  end;

var
  FrmVendaListar: TFrmVendaListar;

implementation

{$R *.dfm}

procedure TFrmVendaListar.actEditarExecute(Sender: TObject);
begin
  inherited;
  ToView('VendaEditar', GetID);
end;

procedure TFrmVendaListar.actExcluirExecute(Sender: TObject);
begin
  inherited;
  FController.Venda.Build.Excluir('ID', GetID.ToString).Listar;
end;

procedure TFrmVendaListar.actFecharExecute(Sender: TObject);
begin
  inherited;
  ToView('Home');
end;

procedure TFrmVendaListar.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ToView('VendaEditar');
end;

procedure TFrmVendaListar.FormShow(Sender: TObject);
begin
  inherited;
  FController := TControllerVenda.New;
  dsListar.DataSet := FController.Venda.Build.Listar;
  AutoSizeColumns;
end;

end.
