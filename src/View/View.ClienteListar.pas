unit View.ClienteListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.PadraoListar, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ExtCtrls,
  Controller.Cliente.Interfaces,
  Controller.Cliente;

type
  TFrmClienteListar = class(TFrmPadraoListar)
    procedure FormShow(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerCliente;
  public
    { Public declarations }
  end;

var
  FrmClienteListar: TFrmClienteListar;

implementation

{$R *.dfm}

procedure TFrmClienteListar.actEditarExecute(Sender: TObject);
begin
  inherited;
  ToView('ClienteEditar', GetID);
end;

procedure TFrmClienteListar.actExcluirExecute(Sender: TObject);
begin
  inherited;
  FController.Cliente.Build.Excluir('ID', GetID.ToString).Listar;
end;

procedure TFrmClienteListar.actFecharExecute(Sender: TObject);
begin
  inherited;
  ToView('Home')
end;

procedure TFrmClienteListar.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ToView('ClienteEditar');
end;

procedure TFrmClienteListar.FormShow(Sender: TObject);
begin
  inherited;
  FController := TControllerCliente.New;
  dsListar.DataSet := FController.Cliente.Build.Listar;
  AutoSizeColumns;
end;

end.
