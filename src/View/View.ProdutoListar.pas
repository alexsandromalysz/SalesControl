unit View.ProdutoListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.PadraoListar, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ExtCtrls,
  Controller.Produto.Interfaces,
  Controller.Produto;

type
  TFrmProdutoListar = class(TFrmPadraoListar)
    procedure actIncluirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerProduto;
  public
    { Public declarations }
  end;

var
  FrmProdutoListar: TFrmProdutoListar;

implementation

{$R *.dfm}

procedure TFrmProdutoListar.actEditarExecute(Sender: TObject);
begin
  inherited;
  ToView('ProdutoEditar', GetID);
end;

procedure TFrmProdutoListar.actExcluirExecute(Sender: TObject);
begin
  inherited;
  FController.Produto.Build.Excluir('ID', GetID.ToString).Listar;
end;

procedure TFrmProdutoListar.actFecharExecute(Sender: TObject);
begin
  inherited;
  ToView('Home')
end;

procedure TFrmProdutoListar.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ToView('ProdutoEditar');
end;

procedure TFrmProdutoListar.FormShow(Sender: TObject);
begin
  inherited;
  FController := TControllerProduto.New;
  dsListar.DataSet := FController.Produto.Build.Listar;
  AutoSizeColumns;
end;

end.
